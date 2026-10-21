package com.google.android.projection.sink.video;

import android.accessibilityservice.c;
import android.app.m;
import android.graphics.Rect;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.projection.common.BufferPool;
import com.google.android.projection.protocol.VideoFrame;
import com.google.android.projection.sink.audio.AudioLatencyChecker;
import java.nio.ByteBuffer;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class ProjectionRenderer {
    private static final boolean DBG_TRACE = true;
    private static final int DEQUEUE_BUFFER_FAIL_MAX_RETRY = 10;
    private static final int DEQUEUE_BUFFER_WAIT_TIME_US = 100000;
    private static final boolean ENABLE_DEBUG_LOG = false;
    private static final int RENDERER_STATE_NOT_STARTED = 1;
    private static final int RENDERER_STATE_RUNNING = 2;
    private static final int RENDERER_STATE_STOPPED = 3;
    private static final String TAG = "AHU.VIDEO";
    Handler H;
    PreviewConfigure landscape;
    private final AudioLatencyChecker mAudioLatencyChecker;
    private MediaCodec mCodec;
    private final DimensionUtils.ScreenSettings mEmulatedScreen;
    private final FrameCounter mFrameCounter;
    private ByteBuffer[] mInputBuffers;
    private DecodeInputThread mInputThread;
    private final Listener mListener;
    private Rect mOffset;
    private DecodeOutputThread mOutputThread;
    private Surface mSurface;
    private final SurfaceHolder.Callback mSurfaceCallback;
    private final SurfaceView mSurfaceView;
    private final VideoLatencyChecker mVideoLatencyChecker;
    private Rect mVideoSize;
    private Rect mViewport;
    PreviewConfigure port;
    private volatile int mState = 1;
    private final Rect mSurfaceFrame = new Rect();
    private float mTouchXScale = 1.0f;
    private float mTouchYScale = 1.0f;
    private boolean mLayoutChangeOngoing = false;
    private final LinkedBlockingQueue<VideoFrame> mPendingInputBuffers = new LinkedBlockingQueue<>();
    private final LinkedBlockingQueue<VideoFrame> mQueuedInputBuffers = new LinkedBlockingQueue<>();

    public final class DecodeInputThread extends Thread {
        private boolean mShutdownThread;

        public DecodeInputThread() {
            super("ProjectionRenderer.DecodeInputThread");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            int iDequeueInputBuffer;
            boolean z2;
            VideoFrame videoFrame = null;
            boolean z3 = false;
            while (true) {
                synchronized (this) {
                    if (this.mShutdownThread) {
                        return;
                    }
                }
                if (videoFrame == null) {
                    try {
                        videoFrame = (VideoFrame) ProjectionRenderer.this.mPendingInputBuffers.poll(200L, TimeUnit.MILLISECONDS);
                        if (videoFrame == null) {
                        }
                    } catch (InterruptedException e2) {
                        synchronized (this) {
                            if (!this.mShutdownThread) {
                                throw new RuntimeException(e2);
                            }
                            return;
                        }
                    }
                }
                ByteBuffer byteBuffer = videoFrame.data;
                int iArrayOffset = byteBuffer.arrayOffset();
                int iLimit = byteBuffer.limit();
                byte[] bArrArray = byteBuffer.array();
                long jNanoTime = System.nanoTime() / 1000;
                if (ProjectionRenderer.this.mVideoLatencyChecker != null) {
                    ProjectionRenderer.this.mVideoLatencyChecker.onDecodingStart(iLimit, jNanoTime);
                }
                while (iLimit > 0) {
                    Trace.beginSection("dequeueInputBuffer");
                    int i2 = 0;
                    while (true) {
                        try {
                            iDequeueInputBuffer = ProjectionRenderer.this.mCodec.dequeueInputBuffer(100000L);
                        } catch (Exception unused) {
                            iDequeueInputBuffer = -1;
                        }
                        if (iDequeueInputBuffer != -1) {
                            z2 = false;
                            break;
                        }
                        i2++;
                        if (i2 > 10) {
                            Log.e("AHU.VIDEO", "dequeueInputBuffer failed, lost a frame.");
                            ProjectionRenderer.this.ackFrame();
                            z2 = true;
                            break;
                        }
                    }
                    Trace.endSection();
                    if (z2) {
                        break;
                    }
                    ByteBuffer byteBuffer2 = ProjectionRenderer.this.mInputBuffers[iDequeueInputBuffer];
                    int iMin = Math.min(byteBuffer2.capacity(), iLimit);
                    byteBuffer2.rewind();
                    byteBuffer2.put(bArrArray, iArrayOffset, iMin);
                    Trace.beginSection("queueInputBuffer");
                    ProjectionRenderer.this.mCodec.queueInputBuffer(iDequeueInputBuffer, 0, byteBuffer2.position(), jNanoTime, z3 ? 0 : 2);
                    Trace.endSection();
                    if (!z3) {
                        ProjectionRenderer.this.ackFrame();
                        z3 = true;
                    }
                    iLimit -= iMin;
                    iArrayOffset += iMin;
                }
                if (iLimit == 0) {
                    ProjectionRenderer.this.mQueuedInputBuffers.add(videoFrame);
                }
                BufferPool.returnBuffer(videoFrame.data);
                videoFrame.data = null;
                videoFrame = null;
            }
        }

        public void shutdown() {
            synchronized (this) {
                this.mShutdownThread = true;
            }
            try {
                join();
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
        }
    }

    public final class DecodeOutputThread extends Thread {
        private boolean mShutdownThread;

        public DecodeOutputThread() {
            super("ProjectionRenderer.DecodeOutputThread");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            while (true) {
                synchronized (this) {
                    if (this.mShutdownThread) {
                        return;
                    }
                }
                int iDequeueOutputBuffer = ProjectionRenderer.this.mCodec.dequeueOutputBuffer(bufferInfo, 1000L);
                if (iDequeueOutputBuffer != -3 && iDequeueOutputBuffer >= 0) {
                    ProjectionRenderer.this.ackFrame();
                    if (ProjectionRenderer.this.mVideoLatencyChecker != null) {
                        ProjectionRenderer.this.mVideoLatencyChecker.onDecodingFinish(bufferInfo.presentationTimeUs);
                    }
                    if (ProjectionRenderer.this.mFrameCounter != null) {
                        ProjectionRenderer.this.mFrameCounter.onRenderFrame(ProjectionRenderer.this.mVideoLatencyChecker != null ? ProjectionRenderer.this.mVideoLatencyChecker.getLatestLatency() : 0L, ProjectionRenderer.this.mAudioLatencyChecker != null ? ProjectionRenderer.this.mAudioLatencyChecker.getLatestLatency() : 0L);
                    }
                    ProjectionRenderer.this.mCodec.releaseOutputBuffer(iDequeueOutputBuffer, true);
                }
            }
        }

        public void shutdown() {
            synchronized (this) {
                this.mShutdownThread = true;
            }
            try {
                join();
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
        }
    }

    public interface Listener {
        void onFrameRendered(int i2);

        void onSurfaceCreated(int i2, int i3, boolean z2);

        void onSurfaceDestroyed(boolean z2);
    }

    public class PreviewConfigure {
        Rect previewSize = null;
        Rect viewport = null;

        public PreviewConfigure() {
        }
    }

    public ProjectionRenderer(SurfaceView surfaceView, TextView textView, Listener listener, DimensionUtils.ScreenSettings screenSettings, VideoLatencyChecker videoLatencyChecker, AudioLatencyChecker audioLatencyChecker) {
        SurfaceHolder.Callback callback = new SurfaceHolder.Callback() { // from class: com.google.android.projection.sink.video.ProjectionRenderer.1
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
                synchronized (ProjectionRenderer.this) {
                    ProjectionRenderer.this.updateSurface(surfaceHolder.getSurface(), i3, i4);
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                synchronized (ProjectionRenderer.this) {
                    ProjectionRenderer.this.mListener.onSurfaceDestroyed(false);
                    ProjectionRenderer.this.mSurface = null;
                    ProjectionRenderer.this.updateCodec();
                }
            }
        };
        this.mSurfaceCallback = callback;
        this.landscape = new PreviewConfigure();
        this.port = new PreviewConfigure();
        this.H = null;
        this.mSurfaceView = surfaceView;
        this.mListener = listener;
        this.mEmulatedScreen = screenSettings;
        this.H = new Handler(Looper.getMainLooper());
        if (textView != null) {
            this.mFrameCounter = new FrameCounter(textView);
        } else {
            this.mFrameCounter = null;
        }
        if (surfaceView != null) {
            SurfaceHolder holder = surfaceView.getHolder();
            Surface surface = holder.getSurface();
            if (surface != null) {
                Rect surfaceFrame = holder.getSurfaceFrame();
                updateSurface(surface, surfaceFrame.width(), surfaceFrame.height());
            }
            holder.addCallback(callback);
        }
        this.mVideoLatencyChecker = videoLatencyChecker;
        this.mAudioLatencyChecker = audioLatencyChecker;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ackFrame() {
        VideoFrame videoFramePoll = this.mQueuedInputBuffers.poll();
        if (videoFramePoll != null) {
            this.mListener.onFrameRendered(videoFramePoll.sessionId);
        }
    }

    private void checkScale(float f2, float f3) {
        Rect rect = this.mVideoSize;
        this.mTouchXScale = rect.right / f2;
        this.mTouchYScale = rect.bottom / f3;
    }

    private void clear() {
        SurfaceView surfaceView = this.mSurfaceView;
        if (surfaceView != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) surfaceView.getLayoutParams();
            DisplayMetrics displayMetrics = this.mSurfaceView.getContext().getResources().getDisplayMetrics();
            if ((displayMetrics.widthPixels < displayMetrics.heightPixels ? this.port : this.landscape).previewSize != null) {
                marginLayoutParams.width = -1;
                marginLayoutParams.height = -1;
                marginLayoutParams.setMargins(0, 0, 0, 0);
                Log.e("AHU.VIDEO", "layoutParams Margin top: " + marginLayoutParams.topMargin + " bottom:" + marginLayoutParams.bottomMargin);
                StringBuilder sb = new StringBuilder("layoutParams Margin left: ");
                sb.append(marginLayoutParams.leftMargin);
                sb.append(" right:");
                m.C(sb, marginLayoutParams.rightMargin, "AHU.VIDEO");
                this.mSurfaceView.setLayoutParams(marginLayoutParams);
            }
        }
        PreviewConfigure previewConfigure = this.landscape;
        previewConfigure.previewSize = null;
        previewConfigure.viewport = null;
        PreviewConfigure previewConfigure2 = this.port;
        previewConfigure2.previewSize = null;
        previewConfigure2.viewport = null;
    }

    private boolean codecShouldBeRunning() {
        return this.mState == 2 && this.mSurface != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCodec() {
        int i2;
        Rect rectMakeViewport;
        Log.e("AHU.VIDEO", " updateCodec() 00  mCodec = " + this.mCodec + " codecShouldBeRunning() : " + codecShouldBeRunning());
        if (this.mCodec != null) {
            if (codecShouldBeRunning()) {
                Rect rect = this.mSurfaceFrame;
                int i3 = rect.right;
                if (i3 <= 0 || (i2 = rect.bottom) <= 0) {
                    return;
                }
                checkScale(i3, i2);
                return;
            }
            this.mInputThread.shutdown();
            this.mInputThread = null;
            this.mOutputThread.shutdown();
            this.mOutputThread = null;
            this.mInputBuffers = null;
            this.mCodec.stop();
            this.mCodec.release();
            this.mCodec = null;
            return;
        }
        if (codecShouldBeRunning()) {
            boolean z2 = this.mSurfaceFrame.width() < this.mSurfaceFrame.height();
            Log.d("AHU.VIDEO", "Surface " + this.mSurfaceFrame + " becomes null for video " + this.mVideoSize + " mLayoutChangeOngoing : " + this.mLayoutChangeOngoing);
            if (z2 && this.port.viewport == null) {
                Rect rect2 = this.mSurfaceFrame;
                rectMakeViewport = DimensionUtils.makeViewport(rect2.right, rect2.bottom, this.mVideoSize, this.mEmulatedScreen);
                this.port.viewport = new Rect(rectMakeViewport);
                this.port.previewSize = new Rect(this.mSurfaceFrame);
            } else if (z2 || this.landscape.viewport != null) {
                rectMakeViewport = null;
            } else {
                Rect rect3 = this.mSurfaceFrame;
                rectMakeViewport = DimensionUtils.makeViewport(rect3.right, rect3.bottom, this.mVideoSize, this.mEmulatedScreen);
                this.landscape.viewport = new Rect(rectMakeViewport);
                this.landscape.previewSize = new Rect(this.mSurfaceFrame);
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mSurfaceView.getLayoutParams();
            Rect rect4 = (z2 ? this.port : this.landscape).viewport;
            this.mViewport = rect4;
            if (rect4 != null) {
                Log.e("AHU.VIDEO", "xxxx 00  mViewport = " + this.mViewport + " width : " + this.mViewport.width() + " height: " + this.mViewport.height());
                marginLayoutParams.setMargins(Math.min(this.mViewport.left, 0), Math.min(this.mViewport.top, 0), Math.min(this.mViewport.left, 0), Math.min(this.mViewport.top, 0));
                marginLayoutParams.width = this.mViewport.width();
                marginLayoutParams.height = this.mViewport.height();
                this.mSurfaceView.setLayoutParams(marginLayoutParams);
            } else if ((this.mSurfaceView.getWidth() != rectMakeViewport.width() || this.mSurfaceView.getHeight() != rectMakeViewport.height()) && !this.mLayoutChangeOngoing) {
                Log.e("AHU.VIDEO", " updateCodec() 01  mViewport : " + this.mViewport + " layoutParams : " + marginLayoutParams);
                marginLayoutParams.width = rectMakeViewport.width();
                marginLayoutParams.height = rectMakeViewport.height();
                marginLayoutParams.setMargins(Math.min(this.mViewport.left, 0), Math.min(this.mViewport.top, 0), Math.min(this.mViewport.left, 0), Math.min(this.mViewport.top, 0));
                this.mSurfaceView.setLayoutParams(marginLayoutParams);
                Log.d("AHU.VIDEO", "layout change requested " + marginLayoutParams);
                this.mLayoutChangeOngoing = true;
                return;
            }
            this.mLayoutChangeOngoing = false;
            Log.e("AHU.VIDEO", "xxxx 01  mViewport = " + this.mViewport);
            try {
                this.mCodec = MediaCodec.createDecoderByType(MediaFormat.MIMETYPE_VIDEO_AVC);
                MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(MediaFormat.MIMETYPE_VIDEO_AVC, this.mVideoSize.width(), this.mVideoSize.height());
                checkScale(this.mViewport.width(), this.mViewport.height());
                this.mCodec.configure(mediaFormatCreateVideoFormat, this.mSurface, (MediaCrypto) null, 0);
                this.mCodec.setVideoScalingMode(1);
                this.mCodec.start();
                this.mInputBuffers = this.mCodec.getInputBuffers();
                DecodeOutputThread decodeOutputThread = new DecodeOutputThread();
                this.mOutputThread = decodeOutputThread;
                decodeOutputThread.start();
                this.mOffset = new Rect(this.mViewport);
                DecodeInputThread decodeInputThread = new DecodeInputThread();
                this.mInputThread = decodeInputThread;
                decodeInputThread.start();
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSurface(Surface surface, int i2, int i3) {
        if (this.mSurface != null) {
            this.mListener.onSurfaceDestroyed(this.mLayoutChangeOngoing);
        }
        this.mSurface = surface;
        this.mSurfaceFrame.set(0, 0, i2, i3);
        if (i2 > 0 && i3 > 0) {
            updateCodec();
        }
        this.mListener.onSurfaceCreated(i2, i3, this.mLayoutChangeOngoing);
    }

    public synchronized void decodeBuffer(VideoFrame videoFrame) {
        try {
            if (videoFrame == null) {
                throw new IllegalArgumentException();
            }
            if (this.mState == 1) {
                throw new IllegalStateException();
            }
            if (this.mState == 3) {
                Log.i("AHU.VIDEO", "Received frame when shutting down, ignoring.");
            } else {
                this.mPendingInputBuffers.add(videoFrame);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public Rect getRenderFrame() {
        return this.mSurfaceFrame;
    }

    public synchronized void handleCodecConfig(byte[] bArr) {
        if (this.mState == 1) {
            throw new IllegalStateException();
        }
        if (this.mState == 3) {
            Log.i("AHU.VIDEO", "Received codec config while shutting down. Ignoring.");
            return;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length);
        byteBufferAllocate.put(bArr);
        this.mPendingInputBuffers.add(new VideoFrame(0, 0L, byteBufferAllocate));
    }

    public boolean isStarted() {
        return this.mState == 2;
    }

    public synchronized void prepareStart(int i2, int i3) {
        this.mVideoSize = new Rect(0, 0, i2, i3);
        this.mState = 2;
    }

    public synchronized void release() {
        if (this.mSurface != null) {
            this.mSurface = null;
            this.mListener.onSurfaceDestroyed(false);
        }
        this.mSurfaceView.getHolder().removeCallback(this.mSurfaceCallback);
        stop();
    }

    public void setOffset(Rect rect) {
        this.mOffset = rect;
    }

    public synchronized void start() {
        if (this.mSurfaceFrame.width() > 0 && this.mSurfaceFrame.height() > 0) {
            Surface surface = this.mSurface;
            if (surface != null && surface.isValid()) {
                updateCodec();
            }
            Log.w("AHU.VIDEO", "Cannot start - surface is null or invalid");
        }
    }

    public synchronized void stop() {
        this.mState = 3;
        this.mPendingInputBuffers.clear();
        this.mQueuedInputBuffers.clear();
        clear();
        updateCodec();
    }

    public MotionEvent transformMotion(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[pointerCount];
        MotionEvent.PointerCoords[] pointerCoordsArr = new MotionEvent.PointerCoords[pointerCount];
        for (int i2 = 0; i2 < pointerCount; i2++) {
            MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
            pointerPropertiesArr[i2] = pointerProperties;
            motionEvent.getPointerProperties(i2, pointerProperties);
            MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
            pointerCoordsArr[i2] = pointerCoords;
            motionEvent.getPointerCoords(i2, pointerCoords);
            MotionEvent.PointerCoords pointerCoords2 = pointerCoordsArr[i2];
            float f2 = pointerCoords2.f207x * this.mTouchXScale;
            pointerCoords2.f207x = f2;
            pointerCoords2.f208y *= this.mTouchYScale;
            Rect rect = this.mOffset;
            float f3 = rect == null ? 0.0f : rect.left;
            float f4 = rect == null ? 0.0f : rect.top;
            Rect rect2 = this.mVideoSize;
            if (rect2 != null) {
                pointerCoords2.f207x = (f3 * this.mTouchXScale) + Math.min(rect2.right, Math.max(f2, 0.0f));
                MotionEvent.PointerCoords pointerCoords3 = pointerCoordsArr[i2];
                pointerCoords3.f208y = (f4 * this.mTouchYScale) + Math.min(this.mVideoSize.bottom, Math.max(pointerCoords3.f208y, 0.0f));
            }
        }
        return MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), motionEvent.getAction(), pointerCount, pointerPropertiesArr, pointerCoordsArr, motionEvent.getMetaState(), motionEvent.getButtonState(), motionEvent.getXPrecision(), motionEvent.getYPrecision(), motionEvent.getDeviceId(), motionEvent.getEdgeFlags(), motionEvent.getSource(), motionEvent.getFlags());
    }

    public void updatePreviewSize(int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mSurfaceView.getLayoutParams();
        DisplayMetrics displayMetrics = this.mSurfaceView.getContext().getResources().getDisplayMetrics();
        boolean z2 = displayMetrics.widthPixels < displayMetrics.heightPixels;
        Rect rect = (z2 ? this.port : this.landscape).viewport;
        Rect rect2 = (z2 ? this.port : this.landscape).previewSize;
        Log.e("AHU.VIDEO", "updatePreviewSize old  mViewport = " + this.mViewport);
        if (rect != null) {
            this.mViewport = new Rect(rect);
        } else {
            rect2 = z2 ? this.landscape.previewSize : this.port.previewSize;
        }
        Log.e("AHU.VIDEO", "updatePreviewSize new  mViewport = " + this.mViewport + " surfaceFrame : " + rect2);
        if (rect == null) {
            float fWidth = rect2.width() / rect2.height();
            int iWidth = rect2.width();
            float f2 = i2;
            int iMin = Math.min((int) (f2 / fWidth), i3);
            Log.e("AHU.VIDEO", "xxxx  surfaceFrame = " + rect2 + "  mSurfaceView.getWidth() = " + this.mSurfaceView.getWidth());
            float fHeight = (float) iMin;
            if (z2) {
                float fWidth2 = this.mVideoSize.width() > i2 ? (f2 / iWidth) * this.mVideoSize.width() : this.mVideoSize.width();
                fHeight = this.mVideoSize.width() > i2 ? (f2 / iWidth) * this.mVideoSize.height() : this.mVideoSize.height();
                f2 = fWidth2;
            } else {
                float fWidth3 = this.mVideoSize.width() / this.mVideoSize.height();
                if (fWidth3 > fWidth) {
                    fHeight = f2 / fWidth3;
                } else {
                    f2 = fHeight * fWidth3;
                }
            }
            int iRound = (Math.round(f2) / 2) * 2;
            int iRound2 = (Math.round(fHeight) / 2) * 2;
            int i4 = i2 - iRound;
            int i5 = i3 > iRound2 ? iRound2 - iMin : iMin - iRound2;
            StringBuilder sbT = c.t("xxxx  fixWidth = ", i2, "  fixHeight = ", iMin, " surfaceFrame: ");
            sbT.append(rect2);
            Log.e("AHU.VIDEO", sbT.toString());
            StringBuilder sb = new StringBuilder("xxxx  newWidth = ");
            sb.append(iRound);
            sb.append("  newHeight = ");
            m.u(sb, iRound2, "  extraWidth = ", i4, " extraHeight = ");
            sb.append(i5);
            Log.e("AHU.VIDEO", sb.toString());
            int i6 = i4 / 2;
            int i7 = i5 / 2;
            this.mViewport = new Rect(i6, i7, i2 - i6, i5 >= 0 ? iRound2 + i7 : iMin - i7);
            Log.e("AHU.VIDEO", "xxxx  mViewport = " + this.mViewport);
            marginLayoutParams.width = iRound;
            marginLayoutParams.height = iRound2;
            i3 = iMin;
        } else {
            Log.e("AHU.VIDEO", "xxxx  mViewport = " + this.mViewport);
            marginLayoutParams.width = this.mViewport.width();
            marginLayoutParams.height = this.mViewport.height();
        }
        if (z2) {
            this.port.viewport = new Rect(this.mViewport);
            this.port.previewSize = new Rect(0, 0, i2, i3);
        } else {
            this.landscape.viewport = new Rect(this.mViewport);
            this.landscape.previewSize = new Rect(0, 0, i2, i3);
        }
        Rect rect3 = this.mViewport;
        int i8 = rect3.left;
        int i9 = rect3.top;
        marginLayoutParams.setMargins(i8, i9, i8, i9);
        this.mSurfaceView.setLayoutParams(marginLayoutParams);
        updateSurfaceSize(this.mViewport.width(), this.mViewport.height());
    }

    public void updateSurfaceSize(int i2, int i3) {
        this.mSurfaceFrame.set(0, 0, i2, i3);
        Rect rect = this.mSurfaceFrame;
        checkScale(rect.right, rect.bottom);
        Log.d("AHU.VIDEO", "updateSurfaceSize mSurfaceFrame: " + this.mSurfaceFrame + " mVideoSize :" + this.mVideoSize + "  scale: " + this.mTouchXScale + "," + this.mTouchYScale);
    }
}
