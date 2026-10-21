package android.media;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class AudioTrack {
    public static final int ERROR = -1;
    public static final int ERROR_BAD_VALUE = -2;
    public static final int ERROR_INVALID_OPERATION = -3;
    private static final int ERROR_NATIVESETUP_AUDIOSYSTEM = -16;
    private static final int ERROR_NATIVESETUP_INVALIDCHANNELMASK = -17;
    private static final int ERROR_NATIVESETUP_INVALIDFORMAT = -18;
    private static final int ERROR_NATIVESETUP_INVALIDSTREAMTYPE = -19;
    private static final int ERROR_NATIVESETUP_NATIVEINITFAILED = -20;
    public static final int MODE_STATIC = 0;
    public static final int MODE_STREAM = 1;
    private static final int NATIVE_EVENT_MARKER = 3;
    private static final int NATIVE_EVENT_NEW_POS = 4;
    public static final int PLAYSTATE_PAUSED = 2;
    public static final int PLAYSTATE_PLAYING = 3;
    public static final int PLAYSTATE_STOPPED = 1;
    private static final int SAMPLE_RATE_HZ_MAX = 48000;
    private static final int SAMPLE_RATE_HZ_MIN = 4000;
    public static final int STATE_INITIALIZED = 1;
    public static final int STATE_NO_STATIC_DATA = 2;
    public static final int STATE_UNINITIALIZED = 0;
    public static final int SUCCESS = 0;
    private static final int SUPPORTED_OUT_CHANNELS = 1276;
    private static final String TAG = "android.media.AudioTrack";
    private static final String TAGFYT = "fytaudio";
    private static final float VOLUME_MAX = 1.0f;
    private static final float VOLUME_MIN = 0.0f;
    private static int mNaviAPP = 2;
    private static int mPid;
    private static String mProcName;
    private static IAudioService sService;
    private final boolean debugAudioTarck;
    private int mAudioFormat;
    private int mChannelConfiguration;
    private int mChannelCount;
    private int mChannels;
    private int mDataLoadMode;
    private NativeEventHandlerDelegate mEventHandlerDelegate;
    private final Looper mInitializationLooper;
    private int mJniData;
    private int mNativeBufferSizeInBytes;
    private int mNativeBufferSizeInFrames;
    private int mNativeTrackInJavaObj;
    private int mPlayState;
    private final Object mPlayStateLock;
    private int mSampleRate;
    private int mSessionId;
    private int mState;
    private int mStreamType;

    public class NativeEventHandlerDelegate {
        private final Handler mHandler;

        public NativeEventHandlerDelegate(final AudioTrack audioTrack, final OnPlaybackPositionUpdateListener onPlaybackPositionUpdateListener, Handler handler) {
            Looper looper = handler != null ? handler.getLooper() : AudioTrack.this.mInitializationLooper;
            if (looper != null) {
                this.mHandler = new Handler(looper) { // from class: android.media.AudioTrack.NativeEventHandlerDelegate.1
                    @Override // android.os.Handler
                    public void handleMessage(Message message) {
                        AudioTrack audioTrack2 = audioTrack;
                        if (audioTrack2 == null) {
                            return;
                        }
                        int i2 = message.what;
                        if (i2 == 3) {
                            OnPlaybackPositionUpdateListener onPlaybackPositionUpdateListener2 = onPlaybackPositionUpdateListener;
                            if (onPlaybackPositionUpdateListener2 != null) {
                                onPlaybackPositionUpdateListener2.onMarkerReached(audioTrack2);
                                return;
                            }
                            return;
                        }
                        if (i2 != 4) {
                            AudioTrack.loge("Unknown native event type: " + message.what);
                            return;
                        }
                        OnPlaybackPositionUpdateListener onPlaybackPositionUpdateListener3 = onPlaybackPositionUpdateListener;
                        if (onPlaybackPositionUpdateListener3 != null) {
                            onPlaybackPositionUpdateListener3.onPeriodicNotification(audioTrack2);
                        }
                    }
                };
            } else {
                this.mHandler = null;
            }
        }

        public Handler getHandler() {
            return this.mHandler;
        }
    }

    public interface OnPlaybackPositionUpdateListener {
        void onMarkerReached(AudioTrack audioTrack);

        void onPeriodicNotification(AudioTrack audioTrack);
    }

    public AudioTrack(int i2, int i3, int i4, int i5, int i6, int i7) {
        this(i2, i3, i4, i5, i6, i7, 0);
    }

    private void audioBuffSizeCheck(int i2) {
        int i3 = this.mChannelCount * (this.mAudioFormat == 3 ? 1 : 2);
        if (i2 % i3 != 0 || i2 < 1) {
            throw new IllegalArgumentException("Invalid audio buffer size.");
        }
        this.mNativeBufferSizeInBytes = i2;
        this.mNativeBufferSizeInFrames = i2 / i3;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0053  */
    /* JADX WARN: Code duplicated, block: B:34:0x0058  */
    private void audioParamCheck(int i2, int i3, int i4, int i5, int i6) {
        if (i2 != 4 && i2 != 3 && i2 != 2 && i2 != 1 && i2 != 0 && i2 != 5 && i2 != 6 && i2 != 8) {
            throw new IllegalArgumentException("Invalid stream type.");
        }
        this.mStreamType = i2;
        if (i3 < SAMPLE_RATE_HZ_MIN || i3 > 48000) {
            throw new IllegalArgumentException(i3 + "Hz is not a supported sample rate.");
        }
        this.mSampleRate = i3;
        this.mChannelConfiguration = i4;
        if (i4 == 1 || i4 == 2) {
            this.mChannelCount = 1;
            this.mChannels = 4;
        } else if (i4 == 3) {
            this.mChannelCount = 2;
            this.mChannels = 12;
        } else if (i4 == 4) {
            this.mChannelCount = 1;
            this.mChannels = 4;
        } else if (i4 == 12) {
            this.mChannelCount = 2;
            this.mChannels = 12;
        } else {
            if (!isMultichannelConfigSupported(i4)) {
                throw new IllegalArgumentException("Unsupported channel configuration.");
            }
            this.mChannels = i4;
            this.mChannelCount = Integer.bitCount(i4);
        }
        if (i5 == 1) {
            this.mAudioFormat = 2;
        } else {
            if (i5 != 2 && i5 != 3) {
                throw new IllegalArgumentException("Unsupported sample encoding. Should be ENCODING_PCM_8BIT or ENCODING_PCM_16BIT.");
            }
            this.mAudioFormat = i5;
        }
        if (i6 != 1 && i6 != 0) {
            throw new IllegalArgumentException("Invalid mode.");
        }
        this.mDataLoadMode = i6;
    }

    public static float getMaxVolume() {
        return 1.0f;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001d  */
    /* JADX WARN: Code duplicated, block: B:15:0x001f  */
    public static int getMinBufferSize(int i2, int i3, int i4) {
        int iBitCount;
        if (i3 == 2) {
            iBitCount = 1;
        } else if (i3 == 3) {
            iBitCount = 2;
        } else if (i3 == 4) {
            iBitCount = 1;
        } else if (i3 == 12) {
            iBitCount = 2;
        } else {
            if ((i3 & SUPPORTED_OUT_CHANNELS) != i3) {
                loge("getMinBufferSize(): Invalid channel configuration.");
                return -2;
            }
            iBitCount = Integer.bitCount(i3);
        }
        if (i4 != 2 && i4 != 3) {
            loge("getMinBufferSize(): Invalid audio format.");
            return -2;
        }
        if (i2 >= SAMPLE_RATE_HZ_MIN && i2 <= 48000) {
            int iNative_get_min_buff_size = native_get_min_buff_size(i2, iBitCount, i4);
            if (iNative_get_min_buff_size > 0) {
                return iNative_get_min_buff_size;
            }
            loge("getMinBufferSize(): error querying hardware");
            return -1;
        }
        loge("getMinBufferSize(): " + i2 + " Hz is not a supported sample rate.");
        return -2;
    }

    public static float getMinVolume() {
        return 0.0f;
    }

    private static int getMyPid() {
        if (mPid == 0) {
            mPid = Process.myPid();
        }
        return mPid;
    }

    public static int getNativeOutputSampleRate(int i2) {
        return native_get_output_sample_rate(i2);
    }

    private static String getProcName() {
        IAudioService service = getService();
        if (mProcName == null) {
            try {
                mProcName = service.procName(mPid);
            } catch (RemoteException e2) {
                Log.e(TAG, "Dead object in AudioTrack", e2);
            }
        }
        return mProcName;
    }

    private static IAudioService getService() {
        IAudioService iAudioService = sService;
        if (iAudioService != null) {
            return iAudioService;
        }
        IAudioService iAudioServiceAsInterface = IAudioService.Stub.asInterface(ServiceManager.getService(Context.AUDIO_SERVICE));
        sService = iAudioServiceAsInterface;
        return iAudioServiceAsInterface;
    }

    private static boolean isMultichannelConfigSupported(int i2) {
        if ((i2 & SUPPORTED_OUT_CHANNELS) != i2) {
            loge("Channel configuration features unsupported channels");
            return false;
        }
        if ((i2 & 12) != 12) {
            loge("Front channels must be present in multichannel configurations");
            return false;
        }
        int i3 = i2 & 192;
        if (i3 == 0 || i3 == 192) {
            return true;
        }
        loge("Rear channels can't be used independently");
        return false;
    }

    private static void logd(String str) {
        Log.d(TAG, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void loge(String str) {
        Log.e(TAG, str);
    }

    private final native int native_attachAuxEffect(int i2);

    private final native void native_finalize();

    private final native void native_flush();

    private final native int native_get_latency();

    private final native int native_get_marker_pos();

    private static final native int native_get_min_buff_size(int i2, int i3, int i4);

    private final native int native_get_native_frame_count();

    private static final native int native_get_output_sample_rate(int i2);

    private final native int native_get_playback_rate();

    private final native int native_get_pos_update_period();

    private final native int native_get_position();

    private final native int native_get_timestamp(long[] jArr);

    private final native void native_pause();

    private final native void native_release();

    private final native int native_reload_static();

    private final native void native_setAuxEffectSendLevel(float f2);

    private final native void native_setVolume(float f2, float f3);

    private final native int native_set_loop(int i2, int i3, int i4);

    private final native int native_set_marker_pos(int i2);

    private final native int native_set_playback_rate(int i2);

    private final native int native_set_pos_update_period(int i2);

    private final native int native_set_position(int i2);

    private final native int native_setup(Object obj, int i2, int i3, int i4, int i5, int i6, int i7, int[] iArr);

    private final native void native_start();

    private final native void native_stop();

    private final native int native_write_byte(byte[] bArr, int i2, int i3, int i4);

    private final native int native_write_short(short[] sArr, int i2, int i3, int i4);

    private static void postEventFromNative(Object obj, int i2, int i3, int i4, Object obj2) {
        NativeEventHandlerDelegate nativeEventHandlerDelegate;
        Handler handler;
        AudioTrack audioTrack = (AudioTrack) ((WeakReference) obj).get();
        if (audioTrack == null || (nativeEventHandlerDelegate = audioTrack.mEventHandlerDelegate) == null || (handler = nativeEventHandlerDelegate.getHandler()) == null) {
            return;
        }
        handler.sendMessage(handler.obtainMessage(i2, i3, i4, obj2));
    }

    public int attachAuxEffect(int i2) {
        if (this.mState == 0) {
            return -3;
        }
        return native_attachAuxEffect(i2);
    }

    public void finalize() {
        native_finalize();
    }

    public void flush() {
        if (this.mState == 1) {
            native_flush();
        }
    }

    public int getAudioFormat() {
        return this.mAudioFormat;
    }

    public int getAudioSessionId() {
        return this.mSessionId;
    }

    public int getChannelConfiguration() {
        return this.mChannelConfiguration;
    }

    public int getChannelCount() {
        return this.mChannelCount;
    }

    public int getLatency() {
        return native_get_latency();
    }

    @Deprecated
    public int getNativeFrameCount() {
        return native_get_native_frame_count();
    }

    public int getNotificationMarkerPosition() {
        return native_get_marker_pos();
    }

    public int getPlayState() {
        int i2;
        synchronized (this.mPlayStateLock) {
            i2 = this.mPlayState;
        }
        return i2;
    }

    public int getPlaybackHeadPosition() {
        return native_get_position();
    }

    public int getPlaybackRate() {
        return native_get_playback_rate();
    }

    public int getPositionNotificationPeriod() {
        return native_get_pos_update_period();
    }

    public int getSampleRate() {
        return this.mSampleRate;
    }

    public int getState() {
        return this.mState;
    }

    public int getStreamType() {
        return this.mStreamType;
    }

    public boolean getTimestamp(AudioTimestamp audioTimestamp) {
        if (audioTimestamp == null) {
            throw new IllegalArgumentException();
        }
        long[] jArr = new long[2];
        if (native_get_timestamp(jArr) != 0) {
            return false;
        }
        audioTimestamp.framePosition = jArr[0];
        audioTimestamp.nanoTime = jArr[1];
        return true;
    }

    public void pause() {
        if (this.mState != 1) {
            throw new IllegalStateException("pause() called on uninitialized AudioTrack.");
        }
        IAudioService service = getService();
        getMyPid();
        try {
            service.sendToSyuServiceAudioInformation(0, null, null, new String[]{getProcName(), "pause"});
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in pause", e2);
        }
        synchronized (this.mPlayStateLock) {
            native_pause();
            this.mPlayState = 2;
        }
    }

    public void play() {
        if (this.mState != 1) {
            throw new IllegalStateException("play() called on uninitialized AudioTrack.");
        }
        IAudioService service = getService();
        getMyPid();
        try {
            service.sendToSyuServiceAudioInformation(0, null, null, new String[]{getProcName(), "play"});
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in play", e2);
        }
        synchronized (this.mPlayStateLock) {
            native_start();
            this.mPlayState = 3;
        }
    }

    public void release() {
        try {
            stop();
        } catch (IllegalStateException unused) {
        }
        native_release();
        this.mState = 0;
    }

    public int reloadStaticData() {
        if (this.mDataLoadMode == 1 || this.mState != 1) {
            return -3;
        }
        return native_reload_static();
    }

    public int setAuxEffectSendLevel(float f2) {
        if (this.mState == 0) {
            return -3;
        }
        if (f2 < getMinVolume()) {
            f2 = getMinVolume();
        }
        if (f2 > getMaxVolume()) {
            f2 = getMaxVolume();
        }
        native_setAuxEffectSendLevel(f2);
        return 0;
    }

    public int setLoopPoints(int i2, int i3, int i4) {
        int i5;
        if (this.mDataLoadMode == 1 || this.mState != 1 || getPlayState() == 3) {
            return -3;
        }
        if (i4 != 0 && (i2 < 0 || i2 >= (i5 = this.mNativeBufferSizeInFrames) || i2 >= i3 || i3 > i5)) {
            return -2;
        }
        return native_set_loop(i2, i3, i4);
    }

    public int setNotificationMarkerPosition(int i2) {
        if (this.mState == 0) {
            return -3;
        }
        return native_set_marker_pos(i2);
    }

    public int setPlaybackHeadPosition(int i2) {
        if (this.mDataLoadMode == 1 || this.mState != 1 || getPlayState() == 3) {
            return -3;
        }
        if (i2 < 0 || i2 > this.mNativeBufferSizeInFrames) {
            return -2;
        }
        return native_set_position(i2);
    }

    public void setPlaybackPositionUpdateListener(OnPlaybackPositionUpdateListener onPlaybackPositionUpdateListener) {
        setPlaybackPositionUpdateListener(onPlaybackPositionUpdateListener, null);
    }

    public int setPlaybackRate(int i2) {
        if (this.mState != 1) {
            return -3;
        }
        if (i2 <= 0) {
            return -2;
        }
        return native_set_playback_rate(i2);
    }

    public int setPositionNotificationPeriod(int i2) {
        if (this.mState == 0) {
            return -3;
        }
        return native_set_pos_update_period(i2);
    }

    @Deprecated
    public void setState(int i2) {
        this.mState = i2;
    }

    public int setStereoVolume(float f2, float f3) {
        if (this.mState == 0) {
            return -3;
        }
        if (f2 < getMinVolume()) {
            f2 = getMinVolume();
        }
        if (f2 > getMaxVolume()) {
            f2 = getMaxVolume();
        }
        if (f3 < getMinVolume()) {
            f3 = getMinVolume();
        }
        if (f3 > getMaxVolume()) {
            f3 = getMaxVolume();
        }
        native_setVolume(f2, f3);
        return 0;
    }

    public int setVolume(float f2) {
        return setStereoVolume(f2, f2);
    }

    public void stop() {
        if (this.mState != 1) {
            throw new IllegalStateException("stop() called on uninitialized AudioTrack.");
        }
        IAudioService service = getService();
        getMyPid();
        try {
            service.sendToSyuServiceAudioInformation(0, null, null, new String[]{getProcName(), "stop"});
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in stop", e2);
        }
        synchronized (this.mPlayStateLock) {
            native_stop();
            this.mPlayState = 1;
        }
    }

    public int write(byte[] bArr, int i2, int i3) {
        int i4;
        if (this.mState == 0) {
            return -3;
        }
        if (bArr == null || i2 < 0 || i3 < 0 || (i4 = i2 + i3) < 0 || i4 > bArr.length) {
            return -2;
        }
        IAudioService service = getService();
        getMyPid();
        String procName = getProcName();
        if (mNaviAPP == 2) {
            try {
                mNaviAPP = service.ismapapplication(mPid);
            } catch (RemoteException e2) {
                Log.e(TAG, "Dead object in write", e2);
            }
        }
        if (mNaviAPP == 1) {
            try {
                service.sendToSyuServiceAudioInformation(0, null, null, new String[]{procName, "play"});
            } catch (RemoteException e3) {
                Log.e(TAG, "Dead object in write", e3);
            }
            if ("title.navi".equals(procName) || "com.navngo.igo.javaclient".equals(procName)) {
                try {
                    Thread.currentThread();
                    Thread.sleep(80L);
                } catch (Exception unused) {
                }
            }
        }
        int iNative_write_byte = native_write_byte(bArr, i2, i3, this.mAudioFormat);
        if (mNaviAPP == 1) {
            try {
                service.sendToSyuServiceAudioInformation(0, null, null, new String[]{procName, "end"});
            } catch (RemoteException e4) {
                Log.e(TAG, "Dead object in write", e4);
            }
        }
        if (this.mDataLoadMode == 0 && this.mState == 2 && iNative_write_byte > 0) {
            this.mState = 1;
        }
        return iNative_write_byte;
    }

    public AudioTrack(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.debugAudioTarck = false;
        this.mState = 0;
        this.mPlayState = 1;
        this.mPlayStateLock = new Object();
        this.mNativeBufferSizeInBytes = 0;
        this.mNativeBufferSizeInFrames = 0;
        this.mChannelCount = 1;
        int i9 = 4;
        this.mChannels = 4;
        this.mStreamType = 3;
        this.mDataLoadMode = 1;
        this.mChannelConfiguration = 4;
        this.mAudioFormat = 2;
        this.mSessionId = 0;
        IAudioService service = getService();
        Looper looperMyLooper = Looper.myLooper();
        looperMyLooper = looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper;
        int myPid = getMyPid();
        if (!"com.goodocom.gocsdk".equals(getProcName())) {
            if (mNaviAPP == 2) {
                try {
                    mNaviAPP = service.ismapapplication(myPid);
                } catch (RemoteException e2) {
                    Log.e(TAG, "Dead object in write", e2);
                }
            }
            i9 = mNaviAPP == 1 ? 5 : i2;
        }
        synchronized (this.mPlayStateLock) {
        }
        this.mInitializationLooper = looperMyLooper;
        audioParamCheck(i9, i3, i4, i5, i7);
        audioBuffSizeCheck(i6);
        if (i8 < 0) {
            throw new IllegalArgumentException("Invalid audio session ID: " + i8);
        }
        int[] iArr = {i8};
        int iNative_setup = native_setup(new WeakReference(this), this.mStreamType, this.mSampleRate, this.mChannels, this.mAudioFormat, this.mNativeBufferSizeInBytes, this.mDataLoadMode, iArr);
        if (iNative_setup != 0) {
            loge("Error code " + iNative_setup + " when initializing AudioTrack.");
            return;
        }
        this.mSessionId = iArr[0];
        if (this.mDataLoadMode == 0) {
            this.mState = 2;
        } else {
            this.mState = 1;
        }
    }

    public void setPlaybackPositionUpdateListener(OnPlaybackPositionUpdateListener onPlaybackPositionUpdateListener, Handler handler) {
        if (onPlaybackPositionUpdateListener != null) {
            this.mEventHandlerDelegate = new NativeEventHandlerDelegate(this, onPlaybackPositionUpdateListener, handler);
        } else {
            this.mEventHandlerDelegate = null;
        }
    }

    public int write(short[] sArr, int i2, int i3) {
        int i4;
        IAudioService service = getService();
        getMyPid();
        String procName = getProcName();
        if (this.mState == 0) {
            return -3;
        }
        if (sArr == null || i2 < 0 || i3 < 0 || (i4 = i2 + i3) < 0 || i4 > sArr.length) {
            return -2;
        }
        if (mNaviAPP == 2) {
            try {
                mNaviAPP = service.ismapapplication(mPid);
            } catch (RemoteException e2) {
                Log.e(TAG, "Dead object in write", e2);
            }
        }
        if (mNaviAPP == 1) {
            try {
                service.sendToSyuServiceAudioInformation(0, null, null, new String[]{procName, "play"});
            } catch (RemoteException e3) {
                Log.e(TAG, "Dead object in write", e3);
            }
        }
        int iNative_write_short = native_write_short(sArr, i2, i3, this.mAudioFormat);
        if (mNaviAPP == 1) {
            try {
                service.sendToSyuServiceAudioInformation(0, null, null, new String[]{procName, "end"});
            } catch (RemoteException e4) {
                Log.e(TAG, "Dead object in write", e4);
            }
        }
        if (this.mDataLoadMode == 0 && this.mState == 2 && iNative_write_short > 0) {
            this.mState = 1;
        }
        return iNative_write_short;
    }
}
