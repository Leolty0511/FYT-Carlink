package android.media;

import android.accessibilityservice.c;
import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.m;
import android.bluetooth.BluetoothDevice;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.media.audiopolicy.AudioPolicy;
import android.media.session.MediaSessionLegacyHelper;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.ArrayMap;
import android.util.Log;
import android.view.KeyEvent;
import com.android.internal.R;
import com.syu.ipc.IRemoteToolkit;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class AudioManager {
    public static final String ACTION_AUDIO_BECOMING_NOISY = "android.media.AUDIO_BECOMING_NOISY";
    public static final String ACTION_HDMI_AUDIO_PLUG = "android.media.action.HDMI_AUDIO_PLUG";
    public static final String ACTION_HEADSET_PLUG = "android.intent.action.HEADSET_PLUG";

    @Deprecated
    public static final String ACTION_SCO_AUDIO_STATE_CHANGED = "android.media.SCO_AUDIO_STATE_CHANGED";
    public static final String ACTION_SCO_AUDIO_STATE_UPDATED = "android.media.ACTION_SCO_AUDIO_STATE_UPDATED";
    public static final int ADJUST_LOWER = -1;
    public static final int ADJUST_MUTE = -100;
    public static final int ADJUST_RAISE = 1;
    public static final int ADJUST_SAME = 0;
    public static final int ADJUST_TOGGLE_MUTE = 101;
    public static final int ADJUST_UNMUTE = 100;
    public static final int AUDIOFOCUS_FLAGS_APPS = 3;
    public static final int AUDIOFOCUS_FLAGS_SYSTEM = 7;
    public static final int AUDIOFOCUS_FLAG_DELAY_OK = 1;
    public static final int AUDIOFOCUS_FLAG_LOCK = 4;
    public static final int AUDIOFOCUS_FLAG_PAUSES_ON_DUCKABLE_LOSS = 2;
    public static final int AUDIOFOCUS_GAIN = 1;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT = 2;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE = 4;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK = 3;
    public static final int AUDIOFOCUS_LOSS = -1;
    public static final int AUDIOFOCUS_LOSS_TRANSIENT = -2;
    public static final int AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK = -3;
    public static final int AUDIOFOCUS_NONE = 0;
    public static final int AUDIOFOCUS_REQUEST_DELAYED = 2;
    public static final int AUDIOFOCUS_REQUEST_FAILED = 0;
    public static final int AUDIOFOCUS_REQUEST_GRANTED = 1;
    static final int AUDIOPORT_GENERATION_INIT = 0;
    public static final int AUDIO_SESSION_ID_GENERATE = 0;
    public static final int CTSMODE_IN = 1043183;
    public static final int CTSMODE_OUT = 1043182;
    private static final boolean DEBUG = false;
    public static final int DEVICE_IN_ANLG_DOCK_HEADSET = -2147483136;
    public static final int DEVICE_IN_BACK_MIC = -2147483520;
    public static final int DEVICE_IN_BLUETOOTH_SCO_HEADSET = -2147483640;
    public static final int DEVICE_IN_BUILTIN_MIC = -2147483644;
    public static final int DEVICE_IN_DGTL_DOCK_HEADSET = -2147482624;
    public static final int DEVICE_IN_FM_TUNER = -2147475456;
    public static final int DEVICE_IN_HDMI = -2147483616;
    public static final int DEVICE_IN_LINE = -2147450880;
    public static final int DEVICE_IN_LOOPBACK = -2147221504;
    public static final int DEVICE_IN_SPDIF = -2147418112;
    public static final int DEVICE_IN_TELEPHONY_RX = -2147483584;
    public static final int DEVICE_IN_TV_TUNER = -2147467264;
    public static final int DEVICE_IN_USB_ACCESSORY = -2147481600;
    public static final int DEVICE_IN_USB_DEVICE = -2147479552;
    public static final int DEVICE_IN_WIRED_HEADSET = -2147483632;
    public static final int DEVICE_NONE = 0;
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
    public static final int DEVICE_OUT_FM = 1048576;
    public static final int DEVICE_OUT_FM_HEADSET = 268435456;
    public static final int DEVICE_OUT_FM_SPEAKER = 536870912;
    public static final int DEVICE_OUT_HDMI = 1024;
    public static final int DEVICE_OUT_HDMI_ARC = 262144;
    public static final int DEVICE_OUT_LINE = 131072;
    public static final int DEVICE_OUT_REMOTE_SUBMIX = 32768;
    public static final int DEVICE_OUT_SPDIF = 524288;
    public static final int DEVICE_OUT_SPEAKER = 2;
    public static final int DEVICE_OUT_TELEPHONY_TX = 65536;
    public static final int DEVICE_OUT_USB_ACCESSORY = 8192;
    public static final int DEVICE_OUT_USB_DEVICE = 16384;
    public static final int DEVICE_OUT_USB_HEADSET = 67108864;
    public static final int DEVICE_OUT_WIRED_HEADPHONE = 8;
    public static final int DEVICE_OUT_WIRED_HEADSET = 4;
    public static final int ERROR = -1;
    public static final int ERROR_BAD_VALUE = -2;
    public static final int ERROR_DEAD_OBJECT = -6;
    public static final int ERROR_INVALID_OPERATION = -3;
    public static final int ERROR_NO_INIT = -5;
    public static final int ERROR_PERMISSION_DENIED = -4;
    public static final String EXTRA_AUDIO_PLUG_STATE = "android.media.extra.AUDIO_PLUG_STATE";
    public static final String EXTRA_ENCODINGS = "android.media.extra.ENCODINGS";
    public static final String EXTRA_MASTER_VOLUME_MUTED = "android.media.EXTRA_MASTER_VOLUME_MUTED";
    public static final String EXTRA_MAX_CHANNEL_COUNT = "android.media.extra.MAX_CHANNEL_COUNT";
    public static final String EXTRA_PREV_VOLUME_STREAM_DEVICES = "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES";
    public static final String EXTRA_PREV_VOLUME_STREAM_VALUE = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE";
    public static final String EXTRA_RINGER_MODE = "android.media.EXTRA_RINGER_MODE";
    public static final String EXTRA_SCO_AUDIO_PREVIOUS_STATE = "android.media.extra.SCO_AUDIO_PREVIOUS_STATE";
    public static final String EXTRA_SCO_AUDIO_STATE = "android.media.extra.SCO_AUDIO_STATE";
    public static final String EXTRA_STREAM_VOLUME_MUTED = "android.media.EXTRA_STREAM_VOLUME_MUTED";
    public static final String EXTRA_VIBRATE_SETTING = "android.media.EXTRA_VIBRATE_SETTING";
    public static final String EXTRA_VIBRATE_TYPE = "android.media.EXTRA_VIBRATE_TYPE";
    public static final String EXTRA_VOLUME_STREAM_DEVICES = "android.media.EXTRA_VOLUME_STREAM_DEVICES";
    public static final String EXTRA_VOLUME_STREAM_TYPE = "android.media.EXTRA_VOLUME_STREAM_TYPE";
    public static final String EXTRA_VOLUME_STREAM_TYPE_ALIAS = "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS";
    public static final String EXTRA_VOLUME_STREAM_VALUE = "android.media.EXTRA_VOLUME_STREAM_VALUE";
    public static final int FLAG_ACTIVE_MEDIA_ONLY = 512;
    public static final int FLAG_ALLOW_RINGER_MODES = 2;
    public static final int FLAG_BLUETOOTH_ABS_VOLUME = 64;
    public static final int FLAG_FIXED_VOLUME = 32;
    public static final int FLAG_FROM_KEY = 4096;
    public static final int FLAG_HDMI_SYSTEM_AUDIO_VOLUME = 256;
    public static final int FLAG_PLAY_SOUND = 4;
    public static final int FLAG_REMOVE_SOUND_AND_VIBRATE = 8;
    public static final int FLAG_SHOW_SILENT_HINT = 128;
    public static final int FLAG_SHOW_UI = 1;
    public static final int FLAG_SHOW_UI_WARNINGS = 1024;
    public static final int FLAG_SHOW_VIBRATE_HINT = 2048;
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
    public static final int GET_DEVICES_ALL = 3;
    public static final int GET_DEVICES_INPUTS = 1;
    public static final int GET_DEVICES_OUTPUTS = 2;
    public static final String INTERNAL_RINGER_MODE_CHANGED_ACTION = "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION";
    public static final String MASTER_MUTE_CHANGED_ACTION = "android.media.MASTER_MUTE_CHANGED_ACTION";
    public static final int MODE_CURRENT = -1;
    public static final int MODE_INVALID = -2;
    public static final int MODE_IN_CALL = 2;
    public static final int MODE_IN_COMMUNICATION = 3;
    public static final int MODE_NORMAL = 0;
    public static final int MODE_RINGTONE = 1;
    private static final int MSG_DEVICES_CALLBACK_REGISTERED = 0;
    private static final int MSG_DEVICES_DEVICES_ADDED = 1;
    private static final int MSG_DEVICES_DEVICES_REMOVED = 2;
    private static final int MSSG_FOCUS_CHANGE = 0;
    private static final int MSSG_PLAYBACK_CONFIG_CHANGE = 2;
    private static final int MSSG_RECORDING_CONFIG_CHANGE = 1;
    public static final int NUM_SOUND_EFFECTS = 10;

    @Deprecated
    public static final int NUM_STREAMS = 5;
    public static final String PROPERTY_OUTPUT_FRAMES_PER_BUFFER = "android.media.property.OUTPUT_FRAMES_PER_BUFFER";
    public static final String PROPERTY_OUTPUT_SAMPLE_RATE = "android.media.property.OUTPUT_SAMPLE_RATE";
    public static final String PROPERTY_SUPPORT_AUDIO_SOURCE_UNPROCESSED = "android.media.property.SUPPORT_AUDIO_SOURCE_UNPROCESSED";
    public static final String PROPERTY_SUPPORT_MIC_NEAR_ULTRASOUND = "android.media.property.SUPPORT_MIC_NEAR_ULTRASOUND";
    public static final String PROPERTY_SUPPORT_SPEAKER_NEAR_ULTRASOUND = "android.media.property.SUPPORT_SPEAKER_NEAR_ULTRASOUND";
    public static final int RECORD_CONFIG_EVENT_START = 1;
    public static final int RECORD_CONFIG_EVENT_STOP = 0;
    public static final String RINGER_MODE_CHANGED_ACTION = "android.media.RINGER_MODE_CHANGED";
    public static final int RINGER_MODE_MAX = 3;
    public static final int RINGER_MODE_NORMAL = 2;
    public static final int RINGER_MODE_OUTDOOR = 3;
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
    public static final int STREAM_ACCESSIBILITY = 10;
    public static final int STREAM_ALARM = 4;
    public static final int STREAM_BLUETOOTH_SCO = 6;
    public static final String STREAM_DEVICES_CHANGED_ACTION = "android.media.STREAM_DEVICES_CHANGED_ACTION";
    public static final int STREAM_DTMF = 8;
    public static final int STREAM_MUSIC = 3;
    public static final String STREAM_MUTE_CHANGED_ACTION = "android.media.STREAM_MUTE_CHANGED_ACTION";
    public static final int STREAM_NOTIFICATION = 5;
    public static final int STREAM_RING = 2;
    public static final int STREAM_SYSTEM = 1;
    public static final int STREAM_SYSTEM_ENFORCED = 7;
    public static final int STREAM_TTS = 9;
    public static final int STREAM_VOICE_CALL = 0;
    public static final int SUCCESS = 0;
    private static final String TAG = "AudioManager";
    private static final String TAGFYT = "MediaPlayerFyt";
    public static final int USE_DEFAULT_STREAM_TYPE = Integer.MIN_VALUE;
    public static final String VIBRATE_SETTING_CHANGED_ACTION = "android.media.VIBRATE_SETTING_CHANGED";
    public static final int VIBRATE_SETTING_OFF = 0;
    public static final int VIBRATE_SETTING_ON = 1;
    public static final int VIBRATE_SETTING_ONLY_SILENT = 2;
    public static final int VIBRATE_TYPE_NOTIFICATION = 1;
    public static final int VIBRATE_TYPE_RINGER = 0;
    public static final String VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";
    private static IAudioService sService;
    private static IRemoteToolkit syuService;
    private boolean debugmediaplayer;
    private Context mApplicationContext;
    private final IAudioFocusDispatcher mAudioFocusDispatcher;
    private final ConcurrentHashMap<String, FocusRequestInfo> mAudioFocusIdListenerMap;
    private ArrayMap<AudioDeviceCallback, NativeEventHandlerDelegate> mDeviceCallbacks;
    private final IBinder mICallBack;
    private Context mOriginalContext;
    private final IPlaybackConfigDispatcher mPlayCb;
    private List<AudioPlaybackCallbackInfo> mPlaybackCallbackList;
    private final Object mPlaybackCallbackLock;
    private OnAmPortUpdateListener mPortListener;
    private ArrayList<AudioDevicePort> mPreviousPorts;
    private final IRecordingConfigDispatcher mRecCb;
    private List<AudioRecordingCallbackInfo> mRecordCallbackList;
    private final Object mRecordCallbackLock;
    private final ServiceEventHandlerDelegate mServiceEventHandlerDelegate;
    private final boolean mUseFixedVolume;
    private final boolean mUseVolumeKeySounds;
    private long mVolumeKeyUpTime;
    private static final AudioPortEventHandler sAudioPortEventHandler = new AudioPortEventHandler();
    private static final String[] FLAG_NAMES = {"FLAG_SHOW_UI", "FLAG_ALLOW_RINGER_MODES", "FLAG_PLAY_SOUND", "FLAG_REMOVE_SOUND_AND_VIBRATE", "FLAG_VIBRATE", "FLAG_FIXED_VOLUME", "FLAG_BLUETOOTH_ABS_VOLUME", "FLAG_SHOW_SILENT_HINT", "FLAG_HDMI_SYSTEM_AUDIO_VOLUME", "FLAG_ACTIVE_MEDIA_ONLY", "FLAG_SHOW_UI_WARNINGS", "FLAG_SHOW_VIBRATE_HINT", "FLAG_FROM_KEY"};
    private static int mPid = 0;
    static Integer sAudioPortGeneration = new Integer(0);
    static ArrayList<AudioPort> sAudioPortsCached = new ArrayList<>();
    static ArrayList<AudioPort> sPreviousAudioPortsCached = new ArrayList<>();
    static ArrayList<AudioPatch> sAudioPatchesCached = new ArrayList<>();

    public static abstract class AudioPlaybackCallback {
        public void onPlaybackConfigChanged(List<AudioPlaybackConfiguration> list) {
        }
    }

    public static class AudioPlaybackCallbackInfo {
        final AudioPlaybackCallback mCb;
        final Handler mHandler;

        public AudioPlaybackCallbackInfo(AudioPlaybackCallback audioPlaybackCallback, Handler handler) {
            this.mCb = audioPlaybackCallback;
            this.mHandler = handler;
        }
    }

    public static abstract class AudioRecordingCallback {
        public void onRecordingConfigChanged(List<AudioRecordingConfiguration> list) {
        }
    }

    public static class AudioRecordingCallbackInfo {
        final AudioRecordingCallback mCb;
        final Handler mHandler;

        public AudioRecordingCallbackInfo(AudioRecordingCallback audioRecordingCallback, Handler handler) {
            this.mCb = audioRecordingCallback;
            this.mHandler = handler;
        }
    }

    public static class FocusRequestInfo {
        final Handler mHandler;
        final AudioFocusRequest mRequest;

        public FocusRequestInfo(AudioFocusRequest audioFocusRequest, Handler handler) {
            this.mRequest = audioFocusRequest;
            this.mHandler = handler;
        }
    }

    public class NativeEventHandlerDelegate {
        private final Handler mHandler;

        public NativeEventHandlerDelegate(final AudioDeviceCallback audioDeviceCallback, Handler handler) {
            Looper looper = handler != null ? handler.getLooper() : Looper.getMainLooper();
            if (looper != null) {
                this.mHandler = new Handler(looper) { // from class: android.media.AudioManager.NativeEventHandlerDelegate.1
                    @Override // android.os.Handler
                    public void handleMessage(Message message) {
                        int i2 = message.what;
                        if (i2 == 0 || i2 == 1) {
                            AudioDeviceCallback audioDeviceCallback2 = audioDeviceCallback;
                            if (audioDeviceCallback2 != null) {
                                audioDeviceCallback2.onAudioDevicesAdded((AudioDeviceInfo[]) message.obj);
                                return;
                            }
                            return;
                        }
                        if (i2 != 2) {
                            m.C(new StringBuilder("Unknown native event type: "), message.what, AudioManager.TAG);
                            return;
                        }
                        AudioDeviceCallback audioDeviceCallback3 = audioDeviceCallback;
                        if (audioDeviceCallback3 != null) {
                            audioDeviceCallback3.onAudioDevicesRemoved((AudioDeviceInfo[]) message.obj);
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

    public class OnAmPortUpdateListener implements OnAudioPortUpdateListener {
        static final String TAG = "OnAmPortUpdateListener";

        private OnAmPortUpdateListener() {
        }

        @Override // android.media.AudioManager.OnAudioPortUpdateListener
        public void onAudioPatchListUpdate(AudioPatch[] audioPatchArr) {
        }

        @Override // android.media.AudioManager.OnAudioPortUpdateListener
        public void onAudioPortListUpdate(AudioPort[] audioPortArr) {
            AudioManager.this.broadcastDeviceListChange(null);
        }

        @Override // android.media.AudioManager.OnAudioPortUpdateListener
        public void onServiceDied() {
            AudioManager.this.broadcastDeviceListChange(null);
        }
    }

    public interface OnAudioFocusChangeListener {
        void onAudioFocusChange(int i2);
    }

    public interface OnAudioPortUpdateListener {
        void onAudioPatchListUpdate(AudioPatch[] audioPatchArr);

        void onAudioPortListUpdate(AudioPort[] audioPortArr);

        void onServiceDied();
    }

    public static final class PlaybackConfigChangeCallbackData {
        final AudioPlaybackCallback mCb;
        final List<AudioPlaybackConfiguration> mConfigs;

        public PlaybackConfigChangeCallbackData(AudioPlaybackCallback audioPlaybackCallback, List<AudioPlaybackConfiguration> list) {
            this.mCb = audioPlaybackCallback;
            this.mConfigs = list;
        }
    }

    public static final class RecordConfigChangeCallbackData {
        final AudioRecordingCallback mCb;
        final List<AudioRecordingConfiguration> mConfigs;

        public RecordConfigChangeCallbackData(AudioRecordingCallback audioRecordingCallback, List<AudioRecordingConfiguration> list) {
            this.mCb = audioRecordingCallback;
            this.mConfigs = list;
        }
    }

    public class ServiceEventHandlerDelegate {
        private final Handler mHandler;

        public ServiceEventHandlerDelegate(Handler handler) {
            Looper looper;
            if (handler == null) {
                looper = Looper.myLooper();
                if (looper == null) {
                    looper = Looper.getMainLooper();
                }
            } else {
                looper = handler.getLooper();
            }
            if (looper != null) {
                this.mHandler = new Handler(looper) { // from class: android.media.AudioManager.ServiceEventHandlerDelegate.1
                    @Override // android.os.Handler
                    public void handleMessage(Message message) {
                        OnAudioFocusChangeListener onAudioFocusChangeListener;
                        int i2 = message.what;
                        if (i2 == 0) {
                            FocusRequestInfo focusRequestInfoFindFocusRequestInfo = AudioManager.this.findFocusRequestInfo((String) message.obj);
                            if (focusRequestInfoFindFocusRequestInfo == null || (onAudioFocusChangeListener = focusRequestInfoFindFocusRequestInfo.mRequest.getOnAudioFocusChangeListener()) == null) {
                                return;
                            }
                            Log.d(AudioManager.TAG, "dispatching onAudioFocusChange(" + message.arg1 + ") to " + message.obj);
                            onAudioFocusChangeListener.onAudioFocusChange(message.arg1);
                            return;
                        }
                        if (i2 == 1) {
                            RecordConfigChangeCallbackData recordConfigChangeCallbackData = (RecordConfigChangeCallbackData) message.obj;
                            AudioRecordingCallback audioRecordingCallback = recordConfigChangeCallbackData.mCb;
                            if (audioRecordingCallback != null) {
                                audioRecordingCallback.onRecordingConfigChanged(recordConfigChangeCallbackData.mConfigs);
                                return;
                            }
                            return;
                        }
                        if (i2 != 2) {
                            m.C(new StringBuilder("Unknown event "), message.what, AudioManager.TAG);
                            return;
                        }
                        PlaybackConfigChangeCallbackData playbackConfigChangeCallbackData = (PlaybackConfigChangeCallbackData) message.obj;
                        AudioPlaybackCallback audioPlaybackCallback = playbackConfigChangeCallbackData.mCb;
                        if (audioPlaybackCallback != null) {
                            audioPlaybackCallback.onPlaybackConfigChanged(playbackConfigChangeCallbackData.mConfigs);
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

    public AudioManager() {
        this.debugmediaplayer = true;
        this.mAudioFocusIdListenerMap = new ConcurrentHashMap<>();
        this.mServiceEventHandlerDelegate = new ServiceEventHandlerDelegate(null);
        this.mAudioFocusDispatcher = new IAudioFocusDispatcher.Stub() { // from class: android.media.AudioManager.1
            @Override // android.media.IAudioFocusDispatcher
            public void dispatchAudioFocusChange(int i2, String str) {
                FocusRequestInfo focusRequestInfoFindFocusRequestInfo = AudioManager.this.findFocusRequestInfo(str);
                if (focusRequestInfoFindFocusRequestInfo == null || focusRequestInfoFindFocusRequestInfo.mRequest.getOnAudioFocusChangeListener() == null) {
                    return;
                }
                Handler handler = focusRequestInfoFindFocusRequestInfo.mHandler;
                if (handler == null) {
                    handler = AudioManager.this.mServiceEventHandlerDelegate.getHandler();
                }
                handler.sendMessage(handler.obtainMessage(0, i2, 0, str));
            }
        };
        this.mPlaybackCallbackLock = new Object();
        this.mPlayCb = new IPlaybackConfigDispatcher.Stub() { // from class: android.media.AudioManager.2
            @Override // android.media.IPlaybackConfigDispatcher
            public void dispatchPlaybackConfigChange(List<AudioPlaybackConfiguration> list, boolean z2) {
                if (z2) {
                    Binder.flushPendingCommands();
                }
                synchronized (AudioManager.this.mPlaybackCallbackLock) {
                    if (AudioManager.this.mPlaybackCallbackList != null) {
                        for (int i2 = 0; i2 < AudioManager.this.mPlaybackCallbackList.size(); i2++) {
                            AudioPlaybackCallbackInfo audioPlaybackCallbackInfo = (AudioPlaybackCallbackInfo) AudioManager.this.mPlaybackCallbackList.get(i2);
                            Handler handler = audioPlaybackCallbackInfo.mHandler;
                            if (handler != null) {
                                audioPlaybackCallbackInfo.mHandler.sendMessage(handler.obtainMessage(2, new PlaybackConfigChangeCallbackData(audioPlaybackCallbackInfo.mCb, list)));
                            }
                        }
                    }
                }
            }
        };
        this.mRecordCallbackLock = new Object();
        this.mRecCb = new IRecordingConfigDispatcher.Stub() { // from class: android.media.AudioManager.3
            @Override // android.media.IRecordingConfigDispatcher
            public void dispatchRecordingConfigChange(List<AudioRecordingConfiguration> list) {
                synchronized (AudioManager.this.mRecordCallbackLock) {
                    if (AudioManager.this.mRecordCallbackList != null) {
                        for (int i2 = 0; i2 < AudioManager.this.mRecordCallbackList.size(); i2++) {
                            AudioRecordingCallbackInfo audioRecordingCallbackInfo = (AudioRecordingCallbackInfo) AudioManager.this.mRecordCallbackList.get(i2);
                            Handler handler = audioRecordingCallbackInfo.mHandler;
                            if (handler != null) {
                                audioRecordingCallbackInfo.mHandler.sendMessage(handler.obtainMessage(1, new RecordConfigChangeCallbackData(audioRecordingCallbackInfo.mCb, list)));
                            }
                        }
                    }
                }
            }
        };
        this.mICallBack = new Binder();
        this.mPortListener = null;
        this.mDeviceCallbacks = new ArrayMap<>();
        this.mPreviousPorts = new ArrayList<>();
        this.mUseVolumeKeySounds = true;
        this.mUseFixedVolume = false;
    }

    public static final String adjustToString(int i2) {
        if (i2 == -100) {
            return "ADJUST_MUTE";
        }
        if (i2 == -1) {
            return "ADJUST_LOWER";
        }
        if (i2 == 0) {
            return "ADJUST_SAME";
        }
        if (i2 == 1) {
            return "ADJUST_RAISE";
        }
        if (i2 != 100) {
            return i2 != 101 ? c.d("unknown adjust mode ", i2) : "ADJUST_TOGGLE_MUTE";
        }
        return "ADJUST_UNMUTE";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void broadcastDeviceListChange(Handler handler) {
        ArrayList<AudioDevicePort> arrayList = new ArrayList<>();
        if (listAudioDevicePorts(arrayList) != 0) {
            return;
        }
        if (handler != null) {
            handler.sendMessage(Message.obtain(handler, 0, infoListFromPortList(arrayList, 3)));
        } else {
            AudioDeviceInfo[] audioDeviceInfoArrCalcListDeltas = calcListDeltas(this.mPreviousPorts, arrayList, 3);
            AudioDeviceInfo[] audioDeviceInfoArrCalcListDeltas2 = calcListDeltas(arrayList, this.mPreviousPorts, 3);
            if (audioDeviceInfoArrCalcListDeltas.length != 0 || audioDeviceInfoArrCalcListDeltas2.length != 0) {
                synchronized (this.mDeviceCallbacks) {
                    for (int i2 = 0; i2 < this.mDeviceCallbacks.size(); i2++) {
                        Handler handler2 = this.mDeviceCallbacks.valueAt(i2).getHandler();
                        if (handler2 != null) {
                            if (audioDeviceInfoArrCalcListDeltas.length != 0) {
                                handler2.sendMessage(Message.obtain(handler2, 1, audioDeviceInfoArrCalcListDeltas));
                            }
                            if (audioDeviceInfoArrCalcListDeltas2.length != 0) {
                                handler2.sendMessage(Message.obtain(handler2, 2, audioDeviceInfoArrCalcListDeltas2));
                            }
                        }
                    }
                }
            }
        }
        this.mPreviousPorts = arrayList;
    }

    private static AudioDeviceInfo[] calcListDeltas(ArrayList<AudioDevicePort> arrayList, ArrayList<AudioDevicePort> arrayList2, int i2) {
        ArrayList arrayList3 = new ArrayList();
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            AudioDevicePort audioDevicePort = arrayList2.get(i3);
            boolean z2 = false;
            for (int i4 = 0; i4 < arrayList.size() && !z2; i4++) {
                z2 = audioDevicePort.id() == arrayList.get(i4).id();
            }
            if (!z2) {
                arrayList3.add(audioDevicePort);
            }
        }
        return infoListFromPortList(arrayList3, i2);
    }

    private static boolean checkFlags(AudioDevicePort audioDevicePort, int i2) {
        if (audioDevicePort.role() != 2 || (i2 & 2) == 0) {
            return audioDevicePort.role() == 1 && (i2 & 1) != 0;
        }
        return true;
    }

    private static boolean checkTypes(AudioDevicePort audioDevicePort) {
        return (AudioDeviceInfo.convertInternalDeviceToDeviceType(audioDevicePort.type()) == 0 || audioDevicePort.type() == -2147483520) ? false : true;
    }

    public static int createAudioPatch(AudioPatch[] audioPatchArr, AudioPortConfig[] audioPortConfigArr, AudioPortConfig[] audioPortConfigArr2) {
        return AudioSystem.createAudioPatch(audioPatchArr, audioPortConfigArr, audioPortConfigArr2);
    }

    private static void filterDevicePorts(ArrayList<AudioPort> arrayList, ArrayList<AudioDevicePort> arrayList2) {
        arrayList2.clear();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (arrayList.get(i2) instanceof AudioDevicePort) {
                arrayList2.add((AudioDevicePort) arrayList.get(i2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FocusRequestInfo findFocusRequestInfo(String str) {
        return this.mAudioFocusIdListenerMap.get(str);
    }

    public static String flagsToString(int i2) {
        StringBuilder sb = new StringBuilder();
        int i3 = 0;
        while (true) {
            String[] strArr = FLAG_NAMES;
            if (i3 >= strArr.length) {
                break;
            }
            int i4 = 1 << i3;
            if ((i2 & i4) != 0) {
                if (sb.length() > 0) {
                    sb.append(',');
                }
                sb.append(strArr[i3]);
                i2 &= ~i4;
            }
            i3++;
        }
        if (i2 != 0) {
            if (sb.length() > 0) {
                sb.append(',');
            }
            sb.append(i2);
        }
        return sb.toString();
    }

    private Context getContext() {
        if (this.mApplicationContext == null) {
            setContext(this.mOriginalContext);
        }
        Context context = this.mApplicationContext;
        return context != null ? context : this.mOriginalContext;
    }

    public static AudioDeviceInfo[] getDevicesStatic(int i2) {
        ArrayList arrayList = new ArrayList();
        return listAudioDevicePorts(arrayList) != 0 ? new AudioDeviceInfo[0] : infoListFromPortList(arrayList, i2);
    }

    private String getIdForAudioFocusListener(OnAudioFocusChangeListener onAudioFocusChangeListener) {
        if (onAudioFocusChangeListener == null) {
            return new String(toString());
        }
        return new String(toString() + onAudioFocusChangeListener.toString());
    }

    private static int getPid() {
        if (mPid == 0) {
            mPid = Process.myPid();
        }
        return mPid;
    }

    private static IAudioService getService() {
        IAudioService iAudioService = sService;
        if (iAudioService != null) {
            return iAudioService;
        }
        IAudioService iAudioServiceAsInterface = IAudioService.Stub.asInterface(ServiceManager.getService("audio"));
        sService = iAudioServiceAsInterface;
        return iAudioServiceAsInterface;
    }

    private static IRemoteToolkit getSyuService() {
        IRemoteToolkit iRemoteToolkit = syuService;
        if (iRemoteToolkit != null) {
            return iRemoteToolkit;
        }
        IRemoteToolkit iRemoteToolkitAsInterface = IRemoteToolkit.Stub.asInterface(ServiceManager.getService(Context.SYU_SERVICE));
        syuService = iRemoteToolkitAsInterface;
        return iRemoteToolkitAsInterface;
    }

    private boolean hasPlaybackCallback_sync(AudioPlaybackCallback audioPlaybackCallback) {
        if (this.mPlaybackCallbackList != null) {
            for (int i2 = 0; i2 < this.mPlaybackCallbackList.size(); i2++) {
                if (audioPlaybackCallback.equals(this.mPlaybackCallbackList.get(i2).mCb)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean hasRecordCallback_sync(AudioRecordingCallback audioRecordingCallback) {
        if (this.mRecordCallbackList != null) {
            for (int i2 = 0; i2 < this.mRecordCallbackList.size(); i2++) {
                if (audioRecordingCallback.equals(this.mRecordCallbackList.get(i2).mCb)) {
                    return true;
                }
            }
        }
        return false;
    }

    private static AudioDeviceInfo[] infoListFromPortList(ArrayList<AudioDevicePort> arrayList, int i2) {
        int i3 = 0;
        int i4 = 0;
        for (AudioDevicePort audioDevicePort : arrayList) {
            if (checkTypes(audioDevicePort) && checkFlags(audioDevicePort, i2)) {
                i4++;
            }
        }
        AudioDeviceInfo[] audioDeviceInfoArr = new AudioDeviceInfo[i4];
        for (AudioDevicePort audioDevicePort2 : arrayList) {
            if (checkTypes(audioDevicePort2) && checkFlags(audioDevicePort2, i2)) {
                audioDeviceInfoArr[i3] = new AudioDeviceInfo(audioDevicePort2);
                i3++;
            }
        }
        return audioDeviceInfoArr;
    }

    public static boolean isInputDevice(int i2) {
        return (i2 & Integer.MIN_VALUE) == Integer.MIN_VALUE;
    }

    private boolean isMap() {
        try {
            return getSyuService().ismapapplication(getPid()) != 0;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public static boolean isOutputDevice(int i2) {
        return (i2 & Integer.MIN_VALUE) == 0;
    }

    public static boolean isValidRingerMode(int i2) {
        if (i2 < 0 || i2 > 3) {
            return false;
        }
        try {
            return getService().isValidRingerMode(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static int listAudioDevicePorts(ArrayList<AudioDevicePort> arrayList) {
        if (arrayList == null) {
            return -2;
        }
        ArrayList arrayList2 = new ArrayList();
        int iUpdateAudioPortCache = updateAudioPortCache(arrayList2, null, null);
        if (iUpdateAudioPortCache == 0) {
            filterDevicePorts(arrayList2, arrayList);
        }
        return iUpdateAudioPortCache;
    }

    public static int listAudioPatches(ArrayList<AudioPatch> arrayList) {
        return updateAudioPortCache(null, arrayList, null);
    }

    public static int listAudioPorts(ArrayList<AudioPort> arrayList) {
        return updateAudioPortCache(arrayList, null, null);
    }

    public static int listPreviousAudioDevicePorts(ArrayList<AudioDevicePort> arrayList) {
        if (arrayList == null) {
            return -2;
        }
        ArrayList arrayList2 = new ArrayList();
        int iUpdateAudioPortCache = updateAudioPortCache(null, null, arrayList2);
        if (iUpdateAudioPortCache == 0) {
            filterDevicePorts(arrayList2, arrayList);
        }
        return iUpdateAudioPortCache;
    }

    public static int listPreviousAudioPorts(ArrayList<AudioPort> arrayList) {
        return updateAudioPortCache(null, null, arrayList);
    }

    private boolean querySoundEffectsEnabled(int i2) {
        return Settings.System.getIntForUser(getContext().getContentResolver(), Settings.System.SOUND_EFFECTS_ENABLED, 0, i2) != 0;
    }

    public static int releaseAudioPatch(AudioPatch audioPatch) {
        return AudioSystem.releaseAudioPatch(audioPatch);
    }

    private boolean removePlaybackCallback_sync(AudioPlaybackCallback audioPlaybackCallback) {
        if (this.mPlaybackCallbackList != null) {
            for (int i2 = 0; i2 < this.mPlaybackCallbackList.size(); i2++) {
                if (audioPlaybackCallback.equals(this.mPlaybackCallbackList.get(i2).mCb)) {
                    this.mPlaybackCallbackList.remove(i2);
                    return true;
                }
            }
        }
        return false;
    }

    private boolean removeRecordCallback_sync(AudioRecordingCallback audioRecordingCallback) {
        if (this.mRecordCallbackList != null) {
            for (int i2 = 0; i2 < this.mRecordCallbackList.size(); i2++) {
                if (audioRecordingCallback.equals(this.mRecordCallbackList.get(i2).mCb)) {
                    this.mRecordCallbackList.remove(i2);
                    return true;
                }
            }
        }
        return false;
    }

    public static int resetAudioPortGeneration() {
        int iIntValue;
        synchronized (sAudioPortGeneration) {
            iIntValue = sAudioPortGeneration.intValue();
            sAudioPortGeneration = 0;
        }
        return iIntValue;
    }

    public static int setAudioPortGain(AudioPort audioPort, AudioGainConfig audioGainConfig) {
        if (audioPort == null || audioGainConfig == null) {
            return -2;
        }
        AudioPortConfig audioPortConfigActiveConfig = audioPort.activeConfig();
        AudioPortConfig audioPortConfig = new AudioPortConfig(audioPort, audioPortConfigActiveConfig.samplingRate(), audioPortConfigActiveConfig.channelMask(), audioPortConfigActiveConfig.format(), audioGainConfig);
        audioPortConfig.mConfigMask = 8;
        return AudioSystem.setAudioPortConfig(audioPortConfig);
    }

    private void setContext(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.mApplicationContext = applicationContext;
        if (applicationContext != null) {
            this.mOriginalContext = null;
        } else {
            this.mOriginalContext = context;
        }
    }

    public static int updateAudioPortCache(ArrayList<AudioPort> arrayList, ArrayList<AudioPatch> arrayList2, ArrayList<AudioPort> arrayList3) {
        boolean z2;
        sAudioPortEventHandler.init();
        synchronized (sAudioPortGeneration) {
            if (sAudioPortGeneration.intValue() == 0) {
                int[] iArr = new int[1];
                int[] iArr2 = new int[1];
                ArrayList<AudioPort> arrayList4 = new ArrayList<>();
                ArrayList<AudioPatch> arrayList5 = new ArrayList<>();
                do {
                    arrayList4.clear();
                    int iListAudioPorts = AudioSystem.listAudioPorts(arrayList4, iArr2);
                    if (iListAudioPorts != 0) {
                        Log.w(TAG, "updateAudioPortCache: listAudioPorts failed");
                        return iListAudioPorts;
                    }
                    arrayList5.clear();
                    int iListAudioPatches = AudioSystem.listAudioPatches(arrayList5, iArr);
                    if (iListAudioPatches != 0) {
                        Log.w(TAG, "updateAudioPortCache: listAudioPatches failed");
                        return iListAudioPatches;
                    }
                } while (iArr[0] != iArr2[0]);
                for (int i2 = 0; i2 < arrayList5.size(); i2++) {
                    for (int i3 = 0; i3 < arrayList5.get(i2).sources().length; i3++) {
                        arrayList5.get(i2).sources()[i3] = updatePortConfig(arrayList5.get(i2).sources()[i3], arrayList4);
                    }
                    for (int i4 = 0; i4 < arrayList5.get(i2).sinks().length; i4++) {
                        arrayList5.get(i2).sinks()[i4] = updatePortConfig(arrayList5.get(i2).sinks()[i4], arrayList4);
                    }
                }
                Iterator<AudioPatch> it = arrayList5.iterator();
                while (it.hasNext()) {
                    AudioPatch next = it.next();
                    AudioPortConfig[] audioPortConfigArrSources = next.sources();
                    int length = audioPortConfigArrSources.length;
                    int i5 = 0;
                    while (true) {
                        if (i5 >= length) {
                            z2 = false;
                            break;
                        }
                        if (audioPortConfigArrSources[i5] == null) {
                            z2 = true;
                            break;
                        }
                        i5++;
                    }
                    for (AudioPortConfig audioPortConfig : next.sinks()) {
                        if (audioPortConfig == null) {
                            z2 = true;
                            break;
                        }
                    }
                    if (z2) {
                        it.remove();
                    }
                }
                sPreviousAudioPortsCached = sAudioPortsCached;
                sAudioPortsCached = arrayList4;
                sAudioPatchesCached = arrayList5;
                sAudioPortGeneration = Integer.valueOf(iArr2[0]);
            }
            if (arrayList != null) {
                arrayList.clear();
                arrayList.addAll(sAudioPortsCached);
            }
            if (arrayList2 != null) {
                arrayList2.clear();
                arrayList2.addAll(sAudioPatchesCached);
            }
            if (arrayList3 != null) {
                arrayList3.clear();
                arrayList3.addAll(sPreviousAudioPortsCached);
            }
            return 0;
        }
    }

    public static AudioPortConfig updatePortConfig(AudioPortConfig audioPortConfig, ArrayList<AudioPort> arrayList) {
        AudioPort audioPortPort = audioPortConfig.port();
        int i2 = 0;
        while (i2 < arrayList.size()) {
            if (arrayList.get(i2).handle().equals(audioPortPort.handle())) {
                audioPortPort = arrayList.get(i2);
                break;
            }
            i2++;
        }
        if (i2 == arrayList.size()) {
            m.C(new StringBuilder("updatePortConfig port not found for handle: "), audioPortPort.handle().id(), TAG);
            return null;
        }
        AudioGainConfig audioGainConfigGain = audioPortConfig.gain();
        if (audioGainConfigGain != null) {
            audioGainConfigGain = audioPortPort.gain(audioGainConfigGain.index()).buildConfig(audioGainConfigGain.mode(), audioGainConfigGain.channelMask(), audioGainConfigGain.values(), audioGainConfigGain.rampDurationMs());
        }
        return audioPortPort.buildConfig(audioPortConfig.samplingRate(), audioPortConfig.channelMask(), audioPortConfig.format(), audioGainConfigGain);
    }

    public int abandonAudioFocus(OnAudioFocusChangeListener onAudioFocusChangeListener) {
        return abandonAudioFocus(onAudioFocusChangeListener, null);
    }

    public void abandonAudioFocusForCall() {
        try {
            getService().abandonAudioFocus(null, AudioSystem.IN_VOICE_COMM_FOCUS_ID, null, getContext().getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int abandonAudioFocusRequest(AudioFocusRequest audioFocusRequest) {
        if (audioFocusRequest != null) {
            return abandonAudioFocus(audioFocusRequest.getOnAudioFocusChangeListener(), audioFocusRequest.getAudioAttributes());
        }
        throw new IllegalArgumentException("Illegal null AudioFocusRequest");
    }

    public void adjustStreamVolume(int i2, int i3, int i4) {
        try {
            getService().adjustStreamVolume(i2, i3, i4, getContext().getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void adjustSuggestedStreamVolume(int i2, int i3, int i4) {
        MediaSessionLegacyHelper.getHelper(getContext()).sendAdjustVolumeBy(i3, i2, i4);
    }

    public void adjustVolume(int i2, int i3) {
        MediaSessionLegacyHelper.getHelper(getContext()).sendAdjustVolumeBy(Integer.MIN_VALUE, i2, i3);
    }

    public void avrcpSupportsAbsoluteVolume(String str, boolean z2) {
        try {
            getService().avrcpSupportsAbsoluteVolume(str, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void disableSafeMediaVolume() {
        try {
            getService().disableSafeMediaVolume(this.mApplicationContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int dispatchAudioFocusChange(AudioFocusInfo audioFocusInfo, int i2, AudioPolicy audioPolicy) {
        if (audioFocusInfo == null) {
            throw new NullPointerException("Illegal null AudioFocusInfo");
        }
        if (audioPolicy == null) {
            throw new NullPointerException("Illegal null AudioPolicy");
        }
        try {
            return getService().dispatchFocusChange(audioFocusInfo, i2, audioPolicy.cb());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void dispatchMediaKeyEvent(KeyEvent keyEvent) {
        MediaSessionLegacyHelper.getHelper(getContext()).sendMediaButtonEvent(keyEvent, false);
    }

    public void forceVolumeControlStream(int i2) {
        try {
            getService().forceVolumeControlStream(i2, this.mICallBack);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int generateAudioSessionId() {
        int iNewAudioSessionId = AudioSystem.newAudioSessionId();
        if (iNewAudioSessionId > 0) {
            return iNewAudioSessionId;
        }
        Log.e(TAG, "Failure to generate a new audio session ID");
        return -1;
    }

    public List<AudioPlaybackConfiguration> getActivePlaybackConfigurations() {
        try {
            return getService().getActivePlaybackConfigurations();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<AudioRecordingConfiguration> getActiveRecordingConfigurations() {
        try {
            return getService().getActiveRecordingConfigurations();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public AudioDeviceInfo[] getDevices(int i2) {
        return getDevicesStatic(i2);
    }

    public int getDevicesForStream(int i2) {
        if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5 || i2 == 8 || i2 == 10) {
            return AudioSystem.getDevicesForStream(i2);
        }
        return 0;
    }

    public int getFocusRampTimeMs(int i2, AudioAttributes audioAttributes) {
        try {
            return getService().getFocusRampTimeMs(i2, audioAttributes);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getLastAudibleStreamVolume(int i2) {
        try {
            return getService().getLastAudibleStreamVolume(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getMode() {
        try {
            return getService().getMode();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getOutputLatency(int i2) {
        return AudioSystem.getOutputLatency(i2);
    }

    public String getParameters(String str) {
        return AudioSystem.getParameters(str);
    }

    public String getProperty(String str) {
        if (PROPERTY_OUTPUT_SAMPLE_RATE.equals(str)) {
            int primaryOutputSamplingRate = AudioSystem.getPrimaryOutputSamplingRate();
            if (primaryOutputSamplingRate > 0) {
                return Integer.toString(primaryOutputSamplingRate);
            }
            return null;
        }
        if (PROPERTY_OUTPUT_FRAMES_PER_BUFFER.equals(str)) {
            int primaryOutputFrameCount = AudioSystem.getPrimaryOutputFrameCount();
            if (primaryOutputFrameCount > 0) {
                return Integer.toString(primaryOutputFrameCount);
            }
            return null;
        }
        if (PROPERTY_SUPPORT_MIC_NEAR_ULTRASOUND.equals(str)) {
            return String.valueOf(getContext().getResources().getBoolean(R.bool.config_supportMicNearUltrasound));
        }
        if (PROPERTY_SUPPORT_SPEAKER_NEAR_ULTRASOUND.equals(str)) {
            return String.valueOf(getContext().getResources().getBoolean(R.bool.config_supportSpeakerNearUltrasound));
        }
        if (PROPERTY_SUPPORT_AUDIO_SOURCE_UNPROCESSED.equals(str)) {
            return String.valueOf(getContext().getResources().getBoolean(R.bool.config_supportAudioSourceUnprocessed));
        }
        return null;
    }

    public int getRingerMode() {
        try {
            return getService().getRingerModeExternal();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getRingerModeInternal() {
        try {
            return getService().getRingerModeInternal();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public IRingtonePlayer getRingtonePlayer() {
        try {
            return getService().getRingtonePlayer();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public int getRouting(int i2) {
        return -1;
    }

    public int getStreamMaxVolume(int i2) {
        try {
            return getService().getStreamMaxVolume(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getStreamMinVolume(int i2) {
        try {
            return getService().getStreamMinVolume(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getStreamVolume(int i2) {
        IAudioService service = getService();
        if (isMap()) {
            return 7;
        }
        try {
            return service.getStreamVolume(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getUiSoundsStreamType() {
        try {
            return getService().getUiSoundsStreamType();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getVibrateSetting(int i2) {
        try {
            return getService().getVibrateSetting(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void handleBluetoothA2dpDeviceConfigChange(BluetoothDevice bluetoothDevice) {
        try {
            getService().handleBluetoothA2dpDeviceConfigChange(bluetoothDevice);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isAudioFocusExclusive() {
        try {
            return getService().getCurrentAudioFocus() == 4;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isBluetoothA2dpOn() {
        return AudioSystem.getDeviceConnectionState(128, "") == 1 || AudioSystem.getDeviceConnectionState(256, "") == 1 || AudioSystem.getDeviceConnectionState(512, "") == 1;
    }

    public boolean isBluetoothScoAvailableOffCall() {
        return getContext().getResources().getBoolean(R.bool.config_bluetooth_sco_off_call);
    }

    public boolean isBluetoothScoOn() {
        try {
            return getService().isBluetoothScoOn();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @SuppressLint({"Doclava125"})
    public boolean isHdmiSystemAudioSupported() {
        try {
            return getService().isHdmiSystemAudioSupported();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isMasterMute() {
        try {
            return getService().isMasterMute();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
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
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isStreamAffectedByMute(int i2) {
        try {
            return getService().isStreamAffectedByMute(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isStreamAffectedByRingerMode(int i2) {
        try {
            return getService().isStreamAffectedByRingerMode(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isStreamMute(int i2) {
        try {
            return getService().isStreamMute(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isVolumeFixed() {
        return this.mUseFixedVolume;
    }

    public boolean isWiredHeadsetOn() {
        return (AudioSystem.getDeviceConnectionState(4, "") == 0 && AudioSystem.getDeviceConnectionState(8, "") == 0 && AudioSystem.getDeviceConnectionState(67108864, "") == 0) ? false : true;
    }

    public void loadSoundEffects() {
        try {
            getService().loadSoundEffects();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void notifyVolumeControllerVisible(IVolumeController iVolumeController, boolean z2) {
        try {
            getService().notifyVolumeControllerVisible(iVolumeController, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void playSoundEffect(int i2) {
        if (i2 < 0 || i2 >= 10 || !querySoundEffectsEnabled(Process.myUserHandle().getIdentifier())) {
            return;
        }
        try {
            getService().playSoundEffect(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void preDispatchKeyEvent(KeyEvent keyEvent, int i2) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 25 || keyCode == 24 || keyCode == 164 || this.mVolumeKeyUpTime + 300 <= SystemClock.uptimeMillis()) {
            return;
        }
        adjustSuggestedStreamVolume(0, i2, 8);
    }

    public void registerAudioDeviceCallback(AudioDeviceCallback audioDeviceCallback, Handler handler) {
        synchronized (this.mDeviceCallbacks) {
            if (audioDeviceCallback != null) {
                if (!this.mDeviceCallbacks.containsKey(audioDeviceCallback)) {
                    if (this.mDeviceCallbacks.size() == 0) {
                        if (this.mPortListener == null) {
                            this.mPortListener = new OnAmPortUpdateListener();
                        }
                        registerAudioPortUpdateListener(this.mPortListener);
                    }
                    NativeEventHandlerDelegate nativeEventHandlerDelegate = new NativeEventHandlerDelegate(audioDeviceCallback, handler);
                    this.mDeviceCallbacks.put(audioDeviceCallback, nativeEventHandlerDelegate);
                    broadcastDeviceListChange(nativeEventHandlerDelegate.getHandler());
                }
            }
        }
    }

    public void registerAudioFocusRequest(AudioFocusRequest audioFocusRequest) {
        Handler onAudioFocusChangeListenerHandler = audioFocusRequest.getOnAudioFocusChangeListenerHandler();
        this.mAudioFocusIdListenerMap.put(getIdForAudioFocusListener(audioFocusRequest.getOnAudioFocusChangeListener()), new FocusRequestInfo(audioFocusRequest, onAudioFocusChangeListenerHandler == null ? null : new ServiceEventHandlerDelegate(onAudioFocusChangeListenerHandler).getHandler()));
    }

    public void registerAudioPlaybackCallback(AudioPlaybackCallback audioPlaybackCallback, Handler handler) {
        if (audioPlaybackCallback == null) {
            throw new IllegalArgumentException("Illegal null AudioPlaybackCallback argument");
        }
        synchronized (this.mPlaybackCallbackLock) {
            if (this.mPlaybackCallbackList == null) {
                this.mPlaybackCallbackList = new ArrayList();
            }
            int size = this.mPlaybackCallbackList.size();
            if (hasPlaybackCallback_sync(audioPlaybackCallback)) {
                Log.w(TAG, "attempt to call registerAudioPlaybackCallback() on a previouslyregistered callback");
            } else {
                this.mPlaybackCallbackList.add(new AudioPlaybackCallbackInfo(audioPlaybackCallback, new ServiceEventHandlerDelegate(handler).getHandler()));
                int size2 = this.mPlaybackCallbackList.size();
                if (size == 0 && size2 > 0) {
                    try {
                        getService().registerPlaybackCallback(this.mPlayCb);
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
                }
            }
        }
    }

    public int registerAudioPolicy(AudioPolicy audioPolicy) {
        if (audioPolicy == null) {
            throw new IllegalArgumentException("Illegal null AudioPolicy argument");
        }
        try {
            String strRegisterAudioPolicy = getService().registerAudioPolicy(audioPolicy.getConfig(), audioPolicy.cb(), audioPolicy.hasFocusListener(), audioPolicy.isFocusPolicy());
            if (strRegisterAudioPolicy == null) {
                return -1;
            }
            audioPolicy.setRegistration(strRegisterAudioPolicy);
            return 0;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void registerAudioPortUpdateListener(OnAudioPortUpdateListener onAudioPortUpdateListener) {
        AudioPortEventHandler audioPortEventHandler = sAudioPortEventHandler;
        audioPortEventHandler.init();
        audioPortEventHandler.registerListener(onAudioPortUpdateListener);
    }

    public void registerAudioRecordingCallback(AudioRecordingCallback audioRecordingCallback, Handler handler) {
        if (audioRecordingCallback == null) {
            throw new IllegalArgumentException("Illegal null AudioRecordingCallback argument");
        }
        synchronized (this.mRecordCallbackLock) {
            if (this.mRecordCallbackList == null) {
                this.mRecordCallbackList = new ArrayList();
            }
            int size = this.mRecordCallbackList.size();
            if (hasRecordCallback_sync(audioRecordingCallback)) {
                Log.w(TAG, "attempt to call registerAudioRecordingCallback() on a previouslyregistered callback");
            } else {
                this.mRecordCallbackList.add(new AudioRecordingCallbackInfo(audioRecordingCallback, new ServiceEventHandlerDelegate(handler).getHandler()));
                int size2 = this.mRecordCallbackList.size();
                if (size == 0 && size2 > 0) {
                    try {
                        getService().registerRecordingCallback(this.mRecCb);
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
                }
            }
        }
    }

    @Deprecated
    public void registerMediaButtonEventReceiver(ComponentName componentName) {
        if (componentName == null) {
            return;
        }
        if (!componentName.getPackageName().equals(getContext().getPackageName())) {
            Log.e(TAG, "registerMediaButtonEventReceiver() error: receiver and context package names don't match");
            return;
        }
        Intent intent = new Intent(Intent.ACTION_MEDIA_BUTTON);
        intent.setComponent(componentName);
        registerMediaButtonIntent(PendingIntent.getBroadcast(getContext(), 0, intent, 0), componentName);
    }

    public void registerMediaButtonIntent(PendingIntent pendingIntent, ComponentName componentName) {
        if (pendingIntent == null) {
            Log.e(TAG, "Cannot call registerMediaButtonIntent() with a null parameter");
        } else {
            MediaSessionLegacyHelper.getHelper(getContext()).addMediaButtonListener(pendingIntent, componentName, getContext());
        }
    }

    @Deprecated
    public void registerRemoteControlClient(RemoteControlClient remoteControlClient) {
        if (remoteControlClient == null || remoteControlClient.getRcMediaIntent() == null) {
            return;
        }
        remoteControlClient.registerWithSession(MediaSessionLegacyHelper.getHelper(getContext()));
    }

    @Deprecated
    public boolean registerRemoteController(RemoteController remoteController) {
        if (remoteController == null) {
            return false;
        }
        remoteController.startListeningToSessions();
        return true;
    }

    public void reloadAudioSettings() {
        try {
            getService().reloadAudioSettings();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int requestAudioFocus(OnAudioFocusChangeListener onAudioFocusChangeListener, int i2, int i3) {
        PlayerBase.deprecateStreamTypeForPlayback(i2, TAG, "requestAudioFocus()");
        try {
            return requestAudioFocus(onAudioFocusChangeListener, new AudioAttributes.Builder().setInternalLegacyStreamType(i2).build(), i3, 0);
        } catch (IllegalArgumentException e2) {
            Log.e(TAG, "Audio focus request denied due to ", e2);
            return 0;
        }
    }

    public void requestAudioFocusForCall(int i2, int i3) {
        try {
            getService().requestAudioFocus(new AudioAttributes.Builder().setInternalLegacyStreamType(i2).build(), i3, this.mICallBack, null, AudioSystem.IN_VOICE_COMM_FOCUS_ID, getContext().getOpPackageName(), 4, null, 0);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setAudioSwitch2iis(boolean z2) {
        try {
            getService().setAudioSwitch2iis(z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int setBluetoothA2dpDeviceConnectionState(BluetoothDevice bluetoothDevice, int i2, int i3) {
        try {
            return getService().setBluetoothA2dpDeviceConnectionState(bluetoothDevice, i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void setBluetoothA2dpOn(boolean z2) {
    }

    public void setBluetoothScoOn(boolean z2) {
        try {
            getService().setBluetoothScoOn(z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int setHdmiSystemAudioSupported(boolean z2) {
        try {
            return getService().setHdmiSystemAudioSupported(z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setMasterMute(boolean z2, int i2) {
        try {
            getService().setMasterMute(z2, i2, getContext().getOpPackageName(), UserHandle.getCallingUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setMicrophoneMute(boolean z2) {
        try {
            getService().setMicrophoneMute(z2, getContext().getOpPackageName(), UserHandle.getCallingUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setMode(int i2) {
        try {
            getService().setMode(i2, this.mICallBack, this.mApplicationContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void setParameter(String str, String str2) {
        setParameters(str + "=" + str2);
    }

    public void setParameters(String str) {
        AudioSystem.setParameters(str);
    }

    public void setRingerMode(int i2) {
        if (isValidRingerMode(i2)) {
            IAudioService service = getService();
            try {
                if (getContext().getOpPackageName() == null || !(getContext().getOpPackageName().startsWith("android.media.cts") || getContext().getOpPackageName().startsWith("com.android.cts.verifier"))) {
                    service.setRingerModeExternal(CTSMODE_OUT, getContext().getOpPackageName());
                    service.setRingerModeExternal(i2, getContext().getOpPackageName());
                } else {
                    service.setRingerModeExternal(CTSMODE_IN, getContext().getOpPackageName());
                    service.setRingerModeExternal(i2, getContext().getOpPackageName());
                }
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public void setRingerModeInternal(int i2) {
        try {
            if (getContext().getOpPackageName() == null || !(getContext().getOpPackageName().startsWith("android.media.cts") || getContext().getOpPackageName().startsWith("com.android.cts.verifier"))) {
                getService().setRingerModeInternal(CTSMODE_OUT, getContext().getOpPackageName());
                getService().setRingerModeInternal(i2, getContext().getOpPackageName());
            } else {
                getService().setRingerModeInternal(CTSMODE_IN, getContext().getOpPackageName());
                getService().setRingerModeInternal(i2, getContext().getOpPackageName());
            }
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void setRouting(int i2, int i3, int i4) {
    }

    public void setSpeakerphoneOn(boolean z2) {
        try {
            getService().setSpeakerphoneOn(z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void setStreamMute(int i2, boolean z2) {
        Log.w(TAG, "setStreamMute is deprecated. adjustStreamVolume should be used instead.");
        int i3 = z2 ? -100 : 100;
        if (i2 == Integer.MIN_VALUE) {
            adjustSuggestedStreamVolume(i3, i2, 0);
        } else {
            adjustStreamVolume(i2, i3, 0);
        }
    }

    @Deprecated
    public void setStreamSolo(int i2, boolean z2) {
        Log.w(TAG, "setStreamSolo has been deprecated. Do not use.");
    }

    public void setStreamVolume(int i2, int i3, int i4) {
        IAudioService service = getService();
        if (isMap()) {
            i2 = 1;
        }
        try {
            service.setStreamVolume(i2, i3, i4, getContext().getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setVibrateSetting(int i2, int i3) {
        try {
            getService().setVibrateSetting(i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setVoiceSwitch2iis(boolean z2) {
        try {
            getService().setVoiceSwitch2iis(z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setVolumeController(IVolumeController iVolumeController) {
        try {
            getService().setVolumeController(iVolumeController);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setVolumePolicy(VolumePolicy volumePolicy) {
        try {
            getService().setVolumePolicy(volumePolicy);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setWiredDeviceConnectionState(int i2, int i3, String str, String str2) {
        try {
            getService().setWiredDeviceConnectionState(i2, i3, str, str2, this.mApplicationContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void setWiredHeadsetOn(boolean z2) {
    }

    public boolean shouldVibrate(int i2) {
        try {
            return getService().shouldVibrate(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void startBluetoothSco() {
        try {
            getService().startBluetoothSco(this.mICallBack, getContext().getApplicationInfo().targetSdkVersion);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void startBluetoothScoVirtualCall() {
        try {
            getService().startBluetoothScoVirtualCall(this.mICallBack);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void stopBluetoothSco() {
        try {
            getService().stopBluetoothSco(this.mICallBack);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void unloadSoundEffects() {
        try {
            getService().unloadSoundEffects();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void unregisterAudioDeviceCallback(AudioDeviceCallback audioDeviceCallback) {
        synchronized (this.mDeviceCallbacks) {
            if (this.mDeviceCallbacks.containsKey(audioDeviceCallback)) {
                this.mDeviceCallbacks.remove(audioDeviceCallback);
                if (this.mDeviceCallbacks.size() == 0) {
                    unregisterAudioPortUpdateListener(this.mPortListener);
                }
            }
        }
    }

    public void unregisterAudioFocusRequest(OnAudioFocusChangeListener onAudioFocusChangeListener) {
        this.mAudioFocusIdListenerMap.remove(getIdForAudioFocusListener(onAudioFocusChangeListener));
    }

    public void unregisterAudioPlaybackCallback(AudioPlaybackCallback audioPlaybackCallback) {
        if (audioPlaybackCallback == null) {
            throw new IllegalArgumentException("Illegal null AudioPlaybackCallback argument");
        }
        synchronized (this.mPlaybackCallbackLock) {
            List<AudioPlaybackCallbackInfo> list = this.mPlaybackCallbackList;
            if (list == null) {
                Log.w(TAG, "attempt to call unregisterAudioPlaybackCallback() on a callback that was never registered");
                return;
            }
            int size = list.size();
            if (removePlaybackCallback_sync(audioPlaybackCallback)) {
                int size2 = this.mPlaybackCallbackList.size();
                if (size > 0 && size2 == 0) {
                    try {
                        getService().unregisterPlaybackCallback(this.mPlayCb);
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
                }
            } else {
                Log.w(TAG, "attempt to call unregisterAudioPlaybackCallback() on a callback already unregistered or never registered");
            }
        }
    }

    public void unregisterAudioPolicyAsync(AudioPolicy audioPolicy) {
        if (audioPolicy == null) {
            throw new IllegalArgumentException("Illegal null AudioPolicy argument");
        }
        try {
            getService().unregisterAudioPolicyAsync(audioPolicy.cb());
            audioPolicy.setRegistration(null);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void unregisterAudioPortUpdateListener(OnAudioPortUpdateListener onAudioPortUpdateListener) {
        sAudioPortEventHandler.unregisterListener(onAudioPortUpdateListener);
    }

    public void unregisterAudioRecordingCallback(AudioRecordingCallback audioRecordingCallback) {
        if (audioRecordingCallback == null) {
            throw new IllegalArgumentException("Illegal null AudioRecordingCallback argument");
        }
        synchronized (this.mRecordCallbackLock) {
            List<AudioRecordingCallbackInfo> list = this.mRecordCallbackList;
            if (list == null) {
                return;
            }
            int size = list.size();
            if (removeRecordCallback_sync(audioRecordingCallback)) {
                int size2 = this.mRecordCallbackList.size();
                if (size > 0 && size2 == 0) {
                    try {
                        getService().unregisterRecordingCallback(this.mRecCb);
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
                }
            } else {
                Log.w(TAG, "attempt to call unregisterAudioRecordingCallback() on a callback already unregistered or never registered");
            }
        }
    }

    @Deprecated
    public void unregisterMediaButtonEventReceiver(ComponentName componentName) {
        if (componentName == null) {
            return;
        }
        Intent intent = new Intent(Intent.ACTION_MEDIA_BUTTON);
        intent.setComponent(componentName);
        unregisterMediaButtonIntent(PendingIntent.getBroadcast(getContext(), 0, intent, 0));
    }

    public void unregisterMediaButtonIntent(PendingIntent pendingIntent) {
        MediaSessionLegacyHelper.getHelper(getContext()).removeMediaButtonListener(pendingIntent);
    }

    @Deprecated
    public void unregisterRemoteControlClient(RemoteControlClient remoteControlClient) {
        if (remoteControlClient == null || remoteControlClient.getRcMediaIntent() == null) {
            return;
        }
        remoteControlClient.unregisterWithSession(MediaSessionLegacyHelper.getHelper(getContext()));
    }

    @Deprecated
    public void unregisterRemoteController(RemoteController remoteController) {
        if (remoteController == null) {
            return;
        }
        remoteController.stopListeningToSessions();
    }

    @SuppressLint({"Doclava125"})
    public int abandonAudioFocus(OnAudioFocusChangeListener onAudioFocusChangeListener, AudioAttributes audioAttributes) {
        unregisterAudioFocusRequest(onAudioFocusChangeListener);
        try {
            return getService().abandonAudioFocus(this.mAudioFocusDispatcher, getIdForAudioFocusListener(onAudioFocusChangeListener), audioAttributes, getContext().getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void playSoundEffect(int i2, int i3) {
        if (i2 < 0 || i2 >= 10 || !querySoundEffectsEnabled(i3)) {
            return;
        }
        try {
            getService().playSoundEffect(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void unregisterMediaButtonEventReceiver(PendingIntent pendingIntent) {
        if (pendingIntent == null) {
            return;
        }
        unregisterMediaButtonIntent(pendingIntent);
    }

    public int requestAudioFocus(AudioFocusRequest audioFocusRequest) {
        return requestAudioFocus(audioFocusRequest, null);
    }

    @Deprecated
    public void registerMediaButtonEventReceiver(PendingIntent pendingIntent) {
        if (pendingIntent == null) {
            return;
        }
        registerMediaButtonIntent(pendingIntent, null);
    }

    public int requestAudioFocus(OnAudioFocusChangeListener onAudioFocusChangeListener, AudioAttributes audioAttributes, int i2, int i3) {
        int i4 = i3 & 3;
        if (i3 == i4) {
            return requestAudioFocus(onAudioFocusChangeListener, audioAttributes, i2, i4, null);
        }
        throw new IllegalArgumentException("Invalid flags 0x" + Integer.toHexString(i3).toUpperCase());
    }

    public void playSoundEffect(int i2, float f2) {
        if (i2 < 0 || i2 >= 10) {
            return;
        }
        try {
            getService().playSoundEffectVolume(i2, f2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int requestAudioFocus(OnAudioFocusChangeListener onAudioFocusChangeListener, AudioAttributes audioAttributes, int i2, int i3, AudioPolicy audioPolicy) {
        if (audioAttributes != null) {
            if (!AudioFocusRequest.isValidFocusGain(i2)) {
                throw new IllegalArgumentException("Invalid duration hint");
            }
            if (i3 != (i3 & 7)) {
                throw new IllegalArgumentException("Illegal flags 0x" + Integer.toHexString(i3).toUpperCase());
            }
            int i4 = i3 & 1;
            if (i4 == 1 && onAudioFocusChangeListener == null) {
                throw new IllegalArgumentException("Illegal null focus listener when flagged as accepting delayed focus grant");
            }
            int i5 = i3 & 2;
            if (i5 == 2 && onAudioFocusChangeListener == null) {
                throw new IllegalArgumentException("Illegal null focus listener when flagged as pausing instead of ducking");
            }
            int i6 = i3 & 4;
            if (i6 == 4 && audioPolicy == null) {
                throw new IllegalArgumentException("Illegal null audio policy when locking audio focus");
            }
            return requestAudioFocus(new AudioFocusRequest.Builder(i2).setOnAudioFocusChangeListenerInt(onAudioFocusChangeListener, null).setAudioAttributes(audioAttributes).setAcceptsDelayedFocusGain(i4 == 1).setWillPauseWhenDucked(i5 == 2).setLocksFocus(i6 == 4).build(), audioPolicy);
        }
        throw new IllegalArgumentException("Illegal null AudioAttributes argument");
    }

    public AudioManager(Context context) {
        this.debugmediaplayer = true;
        this.mAudioFocusIdListenerMap = new ConcurrentHashMap<>();
        this.mServiceEventHandlerDelegate = new ServiceEventHandlerDelegate(null);
        this.mAudioFocusDispatcher = new IAudioFocusDispatcher.Stub() { // from class: android.media.AudioManager.1
            @Override // android.media.IAudioFocusDispatcher
            public void dispatchAudioFocusChange(int i2, String str) {
                FocusRequestInfo focusRequestInfoFindFocusRequestInfo = AudioManager.this.findFocusRequestInfo(str);
                if (focusRequestInfoFindFocusRequestInfo == null || focusRequestInfoFindFocusRequestInfo.mRequest.getOnAudioFocusChangeListener() == null) {
                    return;
                }
                Handler handler = focusRequestInfoFindFocusRequestInfo.mHandler;
                if (handler == null) {
                    handler = AudioManager.this.mServiceEventHandlerDelegate.getHandler();
                }
                handler.sendMessage(handler.obtainMessage(0, i2, 0, str));
            }
        };
        this.mPlaybackCallbackLock = new Object();
        this.mPlayCb = new IPlaybackConfigDispatcher.Stub() { // from class: android.media.AudioManager.2
            @Override // android.media.IPlaybackConfigDispatcher
            public void dispatchPlaybackConfigChange(List<AudioPlaybackConfiguration> list, boolean z2) {
                if (z2) {
                    Binder.flushPendingCommands();
                }
                synchronized (AudioManager.this.mPlaybackCallbackLock) {
                    if (AudioManager.this.mPlaybackCallbackList != null) {
                        for (int i2 = 0; i2 < AudioManager.this.mPlaybackCallbackList.size(); i2++) {
                            AudioPlaybackCallbackInfo audioPlaybackCallbackInfo = (AudioPlaybackCallbackInfo) AudioManager.this.mPlaybackCallbackList.get(i2);
                            Handler handler = audioPlaybackCallbackInfo.mHandler;
                            if (handler != null) {
                                audioPlaybackCallbackInfo.mHandler.sendMessage(handler.obtainMessage(2, new PlaybackConfigChangeCallbackData(audioPlaybackCallbackInfo.mCb, list)));
                            }
                        }
                    }
                }
            }
        };
        this.mRecordCallbackLock = new Object();
        this.mRecCb = new IRecordingConfigDispatcher.Stub() { // from class: android.media.AudioManager.3
            @Override // android.media.IRecordingConfigDispatcher
            public void dispatchRecordingConfigChange(List<AudioRecordingConfiguration> list) {
                synchronized (AudioManager.this.mRecordCallbackLock) {
                    if (AudioManager.this.mRecordCallbackList != null) {
                        for (int i2 = 0; i2 < AudioManager.this.mRecordCallbackList.size(); i2++) {
                            AudioRecordingCallbackInfo audioRecordingCallbackInfo = (AudioRecordingCallbackInfo) AudioManager.this.mRecordCallbackList.get(i2);
                            Handler handler = audioRecordingCallbackInfo.mHandler;
                            if (handler != null) {
                                audioRecordingCallbackInfo.mHandler.sendMessage(handler.obtainMessage(1, new RecordConfigChangeCallbackData(audioRecordingCallbackInfo.mCb, list)));
                            }
                        }
                    }
                }
            }
        };
        this.mICallBack = new Binder();
        this.mPortListener = null;
        this.mDeviceCallbacks = new ArrayMap<>();
        this.mPreviousPorts = new ArrayList<>();
        setContext(context);
        this.mUseVolumeKeySounds = getContext().getResources().getBoolean(R.bool.config_useVolumeKeySounds);
        this.mUseFixedVolume = getContext().getResources().getBoolean(R.bool.config_useFixedVolume);
    }

    public int requestAudioFocus(AudioFocusRequest audioFocusRequest, AudioPolicy audioPolicy) {
        int i2;
        if (audioFocusRequest != null) {
            if (audioFocusRequest.locksFocus() && audioPolicy == null) {
                throw new IllegalArgumentException("Illegal null audio policy when locking audio focus");
            }
            registerAudioFocusRequest(audioFocusRequest);
            IAudioService service = getService();
            try {
                i2 = getContext().getApplicationInfo().targetSdkVersion;
            } catch (NullPointerException unused) {
                i2 = Build.VERSION.SDK_INT;
            }
            try {
                return service.requestAudioFocus(audioFocusRequest.getAudioAttributes(), audioFocusRequest.getFocusGain(), this.mICallBack, this.mAudioFocusDispatcher, getIdForAudioFocusListener(audioFocusRequest.getOnAudioFocusChangeListener()), getContext().getOpPackageName(), audioFocusRequest.getFlags(), audioPolicy != null ? audioPolicy.cb() : null, i2);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
        throw new NullPointerException("Illegal null AudioFocusRequest");
    }
}
