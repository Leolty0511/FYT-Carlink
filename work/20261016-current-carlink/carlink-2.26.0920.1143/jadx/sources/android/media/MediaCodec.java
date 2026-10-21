package android.media;

import android.accessibilityservice.c;
import android.app.m;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.IHwBinder;
import android.os.Looper;
import android.os.Message;
import android.os.PersistableBundle;
import android.view.Surface;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.NioUtils;
import java.nio.ReadOnlyBufferException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class MediaCodec {
    public static final int BUFFER_FLAG_CODEC_CONFIG = 2;
    public static final int BUFFER_FLAG_END_OF_STREAM = 4;
    public static final int BUFFER_FLAG_KEY_FRAME = 1;
    public static final int BUFFER_FLAG_PARTIAL_FRAME = 8;
    public static final int BUFFER_FLAG_SYNC_FRAME = 1;
    private static final int CB_ERROR = 3;
    private static final int CB_INPUT_AVAILABLE = 1;
    private static final int CB_OUTPUT_AVAILABLE = 2;
    private static final int CB_OUTPUT_FORMAT_CHANGE = 4;
    public static final int CONFIGURE_FLAG_ENCODE = 1;
    public static final int CRYPTO_MODE_AES_CBC = 2;
    public static final int CRYPTO_MODE_AES_CTR = 1;
    public static final int CRYPTO_MODE_UNENCRYPTED = 0;
    private static final int EVENT_CALLBACK = 1;
    private static final int EVENT_FRAME_RENDERED = 3;
    private static final int EVENT_SET_CALLBACK = 2;
    public static final int INFO_OUTPUT_BUFFERS_CHANGED = -3;
    public static final int INFO_OUTPUT_FORMAT_CHANGED = -2;
    public static final int INFO_TRY_AGAIN_LATER = -1;
    public static final String PARAMETER_KEY_REQUEST_SYNC_FRAME = "request-sync";
    public static final String PARAMETER_KEY_SUSPEND = "drop-input-frames";
    public static final String PARAMETER_KEY_VIDEO_BITRATE = "video-bitrate";
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT = 1;
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING = 2;
    private final Object mBufferLock;
    private ByteBuffer[] mCachedInputBuffers;
    private ByteBuffer[] mCachedOutputBuffers;
    private Callback mCallback;
    private EventHandler mCallbackHandler;
    private final BufferMap mDequeuedInputBuffers;
    private final BufferMap mDequeuedOutputBuffers;
    private EventHandler mEventHandler;
    private long mNativeContext;
    private EventHandler mOnFrameRenderedHandler;
    private OnFrameRenderedListener mOnFrameRenderedListener;
    private Object mListenerLock = new Object();
    private boolean mHasSurface = false;
    private final Map<Integer, BufferInfo> mDequeuedOutputInfos = new HashMap();

    @Retention(RetentionPolicy.SOURCE)
    public @interface BufferFlag {
    }

    public static final class BufferInfo {
        public int flags;
        public int offset;
        public long presentationTimeUs;
        public int size;

        public BufferInfo dup() {
            BufferInfo bufferInfo = new BufferInfo();
            bufferInfo.set(this.offset, this.size, this.presentationTimeUs, this.flags);
            return bufferInfo;
        }

        public void set(int i2, int i3, long j2, int i4) {
            this.offset = i2;
            this.size = i3;
            this.presentationTimeUs = j2;
            this.flags = i4;
        }
    }

    public static abstract class Callback {
        public abstract void onError(MediaCodec mediaCodec, CodecException codecException);

        public abstract void onInputBufferAvailable(MediaCodec mediaCodec, int i2);

        public abstract void onOutputBufferAvailable(MediaCodec mediaCodec, int i2, BufferInfo bufferInfo);

        public abstract void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat);
    }

    public static final class CodecException extends IllegalStateException {
        private static final int ACTION_RECOVERABLE = 2;
        private static final int ACTION_TRANSIENT = 1;
        public static final int ERROR_INSUFFICIENT_RESOURCE = 1100;
        public static final int ERROR_RECLAIMED = 1101;
        private final int mActionCode;
        private final String mDiagnosticInfo;
        private final int mErrorCode;

        @Retention(RetentionPolicy.SOURCE)
        public @interface ReasonCode {
        }

        public CodecException(int i2, int i3, String str) {
            super(str);
            this.mErrorCode = i2;
            this.mActionCode = i3;
            this.mDiagnosticInfo = "android.media.MediaCodec.error_" + (i2 < 0 ? "neg_" : "") + Math.abs(i2);
        }

        public String getDiagnosticInfo() {
            return this.mDiagnosticInfo;
        }

        public int getErrorCode() {
            return this.mErrorCode;
        }

        public boolean isRecoverable() {
            return this.mActionCode == 2;
        }

        public boolean isTransient() {
            return this.mActionCode == 1;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ConfigureFlag {
    }

    public static final class CryptoException extends RuntimeException {
        public static final int ERROR_INSUFFICIENT_OUTPUT_PROTECTION = 4;
        public static final int ERROR_KEY_EXPIRED = 2;
        public static final int ERROR_NO_KEY = 1;
        public static final int ERROR_RESOURCE_BUSY = 3;
        public static final int ERROR_SESSION_NOT_OPENED = 5;
        public static final int ERROR_UNSUPPORTED_OPERATION = 6;
        private int mErrorCode;

        @Retention(RetentionPolicy.SOURCE)
        public @interface CryptoErrorCode {
        }

        public CryptoException(int i2, String str) {
            super(str);
            this.mErrorCode = i2;
        }

        public int getErrorCode() {
            return this.mErrorCode;
        }
    }

    public static final class CryptoInfo {
        public byte[] iv;
        public byte[] key;
        public int mode;
        public int[] numBytesOfClearData;
        public int[] numBytesOfEncryptedData;
        public int numSubSamples;
        private Pattern pattern;
        private final Pattern zeroPattern = new Pattern(0, 0);

        public static final class Pattern {
            private int mEncryptBlocks;
            private int mSkipBlocks;

            public Pattern(int i2, int i3) {
                set(i2, i3);
            }

            public int getEncryptBlocks() {
                return this.mEncryptBlocks;
            }

            public int getSkipBlocks() {
                return this.mSkipBlocks;
            }

            public void set(int i2, int i3) {
                this.mEncryptBlocks = i2;
                this.mSkipBlocks = i3;
            }
        }

        public void set(int i2, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i3) {
            this.numSubSamples = i2;
            this.numBytesOfClearData = iArr;
            this.numBytesOfEncryptedData = iArr2;
            this.key = bArr;
            this.iv = bArr2;
            this.mode = i3;
            this.pattern = this.zeroPattern;
        }

        public void setPattern(Pattern pattern) {
            this.pattern = pattern;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.numSubSamples + " subsamples, key [");
            int i2 = 0;
            while (true) {
                byte[] bArr = this.key;
                if (i2 >= bArr.length) {
                    break;
                }
                sb.append("0123456789abcdef".charAt((bArr[i2] & 240) >> 4));
                sb.append("0123456789abcdef".charAt(this.key[i2] & 15));
                i2++;
            }
            sb.append("], iv [");
            for (int i3 = 0; i3 < this.key.length; i3++) {
                sb.append("0123456789abcdef".charAt((this.iv[i3] & 240) >> 4));
                sb.append("0123456789abcdef".charAt(this.iv[i3] & 15));
            }
            sb.append("], clear ");
            sb.append(Arrays.toString(this.numBytesOfClearData));
            sb.append(", encrypted ");
            sb.append(Arrays.toString(this.numBytesOfEncryptedData));
            return sb.toString();
        }
    }

    public class EventHandler extends Handler {
        private MediaCodec mCodec;

        public EventHandler(MediaCodec mediaCodec, Looper looper) {
            super(looper);
            this.mCodec = mediaCodec;
        }

        private void handleCallback(Message message) {
            if (MediaCodec.this.mCallback == null) {
                return;
            }
            int i2 = message.arg1;
            if (i2 == 1) {
                int i3 = message.arg2;
                synchronized (MediaCodec.this.mBufferLock) {
                    MediaCodec mediaCodec = MediaCodec.this;
                    mediaCodec.validateInputByteBuffer(mediaCodec.mCachedInputBuffers, i3);
                }
                MediaCodec.this.mCallback.onInputBufferAvailable(this.mCodec, i3);
                return;
            }
            if (i2 != 2) {
                if (i2 == 3) {
                    MediaCodec.this.mCallback.onError(this.mCodec, (CodecException) message.obj);
                    return;
                } else {
                    if (i2 != 4) {
                        return;
                    }
                    MediaCodec.this.mCallback.onOutputFormatChanged(this.mCodec, new MediaFormat((Map) message.obj));
                    return;
                }
            }
            int i4 = message.arg2;
            BufferInfo bufferInfo = (BufferInfo) message.obj;
            synchronized (MediaCodec.this.mBufferLock) {
                MediaCodec mediaCodec2 = MediaCodec.this;
                mediaCodec2.validateOutputByteBuffer(mediaCodec2.mCachedOutputBuffers, i4, bufferInfo);
            }
            MediaCodec.this.mCallback.onOutputBufferAvailable(this.mCodec, i4, bufferInfo);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                handleCallback(message);
                return;
            }
            if (i2 == 2) {
                MediaCodec.this.mCallback = (Callback) message.obj;
                return;
            }
            if (i2 != 3) {
                return;
            }
            synchronized (MediaCodec.this.mListenerLock) {
                Map map = (Map) message.obj;
                int i3 = 0;
                while (true) {
                    Object obj = map.get(i3 + "-media-time-us");
                    Object obj2 = map.get(i3 + "-system-nano");
                    if (obj == null || obj2 == null || MediaCodec.this.mOnFrameRenderedListener == null) {
                        break;
                        break;
                        break;
                    } else {
                        MediaCodec.this.mOnFrameRenderedListener.onFrameRendered(this.mCodec, ((Long) obj).longValue(), ((Long) obj2).longValue());
                        i3++;
                    }
                }
            }
        }
    }

    public static class MediaImage extends Image {
        private static final int TYPE_YUV = 1;
        private final ByteBuffer mBuffer;
        private final int mFormat = 35;
        private final int mHeight;
        private final ByteBuffer mInfo;
        private final boolean mIsReadOnly;
        private final Image.Plane[] mPlanes;
        private long mTimestamp;
        private final int mWidth;
        private final int mXOffset;
        private final int mYOffset;

        public class MediaPlane extends Image.Plane {
            private final int mColInc;
            private final ByteBuffer mData;
            private final int mRowInc;

            public MediaPlane(ByteBuffer byteBuffer, int i2, int i3) {
                this.mData = byteBuffer;
                this.mRowInc = i2;
                this.mColInc = i3;
            }

            @Override // android.media.Image.Plane
            public ByteBuffer getBuffer() {
                MediaImage.this.throwISEIfImageIsInvalid();
                return this.mData;
            }

            @Override // android.media.Image.Plane
            public int getPixelStride() {
                MediaImage.this.throwISEIfImageIsInvalid();
                return this.mColInc;
            }

            @Override // android.media.Image.Plane
            public int getRowStride() {
                MediaImage.this.throwISEIfImageIsInvalid();
                return this.mRowInc;
            }
        }

        public MediaImage(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, boolean z2, long j2, int i2, int i3, Rect rect) {
            this.mTimestamp = j2;
            this.mIsImageValid = true;
            this.mIsReadOnly = byteBuffer.isReadOnly();
            this.mBuffer = byteBuffer.duplicate();
            this.mXOffset = i2;
            this.mYOffset = i3;
            this.mInfo = byteBuffer2;
            if (byteBuffer2.remaining() != 104) {
                throw new UnsupportedOperationException("unsupported info length: " + byteBuffer2.remaining());
            }
            int i4 = byteBuffer2.getInt();
            if (i4 != 1) {
                throw new UnsupportedOperationException(c.d("unsupported type: ", i4));
            }
            int i5 = byteBuffer2.getInt();
            if (i5 != 3) {
                throw new RuntimeException(c.d("unexpected number of planes: ", i5));
            }
            int i6 = byteBuffer2.getInt();
            this.mWidth = i6;
            int i7 = byteBuffer2.getInt();
            this.mHeight = i7;
            if (i6 < 1 || i7 < 1) {
                throw new UnsupportedOperationException(m.e("unsupported size: ", i6, "x", i7));
            }
            int i8 = byteBuffer2.getInt();
            if (i8 != 8) {
                throw new UnsupportedOperationException(c.d("unsupported bit depth: ", i8));
            }
            int i9 = byteBuffer2.getInt();
            if (i9 != 8) {
                throw new UnsupportedOperationException(c.d("unsupported allocated bit depth: ", i9));
            }
            this.mPlanes = new MediaPlane[i5];
            int i10 = 0;
            while (i10 < i5) {
                int i11 = byteBuffer2.getInt();
                int i12 = byteBuffer2.getInt();
                int i13 = byteBuffer2.getInt();
                int i14 = byteBuffer2.getInt();
                int i15 = byteBuffer2.getInt();
                if (i14 == i15) {
                    if (i14 == (i10 == 0 ? 1 : 2)) {
                        if (i12 < 1 || i13 < 1) {
                            StringBuilder sbT = c.t("unexpected strides: ", i12, " pixel, ", i13, " row on plane ");
                            sbT.append(i10);
                            throw new UnsupportedOperationException(sbT.toString());
                        }
                        byteBuffer.clear();
                        byteBuffer.position(((i3 / i15) * i13) + ((i2 / i14) * i12) + this.mBuffer.position() + i11);
                        byteBuffer.limit((((this.mWidth / i14) - 1) * i12) + (((this.mHeight / i15) - 1) * i13) + byteBuffer.position() + Utils.divUp(i8, 8));
                        this.mPlanes[i10] = new MediaPlane(byteBuffer.slice(), i13, i12);
                        i10++;
                    }
                }
                StringBuilder sbT2 = c.t("unexpected subsampling: ", i14, "x", i15, " on plane ");
                sbT2.append(i10);
                throw new UnsupportedOperationException(sbT2.toString());
            }
            Rect rect2 = rect == null ? new Rect(0, 0, this.mWidth, this.mHeight) : rect;
            rect2.offset(-i2, -i3);
            super.setCropRect(rect2);
        }

        @Override // android.media.Image, java.lang.AutoCloseable
        public void close() {
            if (this.mIsImageValid) {
                NioUtils.freeDirectBuffer(this.mBuffer);
                this.mIsImageValid = false;
            }
        }

        @Override // android.media.Image
        public int getFormat() {
            throwISEIfImageIsInvalid();
            return this.mFormat;
        }

        @Override // android.media.Image
        public int getHeight() {
            throwISEIfImageIsInvalid();
            return this.mHeight;
        }

        @Override // android.media.Image
        public Image.Plane[] getPlanes() {
            throwISEIfImageIsInvalid();
            Image.Plane[] planeArr = this.mPlanes;
            return (Image.Plane[]) Arrays.copyOf(planeArr, planeArr.length);
        }

        @Override // android.media.Image
        public long getTimestamp() {
            throwISEIfImageIsInvalid();
            return this.mTimestamp;
        }

        @Override // android.media.Image
        public int getWidth() {
            throwISEIfImageIsInvalid();
            return this.mWidth;
        }

        @Override // android.media.Image
        public void setCropRect(Rect rect) {
            if (this.mIsReadOnly) {
                throw new ReadOnlyBufferException();
            }
            super.setCropRect(rect);
        }
    }

    public static final class MetricsConstants {
        public static final String CODEC = "android.media.mediacodec.codec";
        public static final String ENCODER = "android.media.mediacodec.encoder";
        public static final String HEIGHT = "android.media.mediacodec.height";
        public static final String MIME_TYPE = "android.media.mediacodec.mime";
        public static final String MODE = "android.media.mediacodec.mode";
        public static final String MODE_AUDIO = "audio";
        public static final String MODE_VIDEO = "video";
        public static final String ROTATION = "android.media.mediacodec.rotation";
        public static final String SECURE = "android.media.mediacodec.secure";
        public static final String WIDTH = "android.media.mediacodec.width";

        private MetricsConstants() {
        }
    }

    public interface OnFrameRenderedListener {
        void onFrameRendered(MediaCodec mediaCodec, long j2, long j3);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OutputBufferInfo {
    }

    public static class PersistentSurface extends Surface {
        private long mPersistentObject;

        @Override // android.view.Surface
        public void release() {
            MediaCodec.native_releasePersistentInputSurface(this);
            super.release();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface VideoScalingMode {
    }

    static {
        System.loadLibrary("media_jni");
        native_init();
    }

    private MediaCodec(String str, boolean z2, boolean z3) {
        this.mDequeuedInputBuffers = new BufferMap();
        this.mDequeuedOutputBuffers = new BufferMap();
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            this.mEventHandler = new EventHandler(this, looperMyLooper);
        } else {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                this.mEventHandler = new EventHandler(this, mainLooper);
            } else {
                this.mEventHandler = null;
            }
        }
        EventHandler eventHandler = this.mEventHandler;
        this.mCallbackHandler = eventHandler;
        this.mOnFrameRenderedHandler = eventHandler;
        this.mBufferLock = new Object();
        native_setup(str, z2, z3);
    }

    private final void cacheBuffers(boolean z2) {
        ByteBuffer[] buffers;
        try {
            buffers = getBuffers(z2);
            try {
                invalidateByteBuffers(buffers);
            } catch (IllegalStateException unused) {
            }
        } catch (IllegalStateException unused2) {
            buffers = null;
        }
        if (z2) {
            this.mCachedInputBuffers = buffers;
        } else {
            this.mCachedOutputBuffers = buffers;
        }
    }

    public static MediaCodec createByCodecName(String str) {
        return new MediaCodec(str, false, false);
    }

    public static MediaCodec createDecoderByType(String str) {
        return new MediaCodec(str, true, false);
    }

    public static MediaCodec createEncoderByType(String str) {
        return new MediaCodec(str, true, true);
    }

    public static Surface createPersistentInputSurface() {
        return native_createPersistentInputSurface();
    }

    private final void freeAllTrackedBuffers() {
        synchronized (this.mBufferLock) {
            freeByteBuffers(this.mCachedInputBuffers);
            freeByteBuffers(this.mCachedOutputBuffers);
            this.mCachedInputBuffers = null;
            this.mCachedOutputBuffers = null;
            this.mDequeuedInputBuffers.clear();
            this.mDequeuedOutputBuffers.clear();
        }
    }

    private final void freeByteBuffer(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            NioUtils.freeDirectBuffer(byteBuffer);
        }
    }

    private final void freeByteBuffers(ByteBuffer[] byteBufferArr) {
        if (byteBufferArr != null) {
            for (ByteBuffer byteBuffer : byteBufferArr) {
                freeByteBuffer(byteBuffer);
            }
        }
    }

    private final native ByteBuffer getBuffer(boolean z2, int i2);

    private final native ByteBuffer[] getBuffers(boolean z2);

    private EventHandler getEventHandlerOn(Handler handler, EventHandler eventHandler) {
        if (handler == null) {
            return this.mEventHandler;
        }
        Looper looper = handler.getLooper();
        return eventHandler.getLooper() == looper ? eventHandler : new EventHandler(this, looper);
    }

    private final native Map<String, Object> getFormatNative(boolean z2);

    private final native Image getImage(boolean z2, int i2);

    private final native Map<String, Object> getOutputFormatNative(int i2);

    private final void invalidateByteBuffer(ByteBuffer[] byteBufferArr, int i2) {
        ByteBuffer byteBuffer;
        if (byteBufferArr == null || i2 < 0 || i2 >= byteBufferArr.length || (byteBuffer = byteBufferArr[i2]) == null) {
            return;
        }
        byteBuffer.setAccessible(false);
    }

    private final void invalidateByteBuffers(ByteBuffer[] byteBufferArr) {
        if (byteBufferArr != null) {
            for (ByteBuffer byteBuffer : byteBufferArr) {
                if (byteBuffer != null) {
                    byteBuffer.setAccessible(false);
                }
            }
        }
    }

    private final native void native_configure(String[] strArr, Object[] objArr, Surface surface, MediaCrypto mediaCrypto, IHwBinder iHwBinder, int i2);

    private static final native PersistentSurface native_createPersistentInputSurface();

    private final native int native_dequeueInputBuffer(long j2);

    private final native int native_dequeueOutputBuffer(BufferInfo bufferInfo, long j2);

    private native void native_enableOnFrameRenderedListener(boolean z2);

    private final native void native_finalize();

    private final native void native_flush();

    private native PersistableBundle native_getMetrics();

    private static final native void native_init();

    private final native void native_queueInputBuffer(int i2, int i3, int i4, long j2, int i5);

    private final native void native_queueSecureInputBuffer(int i2, int i3, CryptoInfo cryptoInfo, long j2, int i4);

    private final native void native_release();

    /* JADX INFO: Access modifiers changed from: private */
    public static final native void native_releasePersistentInputSurface(Surface surface);

    private final native void native_reset();

    private final native void native_setCallback(Callback callback);

    private final native void native_setInputSurface(Surface surface);

    private native void native_setSurface(Surface surface);

    private final native void native_setup(String str, boolean z2, boolean z3);

    private final native void native_start();

    private final native void native_stop();

    private void postEventFromNative(int i2, int i3, int i4, Object obj) {
        synchronized (this.mListenerLock) {
            EventHandler eventHandler = this.mEventHandler;
            if (i2 == 1) {
                eventHandler = this.mCallbackHandler;
            } else if (i2 == 3) {
                eventHandler = this.mOnFrameRenderedHandler;
            }
            if (eventHandler != null) {
                eventHandler.sendMessage(eventHandler.obtainMessage(i2, i3, i4, obj));
            }
        }
    }

    private final native void releaseOutputBuffer(int i2, boolean z2, boolean z3, long j2);

    private final void revalidateByteBuffer(ByteBuffer[] byteBufferArr, int i2) {
        ByteBuffer byteBuffer;
        synchronized (this.mBufferLock) {
            if (byteBufferArr != null && i2 >= 0) {
                if (i2 < byteBufferArr.length && (byteBuffer = byteBufferArr[i2]) != null) {
                    byteBuffer.setAccessible(true);
                }
            }
        }
    }

    private final native void setParameters(String[] strArr, Object[] objArr);

    /* JADX INFO: Access modifiers changed from: private */
    public final void validateInputByteBuffer(ByteBuffer[] byteBufferArr, int i2) {
        ByteBuffer byteBuffer;
        if (byteBufferArr == null || i2 < 0 || i2 >= byteBufferArr.length || (byteBuffer = byteBufferArr[i2]) == null) {
            return;
        }
        byteBuffer.setAccessible(true);
        byteBuffer.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void validateOutputByteBuffer(ByteBuffer[] byteBufferArr, int i2, BufferInfo bufferInfo) {
        ByteBuffer byteBuffer;
        if (byteBufferArr == null || i2 < 0 || i2 >= byteBufferArr.length || (byteBuffer = byteBufferArr[i2]) == null) {
            return;
        }
        byteBuffer.setAccessible(true);
        byteBuffer.limit(bufferInfo.offset + bufferInfo.size).position(bufferInfo.offset);
    }

    public void configure(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i2) {
        configure(mediaFormat, surface, mediaCrypto, null, i2);
    }

    public final native Surface createInputSurface();

    public final int dequeueInputBuffer(long j2) {
        int iNative_dequeueInputBuffer = native_dequeueInputBuffer(j2);
        if (iNative_dequeueInputBuffer >= 0) {
            synchronized (this.mBufferLock) {
                validateInputByteBuffer(this.mCachedInputBuffers, iNative_dequeueInputBuffer);
            }
        }
        return iNative_dequeueInputBuffer;
    }

    public final int dequeueOutputBuffer(BufferInfo bufferInfo, long j2) {
        int iNative_dequeueOutputBuffer = native_dequeueOutputBuffer(bufferInfo, j2);
        synchronized (this.mBufferLock) {
            try {
                if (iNative_dequeueOutputBuffer == -3) {
                    cacheBuffers(false);
                } else if (iNative_dequeueOutputBuffer >= 0) {
                    validateOutputByteBuffer(this.mCachedOutputBuffers, iNative_dequeueOutputBuffer, bufferInfo);
                    if (this.mHasSurface) {
                        this.mDequeuedOutputInfos.put(Integer.valueOf(iNative_dequeueOutputBuffer), bufferInfo.dup());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iNative_dequeueOutputBuffer;
    }

    public void finalize() {
        native_finalize();
    }

    public final void flush() {
        synchronized (this.mBufferLock) {
            invalidateByteBuffers(this.mCachedInputBuffers);
            invalidateByteBuffers(this.mCachedOutputBuffers);
            this.mDequeuedInputBuffers.clear();
            this.mDequeuedOutputBuffers.clear();
        }
        native_flush();
    }

    public MediaCodecInfo getCodecInfo() {
        return MediaCodecList.getInfoFor(getName());
    }

    public ByteBuffer getInputBuffer(int i2) {
        ByteBuffer buffer = getBuffer(true, i2);
        synchronized (this.mBufferLock) {
            invalidateByteBuffer(this.mCachedInputBuffers, i2);
            this.mDequeuedInputBuffers.put(i2, buffer);
        }
        return buffer;
    }

    public ByteBuffer[] getInputBuffers() {
        ByteBuffer[] byteBufferArr = this.mCachedInputBuffers;
        if (byteBufferArr != null) {
            return byteBufferArr;
        }
        throw new IllegalStateException();
    }

    public final MediaFormat getInputFormat() {
        return new MediaFormat(getFormatNative(true));
    }

    public Image getInputImage(int i2) {
        Image image = getImage(true, i2);
        synchronized (this.mBufferLock) {
            invalidateByteBuffer(this.mCachedInputBuffers, i2);
            this.mDequeuedInputBuffers.put(i2, image);
        }
        return image;
    }

    public PersistableBundle getMetrics() {
        return native_getMetrics();
    }

    public final native String getName();

    public ByteBuffer getOutputBuffer(int i2) {
        ByteBuffer buffer = getBuffer(false, i2);
        synchronized (this.mBufferLock) {
            invalidateByteBuffer(this.mCachedOutputBuffers, i2);
            this.mDequeuedOutputBuffers.put(i2, buffer);
        }
        return buffer;
    }

    public ByteBuffer[] getOutputBuffers() {
        ByteBuffer[] byteBufferArr = this.mCachedOutputBuffers;
        if (byteBufferArr != null) {
            return byteBufferArr;
        }
        throw new IllegalStateException();
    }

    public final MediaFormat getOutputFormat() {
        return new MediaFormat(getFormatNative(false));
    }

    public Image getOutputImage(int i2) {
        Image image = getImage(false, i2);
        synchronized (this.mBufferLock) {
            invalidateByteBuffer(this.mCachedOutputBuffers, i2);
            this.mDequeuedOutputBuffers.put(i2, image);
        }
        return image;
    }

    public final void queueInputBuffer(int i2, int i3, int i4, long j2, int i5) {
        synchronized (this.mBufferLock) {
            invalidateByteBuffer(this.mCachedInputBuffers, i2);
            this.mDequeuedInputBuffers.remove(i2);
        }
        try {
            native_queueInputBuffer(i2, i3, i4, j2, i5);
        } catch (CryptoException | IllegalStateException e2) {
            revalidateByteBuffer(this.mCachedInputBuffers, i2);
            throw e2;
        }
    }

    public final void queueSecureInputBuffer(int i2, int i3, CryptoInfo cryptoInfo, long j2, int i4) {
        synchronized (this.mBufferLock) {
            invalidateByteBuffer(this.mCachedInputBuffers, i2);
            this.mDequeuedInputBuffers.remove(i2);
        }
        try {
            native_queueSecureInputBuffer(i2, i3, cryptoInfo, j2, i4);
        } catch (CryptoException | IllegalStateException e2) {
            revalidateByteBuffer(this.mCachedInputBuffers, i2);
            throw e2;
        }
    }

    public final void release() {
        freeAllTrackedBuffers();
        native_release();
    }

    public final void releaseOutputBuffer(int i2, boolean z2) {
        synchronized (this.mBufferLock) {
            invalidateByteBuffer(this.mCachedOutputBuffers, i2);
            this.mDequeuedOutputBuffers.remove(i2);
            if (this.mHasSurface) {
                this.mDequeuedOutputInfos.remove(Integer.valueOf(i2));
            }
        }
        releaseOutputBuffer(i2, z2, false, 0L);
    }

    public final void reset() {
        freeAllTrackedBuffers();
        native_reset();
    }

    public void setCallback(Callback callback, Handler handler) {
        if (callback != null) {
            synchronized (this.mListenerLock) {
                EventHandler eventHandlerOn = getEventHandlerOn(handler, this.mCallbackHandler);
                EventHandler eventHandler = this.mCallbackHandler;
                if (eventHandlerOn != eventHandler) {
                    eventHandler.removeMessages(2);
                    this.mCallbackHandler.removeMessages(1);
                    this.mCallbackHandler = eventHandlerOn;
                }
            }
        } else {
            EventHandler eventHandler2 = this.mCallbackHandler;
            if (eventHandler2 != null) {
                eventHandler2.removeMessages(2);
                this.mCallbackHandler.removeMessages(1);
            }
        }
        EventHandler eventHandler3 = this.mCallbackHandler;
        if (eventHandler3 != null) {
            this.mCallbackHandler.sendMessage(eventHandler3.obtainMessage(2, 0, 0, callback));
            native_setCallback(callback);
        }
    }

    public void setInputSurface(Surface surface) {
        if (!(surface instanceof PersistentSurface)) {
            throw new IllegalArgumentException("not a PersistentSurface");
        }
        native_setInputSurface(surface);
    }

    public void setOnFrameRenderedListener(OnFrameRenderedListener onFrameRenderedListener, Handler handler) {
        synchronized (this.mListenerLock) {
            this.mOnFrameRenderedListener = onFrameRenderedListener;
            if (onFrameRenderedListener != null) {
                EventHandler eventHandlerOn = getEventHandlerOn(handler, this.mOnFrameRenderedHandler);
                EventHandler eventHandler = this.mOnFrameRenderedHandler;
                if (eventHandlerOn != eventHandler) {
                    eventHandler.removeMessages(3);
                }
                this.mOnFrameRenderedHandler = eventHandlerOn;
            } else {
                EventHandler eventHandler2 = this.mOnFrameRenderedHandler;
                if (eventHandler2 != null) {
                    eventHandler2.removeMessages(3);
                }
            }
            native_enableOnFrameRenderedListener(onFrameRenderedListener != null);
        }
    }

    public void setOutputSurface(Surface surface) {
        if (!this.mHasSurface) {
            throw new IllegalStateException("codec was not configured for an output surface");
        }
        native_setSurface(surface);
    }

    public final void setParameters(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        String[] strArr = new String[bundle.size()];
        Object[] objArr = new Object[bundle.size()];
        int i2 = 0;
        for (String str : bundle.keySet()) {
            strArr[i2] = str;
            objArr[i2] = bundle.get(str);
            i2++;
        }
        setParameters(strArr, objArr);
    }

    public final native void setVideoScalingMode(int i2);

    public final native void signalEndOfInputStream();

    public final void start() {
        native_start();
        synchronized (this.mBufferLock) {
            cacheBuffers(true);
            cacheBuffers(false);
        }
    }

    public final void stop() {
        native_stop();
        freeAllTrackedBuffers();
        synchronized (this.mListenerLock) {
            EventHandler eventHandler = this.mCallbackHandler;
            if (eventHandler != null) {
                eventHandler.removeMessages(2);
                this.mCallbackHandler.removeMessages(1);
            }
            EventHandler eventHandler2 = this.mOnFrameRenderedHandler;
            if (eventHandler2 != null) {
                eventHandler2.removeMessages(3);
            }
        }
    }

    public void configure(MediaFormat mediaFormat, Surface surface, int i2, MediaDescrambler mediaDescrambler) {
        configure(mediaFormat, surface, null, mediaDescrambler != null ? mediaDescrambler.getBinder() : null, i2);
    }

    public final MediaFormat getOutputFormat(int i2) {
        return new MediaFormat(getOutputFormatNative(i2));
    }

    public static class BufferMap {
        private final Map<Integer, CodecBuffer> mMap;

        public static class CodecBuffer {
            private ByteBuffer mByteBuffer;
            private Image mImage;

            private CodecBuffer() {
            }

            public void free() {
                ByteBuffer byteBuffer = this.mByteBuffer;
                if (byteBuffer != null) {
                    NioUtils.freeDirectBuffer(byteBuffer);
                    this.mByteBuffer = null;
                }
                Image image = this.mImage;
                if (image != null) {
                    image.close();
                    this.mImage = null;
                }
            }

            public void setByteBuffer(ByteBuffer byteBuffer) {
                free();
                this.mByteBuffer = byteBuffer;
            }

            public void setImage(Image image) {
                free();
                this.mImage = image;
            }
        }

        private BufferMap() {
            this.mMap = new HashMap();
        }

        public void clear() {
            Iterator<CodecBuffer> it = this.mMap.values().iterator();
            while (it.hasNext()) {
                it.next().free();
            }
            this.mMap.clear();
        }

        public void put(int i2, ByteBuffer byteBuffer) {
            CodecBuffer codecBuffer = this.mMap.get(Integer.valueOf(i2));
            if (codecBuffer == null) {
                codecBuffer = new CodecBuffer();
                this.mMap.put(Integer.valueOf(i2), codecBuffer);
            }
            codecBuffer.setByteBuffer(byteBuffer);
        }

        public void remove(int i2) {
            CodecBuffer codecBuffer = this.mMap.get(Integer.valueOf(i2));
            if (codecBuffer != null) {
                codecBuffer.free();
                this.mMap.remove(Integer.valueOf(i2));
            }
        }

        public void put(int i2, Image image) {
            CodecBuffer codecBuffer = this.mMap.get(Integer.valueOf(i2));
            if (codecBuffer == null) {
                codecBuffer = new CodecBuffer();
                this.mMap.put(Integer.valueOf(i2), codecBuffer);
            }
            codecBuffer.setImage(image);
        }
    }

    private void configure(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, IHwBinder iHwBinder, int i2) {
        String[] strArr;
        Object[] objArr;
        if (mediaCrypto != null && iHwBinder != null) {
            throw new IllegalArgumentException("Can't use crypto and descrambler together!");
        }
        if (mediaFormat != null) {
            Map<String, Object> map = mediaFormat.getMap();
            String[] strArr2 = new String[map.size()];
            Object[] objArr2 = new Object[map.size()];
            int i3 = 0;
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                if (entry.getKey().equals(MediaFormat.KEY_AUDIO_SESSION_ID)) {
                    try {
                        int iIntValue = ((Integer) entry.getValue()).intValue();
                        strArr2[i3] = "audio-hw-sync";
                        objArr2[i3] = Integer.valueOf(AudioSystem.getAudioHwSyncForSession(iIntValue));
                    } catch (Exception unused) {
                        throw new IllegalArgumentException("Wrong Session ID Parameter!");
                    }
                } else {
                    strArr2[i3] = entry.getKey();
                    objArr2[i3] = entry.getValue();
                }
                i3++;
            }
            strArr = strArr2;
            objArr = objArr2;
        } else {
            strArr = null;
            objArr = null;
        }
        this.mHasSurface = surface != null;
        native_configure(strArr, objArr, surface, mediaCrypto, iHwBinder, i2);
    }

    public final void releaseOutputBuffer(int i2, long j2) {
        synchronized (this.mBufferLock) {
            invalidateByteBuffer(this.mCachedOutputBuffers, i2);
            this.mDequeuedOutputBuffers.remove(i2);
            if (this.mHasSurface) {
                this.mDequeuedOutputInfos.remove(Integer.valueOf(i2));
            }
        }
        releaseOutputBuffer(i2, true, true, j2);
    }

    public void setCallback(Callback callback) {
        setCallback(callback, null);
    }
}
