package android.media;

import android.accessibilityservice.c;
import android.app.m;
import android.content.Context;
import android.opengl.GLES30;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.util.ArrayMap;
import android.util.Log;
import com.android.internal.annotations.GuardedBy;
import com.syu.ipc.IRemoteToolkit;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.NioUtils;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class AudioTrack extends PlayerBase implements AudioRouting, VolumeAutomation {
    private static final int AUDIO_OUTPUT_FLAG_DEEP_BUFFER = 8;
    private static final int AUDIO_OUTPUT_FLAG_FAST = 4;
    public static final int ERROR = -1;
    public static final int ERROR_BAD_VALUE = -2;
    public static final int ERROR_DEAD_OBJECT = -6;
    public static final int ERROR_INVALID_OPERATION = -3;
    private static final int ERROR_NATIVESETUP_AUDIOSYSTEM = -16;
    private static final int ERROR_NATIVESETUP_INVALIDCHANNELMASK = -17;
    private static final int ERROR_NATIVESETUP_INVALIDFORMAT = -18;
    private static final int ERROR_NATIVESETUP_INVALIDSTREAMTYPE = -19;
    private static final int ERROR_NATIVESETUP_NATIVEINITFAILED = -20;
    public static final int ERROR_WOULD_BLOCK = -7;
    private static final float GAIN_MAX = 1.0f;
    private static final float GAIN_MIN = 0.0f;
    private static final float HEADER_V2_SIZE_BYTES = 20.0f;
    public static final int MODE_STATIC = 0;
    public static final int MODE_STREAM = 1;
    private static final int NATIVE_EVENT_MARKER = 3;
    private static final int NATIVE_EVENT_NEW_POS = 4;
    public static final int PERFORMANCE_MODE_LOW_LATENCY = 1;
    public static final int PERFORMANCE_MODE_NONE = 0;
    public static final int PERFORMANCE_MODE_POWER_SAVING = 2;
    public static final int PLAYSTATE_PAUSED = 2;
    public static final int PLAYSTATE_PLAYING = 3;
    public static final int PLAYSTATE_STOPPED = 1;
    public static final int STATE_INITIALIZED = 1;
    public static final int STATE_NO_STATIC_DATA = 2;
    public static final int STATE_UNINITIALIZED = 0;
    public static final int SUCCESS = 0;
    private static final int SUPPORTED_OUT_CHANNELS = 7420;
    private static final String TAG = "android.media.AudioTrack";
    private static final String TAGFYT = "fytaudio";
    public static final int WRITE_BLOCKING = 0;
    public static final int WRITE_NON_BLOCKING = 1;
    private static IRemoteToolkit sService;
    private boolean debugmediaplayer;
    private int mAudioFormat;
    private int mAvSyncBytesRemaining;
    private ByteBuffer mAvSyncHeader;
    private int mChannelConfiguration;
    private int mChannelCount;
    private int mChannelIndexMask;
    private int mChannelMask;
    private int mDataLoadMode;
    private NativePositionEventHandlerDelegate mEventHandlerDelegate;
    private final Looper mInitializationLooper;
    private long mJniData;
    private int mNativeBufferSizeInBytes;
    private int mNativeBufferSizeInFrames;
    protected long mNativeTrackInJavaObj;
    private int mOffset;
    private int mPlayState;
    private final Object mPlayStateLock;
    private AudioDeviceInfo mPreferredDevice;

    @GuardedBy("mRoutingChangeListeners")
    private ArrayMap<AudioRouting.OnRoutingChangedListener, NativeRoutingEventHandlerDelegate> mRoutingChangeListeners;
    private int mSampleRate;
    private int mSessionId;
    private int mState;
    private int mStreamType;
    public static final int CHANNEL_COUNT_MAX = native_get_FCC_8();
    private static int mPid = 0;
    private static String mProcName = null;
    private static int mNaviAPP = 2;

    public static class Builder {
        private AudioAttributes mAttributes;
        private int mBufferSizeInBytes;
        private AudioFormat mFormat;
        private int mSessionId = 0;
        private int mMode = 1;
        private int mPerformanceMode = 0;

        /* JADX WARN: Code duplicated, block: B:15:0x0049  */
        public AudioTrack build() {
            if (this.mAttributes == null) {
                this.mAttributes = new AudioAttributes.Builder().setUsage(1).build();
            }
            int i2 = this.mPerformanceMode;
            if (i2 != 0) {
                if (i2 == 1) {
                    this.mAttributes = new AudioAttributes.Builder(this.mAttributes).replaceFlags((this.mAttributes.getAllFlags() | 256) & (-513)).build();
                } else if (i2 == 2) {
                    this.mAttributes = new AudioAttributes.Builder(this.mAttributes).replaceFlags((this.mAttributes.getAllFlags() | 512) & (-257)).build();
                }
            } else if (AudioTrack.shouldEnablePowerSaving(this.mAttributes, this.mFormat, this.mBufferSizeInBytes, this.mMode)) {
                this.mAttributes = new AudioAttributes.Builder(this.mAttributes).replaceFlags((this.mAttributes.getAllFlags() | 512) & (-257)).build();
            }
            if (this.mFormat == null) {
                this.mFormat = new AudioFormat.Builder().setChannelMask(12).setEncoding(1).build();
            }
            try {
                if (this.mMode == 1 && this.mBufferSizeInBytes == 0) {
                    this.mBufferSizeInBytes = this.mFormat.getChannelCount() * AudioFormat.getBytesPerSample(this.mFormat.getEncoding());
                }
                AudioTrack audioTrack = new AudioTrack(this.mAttributes, this.mFormat, this.mBufferSizeInBytes, this.mMode, this.mSessionId);
                if (audioTrack.getState() != 0) {
                    return audioTrack;
                }
                throw new UnsupportedOperationException("Cannot create AudioTrack");
            } catch (IllegalArgumentException e2) {
                throw new UnsupportedOperationException(e2.getMessage());
            }
        }

        public Builder setAudioAttributes(AudioAttributes audioAttributes) {
            if (audioAttributes == null) {
                throw new IllegalArgumentException("Illegal null AudioAttributes argument");
            }
            this.mAttributes = audioAttributes;
            return this;
        }

        public Builder setAudioFormat(AudioFormat audioFormat) {
            if (audioFormat == null) {
                throw new IllegalArgumentException("Illegal null AudioFormat argument");
            }
            this.mFormat = audioFormat;
            return this;
        }

        public Builder setBufferSizeInBytes(int i2) {
            if (i2 <= 0) {
                throw new IllegalArgumentException(c.d("Invalid buffer size ", i2));
            }
            this.mBufferSizeInBytes = i2;
            return this;
        }

        public Builder setPerformanceMode(int i2) {
            if (i2 != 0 && i2 != 1 && i2 != 2) {
                throw new IllegalArgumentException(c.d("Invalid performance mode ", i2));
            }
            this.mPerformanceMode = i2;
            return this;
        }

        public Builder setSessionId(int i2) {
            if (i2 != 0 && i2 < 1) {
                throw new IllegalArgumentException(c.d("Invalid audio session ID ", i2));
            }
            this.mSessionId = i2;
            return this;
        }

        public Builder setTransferMode(int i2) {
            if (i2 != 0 && i2 != 1) {
                throw new IllegalArgumentException(c.d("Invalid transfer mode ", i2));
            }
            this.mMode = i2;
            return this;
        }
    }

    public class NativePositionEventHandlerDelegate {
        private final Handler mHandler;

        public NativePositionEventHandlerDelegate(final AudioTrack audioTrack, final OnPlaybackPositionUpdateListener onPlaybackPositionUpdateListener, Handler handler) {
            Looper looper = handler != null ? handler.getLooper() : AudioTrack.this.mInitializationLooper;
            if (looper != null) {
                this.mHandler = new Handler(looper) { // from class: android.media.AudioTrack.NativePositionEventHandlerDelegate.1
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
                        } else {
                            OnPlaybackPositionUpdateListener onPlaybackPositionUpdateListener3 = onPlaybackPositionUpdateListener;
                            if (onPlaybackPositionUpdateListener3 != null) {
                                onPlaybackPositionUpdateListener3.onPeriodicNotification(audioTrack2);
                            }
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

    public class NativeRoutingEventHandlerDelegate {
        private final Handler mHandler;

        public NativeRoutingEventHandlerDelegate(final AudioTrack audioTrack, final AudioRouting.OnRoutingChangedListener onRoutingChangedListener, Handler handler) {
            Looper looper = handler != null ? handler.getLooper() : AudioTrack.this.mInitializationLooper;
            if (looper != null) {
                this.mHandler = new Handler(looper) { // from class: android.media.AudioTrack.NativeRoutingEventHandlerDelegate.1
                    @Override // android.os.Handler
                    public void handleMessage(Message message) {
                        AudioTrack audioTrack2 = audioTrack;
                        if (audioTrack2 == null) {
                            return;
                        }
                        if (message.what != 1000) {
                            AudioTrack.loge("Unknown native event type: " + message.what);
                        } else {
                            AudioRouting.OnRoutingChangedListener onRoutingChangedListener2 = onRoutingChangedListener;
                            if (onRoutingChangedListener2 != null) {
                                onRoutingChangedListener2.onRoutingChanged(audioTrack2);
                            }
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

    @Deprecated
    public interface OnRoutingChangedListener extends AudioRouting.OnRoutingChangedListener {
        @Override // android.media.AudioRouting.OnRoutingChangedListener
        void onRoutingChanged(AudioRouting audioRouting);

        void onRoutingChanged(AudioTrack audioTrack);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface PerformanceMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TransferMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface WriteMode {
    }

    public AudioTrack(int i2, int i3, int i4, int i5, int i6, int i7) {
        this(i2, i3, i4, i5, i6, i7, 0);
    }

    private void audioBuffSizeCheck(int i2) {
        int bytesPerSample;
        if (AudioFormat.isEncodingLinearFrames(this.mAudioFormat)) {
            bytesPerSample = AudioFormat.getBytesPerSample(this.mAudioFormat) * this.mChannelCount;
        } else {
            bytesPerSample = 1;
        }
        if (i2 % bytesPerSample != 0 || i2 < 1) {
            throw new IllegalArgumentException("Invalid audio buffer size.");
        }
        this.mNativeBufferSizeInBytes = i2;
        this.mNativeBufferSizeInFrames = i2 / bytesPerSample;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x004d  */
    /* JADX WARN: Code duplicated, block: B:29:0x0052  */
    private void audioParamCheck(int i2, int i3, int i4, int i5, int i6) {
        if ((i2 < 4000 || i2 > 192000) && i2 != 0) {
            throw new IllegalArgumentException(i2 + "Hz is not a supported sample rate.");
        }
        this.mSampleRate = i2;
        if (i5 == 13 && i3 != 12) {
            throw new IllegalArgumentException("ENCODING_IEC61937 must be configured as CHANNEL_OUT_STEREO");
        }
        this.mChannelConfiguration = i3;
        if (i3 == 1 || i3 == 2) {
            this.mChannelCount = 1;
            this.mChannelMask = 4;
        } else if (i3 == 3) {
            this.mChannelCount = 2;
            this.mChannelMask = 12;
        } else if (i3 == 4) {
            this.mChannelCount = 1;
            this.mChannelMask = 4;
        } else if (i3 == 12) {
            this.mChannelCount = 2;
            this.mChannelMask = 12;
        } else if (i3 == 0 && i4 != 0) {
            this.mChannelCount = 0;
        } else {
            if (!isMultichannelConfigSupported(i3)) {
                throw new IllegalArgumentException("Unsupported channel configuration.");
            }
            this.mChannelMask = i3;
            this.mChannelCount = AudioFormat.channelCountFromOutChannelMask(i3);
        }
        this.mChannelIndexMask = i4;
        if (i4 != 0) {
            if (((~((1 << CHANNEL_COUNT_MAX) - 1)) & i4) != 0) {
                throw new IllegalArgumentException(c.d("Unsupported channel index configuration ", i4));
            }
            int iBitCount = Integer.bitCount(i4);
            int i7 = this.mChannelCount;
            if (i7 == 0) {
                this.mChannelCount = iBitCount;
            } else if (i7 != iBitCount) {
                throw new IllegalArgumentException("Channel count must match");
            }
        }
        if (i5 == 1) {
            i5 = 2;
        }
        if (!AudioFormat.isPublicEncoding(i5)) {
            throw new IllegalArgumentException("Unsupported audio encoding.");
        }
        this.mAudioFormat = i5;
        if ((i6 != 1 && i6 != 0) || (i6 != 1 && !AudioFormat.isEncodingLinearPcm(i5))) {
            throw new IllegalArgumentException("Invalid mode.");
        }
        this.mDataLoadMode = i6;
    }

    private void broadcastRoutingChange() {
        AudioManager.resetAudioPortGeneration();
        synchronized (this.mRoutingChangeListeners) {
            Iterator<NativeRoutingEventHandlerDelegate> it = this.mRoutingChangeListeners.values().iterator();
            while (it.hasNext()) {
                Handler handler = it.next().getHandler();
                if (handler != null) {
                    handler.sendEmptyMessage(1000);
                }
            }
        }
    }

    private static float clampGainOrLevel(float f2) {
        if (Float.isNaN(f2)) {
            throw new IllegalArgumentException();
        }
        float f3 = 0.0f;
        if (f2 >= 0.0f) {
            f3 = 1.0f;
            if (f2 <= 1.0f) {
                return f2;
            }
        }
        return f3;
    }

    public static float getMaxVolume() {
        return 1.0f;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x001f  */
    public static int getMinBufferSize(int i2, int i3, int i4) {
        int iChannelCountFromOutChannelMask = 2;
        if (i3 == 2) {
            iChannelCountFromOutChannelMask = 1;
        } else if (i3 != 3) {
            if (i3 == 4) {
                iChannelCountFromOutChannelMask = 1;
            } else if (i3 != 12) {
                if (!isMultichannelConfigSupported(i3)) {
                    loge("getMinBufferSize(): Invalid channel configuration.");
                    return -2;
                }
                iChannelCountFromOutChannelMask = AudioFormat.channelCountFromOutChannelMask(i3);
            }
        }
        if (!AudioFormat.isPublicEncoding(i4)) {
            loge("getMinBufferSize(): Invalid audio format.");
            return -2;
        }
        if (i2 < 4000 || i2 > 192000) {
            loge(c.e("getMinBufferSize(): ", i2, " Hz is not a supported sample rate."));
            return -2;
        }
        int iNative_get_min_buff_size = native_get_min_buff_size(i2, iChannelCountFromOutChannelMask, i4);
        if (iNative_get_min_buff_size > 0) {
            return iNative_get_min_buff_size;
        }
        loge("getMinBufferSize(): error querying hardware");
        return -1;
    }

    public static float getMinVolume() {
        return 0.0f;
    }

    public static int getNativeOutputSampleRate(int i2) {
        return native_get_output_sample_rate(i2);
    }

    private static int getPid() {
        if (mPid == 0) {
            mPid = Process.myPid();
        }
        return mPid;
    }

    private static String getProcName() {
        if (mProcName == null) {
            try {
                mProcName = getService().procName(mPid);
            } catch (RemoteException e2) {
                Log.e(TAG, "Dead object in AudioTrack", e2);
            }
        }
        return mProcName;
    }

    private static IRemoteToolkit getService() {
        IRemoteToolkit iRemoteToolkit = sService;
        if (iRemoteToolkit != null) {
            return iRemoteToolkit;
        }
        IRemoteToolkit iRemoteToolkitAsInterface = IRemoteToolkit.Stub.asInterface(ServiceManager.getService(Context.SYU_SERVICE));
        sService = iRemoteToolkitAsInterface;
        return iRemoteToolkitAsInterface;
    }

    private static boolean isMultichannelConfigSupported(int i2) {
        if ((i2 & SUPPORTED_OUT_CHANNELS) != i2) {
            loge("Channel configuration features unsupported channels");
            return false;
        }
        int iChannelCountFromOutChannelMask = AudioFormat.channelCountFromOutChannelMask(i2);
        int i3 = CHANNEL_COUNT_MAX;
        if (iChannelCountFromOutChannelMask > i3) {
            loge(m.e("Channel configuration contains too many channels ", iChannelCountFromOutChannelMask, ">", i3));
            return false;
        }
        if ((i2 & 12) != 12) {
            loge("Front channels must be present in multichannel configurations");
            return false;
        }
        int i4 = i2 & 192;
        if (i4 != 0 && i4 != 192) {
            loge("Rear channels can't be used independently");
            return false;
        }
        int i5 = i2 & GLES30.GL_COLOR;
        if (i5 == 0 || i5 == 6144) {
            return true;
        }
        loge("Side channels can't be used independently");
        return false;
    }

    private boolean isVoiceApp(String str) {
        if (str != null) {
            return str.startsWith("com.txznet.txz") || str.startsWith("com.syu.voice") || str.startsWith("com.iflytek.speechcloud") || str.startsWith("com.txznet.tts");
        }
        return false;
    }

    private static void logd(String str) {
        Log.d(TAG, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void loge(String str) {
        Log.e(TAG, str);
    }

    private native int native_applyVolumeShaper(VolumeShaper.Configuration configuration, VolumeShaper.Operation operation);

    private final native int native_attachAuxEffect(int i2);

    private final native void native_disableDeviceCallback();

    private final native void native_enableDeviceCallback();

    private final native void native_finalize();

    private final native void native_flush();

    private final native int native_getRoutedDeviceId();

    private native VolumeShaper.State native_getVolumeShaperState(int i2);

    private static native int native_get_FCC_8();

    private final native int native_get_buffer_capacity_frames();

    private final native int native_get_buffer_size_frames();

    private final native int native_get_flags();

    private final native int native_get_latency();

    private final native int native_get_marker_pos();

    private static final native int native_get_min_buff_size(int i2, int i3, int i4);

    private static final native int native_get_output_sample_rate(int i2);

    private final native PlaybackParams native_get_playback_params();

    private final native int native_get_playback_rate();

    private final native int native_get_pos_update_period();

    private final native int native_get_position();

    private final native int native_get_timestamp(long[] jArr);

    private final native int native_get_underrun_count();

    private final native void native_pause();

    private final native int native_reload_static();

    private final native int native_setAuxEffectSendLevel(float f2);

    private final native boolean native_setOutputDevice(int i2);

    private final native void native_setVolume(float f2, float f3);

    private final native int native_set_buffer_size_frames(int i2);

    private final native int native_set_loop(int i2, int i3, int i4);

    private final native int native_set_marker_pos(int i2);

    private final native void native_set_playback_params(PlaybackParams playbackParams);

    private final native int native_set_playback_rate(int i2);

    private final native int native_set_pos_update_period(int i2);

    private final native int native_set_position(int i2);

    private final native int native_setup(Object obj, Object obj2, int[] iArr, int i2, int i3, int i4, int i5, int i6, int[] iArr2, long j2);

    private final native void native_start();

    private final native void native_stop();

    private final native int native_write_byte(byte[] bArr, int i2, int i3, int i4, boolean z2);

    private final native int native_write_float(float[] fArr, int i2, int i3, int i4, boolean z2);

    private final native int native_write_native_bytes(Object obj, int i2, int i3, int i4, boolean z2);

    private final native int native_write_short(short[] sArr, int i2, int i3, int i4, boolean z2);

    private static void postEventFromNative(Object obj, int i2, int i3, int i4, Object obj2) {
        Handler handler;
        AudioTrack audioTrack = (AudioTrack) ((WeakReference) obj).get();
        if (audioTrack == null) {
            return;
        }
        if (i2 == 1000) {
            audioTrack.broadcastRoutingChange();
            return;
        }
        NativePositionEventHandlerDelegate nativePositionEventHandlerDelegate = audioTrack.mEventHandlerDelegate;
        if (nativePositionEventHandlerDelegate == null || (handler = nativePositionEventHandlerDelegate.getHandler()) == null) {
            return;
        }
        handler.sendMessage(handler.obtainMessage(i2, i3, i4, obj2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean shouldEnablePowerSaving(AudioAttributes audioAttributes, AudioFormat audioFormat, int i2, int i3) {
        if ((audioAttributes == null || (audioAttributes.getAllFlags() == 0 && audioAttributes.getUsage() == 1 && (audioAttributes.getContentType() == 0 || audioAttributes.getContentType() == 2 || audioAttributes.getContentType() == 3))) && audioFormat != null && audioFormat.getSampleRate() != 0 && AudioFormat.isEncodingLinearPcm(audioFormat.getEncoding()) && AudioFormat.isValidEncoding(audioFormat.getEncoding()) && audioFormat.getChannelCount() >= 1 && i3 == 1) {
            return i2 == 0 || ((long) i2) >= (((((long) audioFormat.getChannelCount()) * 100) * ((long) AudioFormat.getBytesPerSample(audioFormat.getEncoding()))) * ((long) audioFormat.getSampleRate())) / 1000;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startImpl() {
        synchronized (this.mPlayStateLock) {
            baseStart();
            native_start();
            this.mPlayState = 3;
        }
    }

    private void testDisableNativeRoutingCallbacksLocked() {
        if (this.mRoutingChangeListeners.size() == 0) {
            native_disableDeviceCallback();
        }
    }

    private void testEnableNativeRoutingCallbacksLocked() {
        if (this.mRoutingChangeListeners.size() == 0) {
            native_enableDeviceCallback();
        }
    }

    @Override // android.media.AudioRouting
    public void addOnRoutingChangedListener(AudioRouting.OnRoutingChangedListener onRoutingChangedListener, Handler handler) {
        synchronized (this.mRoutingChangeListeners) {
            if (onRoutingChangedListener != null) {
                if (!this.mRoutingChangeListeners.containsKey(onRoutingChangedListener)) {
                    testEnableNativeRoutingCallbacksLocked();
                    ArrayMap<AudioRouting.OnRoutingChangedListener, NativeRoutingEventHandlerDelegate> arrayMap = this.mRoutingChangeListeners;
                    if (handler == null) {
                        handler = new Handler(this.mInitializationLooper);
                    }
                    arrayMap.put(onRoutingChangedListener, new NativeRoutingEventHandlerDelegate(this, onRoutingChangedListener, handler));
                }
            }
        }
    }

    public int attachAuxEffect(int i2) {
        if (this.mState == 0) {
            return -3;
        }
        return native_attachAuxEffect(i2);
    }

    @Override // android.media.VolumeAutomation
    public VolumeShaper createVolumeShaper(VolumeShaper.Configuration configuration) {
        return new VolumeShaper(configuration, this);
    }

    public void deferred_connect(long j2) {
        if (this.mState != 1) {
            int[] iArr = {0};
            int iNative_setup = native_setup(new WeakReference(this), null, new int[]{0}, 0, 0, 0, 0, 0, iArr, j2);
            if (iNative_setup != 0) {
                loge(c.e("Error code ", iNative_setup, " when initializing AudioTrack."));
            } else {
                this.mSessionId = iArr[0];
                this.mState = 1;
            }
        }
    }

    public void finalize() {
        baseRelease();
        native_finalize();
    }

    public void flush() {
        if (this.mState == 1) {
            native_flush();
            this.mAvSyncHeader = null;
            this.mAvSyncBytesRemaining = 0;
        }
    }

    public int fytNewStream() {
        int i2;
        IRemoteToolkit service = getService();
        try {
            int pid = mPid;
            if (pid == 0) {
                pid = getPid();
            }
            mNaviAPP = service.ismapapplication(pid);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in AudioTrack", e2);
        }
        if (isVoiceApp(mProcName)) {
            i2 = 0;
        } else {
            i2 = mNaviAPP == 1 ? 1 : -1;
        }
        Log.i(TAG, "fyt new stream " + i2);
        return i2;
    }

    public void fytNotifyService(String str) {
        IRemoteToolkit service = getService();
        int pid = getPid();
        String procName = getProcName();
        if (this.debugmediaplayer) {
            Log.e(TAGFYT, ">>> AudioTracvk  pid =  " + pid + "mMyProcName=" + procName + "state =" + str);
        }
        try {
            service.sendToSyuServiceAudioInformation(0, null, null, new String[]{mProcName, str});
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in start", e2);
        }
    }

    public int getAudioFormat() {
        return this.mAudioFormat;
    }

    public int getAudioSessionId() {
        return this.mSessionId;
    }

    public int getBufferCapacityInFrames() {
        return native_get_buffer_capacity_frames();
    }

    public int getBufferSizeInFrames() {
        return native_get_buffer_size_frames();
    }

    public int getChannelConfiguration() {
        return this.mChannelConfiguration;
    }

    public int getChannelCount() {
        return this.mChannelCount;
    }

    public AudioFormat getFormat() {
        AudioFormat.Builder encoding = new AudioFormat.Builder().setSampleRate(this.mSampleRate).setEncoding(this.mAudioFormat);
        int i2 = this.mChannelConfiguration;
        if (i2 != 0) {
            encoding.setChannelMask(i2);
        }
        int i3 = this.mChannelIndexMask;
        if (i3 != 0) {
            encoding.setChannelIndexMask(i3);
        }
        return encoding.build();
    }

    public int getLatency() {
        return native_get_latency();
    }

    @Deprecated
    public int getNativeFrameCount() {
        return native_get_buffer_capacity_frames();
    }

    public int getNotificationMarkerPosition() {
        return native_get_marker_pos();
    }

    public int getPerformanceMode() {
        int iNative_get_flags = native_get_flags();
        if ((iNative_get_flags & 4) != 0) {
            return 1;
        }
        return (iNative_get_flags & 8) != 0 ? 2 : 0;
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

    public PlaybackParams getPlaybackParams() {
        return native_get_playback_params();
    }

    public int getPlaybackRate() {
        return native_get_playback_rate();
    }

    public int getPositionNotificationPeriod() {
        return native_get_pos_update_period();
    }

    @Override // android.media.AudioRouting
    public AudioDeviceInfo getPreferredDevice() {
        AudioDeviceInfo audioDeviceInfo;
        synchronized (this) {
            audioDeviceInfo = this.mPreferredDevice;
        }
        return audioDeviceInfo;
    }

    @Override // android.media.AudioRouting
    public AudioDeviceInfo getRoutedDevice() {
        int iNative_getRoutedDeviceId = native_getRoutedDeviceId();
        if (iNative_getRoutedDeviceId == 0) {
            return null;
        }
        AudioDeviceInfo[] devicesStatic = AudioManager.getDevicesStatic(2);
        for (int i2 = 0; i2 < devicesStatic.length; i2++) {
            if (devicesStatic[i2].getId() == iNative_getRoutedDeviceId) {
                return devicesStatic[i2];
            }
        }
        return null;
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

    public int getTimestampWithStatus(AudioTimestamp audioTimestamp) {
        if (audioTimestamp == null) {
            throw new IllegalArgumentException();
        }
        long[] jArr = new long[2];
        int iNative_get_timestamp = native_get_timestamp(jArr);
        audioTimestamp.framePosition = jArr[0];
        audioTimestamp.nanoTime = jArr[1];
        return iNative_get_timestamp;
    }

    public int getUnderrunCount() {
        return native_get_underrun_count();
    }

    public final native void native_release();

    public void pause() {
        if (this.mState != 1) {
            throw new IllegalStateException("pause() called on uninitialized AudioTrack.");
        }
        fytNotifyService("stop");
        synchronized (this.mPlayStateLock) {
            native_pause();
            basePause();
            this.mPlayState = 2;
        }
    }

    public void play() {
        if (this.mState != 1) {
            throw new IllegalStateException("play() called on uninitialized AudioTrack.");
        }
        fytNotifyService("play");
        final int startDelayMs = getStartDelayMs();
        if (startDelayMs == 0) {
            startImpl();
        } else {
            new Thread() { // from class: android.media.AudioTrack.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        Thread.sleep(startDelayMs);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                    AudioTrack.this.baseSetStartDelayMs(0);
                    try {
                        AudioTrack.this.startImpl();
                    } catch (IllegalStateException unused) {
                    }
                }
            }.start();
        }
    }

    @Override // android.media.PlayerBase
    public int playerApplyVolumeShaper(VolumeShaper.Configuration configuration, VolumeShaper.Operation operation) {
        return native_applyVolumeShaper(configuration, operation);
    }

    @Override // android.media.PlayerBase
    public VolumeShaper.State playerGetVolumeShaperState(int i2) {
        return native_getVolumeShaperState(i2);
    }

    @Override // android.media.PlayerBase
    public void playerPause() {
        pause();
    }

    @Override // android.media.PlayerBase
    public int playerSetAuxEffectSendLevel(boolean z2, float f2) {
        if (z2) {
            f2 = 0.0f;
        }
        return native_setAuxEffectSendLevel(clampGainOrLevel(f2)) == 0 ? 0 : -1;
    }

    @Override // android.media.PlayerBase
    public void playerSetVolume(boolean z2, float f2, float f3) {
        if (z2) {
            f2 = 0.0f;
        }
        float fClampGainOrLevel = clampGainOrLevel(f2);
        if (z2) {
            f3 = 0.0f;
        }
        native_setVolume(fClampGainOrLevel, clampGainOrLevel(f3));
    }

    @Override // android.media.PlayerBase
    public void playerStart() {
        play();
    }

    @Override // android.media.PlayerBase
    public void playerStop() {
        stop();
    }

    public void release() {
        try {
            stop();
        } catch (IllegalStateException unused) {
        }
        baseRelease();
        native_release();
        this.mState = 0;
    }

    public int reloadStaticData() {
        if (this.mDataLoadMode == 1 || this.mState != 1) {
            return -3;
        }
        return native_reload_static();
    }

    @Override // android.media.AudioRouting
    public void removeOnRoutingChangedListener(AudioRouting.OnRoutingChangedListener onRoutingChangedListener) {
        synchronized (this.mRoutingChangeListeners) {
            if (this.mRoutingChangeListeners.containsKey(onRoutingChangedListener)) {
                this.mRoutingChangeListeners.remove(onRoutingChangedListener);
            }
            testDisableNativeRoutingCallbacksLocked();
        }
    }

    public int setAuxEffectSendLevel(float f2) {
        if (this.mState == 0) {
            return -3;
        }
        return baseSetAuxEffectSendLevel(f2);
    }

    public int setBufferSizeInFrames(int i2) {
        if (this.mDataLoadMode == 0 || this.mState == 0) {
            return -3;
        }
        if (i2 < 0) {
            return -2;
        }
        return native_set_buffer_size_frames(i2);
    }

    public int setLoopPoints(int i2, int i3, int i4) {
        int i5;
        if (this.mDataLoadMode == 1 || this.mState == 0 || getPlayState() == 3) {
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
        if (this.mDataLoadMode == 1 || this.mState == 0 || getPlayState() == 3) {
            return -3;
        }
        if (i2 < 0 || i2 > this.mNativeBufferSizeInFrames) {
            return -2;
        }
        return native_set_position(i2);
    }

    public void setPlaybackParams(PlaybackParams playbackParams) {
        if (playbackParams == null) {
            throw new IllegalArgumentException("params is null");
        }
        native_set_playback_params(playbackParams);
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

    @Override // android.media.AudioRouting
    public boolean setPreferredDevice(AudioDeviceInfo audioDeviceInfo) {
        if (audioDeviceInfo != null && !audioDeviceInfo.isSink()) {
            return false;
        }
        boolean zNative_setOutputDevice = native_setOutputDevice(audioDeviceInfo != null ? audioDeviceInfo.getId() : 0);
        if (zNative_setOutputDevice) {
            synchronized (this) {
                this.mPreferredDevice = audioDeviceInfo;
            }
        }
        return zNative_setOutputDevice;
    }

    @Deprecated
    public void setState(int i2) {
        this.mState = i2;
    }

    @Deprecated
    public int setStereoVolume(float f2, float f3) {
        if (this.mState == 0) {
            return -3;
        }
        baseSetVolume(f2, f3);
        return 0;
    }

    public int setVolume(float f2) {
        return setStereoVolume(f2, f2);
    }

    public void stop() {
        if (this.mState != 1) {
            throw new IllegalStateException("stop() called on uninitialized AudioTrack.");
        }
        fytNotifyService("stop");
        synchronized (this.mPlayStateLock) {
            native_stop();
            baseStop();
            this.mPlayState = 1;
            this.mAvSyncHeader = null;
            this.mAvSyncBytesRemaining = 0;
        }
    }

    public int write(byte[] bArr, int i2, int i3) {
        return write(bArr, i2, i3, 0);
    }

    public AudioTrack(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this(new AudioAttributes.Builder().setLegacyStreamType(i2).build(), new AudioFormat.Builder().setChannelMask(i4).setEncoding(i5).setSampleRate(i3).build(), i6, i7, i8);
        PlayerBase.deprecateStreamTypeForPlayback(i2, "AudioTrack", "AudioTrack()");
    }

    public void setPlaybackPositionUpdateListener(OnPlaybackPositionUpdateListener onPlaybackPositionUpdateListener, Handler handler) {
        if (onPlaybackPositionUpdateListener != null) {
            this.mEventHandlerDelegate = new NativePositionEventHandlerDelegate(this, onPlaybackPositionUpdateListener, handler);
        } else {
            this.mEventHandlerDelegate = null;
        }
    }

    public int write(byte[] bArr, int i2, int i3, int i4) {
        int i5;
        if (this.mState == 0 || this.mAudioFormat == 4) {
            return -3;
        }
        if (i4 != 0 && i4 != 1) {
            Log.e(TAG, "AudioTrack.write() called with invalid blocking mode");
            return -2;
        }
        if (bArr == null || i2 < 0 || i3 < 0 || (i5 = i2 + i3) < 0 || i5 > bArr.length) {
            return -2;
        }
        if (mNaviAPP == 1 && ("title.navi".equals(mProcName) || "com.navngo.igo.javaclient".equals(mProcName))) {
            try {
                Thread.currentThread();
                Thread.sleep(80L);
            } catch (Exception unused) {
            }
        }
        int iNative_write_byte = native_write_byte(bArr, i2, i3, this.mAudioFormat, i4 == 0);
        if (this.mDataLoadMode == 0 && this.mState == 2 && iNative_write_byte > 0) {
            this.mState = 1;
        }
        return iNative_write_byte;
    }

    @Deprecated
    public void addOnRoutingChangedListener(OnRoutingChangedListener onRoutingChangedListener, Handler handler) {
        addOnRoutingChangedListener((AudioRouting.OnRoutingChangedListener) onRoutingChangedListener, handler);
    }

    @Deprecated
    public void removeOnRoutingChangedListener(OnRoutingChangedListener onRoutingChangedListener) {
        removeOnRoutingChangedListener((AudioRouting.OnRoutingChangedListener) onRoutingChangedListener);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:30:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:33:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:35:0x0114  */
    /* JADX WARN: Code duplicated, block: B:37:0x0120  */
    /* JADX WARN: Code duplicated, block: B:39:0x0132  */
    /* JADX WARN: Code duplicated, block: B:41:0x013a  */
    /* JADX WARN: Code duplicated, block: B:42:0x0144  */
    /* JADX WARN: Code duplicated, block: B:46:0x0156  */
    /* JADX WARN: Code duplicated, block: B:47:0x015a  */
    /* JADX WARN: Code duplicated, block: B:50:0x0160  */
    public AudioTrack(AudioAttributes audioAttributes, AudioFormat audioFormat, int i2, int i3, int i4) {
        int i5;
        int channelMask;
        int encoding;
        int[] iArr;
        int[] iArr2;
        int iNative_setup;
        int bytesPerSample;
        super(audioAttributes, 1);
        this.mState = 0;
        this.mPlayState = 1;
        this.mPlayStateLock = new Object();
        this.mNativeBufferSizeInBytes = 0;
        this.mNativeBufferSizeInFrames = 0;
        this.mChannelCount = 1;
        this.mChannelMask = 4;
        this.mStreamType = 3;
        this.mDataLoadMode = 1;
        this.mChannelConfiguration = 4;
        this.mChannelIndexMask = 0;
        this.mSessionId = 0;
        this.mAvSyncHeader = null;
        this.mAvSyncBytesRemaining = 0;
        this.mOffset = 0;
        this.debugmediaplayer = false;
        this.mPreferredDevice = null;
        this.mRoutingChangeListeners = new ArrayMap<>();
        getService();
        mPid = getPid();
        mProcName = getProcName();
        int iFytNewStream = fytNewStream();
        if (iFytNewStream != -1) {
            this.mAttributes = new AudioAttributes.Builder().setLegacyStreamType(iFytNewStream).build();
        }
        this.debugmediaplayer = SystemProperties.getBoolean("persist.fyt.audio_debug", false);
        if (audioFormat != null) {
            if (shouldEnablePowerSaving(this.mAttributes, audioFormat, i2, i3)) {
                this.mAttributes = new AudioAttributes.Builder(this.mAttributes).replaceFlags((this.mAttributes.getAllFlags() | 512) & (-257)).build();
            }
            Looper looperMyLooper = Looper.myLooper();
            Looper mainLooper = looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper;
            int sampleRate = audioFormat.getSampleRate();
            sampleRate = sampleRate == 0 ? 0 : sampleRate;
            int channelIndexMask = (audioFormat.getPropertySetMask() & 8) != 0 ? audioFormat.getChannelIndexMask() : 0;
            if ((4 & audioFormat.getPropertySetMask()) != 0) {
                channelMask = audioFormat.getChannelMask();
            } else {
                if (channelIndexMask == 0) {
                    channelMask = 12;
                } else {
                    i5 = 0;
                }
                if ((audioFormat.getPropertySetMask() & 1) != 0) {
                    encoding = audioFormat.getEncoding();
                } else {
                    encoding = 1;
                }
                audioParamCheck(sampleRate, i5, channelIndexMask, encoding, i3);
                this.mStreamType = -1;
                audioBuffSizeCheck(i2);
                this.mInitializationLooper = mainLooper;
                if (i4 >= 0) {
                    iArr = new int[]{this.mSampleRate};
                    iArr2 = new int[]{i4};
                    iNative_setup = native_setup(new WeakReference(this), this.mAttributes, iArr, this.mChannelMask, this.mChannelIndexMask, this.mAudioFormat, this.mNativeBufferSizeInBytes, this.mDataLoadMode, iArr2, 0L);
                    if (iNative_setup != 0) {
                        loge(c.e("Error code ", iNative_setup, " when initializing AudioTrack."));
                        return;
                    }
                    this.mSampleRate = iArr[0];
                    this.mSessionId = iArr2[0];
                    if ((this.mAttributes.getFlags() & 16) != 0) {
                        if (AudioFormat.isEncodingLinearFrames(this.mAudioFormat)) {
                            bytesPerSample = AudioFormat.getBytesPerSample(this.mAudioFormat) * this.mChannelCount;
                        } else {
                            bytesPerSample = 1;
                        }
                        this.mOffset = ((int) Math.ceil(HEADER_V2_SIZE_BYTES / bytesPerSample)) * bytesPerSample;
                    }
                    if (this.mDataLoadMode == 0) {
                        this.mState = 2;
                    } else {
                        this.mState = 1;
                    }
                    baseRegisterPlayer();
                    return;
                }
                throw new IllegalArgumentException(c.d("Invalid audio session ID: ", i4));
            }
            i5 = channelMask;
            if ((audioFormat.getPropertySetMask() & 1) != 0) {
                encoding = audioFormat.getEncoding();
            } else {
                encoding = 1;
            }
            audioParamCheck(sampleRate, i5, channelIndexMask, encoding, i3);
            this.mStreamType = -1;
            audioBuffSizeCheck(i2);
            this.mInitializationLooper = mainLooper;
            if (i4 >= 0) {
                iArr = new int[]{this.mSampleRate};
                iArr2 = new int[]{i4};
                iNative_setup = native_setup(new WeakReference(this), this.mAttributes, iArr, this.mChannelMask, this.mChannelIndexMask, this.mAudioFormat, this.mNativeBufferSizeInBytes, this.mDataLoadMode, iArr2, 0L);
                if (iNative_setup != 0) {
                    loge(c.e("Error code ", iNative_setup, " when initializing AudioTrack."));
                    return;
                }
                this.mSampleRate = iArr[0];
                this.mSessionId = iArr2[0];
                if ((this.mAttributes.getFlags() & 16) != 0) {
                    if (AudioFormat.isEncodingLinearFrames(this.mAudioFormat)) {
                        bytesPerSample = AudioFormat.getBytesPerSample(this.mAudioFormat) * this.mChannelCount;
                    } else {
                        bytesPerSample = 1;
                    }
                    this.mOffset = ((int) Math.ceil(HEADER_V2_SIZE_BYTES / bytesPerSample)) * bytesPerSample;
                }
                if (this.mDataLoadMode == 0) {
                    this.mState = 2;
                } else {
                    this.mState = 1;
                }
                baseRegisterPlayer();
                return;
            }
            throw new IllegalArgumentException(c.d("Invalid audio session ID: ", i4));
        }
        throw new IllegalArgumentException("Illegal null AudioFormat");
    }

    public int write(short[] sArr, int i2, int i3) {
        return write(sArr, i2, i3, 0);
    }

    public int write(short[] sArr, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (this.mState == 0 || (i5 = this.mAudioFormat) == 4) {
            return -3;
        }
        if (i4 != 0 && i4 != 1) {
            Log.e(TAG, "AudioTrack.write() called with invalid blocking mode");
            return -2;
        }
        if (sArr == null || i2 < 0 || i3 < 0 || (i6 = i2 + i3) < 0 || i6 > sArr.length) {
            return -2;
        }
        int iNative_write_short = native_write_short(sArr, i2, i3, i5, i4 == 0);
        if (this.mDataLoadMode == 0 && this.mState == 2 && iNative_write_short > 0) {
            this.mState = 1;
        }
        return iNative_write_short;
    }

    public int write(float[] fArr, int i2, int i3, int i4) {
        int i5;
        if (this.mState == 0) {
            Log.e(TAG, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED");
            return -3;
        }
        int i6 = this.mAudioFormat;
        if (i6 != 4) {
            Log.e(TAG, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT");
            return -3;
        }
        if (i4 != 0 && i4 != 1) {
            Log.e(TAG, "AudioTrack.write() called with invalid blocking mode");
            return -2;
        }
        if (fArr != null && i2 >= 0 && i3 >= 0 && (i5 = i2 + i3) >= 0 && i5 <= fArr.length) {
            int iNative_write_float = native_write_float(fArr, i2, i3, i6, i4 == 0);
            if (this.mDataLoadMode == 0 && this.mState == 2 && iNative_write_float > 0) {
                this.mState = 1;
            }
            return iNative_write_float;
        }
        Log.e(TAG, "AudioTrack.write() called with invalid array, offset, or size");
        return -2;
    }

    public int write(ByteBuffer byteBuffer, int i2, int i3) {
        int iNative_write_byte;
        if (this.mState == 0) {
            Log.e(TAG, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED");
            return -3;
        }
        if (i3 != 0 && i3 != 1) {
            Log.e(TAG, "AudioTrack.write() called with invalid blocking mode");
            return -2;
        }
        if (byteBuffer != null && i2 >= 0 && i2 <= byteBuffer.remaining()) {
            if (byteBuffer.isDirect()) {
                iNative_write_byte = native_write_native_bytes(byteBuffer, byteBuffer.position(), i2, this.mAudioFormat, i3 == 0);
            } else {
                iNative_write_byte = native_write_byte(NioUtils.unsafeArray(byteBuffer), byteBuffer.position() + NioUtils.unsafeArrayOffset(byteBuffer), i2, this.mAudioFormat, i3 == 0);
            }
            if (this.mDataLoadMode == 0 && this.mState == 2 && iNative_write_byte > 0) {
                this.mState = 1;
            }
            if (iNative_write_byte > 0) {
                byteBuffer.position(byteBuffer.position() + iNative_write_byte);
            }
            return iNative_write_byte;
        }
        m.q("AudioTrack.write() called with invalid size (", i2, ") value", TAG);
        return -2;
    }

    public int write(ByteBuffer byteBuffer, int i2, int i3, long j2) {
        if (this.mState == 0) {
            Log.e(TAG, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED");
            return -3;
        }
        if (i3 != 0 && i3 != 1) {
            Log.e(TAG, "AudioTrack.write() called with invalid blocking mode");
            return -2;
        }
        if (this.mDataLoadMode != 1) {
            Log.e(TAG, "AudioTrack.write() with timestamp called for non-streaming mode track");
            return -3;
        }
        if ((this.mAttributes.getFlags() & 16) == 0) {
            Log.d(TAG, "AudioTrack.write() called on a regular AudioTrack. Ignoring pts...");
            return write(byteBuffer, i2, i3);
        }
        if (byteBuffer != null && i2 >= 0 && i2 <= byteBuffer.remaining()) {
            if (this.mAvSyncHeader == null) {
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(this.mOffset);
                this.mAvSyncHeader = byteBufferAllocate;
                byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
                this.mAvSyncHeader.putInt(1431633922);
            }
            if (this.mAvSyncBytesRemaining == 0) {
                this.mAvSyncHeader.putInt(4, i2);
                this.mAvSyncHeader.putLong(8, j2);
                this.mAvSyncHeader.putInt(16, this.mOffset);
                this.mAvSyncHeader.position(0);
                this.mAvSyncBytesRemaining = i2;
            }
            if (this.mAvSyncHeader.remaining() != 0) {
                ByteBuffer byteBuffer2 = this.mAvSyncHeader;
                int iWrite = write(byteBuffer2, byteBuffer2.remaining(), i3);
                if (iWrite < 0) {
                    Log.e(TAG, "AudioTrack.write() could not write timestamp header!");
                    this.mAvSyncHeader = null;
                    this.mAvSyncBytesRemaining = 0;
                    return iWrite;
                }
                if (this.mAvSyncHeader.remaining() > 0) {
                    Log.v(TAG, "AudioTrack.write() partial timestamp header written.");
                    return 0;
                }
            }
            int iWrite2 = write(byteBuffer, Math.min(this.mAvSyncBytesRemaining, i2), i3);
            if (iWrite2 < 0) {
                Log.e(TAG, "AudioTrack.write() could not write audio data!");
                this.mAvSyncHeader = null;
                this.mAvSyncBytesRemaining = 0;
                return iWrite2;
            }
            this.mAvSyncBytesRemaining -= iWrite2;
            return iWrite2;
        }
        m.q("AudioTrack.write() called with invalid size (", i2, ") value", TAG);
        return -2;
    }

    public AudioTrack(long j2) {
        super(new AudioAttributes.Builder().build(), 1);
        this.mState = 0;
        this.mPlayState = 1;
        this.mPlayStateLock = new Object();
        this.mNativeBufferSizeInBytes = 0;
        this.mNativeBufferSizeInFrames = 0;
        this.mChannelCount = 1;
        this.mChannelMask = 4;
        this.mStreamType = 3;
        this.mDataLoadMode = 1;
        this.mChannelConfiguration = 4;
        this.mChannelIndexMask = 0;
        this.mSessionId = 0;
        this.mAvSyncHeader = null;
        this.mAvSyncBytesRemaining = 0;
        this.mOffset = 0;
        this.debugmediaplayer = false;
        this.mPreferredDevice = null;
        this.mRoutingChangeListeners = new ArrayMap<>();
        this.mNativeTrackInJavaObj = 0L;
        this.mJniData = 0L;
        Looper looperMyLooper = Looper.myLooper();
        this.mInitializationLooper = looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper;
        if (j2 != 0) {
            baseRegisterPlayer();
            deferred_connect(j2);
        } else {
            this.mState = 0;
        }
    }
}
