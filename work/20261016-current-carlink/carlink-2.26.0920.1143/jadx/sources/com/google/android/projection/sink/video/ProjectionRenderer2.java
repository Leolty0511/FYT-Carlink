package com.google.android.projection.sink.video;

import android.graphics.Rect;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.provider.SettingsStringUtil;
import android.util.Log;
import android.util.Size;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.projection.common.BufferPool;
import com.google.android.projection.protocol.VideoFrame;
import com.google.android.projection.sink.audio.AudioLatencyChecker;
import java.nio.ByteBuffer;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class ProjectionRenderer2 {
    private static final boolean DBG_TRACE = false;
    private static final boolean DEBUG_TOUCH = false;
    private static final boolean DEBUG_VIDEO = false;
    private static final int DEQUEUE_BUFFER_FAIL_MAX_RETRY = 10;
    private static final int DEQUEUE_BUFFER_WAIT_TIME_US = 100000;
    private static final int RENDERER_STATE_NOT_STARTED = 1;
    private static final int RENDERER_STATE_RUNNING = 2;
    private static final int RENDERER_STATE_STOPPED = 3;
    private static final String TAG = "AHU.VIDEO";
    Handler H;
    private final AudioLatencyChecker mAudioLatencyChecker;
    private MediaCodec mCodec;
    private int mCurrentHeight;
    private int mCurrentWidth;
    private Rect mDefaultViewport;
    private final DimensionUtils.ScreenSettings mEmulatedScreen;
    private final FrameCounter mFrameCounter;
    private ByteBuffer[] mInputBuffers;
    private DecodeInputThread mInputThread;
    private final Listener mListener;
    private DecodeOutputThread mOutputThread;
    private Surface mSurface;
    private final SurfaceHolder.Callback mSurfaceCallback;
    private final SurfaceView mSurfaceView;
    private final VideoLatencyChecker mVideoLatencyChecker;
    private Rect mVideoSize;
    private Rect mViewport;
    private Size mWindowSize;
    private ConstraintLayout.LayoutParams params;
    private volatile int mState = 1;
    private final Rect mSurfaceFrame = new Rect();
    private float mTouchXScale = 1.0f;
    private float mTouchYScale = 1.0f;
    private float mTouchOffsetX = 0.0f;
    private float mTouchOffsetY = 0.0f;
    private boolean mLayoutChangeOngoing = false;
    private final LinkedBlockingQueue<VideoFrame> mPendingInputBuffers = new LinkedBlockingQueue<>();
    private final LinkedBlockingQueue<VideoFrame> mQueuedInputBuffers = new LinkedBlockingQueue<>();
    private Runnable layoutRunnable = new Runnable() { // from class: com.google.android.projection.sink.video.ProjectionRenderer2.1
        @Override // java.lang.Runnable
        public void run() {
            if (ProjectionRenderer2.this.mSurfaceView == null || ProjectionRenderer2.this.params == null) {
                return;
            }
            ProjectionRenderer2.this.mSurfaceView.setLayoutParams(ProjectionRenderer2.this.params);
        }
    };

    public final class DecodeInputThread extends Thread {
        private boolean mShutdownThread;

        public DecodeInputThread() {
            super("ProjectionRenderer2.DecodeInputThread");
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
                        videoFrame = (VideoFrame) ProjectionRenderer2.this.mPendingInputBuffers.poll(200L, TimeUnit.MILLISECONDS);
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
                if (ProjectionRenderer2.this.mVideoLatencyChecker != null) {
                    ProjectionRenderer2.this.mVideoLatencyChecker.onDecodingStart(iLimit, jNanoTime);
                }
                while (iLimit > 0) {
                    int i2 = 0;
                    while (true) {
                        try {
                            iDequeueInputBuffer = ProjectionRenderer2.this.mCodec.dequeueInputBuffer(100000L);
                        } catch (Exception unused) {
                            iDequeueInputBuffer = -1;
                        }
                        if (iDequeueInputBuffer != -1) {
                            z2 = false;
                            break;
                        }
                        i2++;
                        if (i2 > 10) {
                            ProjectionRenderer2.this.ackFrame();
                            z2 = true;
                            break;
                        }
                    }
                    if (z2) {
                        break;
                    }
                    ByteBuffer byteBuffer2 = ProjectionRenderer2.this.mInputBuffers[iDequeueInputBuffer];
                    int iMin = Math.min(byteBuffer2.capacity(), iLimit);
                    byteBuffer2.rewind();
                    byteBuffer2.put(bArrArray, iArrayOffset, iMin);
                    ProjectionRenderer2.this.mCodec.queueInputBuffer(iDequeueInputBuffer, 0, byteBuffer2.position(), jNanoTime, z3 ? 0 : 2);
                    if (!z3) {
                        ProjectionRenderer2.this.ackFrame();
                        z3 = true;
                    }
                    iLimit -= iMin;
                    iArrayOffset += iMin;
                }
                if (iLimit == 0) {
                    ProjectionRenderer2.this.mQueuedInputBuffers.add(videoFrame);
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
            super("ProjectionRenderer2.DecodeOutputThread");
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
                int iDequeueOutputBuffer = ProjectionRenderer2.this.mCodec.dequeueOutputBuffer(bufferInfo, 1000L);
                if (iDequeueOutputBuffer != -3 && iDequeueOutputBuffer >= 0) {
                    ProjectionRenderer2.this.ackFrame();
                    if (ProjectionRenderer2.this.mVideoLatencyChecker != null) {
                        ProjectionRenderer2.this.mVideoLatencyChecker.onDecodingFinish(bufferInfo.presentationTimeUs);
                    }
                    if (ProjectionRenderer2.this.mFrameCounter != null) {
                        ProjectionRenderer2.this.mFrameCounter.onRenderFrame(ProjectionRenderer2.this.mVideoLatencyChecker != null ? ProjectionRenderer2.this.mVideoLatencyChecker.getLatestLatency() : 0L, ProjectionRenderer2.this.mAudioLatencyChecker != null ? ProjectionRenderer2.this.mAudioLatencyChecker.getLatestLatency() : 0L);
                    }
                    ProjectionRenderer2.this.mCodec.releaseOutputBuffer(iDequeueOutputBuffer, true);
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

        void onSurfaceCreated();

        void onSurfaceCreated(int i2, int i3, boolean z2);

        void onSurfaceDestroyed();

        void onSurfaceDestroyed(boolean z2);
    }

    public ProjectionRenderer2(SurfaceView surfaceView, TextView textView, Listener listener, DimensionUtils.ScreenSettings screenSettings, VideoLatencyChecker videoLatencyChecker, AudioLatencyChecker audioLatencyChecker) {
        View view;
        SurfaceHolder.Callback callback = new SurfaceHolder.Callback() { // from class: com.google.android.projection.sink.video.ProjectionRenderer2.2
            boolean isSurfaceCreated = false;

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
                synchronized (this) {
                    if (!this.isSurfaceCreated) {
                        this.isSurfaceCreated = true;
                        ProjectionRenderer2.this.mListener.onSurfaceCreated();
                    }
                    View view2 = (View) ProjectionRenderer2.this.mSurfaceView.getParent();
                    if (view2 != null) {
                        ProjectionRenderer2.this.updateSurface(surfaceHolder.getSurface(), view2.getWidth(), view2.getHeight());
                    } else {
                        ProjectionRenderer2.this.updateSurface(surfaceHolder.getSurface(), i3, i4);
                    }
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                synchronized (this) {
                    this.isSurfaceCreated = true;
                    ProjectionRenderer2.this.mListener.onSurfaceCreated();
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                synchronized (this) {
                    ProjectionRenderer2.this.mListener.onSurfaceDestroyed(false);
                    ProjectionRenderer2.this.mListener.onSurfaceDestroyed();
                    this.isSurfaceCreated = false;
                    ProjectionRenderer2.this.mSurface = null;
                    ProjectionRenderer2.this.updateCodec();
                }
            }
        };
        this.mSurfaceCallback = callback;
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
        SurfaceHolder holder = surfaceView.getHolder();
        Surface surface = holder.getSurface();
        if (surface != null && (view = (View) surfaceView.getParent()) != null) {
            holder.getSurfaceFrame();
            updateSurface(surface, view.getWidth(), view.getHeight());
        }
        holder.addCallback(callback);
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
        this.mTouchOffsetX = (this.mEmulatedScreen.getWidth() - this.mVideoSize.right) / 2.0f;
        this.mTouchOffsetY = (this.mEmulatedScreen.getHeight() - this.mVideoSize.bottom) / 2.0f;
        Log.e("AHU.VIDEO", "checkScale mTouchXScale: " + this.mTouchXScale + " mTouchYScale:" + this.mTouchYScale);
        Log.e("AHU.VIDEO", "checkScale mTouchOffsetX: " + this.mTouchOffsetX + " mTouchOffsetY:" + this.mTouchOffsetY);
    }

    private void clearSurfaceViewLayoutParams() {
        SurfaceView surfaceView = this.mSurfaceView;
        if (surfaceView != null) {
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) surfaceView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -1;
            layoutParams.dimensionRatio = "";
            this.mSurfaceView.setLayoutParams(layoutParams);
        }
    }

    private boolean codecShouldBeRunning() {
        return this.mState == 2 && this.mSurface != null;
    }

    private boolean setDynamicRatio(View view, int i2, int i3) {
        if (this.mDefaultViewport == null) {
            this.mDefaultViewport = new Rect(0, 0, i2, i3);
        }
        View view2 = (View) view.getParent();
        float width = this.mWindowSize.getWidth() / this.mWindowSize.getHeight();
        float width2 = view2.getWidth() / view2.getHeight();
        float width3 = this.mEmulatedScreen.getWidth() / this.mEmulatedScreen.getHeight();
        int iWidth = this.mDefaultViewport.width();
        int iHeight = this.mDefaultViewport.height();
        Log.e("AHU.VIDEO", "mVideoSize: " + this.mVideoSize);
        Log.e("AHU.VIDEO", "mDefaultViewport: " + this.mDefaultViewport);
        Log.e("AHU.VIDEO", "mSurfaceFrame: " + this.mSurfaceFrame);
        Log.e("AHU.VIDEO", "mWindowSize: " + this.mWindowSize.getWidth() + " x " + this.mWindowSize.getHeight());
        Log.e("AHU.VIDEO", "Parent Size: " + view2.getWidth() + " x " + view2.getHeight());
        Log.e("AHU.VIDEO", "defaultRatio: " + width + " parentRatio : " + width2 + " emulatedRatio: " + width3);
        float f2 = (float) iWidth;
        float f3 = (float) iHeight;
        Math.min(f2 / ((float) view2.getWidth()), f3 / ((float) view2.getHeight()));
        float fMin = Math.min(((float) view2.getWidth()) / ((float) this.mEmulatedScreen.getWidth()), ((float) view2.getHeight()) / ((float) this.mEmulatedScreen.getHeight()));
        int width4 = (int) (((float) this.mEmulatedScreen.getWidth()) * fMin);
        int height = (int) (((float) this.mEmulatedScreen.getHeight()) * fMin);
        int i4 = (int) (f2 * fMin);
        int i5 = (int) (f3 * fMin);
        Log.e("AHU.VIDEO", "00 target targetWidth: " + i4 + " targetHeight : " + i5);
        Log.e("AHU.VIDEO", "00 target emulatedWidth: " + width4 + " emulatedHeight : " + height);
        Log.e("AHU.VIDEO", "11 target targetWidth: " + i4 + " targetHeight : " + i5);
        if (i4 == this.mCurrentWidth && i5 == this.mCurrentHeight) {
            return false;
        }
        int width5 = view.getWidth();
        int height2 = view.getHeight();
        Log.e("AHU.VIDEO", "update SurfaceView targetWidth: " + i4 + " targetHeight : " + i5);
        this.mCurrentWidth = i4;
        this.mCurrentHeight = i5;
        checkScale((float) i4, (float) i5);
        if (height2 == i5 && width5 == i4) {
            return false;
        }
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) view.getLayoutParams();
        this.params = layoutParams;
        layoutParams.dimensionRatio = iWidth + SettingsStringUtil.DELIMITER + iHeight;
        ConstraintLayout.LayoutParams layoutParams2 = this.params;
        layoutParams2.width = i4;
        layoutParams2.height = 0;
        view.getHandler().removeCallbacks(this.layoutRunnable);
        view.getHandler().postDelayed(this.layoutRunnable, 200L);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCodec() {
        if (this.mCodec != null) {
            if (codecShouldBeRunning()) {
                setDynamicRatio(this.mSurfaceView, this.mViewport.width(), this.mViewport.height());
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
            Rect rect = this.mSurfaceFrame;
            Rect rectMakeViewport = DimensionUtils.makeViewport(rect.right, rect.bottom, this.mVideoSize);
            this.mViewport = rectMakeViewport;
            if (setDynamicRatio(this.mSurfaceView, rectMakeViewport.width(), this.mViewport.height()) && !this.mLayoutChangeOngoing) {
                this.mLayoutChangeOngoing = true;
                return;
            }
            this.mLayoutChangeOngoing = false;
            try {
                this.mCodec = MediaCodec.createDecoderByType(MediaFormat.MIMETYPE_VIDEO_AVC);
                this.mCodec.configure(MediaFormat.createVideoFormat(MediaFormat.MIMETYPE_VIDEO_AVC, this.mVideoSize.width(), this.mVideoSize.height()), this.mSurface, (MediaCrypto) null, 0);
                this.mCodec.setVideoScalingMode(1);
                this.mCodec.start();
                this.mInputBuffers = this.mCodec.getInputBuffers();
                DecodeOutputThread decodeOutputThread = new DecodeOutputThread();
                this.mOutputThread = decodeOutputThread;
                decodeOutputThread.start();
                DecodeInputThread decodeInputThread = new DecodeInputThread();
                this.mInputThread = decodeInputThread;
                decodeInputThread.start();
            } catch (Exception e2) {
                Log.e("AHU.VIDEO", "updateCodec failed for video " + this.mVideoSize, e2);
                MediaCodec mediaCodec = this.mCodec;
                if (mediaCodec != null) {
                    try {
                        mediaCodec.release();
                    } catch (Exception unused) {
                    }
                    this.mCodec = null;
                }
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
            if (this.mWindowSize == null) {
                this.mWindowSize = new Size(i2, i3);
            }
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
                return;
            }
            this.mPendingInputBuffers.add(videoFrame);
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
            return;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length);
        byteBufferAllocate.put(bArr);
        this.mPendingInputBuffers.add(new VideoFrame(0, 0L, byteBufferAllocate));
    }

    public boolean isStarted() {
        return this.mState == 2;
    }

    public void onLayoutChanged() {
        if (this.mCodec != null && codecShouldBeRunning()) {
            setDynamicRatio(this.mSurfaceView, this.mViewport.width(), this.mViewport.height());
        } else if (this.mSurfaceView.getParent() instanceof ViewGroup) {
            View view = (View) this.mSurfaceView.getParent();
            this.mSurfaceFrame.set(0, 0, view.getWidth(), view.getHeight());
        }
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

    public void resetSurfaceViewSize(int i2, int i3) {
        this.mCurrentWidth = i2;
        this.mCurrentHeight = i3;
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
            Rect rect = this.mVideoSize;
            if (rect != null) {
                pointerCoords2.f207x = Math.min(rect.right, Math.max(f2, 0.0f)) + this.mTouchOffsetX;
                MotionEvent.PointerCoords pointerCoords3 = pointerCoordsArr[i2];
                pointerCoords3.f208y = Math.min(this.mVideoSize.bottom, Math.max(pointerCoords3.f208y, 0.0f)) + this.mTouchOffsetY;
            }
        }
        return MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), motionEvent.getAction(), pointerCount, pointerPropertiesArr, pointerCoordsArr, motionEvent.getMetaState(), motionEvent.getButtonState(), motionEvent.getXPrecision(), motionEvent.getYPrecision(), motionEvent.getDeviceId(), motionEvent.getEdgeFlags(), motionEvent.getSource(), motionEvent.getFlags());
    }

    public void updateSurfaceSize(int i2, int i3) {
        this.mSurfaceFrame.set(0, 0, i2, i3);
        Log.d("AHU.VIDEO", "updateSurfaceSize mSurfaceFrame: " + this.mSurfaceFrame + " mVideoSize :" + this.mVideoSize + "  scale: " + this.mTouchXScale + "," + this.mTouchYScale);
    }
}
