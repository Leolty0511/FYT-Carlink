package android.media;

import android.accessibilityservice.c;
import android.app.ActivityThread;
import android.app.m;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.util.ArrayMap;
import android.util.Log;
import com.android.internal.annotations.GuardedBy;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class AudioRecord implements AudioRouting {
    private static final int AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK = -17;
    private static final int AUDIORECORD_ERROR_SETUP_INVALIDFORMAT = -18;
    private static final int AUDIORECORD_ERROR_SETUP_INVALIDSOURCE = -19;
    private static final int AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED = -20;
    private static final int AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT = -16;
    public static final int ERROR = -1;
    public static final int ERROR_BAD_VALUE = -2;
    public static final int ERROR_DEAD_OBJECT = -6;
    public static final int ERROR_INVALID_OPERATION = -3;
    private static final int NATIVE_EVENT_MARKER = 2;
    private static final int NATIVE_EVENT_NEW_POS = 3;
    public static final int READ_BLOCKING = 0;
    public static final int READ_NON_BLOCKING = 1;
    public static final int RECORDSTATE_RECORDING = 3;
    public static final int RECORDSTATE_STOPPED = 1;
    public static final int STATE_INITIALIZED = 1;
    public static final int STATE_UNINITIALIZED = 0;
    public static final String SUBMIX_FIXED_VOLUME = "fixedVolume";
    public static final int SUCCESS = 0;
    private static final String TAG = "android.media.AudioRecord";
    private AudioAttributes mAudioAttributes;
    private int mAudioFormat;
    private int mChannelCount;
    private int mChannelIndexMask;
    private int mChannelMask;
    private NativeEventHandler mEventHandler;
    private final IBinder mICallBack;
    private Looper mInitializationLooper;
    private boolean mIsSubmixFullVolume;
    private int mNativeBufferSizeInBytes;
    private long mNativeCallbackCookie;
    private long mNativeDeviceCallback;
    private long mNativeRecorderInJavaObj;
    private OnRecordPositionUpdateListener mPositionListener;
    private final Object mPositionListenerLock;
    private AudioDeviceInfo mPreferredDevice;
    private int mRecordSource;
    private int mRecordingState;
    private final Object mRecordingStateLock;

    @GuardedBy("mRoutingChangeListeners")
    private ArrayMap<AudioRouting.OnRoutingChangedListener, NativeRoutingEventHandlerDelegate> mRoutingChangeListeners;
    private int mSampleRate;
    private int mSessionId;
    private int mState;

    public static class Builder {
        private AudioAttributes mAttributes;
        private int mBufferSizeInBytes;
        private AudioFormat mFormat;
        private int mSessionId = 0;

        public AudioRecord build() {
            AudioFormat audioFormat = this.mFormat;
            if (audioFormat == null) {
                this.mFormat = new AudioFormat.Builder().setEncoding(2).setChannelMask(16).build();
            } else {
                if (audioFormat.getEncoding() == 0) {
                    this.mFormat = new AudioFormat.Builder(this.mFormat).setEncoding(2).build();
                }
                if (this.mFormat.getChannelMask() == 0 && this.mFormat.getChannelIndexMask() == 0) {
                    this.mFormat = new AudioFormat.Builder(this.mFormat).setChannelMask(16).build();
                }
            }
            if (this.mAttributes == null) {
                this.mAttributes = new AudioAttributes.Builder().setInternalCapturePreset(0).build();
            }
            try {
                if (this.mBufferSizeInBytes == 0) {
                    this.mBufferSizeInBytes = this.mFormat.getChannelCount() * AudioFormat.getBytesPerSample(this.mFormat.getEncoding());
                }
                AudioRecord audioRecord = new AudioRecord(this.mAttributes, this.mFormat, this.mBufferSizeInBytes, this.mSessionId);
                if (audioRecord.getState() != 0) {
                    return audioRecord;
                }
                throw new UnsupportedOperationException("Cannot create AudioRecord");
            } catch (IllegalArgumentException e2) {
                throw new UnsupportedOperationException(e2.getMessage());
            }
        }

        public Builder setAudioAttributes(AudioAttributes audioAttributes) {
            if (audioAttributes == null) {
                throw new IllegalArgumentException("Illegal null AudioAttributes argument");
            }
            if (audioAttributes.getCapturePreset() == -1) {
                throw new IllegalArgumentException("No valid capture preset in AudioAttributes argument");
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

        public Builder setAudioSource(int i2) {
            if (i2 < 0 || i2 > MediaRecorder.getAudioSourceMax()) {
                throw new IllegalArgumentException(c.d("Invalid audio source ", i2));
            }
            this.mAttributes = new AudioAttributes.Builder().setInternalCapturePreset(i2).build();
            return this;
        }

        public Builder setBufferSizeInBytes(int i2) {
            if (i2 <= 0) {
                throw new IllegalArgumentException(c.d("Invalid buffer size ", i2));
            }
            this.mBufferSizeInBytes = i2;
            return this;
        }

        public Builder setSessionId(int i2) {
            if (i2 < 0) {
                throw new IllegalArgumentException(c.d("Invalid session ID ", i2));
            }
            this.mSessionId = i2;
            return this;
        }
    }

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
            } else if (i2 != 3) {
                AudioRecord.loge("Unknown native event type: " + message.what);
            } else if (onRecordPositionUpdateListener != null) {
                onRecordPositionUpdateListener.onPeriodicNotification(this.mAudioRecord);
            }
        }
    }

    public class NativeRoutingEventHandlerDelegate {
        private final Handler mHandler;

        public NativeRoutingEventHandlerDelegate(final AudioRecord audioRecord, final AudioRouting.OnRoutingChangedListener onRoutingChangedListener, Handler handler) {
            Looper looper = handler != null ? handler.getLooper() : AudioRecord.this.mInitializationLooper;
            if (looper != null) {
                this.mHandler = new Handler(looper) { // from class: android.media.AudioRecord.NativeRoutingEventHandlerDelegate.1
                    @Override // android.os.Handler
                    public void handleMessage(Message message) {
                        AudioRecord audioRecord2 = audioRecord;
                        if (audioRecord2 == null) {
                            return;
                        }
                        if (message.what != 1000) {
                            AudioRecord.loge("Unknown native event type: " + message.what);
                        } else {
                            AudioRouting.OnRoutingChangedListener onRoutingChangedListener2 = onRoutingChangedListener;
                            if (onRoutingChangedListener2 != null) {
                                onRoutingChangedListener2.onRoutingChanged(audioRecord2);
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

    public interface OnRecordPositionUpdateListener {
        void onMarkerReached(AudioRecord audioRecord);

        void onPeriodicNotification(AudioRecord audioRecord);
    }

    @Deprecated
    public interface OnRoutingChangedListener extends AudioRouting.OnRoutingChangedListener {
        void onRoutingChanged(AudioRecord audioRecord);

        @Override // android.media.AudioRouting.OnRoutingChangedListener
        void onRoutingChanged(AudioRouting audioRouting);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ReadMode {
    }

    public AudioRecord(int i2, int i3, int i4, int i5, int i6) {
        this(new AudioAttributes.Builder().setInternalCapturePreset(i2).build(), new AudioFormat.Builder().setChannelMask(getChannelMaskFromLegacyConfig(i4, true)).setEncoding(i5).setSampleRate(i3).build(), i6, 0);
    }

    private void audioBuffSizeCheck(int i2) {
        int bytesPerSample = AudioFormat.getBytesPerSample(this.mAudioFormat) * this.mChannelCount;
        if (i2 % bytesPerSample != 0 || i2 < 1) {
            throw new IllegalArgumentException(m.f("Invalid audio buffer size ", i2, " (frame size ", bytesPerSample, ")"));
        }
        this.mNativeBufferSizeInBytes = i2;
    }

    private void audioParamCheck(int i2, int i3, int i4) {
        if (i2 < 0 || !(i2 <= MediaRecorder.getAudioSourceMax() || i2 == 1998 || i2 == 1999)) {
            throw new IllegalArgumentException(MediaRecorder.getAudioSourceMax() + "MediaRecorder.getAudioSourceMax");
        }
        this.mRecordSource = i2;
        if ((i3 < 4000 || i3 > 192000) && i3 != 0) {
            throw new IllegalArgumentException(i3 + "Hz is not a supported sample rate.");
        }
        this.mSampleRate = i3;
        if (i4 == 1) {
            this.mAudioFormat = 2;
        } else {
            if (i4 != 2 && i4 != 3 && i4 != 4) {
                throw new IllegalArgumentException(c.e("Unsupported sample encoding ", i4, ". Should be ENCODING_PCM_8BIT, ENCODING_PCM_16BIT, or ENCODING_PCM_FLOAT."));
            }
            this.mAudioFormat = i4;
        }
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

    private static int getChannelMaskFromLegacyConfig(int i2, boolean z2) {
        int i3 = 16;
        if (i2 != 1 && i2 != 2) {
            if (i2 == 3 || i2 == 12) {
                i3 = 12;
            } else if (i2 != 16) {
                if (i2 != 48) {
                    throw new IllegalArgumentException("Unsupported channel configuration.");
                }
                i3 = i2;
            }
        }
        if (z2 || !(i2 == 2 || i2 == 3)) {
            return i3;
        }
        throw new IllegalArgumentException("Unsupported deprecated configuration.");
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
        int iNative_get_min_buff_size = native_get_min_buff_size(i2, i5, i4);
        if (iNative_get_min_buff_size == 0) {
            return -2;
        }
        if (iNative_get_min_buff_size == -1) {
            return -1;
        }
        return iNative_get_min_buff_size;
    }

    private void handleFullVolumeRec(boolean z2) {
        if (this.mIsSubmixFullVolume) {
            try {
                IAudioService.Stub.asInterface(ServiceManager.getService("audio")).forceRemoteSubmixFullVolume(z2, this.mICallBack);
            } catch (RemoteException e2) {
                Log.e(TAG, "Error talking to AudioService when handling full submix volume", e2);
            }
        }
    }

    private static void logd(String str) {
        Log.d(TAG, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void loge(String str) {
        Log.e(TAG, str);
    }

    private final native void native_disableDeviceCallback();

    private final native void native_enableDeviceCallback();

    private final native void native_finalize();

    private final native int native_getRoutedDeviceId();

    private final native int native_get_buffer_size_in_frames();

    private final native int native_get_marker_pos();

    private static final native int native_get_min_buff_size(int i2, int i3, int i4);

    private final native int native_get_pos_update_period();

    private final native int native_get_timestamp(AudioTimestamp audioTimestamp, int i2);

    private final native int native_read_in_byte_array(byte[] bArr, int i2, int i3, boolean z2);

    private final native int native_read_in_direct_buffer(Object obj, int i2, boolean z2);

    private final native int native_read_in_float_array(float[] fArr, int i2, int i3, boolean z2);

    private final native int native_read_in_short_array(short[] sArr, int i2, int i3, boolean z2);

    private final native boolean native_setInputDevice(int i2);

    private final native int native_set_marker_pos(int i2);

    private final native int native_set_pos_update_period(int i2);

    private final native int native_setup(Object obj, Object obj2, int[] iArr, int i2, int i3, int i4, int i5, int[] iArr2, String str, long j2);

    private final native int native_start(int i2, int i3);

    private final native void native_stop();

    private static void postEventFromNative(Object obj, int i2, int i3, int i4, Object obj2) {
        AudioRecord audioRecord = (AudioRecord) ((WeakReference) obj).get();
        if (audioRecord == null) {
            return;
        }
        if (i2 == 1000) {
            audioRecord.broadcastRoutingChange();
            return;
        }
        NativeEventHandler nativeEventHandler = audioRecord.mEventHandler;
        if (nativeEventHandler != null) {
            audioRecord.mEventHandler.sendMessage(nativeEventHandler.obtainMessage(i2, i3, i4, obj2));
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

    public void deferred_connect(long j2) {
        if (this.mState != 1) {
            int[] iArr = {0};
            int iNative_setup = native_setup(new WeakReference(this), null, new int[]{0}, 0, 0, 0, 0, iArr, ActivityThread.currentOpPackageName(), j2);
            if (iNative_setup != 0) {
                loge(c.e("Error code ", iNative_setup, " when initializing native AudioRecord object."));
            } else {
                this.mSessionId = iArr[0];
                this.mState = 1;
            }
        }
    }

    public void finalize() {
        release();
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

    public int getBufferSizeInFrames() {
        return native_get_buffer_size_in_frames();
    }

    public int getChannelConfiguration() {
        return this.mChannelMask;
    }

    public int getChannelCount() {
        return this.mChannelCount;
    }

    public AudioFormat getFormat() {
        AudioFormat.Builder encoding = new AudioFormat.Builder().setSampleRate(this.mSampleRate).setEncoding(this.mAudioFormat);
        int i2 = this.mChannelMask;
        if (i2 != 0) {
            encoding.setChannelMask(i2);
        }
        int i3 = this.mChannelIndexMask;
        if (i3 != 0) {
            encoding.setChannelIndexMask(i3);
        }
        return encoding.build();
    }

    public int getNotificationMarkerPosition() {
        return native_get_marker_pos();
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

    public int getRecordingState() {
        int i2;
        synchronized (this.mRecordingStateLock) {
            i2 = this.mRecordingState;
        }
        return i2;
    }

    @Override // android.media.AudioRouting
    public AudioDeviceInfo getRoutedDevice() {
        int iNative_getRoutedDeviceId = native_getRoutedDeviceId();
        if (iNative_getRoutedDeviceId == 0) {
            return null;
        }
        AudioDeviceInfo[] devicesStatic = AudioManager.getDevicesStatic(1);
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

    public int getTimestamp(AudioTimestamp audioTimestamp, int i2) {
        if (audioTimestamp == null || !(i2 == 1 || i2 == 0)) {
            throw new IllegalArgumentException();
        }
        return native_get_timestamp(audioTimestamp, i2);
    }

    public final native void native_release();

    public int read(byte[] bArr, int i2, int i3) {
        return read(bArr, i2, i3, 0);
    }

    public void release() {
        try {
            stop();
        } catch (IllegalStateException unused) {
        }
        native_release();
        this.mState = 0;
    }

    @Override // android.media.AudioRouting
    public void removeOnRoutingChangedListener(AudioRouting.OnRoutingChangedListener onRoutingChangedListener) {
        synchronized (this.mRoutingChangeListeners) {
            if (this.mRoutingChangeListeners.containsKey(onRoutingChangedListener)) {
                this.mRoutingChangeListeners.remove(onRoutingChangedListener);
                testDisableNativeRoutingCallbacksLocked();
            }
        }
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

    @Override // android.media.AudioRouting
    public boolean setPreferredDevice(AudioDeviceInfo audioDeviceInfo) {
        if (audioDeviceInfo != null && !audioDeviceInfo.isSource()) {
            return false;
        }
        boolean zNative_setInputDevice = native_setInputDevice(audioDeviceInfo != null ? audioDeviceInfo.getId() : 0);
        if (zNative_setInputDevice) {
            synchronized (this) {
                this.mPreferredDevice = audioDeviceInfo;
            }
        }
        return zNative_setInputDevice;
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
                handleFullVolumeRec(true);
                this.mRecordingState = 3;
            }
        }
    }

    public void stop() {
        if (this.mState != 1) {
            throw new IllegalStateException("stop() called on an uninitialized AudioRecord.");
        }
        synchronized (this.mRecordingStateLock) {
            handleFullVolumeRec(false);
            native_stop();
            this.mRecordingState = 1;
        }
    }

    public int read(byte[] bArr, int i2, int i3, int i4) {
        int i5;
        if (this.mState != 1 || this.mAudioFormat == 4) {
            return -3;
        }
        if (i4 != 0 && i4 != 1) {
            Log.e(TAG, "AudioRecord.read() called with invalid blocking mode");
            return -2;
        }
        if (bArr == null || i2 < 0 || i3 < 0 || (i5 = i2 + i3) < 0 || i5 > bArr.length) {
            return -2;
        }
        return native_read_in_byte_array(bArr, i2, i3, i4 == 0);
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

    @Deprecated
    public void addOnRoutingChangedListener(OnRoutingChangedListener onRoutingChangedListener, Handler handler) {
        addOnRoutingChangedListener((AudioRouting.OnRoutingChangedListener) onRoutingChangedListener, handler);
    }

    public int read(short[] sArr, int i2, int i3) {
        return read(sArr, i2, i3, 0);
    }

    @Deprecated
    public void removeOnRoutingChangedListener(OnRoutingChangedListener onRoutingChangedListener) {
        removeOnRoutingChangedListener((AudioRouting.OnRoutingChangedListener) onRoutingChangedListener);
    }

    public int read(short[] sArr, int i2, int i3, int i4) {
        int i5;
        if (this.mState != 1 || this.mAudioFormat == 4) {
            return -3;
        }
        if (i4 != 0 && i4 != 1) {
            Log.e(TAG, "AudioRecord.read() called with invalid blocking mode");
            return -2;
        }
        if (sArr == null || i2 < 0 || i3 < 0 || (i5 = i2 + i3) < 0 || i5 > sArr.length) {
            return -2;
        }
        return native_read_in_short_array(sArr, i2, i3, i4 == 0);
    }

    public void startRecording(MediaSyncEvent mediaSyncEvent) {
        if (this.mState == 1) {
            synchronized (this.mRecordingStateLock) {
                if (native_start(mediaSyncEvent.getType(), mediaSyncEvent.getAudioSessionId()) == 0) {
                    handleFullVolumeRec(true);
                    this.mRecordingState = 3;
                }
            }
            return;
        }
        throw new IllegalStateException("startRecording() called on an uninitialized AudioRecord.");
    }

    public AudioRecord(AudioAttributes audioAttributes, AudioFormat audioFormat, int i2, int i3) {
        this.mState = 0;
        this.mRecordingState = 1;
        this.mRecordingStateLock = new Object();
        this.mPositionListener = null;
        this.mPositionListenerLock = new Object();
        this.mEventHandler = null;
        this.mInitializationLooper = null;
        this.mNativeBufferSizeInBytes = 0;
        this.mSessionId = 0;
        this.mIsSubmixFullVolume = false;
        this.mICallBack = new Binder();
        this.mRoutingChangeListeners = new ArrayMap<>();
        this.mPreferredDevice = null;
        this.mRecordingState = 1;
        if (audioAttributes == null) {
            throw new IllegalArgumentException("Illegal null AudioAttributes");
        }
        if (audioFormat != null) {
            Looper looperMyLooper = Looper.myLooper();
            this.mInitializationLooper = looperMyLooper;
            if (looperMyLooper == null) {
                this.mInitializationLooper = Looper.getMainLooper();
            }
            if (audioAttributes.getCapturePreset() == 8) {
                AudioAttributes.Builder builder = new AudioAttributes.Builder();
                for (String str : audioAttributes.getTags()) {
                    if (str.equalsIgnoreCase(SUBMIX_FIXED_VOLUME)) {
                        this.mIsSubmixFullVolume = true;
                        Log.v(TAG, "Will record from REMOTE_SUBMIX at full fixed volume");
                    } else {
                        builder.addTag(str);
                    }
                }
                builder.setInternalCapturePreset(audioAttributes.getCapturePreset());
                this.mAudioAttributes = builder.build();
            } else {
                this.mAudioAttributes = audioAttributes;
            }
            int sampleRate = audioFormat.getSampleRate();
            audioParamCheck(audioAttributes.getCapturePreset(), sampleRate == 0 ? 0 : sampleRate, (audioFormat.getPropertySetMask() & 1) != 0 ? audioFormat.getEncoding() : 1);
            if ((audioFormat.getPropertySetMask() & 8) != 0) {
                this.mChannelIndexMask = audioFormat.getChannelIndexMask();
                this.mChannelCount = audioFormat.getChannelCount();
            }
            if ((audioFormat.getPropertySetMask() & 4) != 0) {
                this.mChannelMask = getChannelMaskFromLegacyConfig(audioFormat.getChannelMask(), false);
                this.mChannelCount = audioFormat.getChannelCount();
            } else if (this.mChannelIndexMask == 0) {
                int channelMaskFromLegacyConfig = getChannelMaskFromLegacyConfig(1, false);
                this.mChannelMask = channelMaskFromLegacyConfig;
                this.mChannelCount = AudioFormat.channelCountFromInChannelMask(channelMaskFromLegacyConfig);
            }
            audioBuffSizeCheck(i2);
            int[] iArr = {this.mSampleRate};
            int[] iArr2 = {i3};
            int iNative_setup = native_setup(new WeakReference(this), this.mAudioAttributes, iArr, this.mChannelMask, this.mChannelIndexMask, this.mAudioFormat, this.mNativeBufferSizeInBytes, iArr2, ActivityThread.currentOpPackageName(), 0L);
            if (iNative_setup != 0) {
                loge(c.e("Error code ", iNative_setup, " when initializing native AudioRecord object."));
                return;
            }
            this.mSampleRate = iArr[0];
            this.mSessionId = iArr2[0];
            if (SystemProperties.get("service.project.sec").equals(WifiEnterpriseConfig.ENGINE_ENABLE)) {
                if (Binder.dojudge(Binder.getCallingUid(), "media.recorder", 10, 0, null) > 0) {
                    Log.e(TAG, "AudioRecord  setup allow ");
                } else {
                    Log.e(TAG, "AudioRecord  setup  reject ");
                    return;
                }
            }
            this.mState = 1;
            return;
        }
        throw new IllegalArgumentException("Illegal null AudioFormat");
    }

    public int read(float[] fArr, int i2, int i3, int i4) {
        int i5;
        if (this.mState == 0) {
            Log.e(TAG, "AudioRecord.read() called in invalid state STATE_UNINITIALIZED");
            return -3;
        }
        if (this.mAudioFormat != 4) {
            Log.e(TAG, "AudioRecord.read(float[] ...) requires format ENCODING_PCM_FLOAT");
            return -3;
        }
        if (i4 != 0 && i4 != 1) {
            Log.e(TAG, "AudioRecord.read() called with invalid blocking mode");
            return -2;
        }
        if (fArr == null || i2 < 0 || i3 < 0 || (i5 = i2 + i3) < 0 || i5 > fArr.length) {
            return -2;
        }
        return native_read_in_float_array(fArr, i2, i3, i4 == 0);
    }

    public int read(ByteBuffer byteBuffer, int i2) {
        return read(byteBuffer, i2, 0);
    }

    public int read(ByteBuffer byteBuffer, int i2, int i3) {
        if (this.mState != 1) {
            return -3;
        }
        if (i3 != 0 && i3 != 1) {
            Log.e(TAG, "AudioRecord.read() called with invalid blocking mode");
            return -2;
        }
        if (byteBuffer == null || i2 < 0) {
            return -2;
        }
        return native_read_in_direct_buffer(byteBuffer, i2, i3 == 0);
    }

    public AudioRecord(long j2) {
        this.mState = 0;
        this.mRecordingState = 1;
        this.mRecordingStateLock = new Object();
        this.mPositionListener = null;
        this.mPositionListenerLock = new Object();
        this.mEventHandler = null;
        this.mInitializationLooper = null;
        this.mNativeBufferSizeInBytes = 0;
        this.mSessionId = 0;
        this.mIsSubmixFullVolume = false;
        this.mICallBack = new Binder();
        this.mRoutingChangeListeners = new ArrayMap<>();
        this.mPreferredDevice = null;
        this.mNativeRecorderInJavaObj = 0L;
        this.mNativeCallbackCookie = 0L;
        this.mNativeDeviceCallback = 0L;
        if (j2 != 0) {
            deferred_connect(j2);
        } else {
            this.mState = 0;
        }
    }
}
