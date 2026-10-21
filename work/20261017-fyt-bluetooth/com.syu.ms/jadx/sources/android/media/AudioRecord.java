package android.media;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class AudioRecord {
    private static final int AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK = -17;
    private static final int AUDIORECORD_ERROR_SETUP_INVALIDFORMAT = -18;
    private static final int AUDIORECORD_ERROR_SETUP_INVALIDSOURCE = -19;
    private static final int AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED = -20;
    private static final int AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT = -16;
    public static final int ERROR = -1;
    public static final int ERROR_BAD_VALUE = -2;
    public static final int ERROR_INVALID_OPERATION = -3;
    private static final int NATIVE_EVENT_MARKER = 2;
    private static final int NATIVE_EVENT_NEW_POS = 3;
    public static final int RECORDSTATE_RECORDING = 3;
    public static final int RECORDSTATE_STOPPED = 1;
    public static final int STATE_INITIALIZED = 1;
    public static final int STATE_UNINITIALIZED = 0;
    public static final int SUCCESS = 0;
    private static final String TAG = "android.media.AudioRecord";
    private int mAudioFormat;
    private int mChannelCount;
    private int mChannelMask;
    private Looper mInitializationLooper;
    private int mNativeCallbackCookie;
    private int mNativeRecorderInJavaObj;
    private int mRecordSource;
    private int mRecordingState;
    private int mSampleRate;
    private int mSessionId;
    private int mState;
    private final Object mRecordingStateLock = new Object();
    private OnRecordPositionUpdateListener mPositionListener = null;
    private final Object mPositionListenerLock = new Object();
    private NativeEventHandler mEventHandler = null;
    private int mNativeBufferSizeInBytes = 0;

    public class NativeEventHandler extends Handler {
        private final AudioRecord mAudioRecord;

        public NativeEventHandler(AudioRecord audioRecord, Looper looper) {
            super(looper);
            this.mAudioRecord = audioRecord;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            OnRecordPositionUpdateListener onRecordPositionUpdateListener;
            synchronized (AudioRecord.this.mPositionListenerLock) {
                onRecordPositionUpdateListener = this.mAudioRecord.mPositionListener;
            }
            int i2 = message.what;
            if (i2 == 2) {
                if (onRecordPositionUpdateListener != null) {
                    onRecordPositionUpdateListener.onMarkerReached(this.mAudioRecord);
                }
            } else if (i2 == 3) {
                if (onRecordPositionUpdateListener != null) {
                    onRecordPositionUpdateListener.onPeriodicNotification(this.mAudioRecord);
                }
            } else {
                AudioRecord.loge("Unknown native event type: " + message.what);
            }
        }
    }

    public interface OnRecordPositionUpdateListener {
        void onMarkerReached(AudioRecord audioRecord);

        void onPeriodicNotification(AudioRecord audioRecord);
    }

    public AudioRecord(int i2, int i3, int i4, int i5, int i6) {
        this.mState = 0;
        this.mRecordingState = 1;
        this.mInitializationLooper = null;
        this.mSessionId = 0;
        this.mRecordingState = 1;
        Looper looperMyLooper = Looper.myLooper();
        this.mInitializationLooper = looperMyLooper;
        if (looperMyLooper == null) {
            this.mInitializationLooper = Looper.getMainLooper();
        }
        audioParamCheck(i2, i3, i4, i5);
        audioBuffSizeCheck(i6);
        int[] iArr = {0};
        int iNative_setup = native_setup(new WeakReference(this), this.mRecordSource, this.mSampleRate, this.mChannelMask, this.mAudioFormat, this.mNativeBufferSizeInBytes, iArr);
        if (iNative_setup == 0) {
            this.mSessionId = iArr[0];
            this.mState = 1;
            return;
        }
        loge("Error code " + iNative_setup + " when initializing native AudioRecord object.");
    }

    private void audioBuffSizeCheck(int i2) {
        if (i2 % (this.mChannelCount * (this.mAudioFormat == 3 ? 1 : 2)) != 0 || i2 < 1) {
            throw new IllegalArgumentException("Invalid audio buffer size.");
        }
        this.mNativeBufferSizeInBytes = i2;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0040  */
    private void audioParamCheck(int i2, int i3, int i4, int i5) {
        if (i2 < 0 || (i2 > MediaRecorder.getAudioSourceMax() && i2 != 1999)) {
            throw new IllegalArgumentException("Invalid audio source.");
        }
        this.mRecordSource = i2;
        if (i3 < 4000 || i3 > 48000) {
            throw new IllegalArgumentException(i3 + "Hz is not a supported sample rate.");
        }
        this.mSampleRate = i3;
        if (i4 == 1 || i4 == 2) {
            this.mChannelCount = 1;
            this.mChannelMask = 16;
        } else if (i4 == 3 || i4 == 12) {
            this.mChannelCount = 2;
            this.mChannelMask = 12;
        } else if (i4 == 16) {
            this.mChannelCount = 1;
            this.mChannelMask = 16;
        } else {
            if (i4 != 48) {
                throw new IllegalArgumentException("Unsupported channel configuration.");
            }
            this.mChannelCount = 2;
            this.mChannelMask = i4;
        }
        if (i5 == 1) {
            this.mAudioFormat = 2;
        } else {
            if (i5 != 2 && i5 != 3) {
                throw new IllegalArgumentException("Unsupported sample encoding. Should be ENCODING_PCM_8BIT or ENCODING_PCM_16BIT.");
            }
            this.mAudioFormat = i5;
        }
    }

    public static int getMinBufferSize(int i2, int i3, int i4) {
        int i5 = 1;
        if (i3 != 1 && i3 != 2) {
            if (i3 == 3 || i3 == 12) {
                i5 = 2;
            } else if (i3 != 16) {
                if (i3 != 48) {
                    loge("getMinBufferSize(): Invalid channel configuration.");
                    return -2;
                }
                i5 = 2;
            }
        }
        if (i4 != 2) {
            loge("getMinBufferSize(): Invalid audio format.");
            return -2;
        }
        int iNative_get_min_buff_size = native_get_min_buff_size(i2, i5, i4);
        if (iNative_get_min_buff_size == 0) {
            return -2;
        }
        if (iNative_get_min_buff_size == -1) {
            return -1;
        }
        return iNative_get_min_buff_size;
    }

    private static void logd(String str) {
        Log.d(TAG, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void loge(String str) {
        Log.e(TAG, str);
    }

    private final native void native_finalize();

    private final native int native_get_marker_pos();

    private static final native int native_get_min_buff_size(int i2, int i3, int i4);

    private final native int native_get_pos_update_period();

    private final native int native_read_in_byte_array(byte[] bArr, int i2, int i3);

    private final native int native_read_in_direct_buffer(Object obj, int i2);

    private final native int native_read_in_short_array(short[] sArr, int i2, int i3);

    private final native void native_release();

    private final native int native_set_marker_pos(int i2);

    private final native int native_set_pos_update_period(int i2);

    private final native int native_setup(Object obj, int i2, int i3, int i4, int i5, int i6, int[] iArr);

    private final native int native_start(int i2, int i3);

    private final native void native_stop();

    private static void postEventFromNative(Object obj, int i2, int i3, int i4, Object obj2) {
        NativeEventHandler nativeEventHandler;
        AudioRecord audioRecord = (AudioRecord) ((WeakReference) obj).get();
        if (audioRecord == null || (nativeEventHandler = audioRecord.mEventHandler) == null) {
            return;
        }
        audioRecord.mEventHandler.sendMessage(nativeEventHandler.obtainMessage(i2, i3, i4, obj2));
    }

    public void finalize() {
        native_finalize();
    }

    public int getAudioFormat() {
        return this.mAudioFormat;
    }

    public int getAudioSessionId() {
        return this.mSessionId;
    }

    public int getAudioSource() {
        return this.mRecordSource;
    }

    public int getChannelConfiguration() {
        return this.mChannelMask;
    }

    public int getChannelCount() {
        return this.mChannelCount;
    }

    public int getNotificationMarkerPosition() {
        return native_get_marker_pos();
    }

    public int getPositionNotificationPeriod() {
        return native_get_pos_update_period();
    }

    public int getRecordingState() {
        int i2;
        synchronized (this.mRecordingStateLock) {
            i2 = this.mRecordingState;
        }
        return i2;
    }

    public int getSampleRate() {
        return this.mSampleRate;
    }

    public int getState() {
        return this.mState;
    }

    public int read(byte[] bArr, int i2, int i3) {
        int i4;
        if (this.mState != 1) {
            return -3;
        }
        if (bArr == null || i2 < 0 || i3 < 0 || (i4 = i2 + i3) < 0 || i4 > bArr.length) {
            return -2;
        }
        return native_read_in_byte_array(bArr, i2, i3);
    }

    public void release() {
        try {
            stop();
        } catch (IllegalStateException unused) {
        }
        native_release();
        this.mState = 0;
    }

    public int setNotificationMarkerPosition(int i2) {
        if (this.mState == 0) {
            return -3;
        }
        return native_set_marker_pos(i2);
    }

    public int setPositionNotificationPeriod(int i2) {
        if (this.mState == 0) {
            return -3;
        }
        return native_set_pos_update_period(i2);
    }

    public void setRecordPositionUpdateListener(OnRecordPositionUpdateListener onRecordPositionUpdateListener) {
        setRecordPositionUpdateListener(onRecordPositionUpdateListener, null);
    }

    public void startRecording() {
        if (this.mState != 1) {
            throw new IllegalStateException("startRecording() called on an uninitialized AudioRecord.");
        }
        synchronized (this.mRecordingStateLock) {
            if (native_start(0, 0) == 0) {
                this.mRecordingState = 3;
            }
        }
    }

    public void stop() {
        if (this.mState != 1) {
            throw new IllegalStateException("stop() called on an uninitialized AudioRecord.");
        }
        synchronized (this.mRecordingStateLock) {
            native_stop();
            this.mRecordingState = 1;
        }
    }

    public void setRecordPositionUpdateListener(OnRecordPositionUpdateListener onRecordPositionUpdateListener, Handler handler) {
        synchronized (this.mPositionListenerLock) {
            this.mPositionListener = onRecordPositionUpdateListener;
            if (onRecordPositionUpdateListener == null) {
                this.mEventHandler = null;
            } else if (handler != null) {
                this.mEventHandler = new NativeEventHandler(this, handler.getLooper());
            } else {
                this.mEventHandler = new NativeEventHandler(this, this.mInitializationLooper);
            }
        }
    }

    public int read(short[] sArr, int i2, int i3) {
        int i4;
        if (this.mState != 1) {
            return -3;
        }
        if (sArr == null || i2 < 0 || i3 < 0 || (i4 = i2 + i3) < 0 || i4 > sArr.length) {
            return -2;
        }
        return native_read_in_short_array(sArr, i2, i3);
    }

    public int read(ByteBuffer byteBuffer, int i2) {
        if (this.mState != 1) {
            return -3;
        }
        if (byteBuffer == null || i2 < 0) {
            return -2;
        }
        return native_read_in_direct_buffer(byteBuffer, i2);
    }

    public void startRecording(MediaSyncEvent mediaSyncEvent) {
        if (this.mState == 1) {
            synchronized (this.mRecordingStateLock) {
                if (native_start(mediaSyncEvent.getType(), mediaSyncEvent.getAudioSessionId()) == 0) {
                    this.mRecordingState = 3;
                }
            }
            return;
        }
        throw new IllegalStateException("startRecording() called on an uninitialized AudioRecord.");
    }
}
