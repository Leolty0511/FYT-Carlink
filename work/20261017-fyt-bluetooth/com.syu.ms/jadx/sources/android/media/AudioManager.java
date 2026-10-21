package android.media;

import android.app.PendingIntent;
import android.bluetooth.BluetoothDevice;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.ProxyProperties;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Log;
import android.view.KeyEvent;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class AudioManager {
    public static final String ACTION_AUDIO_BECOMING_NOISY = "android.media.AUDIO_BECOMING_NOISY";

    @Deprecated
    public static final String ACTION_SCO_AUDIO_STATE_CHANGED = "android.media.SCO_AUDIO_STATE_CHANGED";
    public static final String ACTION_SCO_AUDIO_STATE_UPDATED = "android.media.ACTION_SCO_AUDIO_STATE_UPDATED";
    public static final int ADJUST_LOWER = -1;
    public static final int ADJUST_RAISE = 1;
    public static final int ADJUST_SAME = 0;
    public static final int AUDIOFOCUS_GAIN = 1;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT = 2;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE = 4;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK = 3;
    public static final int AUDIOFOCUS_LOSS = -1;
    public static final int AUDIOFOCUS_LOSS_TRANSIENT = -2;
    public static final int AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK = -3;
    public static final int AUDIOFOCUS_NONE = 0;
    public static final int AUDIOFOCUS_REQUEST_FAILED = 0;
    public static final int AUDIOFOCUS_REQUEST_GRANTED = 1;
    public static final int DEVICE_OUT_ANLG_DOCK_HEADSET = 2048;
    public static final int DEVICE_OUT_AUX_DIGITAL = 1024;
    public static final int DEVICE_OUT_BLUETOOTH_A2DP = 128;
    public static final int DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES = 256;
    public static final int DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER = 512;
    public static final int DEVICE_OUT_BLUETOOTH_SCO = 16;
    public static final int DEVICE_OUT_BLUETOOTH_SCO_CARKIT = 64;
    public static final int DEVICE_OUT_BLUETOOTH_SCO_HEADSET = 32;
    public static final int DEVICE_OUT_DEFAULT = 1073741824;
    public static final int DEVICE_OUT_DGTL_DOCK_HEADSET = 4096;
    public static final int DEVICE_OUT_EARPIECE = 1;
    public static final int DEVICE_OUT_SPEAKER = 2;
    public static final int DEVICE_OUT_USB_ACCESSORY = 8192;
    public static final int DEVICE_OUT_USB_DEVICE = 16384;
    public static final int DEVICE_OUT_WIRED_HEADPHONE = 8;
    public static final int DEVICE_OUT_WIRED_HEADSET = 4;
    public static final String EXTRA_MASTER_VOLUME_MUTED = "android.media.EXTRA_MASTER_VOLUME_MUTED";
    public static final String EXTRA_MASTER_VOLUME_VALUE = "android.media.EXTRA_MASTER_VOLUME_VALUE";
    public static final String EXTRA_PREV_MASTER_VOLUME_VALUE = "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE";
    public static final String EXTRA_PREV_VOLUME_STREAM_VALUE = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE";
    public static final String EXTRA_RINGER_MODE = "android.media.EXTRA_RINGER_MODE";
    public static final String EXTRA_SCO_AUDIO_PREVIOUS_STATE = "android.media.extra.SCO_AUDIO_PREVIOUS_STATE";
    public static final String EXTRA_SCO_AUDIO_STATE = "android.media.extra.SCO_AUDIO_STATE";
    public static final String EXTRA_VIBRATE_SETTING = "android.media.EXTRA_VIBRATE_SETTING";
    public static final String EXTRA_VIBRATE_TYPE = "android.media.EXTRA_VIBRATE_TYPE";
    public static final String EXTRA_VOLUME_STREAM_TYPE = "android.media.EXTRA_VOLUME_STREAM_TYPE";
    public static final String EXTRA_VOLUME_STREAM_VALUE = "android.media.EXTRA_VOLUME_STREAM_VALUE";
    public static final int FLAG_ALLOW_RINGER_MODES = 2;
    public static final int FLAG_BLUETOOTH_ABS_VOLUME = 64;
    public static final int FLAG_FIXED_VOLUME = 32;
    public static final int FLAG_PLAY_SOUND = 4;
    public static final int FLAG_REMOVE_SOUND_AND_VIBRATE = 8;
    public static final int FLAG_SHOW_UI = 1;
    public static final int FLAG_VIBRATE = 16;
    public static final int FX_FOCUS_NAVIGATION_DOWN = 2;
    public static final int FX_FOCUS_NAVIGATION_LEFT = 3;
    public static final int FX_FOCUS_NAVIGATION_RIGHT = 4;
    public static final int FX_FOCUS_NAVIGATION_UP = 1;
    public static final int FX_KEYPRESS_DELETE = 7;
    public static final int FX_KEYPRESS_INVALID = 9;
    public static final int FX_KEYPRESS_RETURN = 8;
    public static final int FX_KEYPRESS_SPACEBAR = 6;
    public static final int FX_KEYPRESS_STANDARD = 5;
    public static final int FX_KEY_CLICK = 0;
    public static final String MASTER_MUTE_CHANGED_ACTION = "android.media.MASTER_MUTE_CHANGED_ACTION";
    public static final String MASTER_VOLUME_CHANGED_ACTION = "android.media.MASTER_VOLUME_CHANGED_ACTION";
    public static final int MODE_CURRENT = -1;
    public static final int MODE_INVALID = -2;
    public static final int MODE_IN_CALL = 2;
    public static final int MODE_IN_COMMUNICATION = 3;
    public static final int MODE_NORMAL = 0;
    public static final int MODE_RINGTONE = 1;
    public static final int NUM_SOUND_EFFECTS = 10;

    @Deprecated
    public static final int NUM_STREAMS = 5;
    private static int NaviApp = 2;
    public static final String PROPERTY_OUTPUT_FRAMES_PER_BUFFER = "android.media.property.OUTPUT_FRAMES_PER_BUFFER";
    public static final String PROPERTY_OUTPUT_SAMPLE_RATE = "android.media.property.OUTPUT_SAMPLE_RATE";
    public static final String RINGER_MODE_CHANGED_ACTION = "android.media.RINGER_MODE_CHANGED";
    private static final int RINGER_MODE_MAX = 2;
    public static final int RINGER_MODE_NORMAL = 2;
    public static final int RINGER_MODE_SILENT = 0;
    public static final int RINGER_MODE_VIBRATE = 1;

    @Deprecated
    public static final int ROUTE_ALL = -1;

    @Deprecated
    public static final int ROUTE_BLUETOOTH = 4;

    @Deprecated
    public static final int ROUTE_BLUETOOTH_A2DP = 16;

    @Deprecated
    public static final int ROUTE_BLUETOOTH_SCO = 4;

    @Deprecated
    public static final int ROUTE_EARPIECE = 1;

    @Deprecated
    public static final int ROUTE_HEADSET = 8;

    @Deprecated
    public static final int ROUTE_SPEAKER = 2;
    public static final int SCO_AUDIO_STATE_CONNECTED = 1;
    public static final int SCO_AUDIO_STATE_CONNECTING = 2;
    public static final int SCO_AUDIO_STATE_DISCONNECTED = 0;
    public static final int SCO_AUDIO_STATE_ERROR = -1;
    public static final int STREAM_ALARM = 4;
    public static final int STREAM_BLUETOOTH_SCO = 6;
    public static final int STREAM_DTMF = 8;
    public static final int STREAM_MUSIC = 3;
    public static final int STREAM_NOTIFICATION = 5;
    public static final int STREAM_RING = 2;
    public static final int STREAM_SYSTEM = 1;
    public static final int STREAM_SYSTEM_ENFORCED = 7;
    public static final int STREAM_TTS = 9;
    public static final int STREAM_VOICE_CALL = 0;
    private static String TAG = "AudioManager";
    public static final int USE_DEFAULT_STREAM_TYPE = Integer.MIN_VALUE;
    public static final String VIBRATE_SETTING_CHANGED_ACTION = "android.media.VIBRATE_SETTING_CHANGED";
    public static final int VIBRATE_SETTING_OFF = 0;
    public static final int VIBRATE_SETTING_ON = 1;
    public static final int VIBRATE_SETTING_ONLY_SILENT = 2;
    public static final int VIBRATE_TYPE_NOTIFICATION = 1;
    public static final int VIBRATE_TYPE_RINGER = 0;
    public static final String VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";
    private static int mPid;
    private static String mProName;
    private static IAudioService sService;
    private final Context mContext;
    private final boolean mUseMasterVolume;
    private final boolean mUseVolumeKeySounds;
    private long mVolumeKeyUpTime;
    public static final int[] DEFAULT_STREAM_VOLUME = {4, 7, 5, 11, 6, 5, 7, 7, 11, 11};
    private static int NaviAudioValue = -1;
    private final Binder mToken = new Binder();
    private final HashMap<String, OnAudioFocusChangeListener> mAudioFocusIdListenerMap = new HashMap<>();
    private final Object mFocusListenerLock = new Object();
    private final FocusEventHandlerDelegate mAudioFocusEventHandlerDelegate = new FocusEventHandlerDelegate();
    private final IAudioFocusDispatcher mAudioFocusDispatcher = new IAudioFocusDispatcher.Stub() { // from class: android.media.AudioManager.1
        @Override // android.media.IAudioFocusDispatcher
        public void dispatchAudioFocusChange(int i2, String str) {
            AudioManager.this.mAudioFocusEventHandlerDelegate.getHandler().sendMessage(AudioManager.this.mAudioFocusEventHandlerDelegate.getHandler().obtainMessage(i2, str));
        }
    };
    private final IBinder mICallBack = new Binder();

    public class FocusEventHandlerDelegate {
        private final Handler mHandler;

        public FocusEventHandlerDelegate() {
            Looper looperMyLooper = Looper.myLooper();
            looperMyLooper = looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper;
            if (looperMyLooper != null) {
                this.mHandler = new Handler(looperMyLooper) { // from class: android.media.AudioManager.FocusEventHandlerDelegate.1
                    @Override // android.os.Handler
                    public void handleMessage(Message message) {
                        OnAudioFocusChangeListener onAudioFocusChangeListenerFindFocusListener;
                        synchronized (AudioManager.this.mFocusListenerLock) {
                            onAudioFocusChangeListenerFindFocusListener = AudioManager.this.findFocusListener((String) message.obj);
                        }
                        if (onAudioFocusChangeListenerFindFocusListener != null) {
                            onAudioFocusChangeListenerFindFocusListener.onAudioFocusChange(message.what);
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

    public interface OnAudioFocusChangeListener {
        void onAudioFocusChange(int i2);
    }

    public AudioManager(Context context) {
        this.mContext = context;
        this.mUseMasterVolume = context.getResources().getBoolean(17891344);
        this.mUseVolumeKeySounds = context.getResources().getBoolean(17891345);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public OnAudioFocusChangeListener findFocusListener(String str) {
        return this.mAudioFocusIdListenerMap.get(str);
    }

    private String getIdForAudioFocusListener(OnAudioFocusChangeListener onAudioFocusChangeListener) {
        if (onAudioFocusChangeListener == null) {
            return new String(toString());
        }
        return new String(toString() + onAudioFocusChangeListener.toString());
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

    public static boolean isValidRingerMode(int i2) {
        return i2 >= 0 && i2 <= 2;
    }

    private boolean querySoundEffectsEnabled() {
        return Settings.System.getInt(this.mContext.getContentResolver(), Settings.System.SOUND_EFFECTS_ENABLED, 0) != 0;
    }

    public int abandonAudioFocus(OnAudioFocusChangeListener onAudioFocusChangeListener) {
        unregisterAudioFocusListener(onAudioFocusChangeListener);
        try {
            return getService().abandonAudioFocus(this.mAudioFocusDispatcher, getIdForAudioFocusListener(onAudioFocusChangeListener));
        } catch (RemoteException e2) {
            Log.e(TAG, "Can't call abandonAudioFocus() on AudioService due to " + e2);
            return 0;
        }
    }

    public void abandonAudioFocusForCall() {
        try {
            getService().abandonAudioFocus(null, MediaFocusControl.IN_VOICE_COMM_FOCUS_ID);
        } catch (RemoteException e2) {
            Log.e(TAG, "Can't call abandonAudioFocusForCall() on AudioService due to " + e2);
        }
    }

    public void adjustLocalOrRemoteStreamVolume(int i2, int i3) {
        if (i2 != 3) {
            Log.w(TAG, "adjustLocalOrRemoteStreamVolume() doesn't support stream " + i2);
        }
        try {
            getService().adjustLocalOrRemoteStreamVolume(i2, i3, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in adjustLocalOrRemoteStreamVolume", e2);
        }
    }

    public void adjustMasterVolume(int i2, int i3) {
        try {
            getService().adjustMasterVolume(i2, i3, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in adjustMasterVolume", e2);
        }
    }

    public void adjustStreamVolume(int i2, int i3, int i4) {
        IAudioService service = getService();
        try {
            if (this.mUseMasterVolume) {
                service.adjustMasterVolume(i3, i4, this.mContext.getOpPackageName());
            } else {
                service.adjustStreamVolume(i2, i3, i4, this.mContext.getOpPackageName());
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in adjustStreamVolume", e2);
        }
    }

    public void adjustSuggestedStreamVolume(int i2, int i3, int i4) {
        IAudioService service = getService();
        try {
            if (this.mUseMasterVolume) {
                service.sendToSyuServiceAudioInformation(1, new int[]{i2}, null, null);
            } else {
                service.sendToSyuServiceAudioInformation(1, new int[]{i2}, null, null);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in adjustSuggestedStreamVolume", e2);
        }
    }

    public void adjustVolume(int i2, int i3) {
        IAudioService service = getService();
        try {
            if (this.mUseMasterVolume) {
                service.adjustMasterVolume(i2, i3, this.mContext.getOpPackageName());
            } else {
                service.adjustVolume(i2, i3, this.mContext.getOpPackageName());
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in adjustVolume", e2);
        }
    }

    public void avrcpSupportsAbsoluteVolume(String str, boolean z2) {
        try {
            getService().avrcpSupportsAbsoluteVolume(str, z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in avrcpSupportsAbsoluteVolume", e2);
        }
    }

    public void dispatchMediaKeyEvent(KeyEvent keyEvent) {
        try {
            getService().dispatchMediaKeyEvent(keyEvent);
        } catch (RemoteException e2) {
            Log.e(TAG, "dispatchMediaKeyEvent threw exception ", e2);
        }
    }

    public void forceVolumeControlStream(int i2) {
        try {
            getService().forceVolumeControlStream(i2, this.mICallBack);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in forceVolumeControlStream", e2);
        }
    }

    public int getDevicesForStream(int i2) {
        if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5 || i2 == 8) {
            return AudioSystem.getDevicesForStream(i2);
        }
        return 0;
    }

    public int getLastAudibleMasterVolume() {
        try {
            return getService().getLastAudibleMasterVolume();
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in getLastAudibleMasterVolume", e2);
            return 0;
        }
    }

    public int getLastAudibleStreamVolume(int i2) {
        IAudioService service = getService();
        try {
            return this.mUseMasterVolume ? service.getLastAudibleMasterVolume() : service.getLastAudibleStreamVolume(i2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in getLastAudibleStreamVolume", e2);
            return 0;
        }
    }

    public int getMasterMaxVolume() {
        try {
            return getService().getMasterMaxVolume();
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in getMasterMaxVolume", e2);
            return 0;
        }
    }

    public int getMasterStreamType() {
        try {
            return getService().getMasterStreamType();
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in getMasterStreamType", e2);
            return 2;
        }
    }

    public int getMasterVolume() {
        try {
            return getService().getMasterVolume();
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in getMasterVolume", e2);
            return 0;
        }
    }

    public int getMode() {
        try {
            return getService().getMode();
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in getMode", e2);
            return -2;
        }
    }

    public int getOutputLatency(int i2) {
        return AudioSystem.getOutputLatency(i2);
    }

    public String getParameters(String str) {
        return AudioSystem.getParameters(str);
    }

    public String getProperty(String str) {
        int primaryOutputFrameCount;
        if (PROPERTY_OUTPUT_SAMPLE_RATE.equals(str)) {
            int primaryOutputSamplingRate = AudioSystem.getPrimaryOutputSamplingRate();
            if (primaryOutputSamplingRate > 0) {
                return Integer.toString(primaryOutputSamplingRate);
            }
            return null;
        }
        if (!PROPERTY_OUTPUT_FRAMES_PER_BUFFER.equals(str) || (primaryOutputFrameCount = AudioSystem.getPrimaryOutputFrameCount()) <= 0) {
            return null;
        }
        return Integer.toString(primaryOutputFrameCount);
    }

    public int getRingerMode() {
        try {
            return getService().getRingerMode();
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in getRingerMode", e2);
            return 2;
        }
    }

    public IRingtonePlayer getRingtonePlayer() {
        try {
            return getService().getRingtonePlayer();
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Deprecated
    public int getRouting(int i2) {
        return -1;
    }

    public int getStreamMaxVolume(int i2) {
        IAudioService service = getService();
        if (mPid == 0) {
            mPid = Process.myPid();
        }
        if (mProName == null) {
            try {
                mProName = service.procName(mPid);
            } catch (RemoteException e2) {
                Log.e(TAG, "Dead object in setStreamVolume", e2);
            }
        }
        if (NaviApp == 2) {
            try {
                NaviApp = service.ismapapplication(mPid);
            } catch (RemoteException e3) {
                Log.e(TAG, "Dead object in setStreamVolume", e3);
            }
        }
        int i3 = NaviApp;
        if (i3 == 1 || i3 == 3) {
            i2 = 1;
        }
        try {
            return this.mUseMasterVolume ? service.getMasterMaxVolume() : service.getStreamMaxVolume(i2);
        } catch (RemoteException e4) {
            Log.e(TAG, "Dead object in getStreamMaxVolume", e4);
            return 0;
        }
    }

    public int getStreamVolume(int i2) {
        IAudioService service = getService();
        if (mPid == 0) {
            mPid = Process.myPid();
        }
        if (mProName == null) {
            try {
                mProName = service.procName(mPid);
            } catch (RemoteException e2) {
                Log.e(TAG, "Dead object in setStreamVolume", e2);
            }
        }
        if (NaviApp == 2) {
            try {
                NaviApp = service.ismapapplication(mPid);
            } catch (RemoteException e3) {
                Log.e(TAG, "Dead object in setStreamVolume", e3);
            }
        }
        int i3 = NaviApp;
        if (i3 == 1 || i3 == 3) {
            int i4 = NaviAudioValue;
            if (i4 != -1) {
                return i4;
            }
            i2 = 1;
        }
        if ("com.navngo.igo.javaclient".equals(mProName)) {
            return 7;
        }
        try {
            return this.mUseMasterVolume ? service.getMasterVolume() : service.getStreamVolume(i2);
        } catch (RemoteException e4) {
            Log.e(TAG, "Dead object in getStreamVolume", e4);
            return 0;
        }
    }

    public int getVibrateSetting(int i2) {
        try {
            return getService().getVibrateSetting(i2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in getVibrateSetting", e2);
            return 0;
        }
    }

    public void handleKeyDown(KeyEvent keyEvent, int i2) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 24 || keyCode == 25) {
            if (this.mUseMasterVolume) {
                adjustMasterVolume(keyCode != 24 ? -1 : 1, 17);
                return;
            } else {
                adjustSuggestedStreamVolume(keyCode != 24 ? -1 : 1, i2, 17);
                return;
            }
        }
        if (keyCode == 164 && keyEvent.getRepeatCount() == 0 && this.mUseMasterVolume) {
            setMasterMute(!isMasterMute());
        }
    }

    public void handleKeyUp(KeyEvent keyEvent, int i2) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 24 || keyCode == 25) {
            if (this.mUseVolumeKeySounds) {
                if (this.mUseMasterVolume) {
                    adjustMasterVolume(0, 4);
                } else {
                    adjustSuggestedStreamVolume(0, i2, 4);
                }
            }
            this.mVolumeKeyUpTime = SystemClock.uptimeMillis();
        }
    }

    public boolean isAudioFocusExclusive() {
        try {
            return getService().getCurrentAudioFocus() == 4;
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in isAudioFocusExclusive()", e2);
            return false;
        }
    }

    public boolean isBluetoothA2dpOn() {
        return AudioSystem.getDeviceConnectionState(128, ProxyProperties.LOCAL_EXCL_LIST) != 0;
    }

    public boolean isBluetoothScoAvailableOffCall() {
        return this.mContext.getResources().getBoolean(17891380);
    }

    public boolean isBluetoothScoOn() {
        try {
            return getService().isBluetoothScoOn();
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in isBluetoothScoOn", e2);
            return false;
        }
    }

    public boolean isLocalOrRemoteMusicActive() {
        try {
            return getService().isLocalOrRemoteMusicActive();
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in isLocalOrRemoteMusicActive()", e2);
            return false;
        }
    }

    public boolean isMasterMute() {
        try {
            return getService().isMasterMute();
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in isMasterMute", e2);
            return false;
        }
    }

    public boolean isMicrophoneMute() {
        return AudioSystem.isMicrophoneMuted();
    }

    public boolean isMusicActive() {
        return AudioSystem.isStreamActive(3, 0);
    }

    public boolean isMusicActiveRemotely() {
        return AudioSystem.isStreamActiveRemotely(3, 0);
    }

    public boolean isSilentMode() {
        int ringerMode = getRingerMode();
        return ringerMode == 0 || ringerMode == 1;
    }

    public boolean isSpeakerphoneOn() {
        try {
            return getService().isSpeakerphoneOn();
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in isSpeakerphoneOn", e2);
            return false;
        }
    }

    public boolean isStreamMute(int i2) {
        try {
            return getService().isStreamMute(i2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in isStreamMute", e2);
            return false;
        }
    }

    public boolean isWiredHeadsetOn() {
        return (AudioSystem.getDeviceConnectionState(4, ProxyProperties.LOCAL_EXCL_LIST) == 0 && AudioSystem.getDeviceConnectionState(8, ProxyProperties.LOCAL_EXCL_LIST) == 0) ? false : true;
    }

    public void loadSoundEffects() {
        try {
            getService().loadSoundEffects();
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in loadSoundEffects" + e2);
        }
    }

    public void playSoundEffect(int i2) {
        if (i2 < 0 || i2 >= 10 || !querySoundEffectsEnabled()) {
            return;
        }
        try {
            getService().sendToSyuServiceAudioInformation(6, null, null, null);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in playSoundEffect" + e2);
        }
    }

    public void preDispatchKeyEvent(KeyEvent keyEvent, int i2) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 25 || keyCode == 24 || keyCode == 164 || this.mVolumeKeyUpTime + 300 <= SystemClock.uptimeMillis()) {
            return;
        }
        if (this.mUseMasterVolume) {
            adjustMasterVolume(0, 8);
        } else {
            adjustSuggestedStreamVolume(0, i2, 8);
        }
    }

    public void registerAudioFocusListener(OnAudioFocusChangeListener onAudioFocusChangeListener) {
        synchronized (this.mFocusListenerLock) {
            if (this.mAudioFocusIdListenerMap.containsKey(getIdForAudioFocusListener(onAudioFocusChangeListener))) {
                return;
            }
            this.mAudioFocusIdListenerMap.put(getIdForAudioFocusListener(onAudioFocusChangeListener), onAudioFocusChangeListener);
        }
    }

    public void registerMediaButtonEventReceiver(ComponentName componentName) {
        if (componentName == null) {
            return;
        }
        if (!componentName.getPackageName().equals(this.mContext.getPackageName())) {
            Log.e(TAG, "registerMediaButtonEventReceiver() error: receiver and context package names don't match");
            return;
        }
        Intent intent = new Intent(Intent.ACTION_MEDIA_BUTTON);
        intent.setComponent(componentName);
        registerMediaButtonIntent(PendingIntent.getBroadcast(this.mContext, 0, intent, 0), componentName);
    }

    public void registerMediaButtonEventReceiverForCalls(ComponentName componentName) {
        if (componentName == null) {
            return;
        }
        try {
            getService().registerMediaButtonEventReceiverForCalls(componentName);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in registerMediaButtonEventReceiverForCalls", e2);
        }
    }

    public void registerMediaButtonIntent(PendingIntent pendingIntent, ComponentName componentName) {
        Binder binder;
        if (pendingIntent == null) {
            Log.e(TAG, "Cannot call registerMediaButtonIntent() with a null parameter");
            return;
        }
        IAudioService service = getService();
        if (componentName == null) {
            try {
                binder = this.mToken;
            } catch (RemoteException e2) {
                Log.e(TAG, "Dead object in registerMediaButtonIntent" + e2);
                return;
            }
        } else {
            binder = null;
        }
        service.registerMediaButtonIntent(pendingIntent, componentName, binder);
    }

    public void registerRemoteControlClient(RemoteControlClient remoteControlClient) {
        if (remoteControlClient == null || remoteControlClient.getRcMediaIntent() == null) {
            return;
        }
        try {
            remoteControlClient.setRcseId(getService().registerRemoteControlClient(remoteControlClient.getRcMediaIntent(), remoteControlClient.getIRemoteControlClient(), this.mContext.getPackageName()));
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in registerRemoteControlClient" + e2);
        }
    }

    public void registerRemoteControlDisplay(IRemoteControlDisplay iRemoteControlDisplay) {
        registerRemoteControlDisplay(iRemoteControlDisplay, -1, -1);
    }

    public boolean registerRemoteController(RemoteController remoteController) {
        if (remoteController == null) {
            return false;
        }
        IAudioService service = getService();
        ComponentName componentName = new ComponentName(this.mContext, remoteController.getUpdateListener().getClass());
        try {
            int[] artworkSize = remoteController.getArtworkSize();
            boolean zRegisterRemoteController = service.registerRemoteController(remoteController.getRcDisplay(), artworkSize[0], artworkSize[1], componentName);
            remoteController.setIsRegistered(zRegisterRemoteController);
            return zRegisterRemoteController;
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in registerRemoteController " + e2);
            return false;
        }
    }

    public void reloadAudioSettings() {
        try {
            getService().reloadAudioSettings();
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in reloadAudioSettings" + e2);
        }
    }

    public void remoteControlDisplayUsesBitmapSize(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3) {
        if (iRemoteControlDisplay == null) {
            return;
        }
        try {
            getService().remoteControlDisplayUsesBitmapSize(iRemoteControlDisplay, i2, i3);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in remoteControlDisplayUsesBitmapSize " + e2);
        }
    }

    public void remoteControlDisplayWantsPlaybackPositionSync(IRemoteControlDisplay iRemoteControlDisplay, boolean z2) {
        if (iRemoteControlDisplay == null) {
            return;
        }
        try {
            getService().remoteControlDisplayWantsPlaybackPositionSync(iRemoteControlDisplay, z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in remoteControlDisplayWantsPlaybackPositionSync " + e2);
        }
    }

    public int requestAudioFocus(OnAudioFocusChangeListener onAudioFocusChangeListener, int i2, int i3) {
        if (i3 < 1 || i3 > 4) {
            Log.e(TAG, "Invalid duration hint, audio focus request denied");
            return 0;
        }
        registerAudioFocusListener(onAudioFocusChangeListener);
        try {
            return getService().requestAudioFocus(i2, i3, this.mICallBack, this.mAudioFocusDispatcher, getIdForAudioFocusListener(onAudioFocusChangeListener), this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            Log.e(TAG, "Can't call requestAudioFocus() on AudioService due to " + e2);
            return 0;
        }
    }

    public void requestAudioFocusForCall(int i2, int i3) {
        try {
            getService().requestAudioFocus(i2, i3, this.mICallBack, null, MediaFocusControl.IN_VOICE_COMM_FOCUS_ID, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            Log.e(TAG, "Can't call requestAudioFocusForCall() on AudioService due to " + e2);
        }
    }

    public int setBluetoothA2dpDeviceConnectionState(BluetoothDevice bluetoothDevice, int i2) {
        try {
            try {
                return getService().setBluetoothA2dpDeviceConnectionState(bluetoothDevice, i2);
            } catch (RemoteException e2) {
                Log.e(TAG, "Dead object in setBluetoothA2dpDeviceConnectionState " + e2);
                return 0;
            }
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Deprecated
    public void setBluetoothA2dpOn(boolean z2) {
    }

    public void setBluetoothScoOn(boolean z2) {
        try {
            getService().setBluetoothScoOn(z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in setBluetoothScoOn", e2);
        }
    }

    public void setMasterMute(boolean z2) {
        setMasterMute(z2, 1);
    }

    public void setMasterVolume(int i2, int i3) {
        try {
            getService().setMasterVolume(i2, i3, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in setMasterVolume", e2);
        }
    }

    public void setMicrophoneMute(boolean z2) {
        AudioSystem.muteMicrophone(z2);
    }

    public void setMode(int i2) {
        try {
            getService().setMode(i2, this.mICallBack);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in setMode", e2);
        }
    }

    @Deprecated
    public void setParameter(String str, String str2) {
        setParameters(str + "=" + str2);
    }

    public void setParameters(String str) {
        AudioSystem.setParameters(str);
    }

    public void setRemoteControlClientPlaybackPosition(int i2, long j2) {
        if (j2 < 0) {
            return;
        }
        try {
            getService().setRemoteControlClientPlaybackPosition(i2, j2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in setRccPlaybackPosition(" + i2 + ", " + j2 + ")", e2);
        }
    }

    public void setRingerMode(int i2) {
        if (isValidRingerMode(i2)) {
            try {
                getService().setRingerMode(i2);
            } catch (RemoteException e2) {
                Log.e(TAG, "Dead object in setRingerMode", e2);
            }
        }
    }

    @Deprecated
    public void setRouting(int i2, int i3, int i4) {
    }

    public void setSpeakerphoneOn(boolean z2) {
        try {
            getService().setSpeakerphoneOn(z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in setSpeakerphoneOn", e2);
        }
    }

    public void setStreamMute(int i2, boolean z2) {
        IAudioService service = getService();
        if (mPid == 0) {
            mPid = Process.myPid();
        }
        if (mProName == null) {
            try {
                mProName = service.procName(mPid);
            } catch (RemoteException e2) {
                Log.e(TAG, "Dead object in setStreamVolume", e2);
            }
        }
        if (NaviApp == 2) {
            try {
                NaviApp = service.ismapapplication(mPid);
            } catch (RemoteException e3) {
                Log.e(TAG, "Dead object in setStreamVolume", e3);
            }
        }
        if (NaviApp == 1) {
            i2 = 1;
        }
        try {
            service.setStreamMute(i2, z2, this.mICallBack);
        } catch (RemoteException e4) {
            Log.e(TAG, "Dead object in setStreamMute", e4);
        }
    }

    public void setStreamSolo(int i2, boolean z2) {
        try {
            getService().setStreamSolo(i2, z2, this.mICallBack);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in setStreamSolo", e2);
        }
    }

    public void setStreamVolume(int i2, int i3, int i4) {
        IAudioService service = getService();
        if (mPid == 0) {
            mPid = Process.myPid();
        }
        if (mProName == null) {
            try {
                mProName = service.procName(mPid);
            } catch (RemoteException e2) {
                Log.e(TAG, "Dead object in setStreamVolume", e2);
            }
        }
        if (NaviApp == 2) {
            try {
                NaviApp = service.ismapapplication(mPid);
            } catch (RemoteException e3) {
                Log.e(TAG, "Dead object in setStreamVolume", e3);
            }
        }
        int i5 = NaviApp;
        if (i5 == 1 || i5 == 3) {
            NaviAudioValue = i3;
            i2 = 1;
        }
        try {
            if (this.mUseMasterVolume) {
                service.setMasterVolume(i3, i4, this.mContext.getOpPackageName());
            } else {
                service.setStreamVolume(i2, i3, i4, this.mContext.getOpPackageName());
            }
        } catch (RemoteException e4) {
            Log.e(TAG, "Dead object in setStreamVolume", e4);
        }
        try {
            service.sendToSyuServiceAudioInformation(3, new int[]{i2, i3}, null, new String[]{mProName});
        } catch (RemoteException e5) {
            Log.e(TAG, "Dead object in setStreamVolume", e5);
        }
    }

    public void setVibrateSetting(int i2, int i3) {
        try {
            getService().setVibrateSetting(i2, i3);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in setVibrateSetting", e2);
        }
    }

    public void setWiredDeviceConnectionState(int i2, int i3, String str) {
        try {
            getService().setWiredDeviceConnectionState(i2, i3, str);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in setWiredDeviceConnectionState " + e2);
        }
    }

    @Deprecated
    public void setWiredHeadsetOn(boolean z2) {
    }

    public boolean shouldVibrate(int i2) {
        try {
            return getService().shouldVibrate(i2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in shouldVibrate", e2);
            return false;
        }
    }

    public void startBluetoothSco() {
        try {
            getService().startBluetoothSco(this.mICallBack, this.mContext.getApplicationInfo().targetSdkVersion);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in startBluetoothSco", e2);
        }
    }

    public void stopBluetoothSco() {
        try {
            getService().stopBluetoothSco(this.mICallBack);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in stopBluetoothSco", e2);
        }
    }

    public void unloadSoundEffects() {
        try {
            getService().unloadSoundEffects();
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in unloadSoundEffects" + e2);
        }
    }

    public void unregisterAudioFocusListener(OnAudioFocusChangeListener onAudioFocusChangeListener) {
        synchronized (this.mFocusListenerLock) {
            this.mAudioFocusIdListenerMap.remove(getIdForAudioFocusListener(onAudioFocusChangeListener));
        }
    }

    public void unregisterMediaButtonEventReceiver(ComponentName componentName) {
        if (componentName == null) {
            return;
        }
        Intent intent = new Intent(Intent.ACTION_MEDIA_BUTTON);
        intent.setComponent(componentName);
        unregisterMediaButtonIntent(PendingIntent.getBroadcast(this.mContext, 0, intent, 0));
    }

    public void unregisterMediaButtonEventReceiverForCalls() {
        try {
            getService().unregisterMediaButtonEventReceiverForCalls();
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in unregisterMediaButtonEventReceiverForCalls", e2);
        }
    }

    public void unregisterMediaButtonIntent(PendingIntent pendingIntent) {
        try {
            getService().unregisterMediaButtonIntent(pendingIntent);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in unregisterMediaButtonIntent" + e2);
        }
    }

    public void unregisterRemoteControlClient(RemoteControlClient remoteControlClient) {
        if (remoteControlClient == null || remoteControlClient.getRcMediaIntent() == null) {
            return;
        }
        try {
            getService().unregisterRemoteControlClient(remoteControlClient.getRcMediaIntent(), remoteControlClient.getIRemoteControlClient());
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in unregisterRemoteControlClient" + e2);
        }
    }

    public void unregisterRemoteControlDisplay(IRemoteControlDisplay iRemoteControlDisplay) {
        if (iRemoteControlDisplay == null) {
            return;
        }
        try {
            getService().unregisterRemoteControlDisplay(iRemoteControlDisplay);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in unregisterRemoteControlDisplay " + e2);
        }
    }

    public void unregisterRemoteController(RemoteController remoteController) {
        if (remoteController == null) {
            return;
        }
        try {
            getService().unregisterRemoteControlDisplay(remoteController.getRcDisplay());
            remoteController.setIsRegistered(false);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in unregisterRemoteControlDisplay " + e2);
        }
    }

    public void updateRemoteControlClientMetadata(int i2, int i3, Rating rating) {
        try {
            getService().updateRemoteControlClientMetadata(i2, i3, rating);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in updateRemoteControlClientMetadata(" + i2 + ", " + i3 + ", " + rating + ")", e2);
        }
    }

    public void registerRemoteControlDisplay(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3) {
        if (iRemoteControlDisplay == null) {
            return;
        }
        try {
            getService().registerRemoteControlDisplay(iRemoteControlDisplay, i2, i3);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in registerRemoteControlDisplay " + e2);
        }
    }

    public void setMasterMute(boolean z2, int i2) {
        try {
            getService().setMasterMute(z2, i2, this.mICallBack);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in setMasterMute", e2);
        }
    }

    public void playSoundEffect(int i2, float f2) {
        if (i2 < 0 || i2 >= 10) {
            return;
        }
        try {
            getService().playSoundEffectVolume(i2, f2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in playSoundEffect" + e2);
        }
    }

    public void unregisterMediaButtonEventReceiver(PendingIntent pendingIntent) {
        if (pendingIntent == null) {
            return;
        }
        unregisterMediaButtonIntent(pendingIntent);
    }

    public void registerMediaButtonEventReceiver(PendingIntent pendingIntent) {
        if (pendingIntent == null) {
            return;
        }
        registerMediaButtonIntent(pendingIntent, null);
    }
}
