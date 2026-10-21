package android.media;

import android.Manifest;
import android.app.ActivityManager;
import android.app.ActivityManagerNative;
import android.app.AppOpsManager;
import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadset;
import android.bluetooth.BluetoothProfile;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.database.ContentObserver;
import android.hardware.usb.UsbManager;
import android.net.ProxyProperties;
import android.net.http.CertificateChainValidator;
import android.net.http.SslError;
import android.os.Binder;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.Vibrator;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.util.TimedRemoteCaller;
import android.view.KeyEvent;
import android.view.VolumePanel;
import android.view.WindowManager;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;
import org.xmlpull.v1.XmlPullParserException;
import r.d;
import u.n;
import y.a;
import y.e;

/* JADX INFO: loaded from: classes.dex */
public class AudioService extends IAudioService.Stub {
    private static final String ASSET_FILE_VERSION = "1.0";
    private static final String ATTR_ASSET_FILE = "file";
    private static final String ATTR_ASSET_ID = "id";
    private static final String ATTR_GROUP_NAME = "name";
    private static final String ATTR_VERSION = "version";
    private static final int BTA2DP_DOCK_TIMEOUT_MILLIS = 8000;
    private static final int BT_HEADSET_CNCT_TIMEOUT_MS = 3000;
    private static final boolean DEBUG_CERTS = false;
    public static final boolean DEBUG_RC = false;
    public static final boolean DEBUG_VOL = false;
    private static final int DEFAULT_STREAM_TYPE_OVERRIDE_DELAY_MS = 5000;
    private static final String GROUP_TOUCH_SOUNDS = "touch_sounds";
    private static final int MAX_BATCH_VOLUME_ADJUST_STEPS = 4;
    private static final int MAX_MASTER_VOLUME = 100;
    private static final int MSG_BROADCAST_AUDIO_BECOMING_NOISY = 15;
    private static final int MSG_BROADCAST_BT_CONNECTION_STATE = 19;
    private static final int MSG_BTA2DP_DOCK_TIMEOUT = 6;
    private static final int MSG_BT_HEADSET_CNCT_FAILED = 9;
    private static final int MSG_CHECK_MUSIC_ACTIVE = 14;
    private static final int MSG_CONFIGURE_SAFE_MEDIA_VOLUME = 16;
    private static final int MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED = 17;
    private static final int MSG_LOAD_SOUND_EFFECTS = 7;
    private static final int MSG_MEDIA_SERVER_DIED = 4;
    private static final int MSG_PERSIST_MASTER_VOLUME = 2;
    private static final int MSG_PERSIST_MASTER_VOLUME_MUTE = 11;
    private static final int MSG_PERSIST_RINGER_MODE = 3;
    private static final int MSG_PERSIST_SAFE_VOLUME_STATE = 18;
    private static final int MSG_PERSIST_VOLUME = 1;
    private static final int MSG_PLAY_SOUND_EFFECT = 5;
    private static final int MSG_REPORT_NEW_ROUTES = 12;
    private static final int MSG_SET_A2DP_CONNECTION_STATE = 101;
    private static final int MSG_SET_ALL_VOLUMES = 10;
    private static final int MSG_SET_DEVICE_VOLUME = 0;
    private static final int MSG_SET_FORCE_BT_A2DP_USE = 13;
    private static final int MSG_SET_FORCE_USE = 8;
    private static final int MSG_SET_WIRED_DEVICE_CONNECTION_STATE = 100;
    private static final int MSG_UNLOAD_SOUND_EFFECTS = 20;
    private static final int MUSIC_ACTIVE_POLL_PERIOD_MS = 60000;
    private static final int NUM_SOUNDPOOL_CHANNELS = 4;
    private static final int PERSIST_DELAY = 500;
    private static final int SAFE_VOLUME_CONFIGURE_TIMEOUT_MS = 30000;
    private static final int SCO_MODE_RAW = 1;
    private static final int SCO_MODE_VIRTUAL_CALL = 0;
    private static final int SCO_STATE_ACTIVATE_REQ = 1;
    private static final int SCO_STATE_ACTIVE_EXTERNAL = 2;
    private static final int SCO_STATE_ACTIVE_INTERNAL = 3;
    private static final int SCO_STATE_DEACTIVATE_EXT_REQ = 4;
    private static final int SCO_STATE_DEACTIVATE_REQ = 5;
    private static final int SCO_STATE_INACTIVE = 0;
    private static final int SENDMSG_NOOP = 1;
    private static final int SENDMSG_QUEUE = 2;
    private static final int SENDMSG_REPLACE = 0;
    private static final int SOUND_EFECTS_LOAD_TIMEOUT_MS = 5000;
    private static final String SOUND_EFFECTS_PATH = "/media/audio/ui/";
    public static final int STREAM_REMOTE_MUSIC = -200;
    private static final String TAG = "AudioService";
    private static final String TAG_ASSET = "asset";
    private static final String TAG_AUDIO_ASSETS = "audio_assets";
    private static final String TAG_GROUP = "group";
    private static final int UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX = 72000000;
    private static int sSoundEffectVolumeDb;
    private final int SAFE_MEDIA_VOLUME_ACTIVE;
    private final int SAFE_MEDIA_VOLUME_DISABLED;
    private final int SAFE_MEDIA_VOLUME_INACTIVE;
    private final int SAFE_MEDIA_VOLUME_NOT_CONFIGURED;
    private BluetoothA2dp mA2dp;
    private final Object mA2dpAvrcpLock;
    private final AppOpsManager mAppOps;
    private PowerManager.WakeLock mAudioEventWakeLock;
    private AudioHandler mAudioHandler;
    private final AudioSystem.ErrorCallback mAudioSystemCallback;
    private AudioSystemThread mAudioSystemThread;
    private boolean mAvrcpAbsVolSupported;
    public int mBecomingNoisyIntentDevices;
    private boolean mBluetoothA2dpEnabled;
    private final Object mBluetoothA2dpEnabledLock;
    private BluetoothHeadset mBluetoothHeadset;
    private BluetoothDevice mBluetoothHeadsetDevice;
    private BluetoothProfile.ServiceListener mBluetoothProfileServiceListener;
    private boolean mBootCompleted;
    private Boolean mCameraSoundForced;
    private final HashMap<Integer, String> mConnectedDevices;
    private final ContentResolver mContentResolver;
    private final Context mContext;
    public final AudioRoutesInfo mCurAudioRoutes;
    private int mDeviceOrientation;
    private int mDeviceRotation;
    private String mDockAddress;
    private boolean mDockAudioMediaEnabled;
    private int mDockState;
    public final int mFixedVolumeDevices;
    private ForceControlStreamClient mForceControlStreamClient;
    private final Object mForceControlStreamLock;
    private int mForcedUseForComm;
    private final boolean mHasVibrator;
    private KeyguardManager mKeyguardManager;
    private final int[] mMasterVolumeRamp;
    private int mMcc;
    private final MediaFocusControl mMediaFocusControl;
    private final boolean mMonitorOrientation;
    private final boolean mMonitorRotation;
    private int mMusicActiveMs;
    private int mMuteAffectedStreams;
    private StreamVolumeCommand mPendingVolumeCommand;
    private int mPrevVolDirection;
    private final BroadcastReceiver mReceiver;
    private int mRingerMode;
    private int mRingerModeAffectedStreams;
    private int mRingerModeMutedStreams;
    private volatile IRingtonePlayer mRingtonePlayer;
    public final RemoteCallbackList<IAudioRoutesObserver> mRoutesObservers;
    private final int mSafeMediaVolumeDevices;
    private int mSafeMediaVolumeIndex;
    private Integer mSafeMediaVolumeState;
    private int mScoAudioMode;
    private int mScoAudioState;
    private final ArrayList<ScoClient> mScoClients;
    private int mScoConnectionState;
    private final ArrayList<SetModeDeathHandler> mSetModeDeathHandlers;
    private SettingsObserver mSettingsObserver;
    private SoundPool mSoundPool;
    private SoundPoolCallback mSoundPoolCallBack;
    private SoundPoolListenerThread mSoundPoolListenerThread;
    private Looper mSoundPoolLooper;
    private VolumeStreamState[] mStreamStates;
    private int[] mStreamVolumeAlias;
    private final boolean mUseFixedVolume;
    private final boolean mUseMasterVolume;
    private int mVibrateSetting;
    private final boolean mVoiceCapable;
    private int mVolumeControlStream;
    private VolumePanel mVolumePanel;
    private static final List<String> SOUND_EFFECT_FILES = new ArrayList();
    private static final int[] MAX_STREAM_VOLUME = {5, 7, 7, 15, 7, 7, 15, 7, 15, 15};
    private static final int[] STEAM_VOLUME_OPS = {34, 36, 35, 36, 37, 38, 39, 36, 36, 36};
    private static final String[] RINGER_MODE_NAMES = {"SILENT", "VIBRATE", "NORMAL"};
    private int mMode = 0;
    private final Object mSettingsLock = new Object();
    private final Object mSoundEffectsLock = new Object();
    private final int[][] SOUND_EFFECT_FILES_MAP = (int[][]) Array.newInstance((Class<?>) int.class, 10, 2);
    private final int[] STREAM_VOLUME_ALIAS = {0, 2, 2, 3, 4, 2, 6, 2, 2, 3};
    private final int[] STREAM_VOLUME_ALIAS_NON_VOICE = {0, 3, 2, 3, 4, 2, 6, 3, 3, 3};
    private final String[] STREAM_NAMES = {"STREAM_VOICE_CALL", "STREAM_SYSTEM", "STREAM_RING", "STREAM_MUSIC", "STREAM_ALARM", "STREAM_NOTIFICATION", "STREAM_BLUETOOTH_SCO", "STREAM_SYSTEM_ENFORCED", "STREAM_DTMF", "STREAM_TTS"};

    public class AudioHandler extends Handler {
        private AudioHandler() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cleanupPlayer(MediaPlayer mediaPlayer) {
            if (mediaPlayer != null) {
                try {
                    mediaPlayer.stop();
                    mediaPlayer.release();
                } catch (IllegalStateException e2) {
                    Log.w(AudioService.TAG, "MediaPlayer IllegalStateException: " + e2);
                }
            }
        }

        private boolean onLoadSoundEffects() {
            int iStatus;
            synchronized (AudioService.this.mSoundEffectsLock) {
                try {
                    if (!AudioService.this.mBootCompleted) {
                        Log.w(AudioService.TAG, "onLoadSoundEffects() called before boot complete");
                        return false;
                    }
                    if (AudioService.this.mSoundPool != null) {
                        return true;
                    }
                    AudioService.this.loadTouchSoundAssets();
                    AudioService.this.mSoundPool = new SoundPool(4, 1, 0);
                    AudioService.this.mSoundPoolCallBack = null;
                    AudioService.this.mSoundPoolListenerThread = AudioService.this.new SoundPoolListenerThread();
                    AudioService.this.mSoundPoolListenerThread.start();
                    int i2 = 3;
                    int i3 = 3;
                    while (AudioService.this.mSoundPoolCallBack == null) {
                        int i4 = i3 - 1;
                        if (i3 <= 0) {
                            break;
                        }
                        try {
                            AudioService.this.mSoundEffectsLock.wait(TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
                        } catch (InterruptedException unused) {
                            Log.w(AudioService.TAG, "Interrupted while waiting sound pool listener thread.");
                        }
                        i3 = i4;
                        throw th;
                    }
                    if (AudioService.this.mSoundPoolCallBack == null) {
                        Log.w(AudioService.TAG, "onLoadSoundEffects() SoundPool listener or thread creation error");
                        if (AudioService.this.mSoundPoolLooper != null) {
                            AudioService.this.mSoundPoolLooper.quit();
                            AudioService.this.mSoundPoolLooper = null;
                        }
                        AudioService.this.mSoundPoolListenerThread = null;
                        AudioService.this.mSoundPool.release();
                        AudioService.this.mSoundPool = null;
                        return false;
                    }
                    int[] iArr = new int[AudioService.SOUND_EFFECT_FILES.size()];
                    for (int i5 = 0; i5 < AudioService.SOUND_EFFECT_FILES.size(); i5++) {
                        iArr[i5] = -1;
                    }
                    int i6 = 0;
                    for (int i7 = 0; i7 < 10; i7++) {
                        if (AudioService.this.SOUND_EFFECT_FILES_MAP[i7][1] != 0) {
                            if (iArr[AudioService.this.SOUND_EFFECT_FILES_MAP[i7][0]] == -1) {
                                String str = Environment.getRootDirectory() + AudioService.SOUND_EFFECTS_PATH + ((String) AudioService.SOUND_EFFECT_FILES.get(AudioService.this.SOUND_EFFECT_FILES_MAP[i7][0]));
                                int iLoad = AudioService.this.mSoundPool.load(str, 0);
                                if (iLoad <= 0) {
                                    Log.w(AudioService.TAG, "Soundpool could not load file: " + str);
                                } else {
                                    AudioService.this.SOUND_EFFECT_FILES_MAP[i7][1] = iLoad;
                                    iArr[AudioService.this.SOUND_EFFECT_FILES_MAP[i7][0]] = iLoad;
                                    i6++;
                                }
                            } else {
                                AudioService.this.SOUND_EFFECT_FILES_MAP[i7][1] = iArr[AudioService.this.SOUND_EFFECT_FILES_MAP[i7][0]];
                            }
                        }
                    }
                    if (i6 > 0) {
                        AudioService.this.mSoundPoolCallBack.setSamples(iArr);
                        iStatus = 1;
                        while (iStatus == 1) {
                            int i8 = i2 - 1;
                            if (i2 <= 0) {
                                break;
                            }
                            try {
                                AudioService.this.mSoundEffectsLock.wait(TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
                                iStatus = AudioService.this.mSoundPoolCallBack.status();
                            } catch (InterruptedException unused2) {
                                Log.w(AudioService.TAG, "Interrupted while waiting sound pool callback.");
                            }
                            i2 = i8;
                        }
                    } else {
                        iStatus = -1;
                    }
                    if (AudioService.this.mSoundPoolLooper != null) {
                        AudioService.this.mSoundPoolLooper.quit();
                        AudioService.this.mSoundPoolLooper = null;
                    }
                    AudioService.this.mSoundPoolListenerThread = null;
                    if (iStatus != 0) {
                        Log.w(AudioService.TAG, "onLoadSoundEffects(), Error " + iStatus + " while loading samples");
                        for (int i9 = 0; i9 < 10; i9++) {
                            if (AudioService.this.SOUND_EFFECT_FILES_MAP[i9][1] > 0) {
                                AudioService.this.SOUND_EFFECT_FILES_MAP[i9][1] = -1;
                            }
                        }
                        AudioService.this.mSoundPool.release();
                        AudioService.this.mSoundPool = null;
                    }
                    return iStatus == 0;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        private void onPersistSafeVolumeState(int i2) {
            Settings.Global.putInt(AudioService.this.mContentResolver, Settings.Global.AUDIO_SAFE_VOLUME_STATE, i2);
        }

        private void onPlaySoundEffect(int i2, int i3) {
            synchronized (AudioService.this.mSoundEffectsLock) {
                onLoadSoundEffects();
                if (AudioService.this.mSoundPool == null) {
                    return;
                }
                float fPow = i3 < 0 ? (float) Math.pow(10.0d, AudioService.sSoundEffectVolumeDb / 20.0f) : i3 / 1000.0f;
                if (AudioService.this.SOUND_EFFECT_FILES_MAP[i2][1] > 0) {
                    AudioService.this.mSoundPool.play(AudioService.this.SOUND_EFFECT_FILES_MAP[i2][1], fPow, fPow, 0, 0, 1.0f);
                } else {
                    MediaPlayer mediaPlayer = new MediaPlayer();
                    try {
                        mediaPlayer.setDataSource(Environment.getRootDirectory() + AudioService.SOUND_EFFECTS_PATH + ((String) AudioService.SOUND_EFFECT_FILES.get(AudioService.this.SOUND_EFFECT_FILES_MAP[i2][0])));
                        mediaPlayer.setAudioStreamType(1);
                        mediaPlayer.prepare();
                        mediaPlayer.setVolume(fPow);
                        mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: android.media.AudioService.AudioHandler.1
                            @Override // android.media.MediaPlayer.OnCompletionListener
                            public void onCompletion(MediaPlayer mediaPlayer2) {
                                AudioHandler.this.cleanupPlayer(mediaPlayer2);
                            }
                        });
                        mediaPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: android.media.AudioService.AudioHandler.2
                            @Override // android.media.MediaPlayer.OnErrorListener
                            public boolean onError(MediaPlayer mediaPlayer2, int i4, int i5) {
                                AudioHandler.this.cleanupPlayer(mediaPlayer2);
                                return true;
                            }
                        });
                        mediaPlayer.start();
                    } catch (IOException e2) {
                        Log.w(AudioService.TAG, "MediaPlayer IOException: " + e2);
                    } catch (IllegalArgumentException e3) {
                        Log.w(AudioService.TAG, "MediaPlayer IllegalArgumentException: " + e3);
                    } catch (IllegalStateException e4) {
                        Log.w(AudioService.TAG, "MediaPlayer IllegalStateException: " + e4);
                    }
                }
            }
        }

        private void onUnloadSoundEffects() {
            synchronized (AudioService.this.mSoundEffectsLock) {
                if (AudioService.this.mSoundPool == null) {
                    return;
                }
                int[] iArr = new int[AudioService.SOUND_EFFECT_FILES.size()];
                for (int i2 = 0; i2 < AudioService.SOUND_EFFECT_FILES.size(); i2++) {
                    iArr[i2] = 0;
                }
                for (int i3 = 0; i3 < 10; i3++) {
                    if (AudioService.this.SOUND_EFFECT_FILES_MAP[i3][1] > 0 && iArr[AudioService.this.SOUND_EFFECT_FILES_MAP[i3][0]] == 0) {
                        AudioService.this.mSoundPool.unload(AudioService.this.SOUND_EFFECT_FILES_MAP[i3][1]);
                        AudioService.this.SOUND_EFFECT_FILES_MAP[i3][1] = -1;
                        iArr[AudioService.this.SOUND_EFFECT_FILES_MAP[i3][0]] = -1;
                    }
                }
                AudioService.this.mSoundPool.release();
                AudioService.this.mSoundPool = null;
            }
        }

        private void persistRingerMode(int i2) {
            if (AudioService.this.mUseFixedVolume) {
                return;
            }
            Settings.Global.putInt(AudioService.this.mContentResolver, "mode_ringer", i2);
        }

        private void persistVolume(VolumeStreamState volumeStreamState, int i2) {
            if (AudioService.this.mUseFixedVolume) {
                return;
            }
            Settings.System.putIntForUser(AudioService.this.mContentResolver, volumeStreamState.getSettingNameForDevice(i2), (volumeStreamState.getIndex(i2) + 5) / 10, -2);
        }

        private void setAllVolumes(VolumeStreamState volumeStreamState) {
            volumeStreamState.applyAllVolumes();
            for (int numStreamTypes = AudioSystem.getNumStreamTypes() - 1; numStreamTypes >= 0; numStreamTypes--) {
                if (numStreamTypes != volumeStreamState.mStreamType && AudioService.this.mStreamVolumeAlias[numStreamTypes] == volumeStreamState.mStreamType) {
                    AudioService.this.mStreamStates[numStreamTypes].applyAllVolumes();
                }
            }
        }

        private void setDeviceVolume(VolumeStreamState volumeStreamState, int i2) {
            volumeStreamState.applyDeviceVolume(i2);
            for (int numStreamTypes = AudioSystem.getNumStreamTypes() - 1; numStreamTypes >= 0; numStreamTypes--) {
                if (numStreamTypes != volumeStreamState.mStreamType && AudioService.this.mStreamVolumeAlias[numStreamTypes] == volumeStreamState.mStreamType) {
                    int deviceForStream = AudioService.this.getDeviceForStream(numStreamTypes);
                    if (i2 != deviceForStream && AudioService.this.mAvrcpAbsVolSupported && (i2 & AudioSystem.DEVICE_OUT_ALL_A2DP) != 0) {
                        AudioService.this.mStreamStates[numStreamTypes].applyDeviceVolume(i2);
                    }
                    AudioService.this.mStreamStates[numStreamTypes].applyDeviceVolume(deviceForStream);
                }
            }
            AudioService.sendMsg(AudioService.this.mAudioHandler, 1, 2, i2, 0, volumeStreamState, 500);
        }

        private void setForceUse(int i2, int i3) {
            AudioSystem.setForceUse(i2, i3);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            AudioRoutesInfo audioRoutesInfo;
            int i2 = message.what;
            if (i2 == 100) {
                AudioService.this.onSetWiredDeviceConnectionState(message.arg1, message.arg2, (String) message.obj);
                AudioService.this.mAudioEventWakeLock.release();
                return;
            }
            if (i2 == 101) {
                AudioService.this.onSetA2dpConnectionState((BluetoothDevice) message.obj, message.arg1);
                AudioService.this.mAudioEventWakeLock.release();
                return;
            }
            switch (i2) {
                case 0:
                    setDeviceVolume((VolumeStreamState) message.obj, message.arg1);
                    return;
                case 1:
                    persistVolume((VolumeStreamState) message.obj, message.arg1);
                    return;
                case 2:
                    if (AudioService.this.mUseFixedVolume) {
                        return;
                    }
                    Settings.System.putFloatForUser(AudioService.this.mContentResolver, Settings.System.VOLUME_MASTER, message.arg1 / 1000.0f, -2);
                    return;
                case 3:
                    persistRingerMode(AudioService.this.getRingerMode());
                    return;
                case 4:
                    if (AudioSystem.checkAudioFlinger() != 0) {
                        Log.e(AudioService.TAG, "Media server died.");
                        AudioService.sendMsg(AudioService.this.mAudioHandler, 4, 1, 0, 0, null, 500);
                        return;
                    }
                    Log.e(AudioService.TAG, "Media server started.");
                    AudioSystem.setParameters("restarting=true");
                    AudioService.readAndSetLowRamDevice();
                    synchronized (AudioService.this.mConnectedDevices) {
                        for (Map.Entry entry : AudioService.this.mConnectedDevices.entrySet()) {
                            AudioSystem.setDeviceConnectionState(((Integer) entry.getKey()).intValue(), 1, (String) entry.getValue());
                        }
                        break;
                    }
                    AudioSystem.setPhoneState(AudioService.this.mMode);
                    AudioSystem.setForceUse(0, AudioService.this.mForcedUseForComm);
                    AudioSystem.setForceUse(2, AudioService.this.mForcedUseForComm);
                    AudioSystem.setForceUse(4, AudioService.this.mCameraSoundForced.booleanValue() ? 11 : 0);
                    int numStreamTypes = AudioSystem.getNumStreamTypes() - 1;
                    while (true) {
                        if (numStreamTypes < 0) {
                            AudioService audioService = AudioService.this;
                            audioService.setRingerModeInt(audioService.getRingerMode(), false);
                            AudioService.this.restoreMasterVolume();
                            if (AudioService.this.mMonitorOrientation) {
                                AudioService.this.setOrientationForAudioSystem();
                            }
                            if (AudioService.this.mMonitorRotation) {
                                AudioService.this.setRotationForAudioSystem();
                            }
                            synchronized (AudioService.this.mBluetoothA2dpEnabledLock) {
                                AudioSystem.setForceUse(1, AudioService.this.mBluetoothA2dpEnabled ? 0 : 10);
                                break;
                            }
                            synchronized (AudioService.this.mSettingsLock) {
                                AudioSystem.setForceUse(3, AudioService.this.mDockAudioMediaEnabled ? 8 : 0);
                                break;
                            }
                            AudioSystem.setParameters("restarting=false");
                            return;
                        }
                        VolumeStreamState volumeStreamState = AudioService.this.mStreamStates[numStreamTypes];
                        AudioSystem.initStreamVolume(numStreamTypes, 0, (volumeStreamState.mIndexMax + 5) / 10);
                        volumeStreamState.applyAllVolumes();
                        numStreamTypes--;
                    }
                    break;
                case 5:
                    onPlaySoundEffect(message.arg1, message.arg2);
                    return;
                case 6:
                    synchronized (AudioService.this.mConnectedDevices) {
                        AudioService.this.makeA2dpDeviceUnavailableNow((String) message.obj);
                        break;
                    }
                    return;
                case 7:
                    boolean zOnLoadSoundEffects = onLoadSoundEffects();
                    Object obj = message.obj;
                    if (obj != null) {
                        LoadSoundEffectReply loadSoundEffectReply = (LoadSoundEffectReply) obj;
                        synchronized (loadSoundEffectReply) {
                            loadSoundEffectReply.mStatus = zOnLoadSoundEffects ? 0 : -1;
                            loadSoundEffectReply.notify();
                            break;
                        }
                        return;
                    }
                    return;
                case 8:
                case 13:
                    setForceUse(message.arg1, message.arg2);
                    return;
                case 9:
                    AudioService.this.resetBluetoothSco();
                    return;
                case 10:
                    setAllVolumes((VolumeStreamState) message.obj);
                    return;
                case 11:
                    if (AudioService.this.mUseFixedVolume) {
                        return;
                    }
                    Settings.System.putIntForUser(AudioService.this.mContentResolver, Settings.System.VOLUME_MASTER_MUTE, message.arg1, -2);
                    return;
                case 12:
                    int iBeginBroadcast = AudioService.this.mRoutesObservers.beginBroadcast();
                    if (iBeginBroadcast > 0) {
                        synchronized (AudioService.this.mCurAudioRoutes) {
                            audioRoutesInfo = new AudioRoutesInfo(AudioService.this.mCurAudioRoutes);
                            break;
                        }
                        while (iBeginBroadcast > 0) {
                            iBeginBroadcast--;
                            try {
                                ((IAudioRoutesObserver) AudioService.this.mRoutesObservers.getBroadcastItem(iBeginBroadcast)).dispatchAudioRoutesChanged(audioRoutesInfo);
                            } catch (RemoteException unused) {
                            }
                        }
                    }
                    AudioService.this.mRoutesObservers.finishBroadcast();
                    return;
                case 14:
                    AudioService.this.onCheckMusicActive();
                    return;
                case 15:
                    AudioService.this.onSendBecomingNoisyIntent();
                    return;
                case 16:
                case 17:
                    AudioService.this.onConfigureSafeVolume(i2 == 17);
                    return;
                case 18:
                    onPersistSafeVolumeState(message.arg1);
                    return;
                case 19:
                    AudioService.this.onBroadcastScoConnectionState(message.arg1);
                    return;
                case 20:
                    onUnloadSoundEffects();
                    return;
                default:
                    return;
            }
        }
    }

    public class AudioServiceBroadcastReceiver extends BroadcastReceiver {
        private AudioServiceBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            int i2 = 1;
            i2 = 1;
            i2 = 1;
            i2 = 1;
            int i3 = 0;
            if (action.equals(Intent.ACTION_DOCK_EVENT)) {
                int intExtra = intent.getIntExtra(Intent.EXTRA_DOCK_STATE, 0);
                if (intExtra == 1) {
                    i3 = 7;
                } else if (intExtra == 2) {
                    i3 = 6;
                } else if (intExtra == 3) {
                    i3 = 8;
                } else if (intExtra == 4) {
                    i3 = 9;
                }
                if (intExtra != 3 && (intExtra != 0 || AudioService.this.mDockState != 3)) {
                    AudioSystem.setForceUse(3, i3);
                }
                AudioService.this.mDockState = intExtra;
                return;
            }
            if (action.equals(BluetoothHeadset.ACTION_CONNECTION_STATE_CHANGED)) {
                int intExtra2 = intent.getIntExtra(BluetoothProfile.EXTRA_STATE, 0);
                int i4 = 16;
                BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra(BluetoothDevice.EXTRA_DEVICE);
                if (bluetoothDevice == null) {
                    return;
                }
                String address = bluetoothDevice.getAddress();
                BluetoothClass bluetoothClass = bluetoothDevice.getBluetoothClass();
                if (bluetoothClass != null) {
                    int deviceClass = bluetoothClass.getDeviceClass();
                    if (deviceClass == 1028 || deviceClass == 1032) {
                        i4 = 32;
                    } else if (deviceClass == 1056) {
                        i4 = 64;
                    }
                }
                if (!BluetoothAdapter.checkBluetoothAddress(address)) {
                    address = ProxyProperties.LOCAL_EXCL_LIST;
                }
                boolean z2 = intExtra2 == 2;
                if (AudioService.this.handleDeviceConnection(z2, i4, address)) {
                    synchronized (AudioService.this.mScoClients) {
                        try {
                            if (z2) {
                                AudioService.this.mBluetoothHeadsetDevice = bluetoothDevice;
                            } else {
                                AudioService.this.mBluetoothHeadsetDevice = null;
                                AudioService.this.resetBluetoothSco();
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return;
                }
                return;
            }
            if (action.equals(Intent.ACTION_USB_AUDIO_ACCESSORY_PLUG) || action.equals(Intent.ACTION_USB_AUDIO_DEVICE_PLUG)) {
                int intExtra3 = intent.getIntExtra("state", 0);
                int intExtra4 = intent.getIntExtra("card", -1);
                int intExtra5 = intent.getIntExtra(UsbManager.EXTRA_DEVICE, -1);
                String str = (intExtra4 == -1 && intExtra5 == -1) ? ProxyProperties.LOCAL_EXCL_LIST : "card=" + intExtra4 + ";device=" + intExtra5;
                int i5 = action.equals(Intent.ACTION_USB_AUDIO_ACCESSORY_PLUG) ? 8192 : 16384;
                StringBuilder sb = new StringBuilder();
                sb.append("Broadcast Receiver: Got ");
                sb.append(action.equals(Intent.ACTION_USB_AUDIO_ACCESSORY_PLUG) ? "ACTION_USB_AUDIO_ACCESSORY_PLUG" : "ACTION_USB_AUDIO_DEVICE_PLUG");
                sb.append(", state = ");
                sb.append(intExtra3);
                sb.append(", card: ");
                sb.append(intExtra4);
                sb.append(", device: ");
                sb.append(intExtra5);
                Log.v(AudioService.TAG, sb.toString());
                AudioService.this.setWiredDeviceConnectionState(i5, intExtra3, str);
                return;
            }
            if (action.equals(BluetoothHeadset.ACTION_AUDIO_STATE_CHANGED)) {
                synchronized (AudioService.this.mScoClients) {
                    int intExtra6 = intent.getIntExtra(BluetoothProfile.EXTRA_STATE, -1);
                    int i6 = (AudioService.this.mScoClients.isEmpty() || !(AudioService.this.mScoAudioState == 3 || AudioService.this.mScoAudioState == 1 || AudioService.this.mScoAudioState == 5)) ? 0 : 1;
                    switch (intExtra6) {
                        case 10:
                            AudioService.this.mScoAudioState = 0;
                            AudioService.this.clearAllScoClients(0, false);
                            i2 = 0;
                            break;
                        case 11:
                            if (AudioService.this.mScoAudioState != 3 && AudioService.this.mScoAudioState != 5 && AudioService.this.mScoAudioState != 4) {
                                AudioService.this.mScoAudioState = 2;
                            }
                            i2 = -1;
                            break;
                        case 12:
                            if (AudioService.this.mScoAudioState != 3 && AudioService.this.mScoAudioState != 5 && AudioService.this.mScoAudioState != 4) {
                                AudioService.this.mScoAudioState = 2;
                            }
                            break;
                        default:
                            i2 = -1;
                            break;
                    }
                    i3 = i6;
                }
                if (i3 != 0) {
                    AudioService.this.broadcastScoConnectionState(i2);
                    Intent intent2 = new Intent(AudioManager.ACTION_SCO_AUDIO_STATE_CHANGED);
                    intent2.putExtra(AudioManager.EXTRA_SCO_AUDIO_STATE, i2);
                    AudioService.this.sendStickyBroadcastToAll(intent2);
                    return;
                }
                return;
            }
            if (action.equals(Intent.ACTION_BOOT_COMPLETED)) {
                AudioService.this.mBootCompleted = true;
                AudioService.sendMsg(AudioService.this.mAudioHandler, 7, 2, 0, 0, null, 0);
                AudioService audioService = AudioService.this;
                audioService.mKeyguardManager = (KeyguardManager) audioService.mContext.getSystemService(Context.KEYGUARD_SERVICE);
                AudioService.this.mScoConnectionState = -1;
                AudioService.this.resetBluetoothSco();
                AudioService.this.getBluetoothHeadset();
                Intent intent3 = new Intent(AudioManager.ACTION_SCO_AUDIO_STATE_CHANGED);
                intent3.putExtra(AudioManager.EXTRA_SCO_AUDIO_STATE, 0);
                AudioService.this.sendStickyBroadcastToAll(intent3);
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                if (defaultAdapter != null) {
                    defaultAdapter.getProfileProxy(AudioService.this.mContext, AudioService.this.mBluetoothProfileServiceListener, 2);
                }
                AudioService.sendMsg(AudioService.this.mAudioHandler, 17, 0, 0, 0, null, 30000);
                return;
            }
            if (action.equals(Intent.ACTION_SCREEN_ON)) {
                AudioSystem.setParameters("screen_state=on");
                return;
            }
            if (action.equals(Intent.ACTION_SCREEN_OFF)) {
                AudioSystem.setParameters("screen_state=off");
                return;
            }
            if (action.equals(Intent.ACTION_CONFIGURATION_CHANGED)) {
                AudioService.this.handleConfigurationChanged(context);
            } else if (action.equals(Intent.ACTION_USER_SWITCHED)) {
                AudioService.sendMsg(AudioService.this.mAudioHandler, 15, 0, 0, 0, null, 0);
                AudioService.this.mMediaFocusControl.discardAudioFocusOwner();
                AudioService.this.readAudioSettings(true);
                AudioService.sendMsg(AudioService.this.mAudioHandler, 10, 2, 0, 0, AudioService.this.mStreamStates[3], 0);
            }
        }
    }

    public class AudioSystemThread extends Thread {
        public AudioSystemThread() {
            super(AudioService.TAG);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            synchronized (AudioService.this) {
                AudioService audioService = AudioService.this;
                audioService.mAudioHandler = new AudioHandler();
                AudioService.this.notify();
            }
            Looper.loop();
        }
    }

    public class ForceControlStreamClient implements IBinder.DeathRecipient {
        private IBinder mCb;

        public ForceControlStreamClient(IBinder iBinder) {
            if (iBinder != null) {
                try {
                    iBinder.linkToDeath(this, 0);
                } catch (RemoteException unused) {
                    Log.w(AudioService.TAG, "ForceControlStreamClient() could not link to " + iBinder + " binder death");
                    iBinder = null;
                }
            }
            this.mCb = iBinder;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (AudioService.this.mForceControlStreamLock) {
                Log.w(AudioService.TAG, "SCO client died");
                if (AudioService.this.mForceControlStreamClient != this) {
                    Log.w(AudioService.TAG, "unregistered control stream client died");
                } else {
                    AudioService.this.mForceControlStreamClient = null;
                    AudioService.this.mVolumeControlStream = -1;
                }
            }
        }

        public void release() {
            IBinder iBinder = this.mCb;
            if (iBinder != null) {
                iBinder.unlinkToDeath(this, 0);
                this.mCb = null;
            }
        }
    }

    public class LoadSoundEffectReply {
        public int mStatus = 1;

        public LoadSoundEffectReply() {
        }
    }

    public class ScoClient implements IBinder.DeathRecipient {
        private IBinder mCb;
        private int mCreatorPid = Binder.getCallingPid();
        private int mStartcount = 0;

        public ScoClient(IBinder iBinder) {
            this.mCb = iBinder;
        }

        private void requestScoState(int i2, int i3) {
            AudioService.this.checkScoAudioState();
            if (totalCount() == 0) {
                if (i2 == 12) {
                    AudioService.this.broadcastScoConnectionState(2);
                    synchronized (AudioService.this.mSetModeDeathHandlers) {
                        if ((!AudioService.this.mSetModeDeathHandlers.isEmpty() && ((SetModeDeathHandler) AudioService.this.mSetModeDeathHandlers.get(0)).getPid() != this.mCreatorPid) || (AudioService.this.mScoAudioState != 0 && AudioService.this.mScoAudioState != 5)) {
                            AudioService.this.broadcastScoConnectionState(0);
                        } else if (AudioService.this.mScoAudioState == 0) {
                            AudioService.this.mScoAudioMode = i3 < 18 ? 0 : 1;
                            if (AudioService.this.mBluetoothHeadset != null && AudioService.this.mBluetoothHeadsetDevice != null) {
                                if (AudioService.this.mScoAudioMode == 1 ? AudioService.this.mBluetoothHeadset.connectAudio() : AudioService.this.mBluetoothHeadset.startScoUsingVirtualVoiceCall(AudioService.this.mBluetoothHeadsetDevice)) {
                                    AudioService.this.mScoAudioState = 3;
                                } else {
                                    AudioService.this.broadcastScoConnectionState(0);
                                }
                            } else if (AudioService.this.getBluetoothHeadset()) {
                                AudioService.this.mScoAudioState = 1;
                            }
                        } else {
                            AudioService.this.mScoAudioState = 3;
                            AudioService.this.broadcastScoConnectionState(1);
                        }
                    }
                    return;
                }
                if (i2 == 10) {
                    if (AudioService.this.mScoAudioState == 3 || AudioService.this.mScoAudioState == 1) {
                        if (AudioService.this.mScoAudioState != 3) {
                            AudioService.this.mScoAudioState = 0;
                            AudioService.this.broadcastScoConnectionState(0);
                        } else if (AudioService.this.mBluetoothHeadset == null || AudioService.this.mBluetoothHeadsetDevice == null) {
                            if (AudioService.this.getBluetoothHeadset()) {
                                AudioService.this.mScoAudioState = 5;
                            }
                        } else {
                            if (AudioService.this.mScoAudioMode == 1 ? AudioService.this.mBluetoothHeadset.disconnectAudio() : AudioService.this.mBluetoothHeadset.stopScoUsingVirtualVoiceCall(AudioService.this.mBluetoothHeadsetDevice)) {
                                return;
                            }
                            AudioService.this.mScoAudioState = 0;
                            AudioService.this.broadcastScoConnectionState(0);
                        }
                    }
                }
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (AudioService.this.mScoClients) {
                Log.w(AudioService.TAG, "SCO client died");
                if (AudioService.this.mScoClients.indexOf(this) < 0) {
                    Log.w(AudioService.TAG, "unregistered SCO client died");
                } else {
                    clearCount(true);
                    AudioService.this.mScoClients.remove(this);
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0033 A[Catch: all -> 0x003a, TryCatch #0 {, blocks: (B:4:0x0007, B:7:0x000c, B:10:0x002f, B:12:0x0033, B:13:0x0038, B:9:0x0012), top: B:18:0x0007, inners: #1 }] */
        public void clearCount(boolean z2) {
            synchronized (AudioService.this.mScoClients) {
                if (this.mStartcount != 0) {
                    try {
                        this.mCb.unlinkToDeath(this, 0);
                    } catch (NoSuchElementException unused) {
                        Log.w(AudioService.TAG, "clearCount() mStartcount: " + this.mStartcount + " != 0 but not registered to binder");
                    }
                    this.mStartcount = 0;
                    if (z2) {
                        requestScoState(10, 0);
                    }
                } else {
                    this.mStartcount = 0;
                    if (z2) {
                        requestScoState(10, 0);
                    }
                }
                throw th;
            }
        }

        public void decCount() {
            synchronized (AudioService.this.mScoClients) {
                int i2 = this.mStartcount;
                if (i2 == 0) {
                    Log.w(AudioService.TAG, "ScoClient.decCount() already 0");
                } else {
                    int i3 = i2 - 1;
                    this.mStartcount = i3;
                    if (i3 == 0) {
                        try {
                            this.mCb.unlinkToDeath(this, 0);
                        } catch (NoSuchElementException unused) {
                            Log.w(AudioService.TAG, "decCount() going to 0 but not registered to binder");
                        }
                    }
                    requestScoState(10, 0);
                }
            }
        }

        public IBinder getBinder() {
            return this.mCb;
        }

        public int getCount() {
            return this.mStartcount;
        }

        public int getPid() {
            return this.mCreatorPid;
        }

        public void incCount(int i2) {
            synchronized (AudioService.this.mScoClients) {
                requestScoState(12, i2);
                if (this.mStartcount == 0) {
                    try {
                        this.mCb.linkToDeath(this, 0);
                    } catch (RemoteException unused) {
                        Log.w(AudioService.TAG, "ScoClient  incCount() could not link to " + this.mCb + " binder death");
                    }
                    this.mStartcount++;
                } else {
                    this.mStartcount++;
                }
                throw th;
            }
        }

        public int totalCount() {
            int count;
            synchronized (AudioService.this.mScoClients) {
                int size = AudioService.this.mScoClients.size();
                count = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    count += ((ScoClient) AudioService.this.mScoClients.get(i2)).getCount();
                }
            }
            return count;
        }
    }

    public class SetModeDeathHandler implements IBinder.DeathRecipient {
        private IBinder mCb;
        private int mMode = 0;
        private int mPid;

        public SetModeDeathHandler(IBinder iBinder, int i2) {
            this.mCb = iBinder;
            this.mPid = i2;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            int modeInt;
            synchronized (AudioService.this.mSetModeDeathHandlers) {
                Log.w(AudioService.TAG, "setMode() client died");
                modeInt = 0;
                if (AudioService.this.mSetModeDeathHandlers.indexOf(this) < 0) {
                    Log.w(AudioService.TAG, "unregistered setMode() client died");
                } else {
                    modeInt = AudioService.this.setModeInt(0, this.mCb, this.mPid);
                }
            }
            if (modeInt != 0) {
                long jClearCallingIdentity = Binder.clearCallingIdentity();
                AudioService.this.disconnectBluetoothSco(modeInt);
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }

        public IBinder getBinder() {
            return this.mCb;
        }

        public int getMode() {
            return this.mMode;
        }

        public int getPid() {
            return this.mPid;
        }

        public void setMode(int i2) {
            this.mMode = i2;
        }
    }

    public class SettingsObserver extends ContentObserver {
        public SettingsObserver() {
            super(new Handler());
            AudioService.this.mContentResolver.registerContentObserver(Settings.System.getUriFor(Settings.System.MODE_RINGER_STREAMS_AFFECTED), false, this);
            AudioService.this.mContentResolver.registerContentObserver(Settings.Global.getUriFor(Settings.Global.DOCK_AUDIO_MEDIA_ENABLED), false, this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z2) {
            super.onChange(z2);
            synchronized (AudioService.this.mSettingsLock) {
                if (AudioService.this.updateRingerModeAffectedStreams()) {
                    AudioService audioService = AudioService.this;
                    audioService.setRingerModeInt(audioService.getRingerMode(), false);
                }
                AudioService audioService2 = AudioService.this;
                audioService2.readDockAudioSettings(audioService2.mContentResolver);
            }
        }
    }

    public final class SoundPoolCallback implements SoundPool.OnLoadCompleteListener {
        public List<Integer> mSamples;
        public int mStatus;

        private SoundPoolCallback() {
            this.mStatus = 1;
            this.mSamples = new ArrayList();
        }

        @Override // android.media.SoundPool.OnLoadCompleteListener
        public void onLoadComplete(SoundPool soundPool, int i2, int i3) {
            synchronized (AudioService.this.mSoundEffectsLock) {
                int iIndexOf = this.mSamples.indexOf(Integer.valueOf(i2));
                if (iIndexOf >= 0) {
                    this.mSamples.remove(iIndexOf);
                }
                if (i3 != 0 || this.mSamples.isEmpty()) {
                    this.mStatus = i3;
                    AudioService.this.mSoundEffectsLock.notify();
                }
            }
        }

        public void setSamples(int[] iArr) {
            for (int i2 = 0; i2 < iArr.length; i2++) {
                if (iArr[i2] > 0) {
                    this.mSamples.add(Integer.valueOf(iArr[i2]));
                }
            }
        }

        public int status() {
            return this.mStatus;
        }
    }

    public class SoundPoolListenerThread extends Thread {
        public SoundPoolListenerThread() {
            super("SoundPoolListenerThread");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            AudioService.this.mSoundPoolLooper = Looper.myLooper();
            synchronized (AudioService.this.mSoundEffectsLock) {
                if (AudioService.this.mSoundPool != null) {
                    AudioService audioService = AudioService.this;
                    audioService.mSoundPoolCallBack = new SoundPoolCallback();
                    AudioService.this.mSoundPool.setOnLoadCompleteListener(AudioService.this.mSoundPoolCallBack);
                }
                AudioService.this.mSoundEffectsLock.notify();
            }
            Looper.loop();
        }
    }

    public class StreamVolumeCommand {
        public final int mDevice;
        public final int mFlags;
        public final int mIndex;
        public final int mStreamType;

        public StreamVolumeCommand(int i2, int i3, int i4, int i5) {
            this.mStreamType = i2;
            this.mIndex = i3;
            this.mFlags = i4;
            this.mDevice = i5;
        }
    }

    public class VolumeStreamState {
        private ArrayList<VolumeDeathHandler> mDeathHandlers;
        private final ConcurrentHashMap<Integer, Integer> mIndex;
        private int mIndexMax;
        private final int mStreamType;
        private String mVolumeIndexSettingName;

        public class VolumeDeathHandler implements IBinder.DeathRecipient {
            private IBinder mICallback;
            private int mMuteCount;

            public VolumeDeathHandler(IBinder iBinder) {
                this.mICallback = iBinder;
            }

            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                Log.w(AudioService.TAG, "Volume service client died for stream: " + VolumeStreamState.this.mStreamType);
                if (this.mMuteCount != 0) {
                    this.mMuteCount = 1;
                    mute(false);
                }
            }

            public void mute(boolean z2) {
                boolean z3 = false;
                if (z2) {
                    if (this.mMuteCount == 0) {
                        try {
                            IBinder iBinder = this.mICallback;
                            if (iBinder != null) {
                                iBinder.linkToDeath(this, 0);
                            }
                            VolumeStreamState.this.mDeathHandlers.add(this);
                            z3 = !VolumeStreamState.this.isMuted();
                        } catch (RemoteException unused) {
                            binderDied();
                            return;
                        }
                    } else {
                        Log.w(AudioService.TAG, "stream: " + VolumeStreamState.this.mStreamType + " was already muted by this client");
                    }
                    this.mMuteCount++;
                } else {
                    int i2 = this.mMuteCount;
                    if (i2 == 0) {
                        Log.e(AudioService.TAG, "unexpected unmute for stream: " + VolumeStreamState.this.mStreamType);
                    } else {
                        int i3 = i2 - 1;
                        this.mMuteCount = i3;
                        if (i3 == 0) {
                            VolumeStreamState.this.mDeathHandlers.remove(this);
                            IBinder iBinder2 = this.mICallback;
                            if (iBinder2 != null) {
                                iBinder2.unlinkToDeath(this, 0);
                            }
                            if (!VolumeStreamState.this.isMuted()) {
                                z3 = true;
                            }
                        }
                    }
                }
                if (z3) {
                    AudioService.sendMsg(AudioService.this.mAudioHandler, 10, 2, 0, 0, VolumeStreamState.this, 0);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dump(PrintWriter printWriter) {
            printWriter.print("   Mute count: ");
            printWriter.println(muteCount());
            printWriter.print("   Current: ");
            for (Map.Entry<Integer, Integer> entry : this.mIndex.entrySet()) {
                printWriter.print(Integer.toHexString(entry.getKey().intValue()) + ": " + ((entry.getValue().intValue() + 5) / 10) + ", ");
            }
        }

        private VolumeDeathHandler getDeathHandler(IBinder iBinder, boolean z2) {
            int size = this.mDeathHandlers.size();
            for (int i2 = 0; i2 < size; i2++) {
                VolumeDeathHandler volumeDeathHandler = this.mDeathHandlers.get(i2);
                if (iBinder == volumeDeathHandler.mICallback) {
                    return volumeDeathHandler;
                }
            }
            if (z2) {
                return new VolumeDeathHandler(iBinder);
            }
            Log.w(AudioService.TAG, "stream was not muted by this client");
            return null;
        }

        private int getValidIndex(int i2) {
            if (i2 < 0) {
                return 0;
            }
            return (AudioService.this.mUseFixedVolume || i2 > this.mIndexMax) ? this.mIndexMax : i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized boolean isMuted() {
            return muteCount() != 0;
        }

        private synchronized int muteCount() {
            int i2;
            int size = this.mDeathHandlers.size();
            i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += this.mDeathHandlers.get(i3).mMuteCount;
            }
            return i2;
        }

        public boolean adjustIndex(int i2, int i3) {
            return setIndex(getIndex(i3) + i2, i3);
        }

        public synchronized void applyAllVolumes() {
            AudioSystem.setStreamVolumeIndex(this.mStreamType, isMuted() ? 0 : (getIndex(1073741824) + 5) / 10, 1073741824);
            for (Map.Entry<Integer, Integer> entry : this.mIndex.entrySet()) {
                int iIntValue = entry.getKey().intValue();
                if (iIntValue != 1073741824) {
                    AudioSystem.setStreamVolumeIndex(this.mStreamType, isMuted() ? 0 : ((iIntValue & AudioSystem.DEVICE_OUT_ALL_A2DP) == 0 || !AudioService.this.mAvrcpAbsVolSupported) ? (entry.getValue().intValue() + 5) / 10 : (this.mIndexMax + 5) / 10, iIntValue);
                }
            }
        }

        public void applyDeviceVolume(int i2) {
            int index;
            if (isMuted()) {
                index = 0;
            } else {
                index = ((i2 & AudioSystem.DEVICE_OUT_ALL_A2DP) == 0 || !AudioService.this.mAvrcpAbsVolSupported) ? (getIndex(i2) + 5) / 10 : (this.mIndexMax + 5) / 10;
            }
            AudioSystem.setStreamVolumeIndex(this.mStreamType, index, i2);
        }

        public synchronized int getIndex(int i2) {
            Integer num;
            num = this.mIndex.get(Integer.valueOf(i2));
            if (num == null) {
                num = this.mIndex.get(1073741824);
            }
            return num.intValue();
        }

        public int getMaxIndex() {
            return this.mIndexMax;
        }

        public String getSettingNameForDevice(int i2) {
            String str = this.mVolumeIndexSettingName;
            String deviceName = AudioSystem.getDeviceName(i2);
            if (deviceName.isEmpty()) {
                return str;
            }
            return str + "_" + deviceName;
        }

        public int getStreamType() {
            return this.mStreamType;
        }

        public synchronized void mute(IBinder iBinder, boolean z2) {
            VolumeDeathHandler deathHandler = getDeathHandler(iBinder, z2);
            if (deathHandler != null) {
                deathHandler.mute(z2);
                return;
            }
            Log.e(AudioService.TAG, "Could not get client death handler for stream: " + this.mStreamType);
        }

        public synchronized void readSettings() {
            if (AudioService.this.mUseFixedVolume) {
                this.mIndex.put(1073741824, Integer.valueOf(this.mIndexMax));
                return;
            }
            int i2 = this.mStreamType;
            if (i2 != 1 && i2 != 7) {
                int i3 = AudioSystem.DEVICE_OUT_ALL;
                int i4 = 0;
                while (i3 != 0) {
                    int i5 = 1 << i4;
                    if ((i5 & i3) != 0) {
                        i3 &= ~i5;
                        int intForUser = Settings.System.getIntForUser(AudioService.this.mContentResolver, getSettingNameForDevice(i5), i5 == 1073741824 ? AudioManager.DEFAULT_STREAM_VOLUME[this.mStreamType] : -1, -2);
                        if (intForUser != -1) {
                            if (AudioService.this.mStreamVolumeAlias[this.mStreamType] != 3 || (i5 & 28672) == 0) {
                                this.mIndex.put(Integer.valueOf(i5), Integer.valueOf(getValidIndex(intForUser * 10)));
                            } else {
                                this.mIndex.put(Integer.valueOf(i5), Integer.valueOf(intForUser != 0 ? this.mIndexMax : 0));
                            }
                        }
                    }
                    i4++;
                }
                return;
            }
            int i6 = AudioManager.DEFAULT_STREAM_VOLUME[i2] * 10;
            synchronized (AudioService.this.mCameraSoundForced) {
                if (AudioService.this.mCameraSoundForced.booleanValue()) {
                    i6 = this.mIndexMax;
                }
            }
            this.mIndex.put(1073741824, Integer.valueOf(i6));
        }

        public synchronized void setAllIndexes(VolumeStreamState volumeStreamState) {
            int streamType = volumeStreamState.getStreamType();
            int iRescaleIndex = AudioService.this.rescaleIndex(volumeStreamState.getIndex(1073741824), streamType, this.mStreamType);
            Iterator<Map.Entry<Integer, Integer>> it = this.mIndex.entrySet().iterator();
            while (it.hasNext()) {
                it.next().setValue(Integer.valueOf(iRescaleIndex));
            }
            for (Map.Entry<Integer, Integer> entry : volumeStreamState.mIndex.entrySet()) {
                setIndex(AudioService.this.rescaleIndex(entry.getValue().intValue(), streamType, this.mStreamType), entry.getKey().intValue());
            }
        }

        public synchronized void setAllIndexesToMax() {
            Iterator<Map.Entry<Integer, Integer>> it = this.mIndex.entrySet().iterator();
            while (it.hasNext()) {
                it.next().setValue(Integer.valueOf(this.mIndexMax));
            }
        }

        public synchronized boolean setIndex(int i2, int i3) {
            int index = getIndex(i3);
            int validIndex = getValidIndex(i2);
            synchronized (AudioService.this.mCameraSoundForced) {
                if (this.mStreamType == 7 && AudioService.this.mCameraSoundForced.booleanValue()) {
                    validIndex = this.mIndexMax;
                }
            }
            this.mIndex.put(Integer.valueOf(i3), Integer.valueOf(validIndex));
            if (index == validIndex) {
                return false;
            }
            boolean z2 = i3 == AudioService.this.getDeviceForStream(this.mStreamType);
            for (int numStreamTypes = AudioSystem.getNumStreamTypes() - 1; numStreamTypes >= 0; numStreamTypes--) {
                if (numStreamTypes != this.mStreamType) {
                    int i4 = AudioService.this.mStreamVolumeAlias[numStreamTypes];
                    int i5 = this.mStreamType;
                    if (i4 == i5) {
                        int iRescaleIndex = AudioService.this.rescaleIndex(validIndex, i5, numStreamTypes);
                        AudioService.this.mStreamStates[numStreamTypes].setIndex(iRescaleIndex, i3);
                        if (z2) {
                            AudioService.this.mStreamStates[numStreamTypes].setIndex(iRescaleIndex, AudioService.this.getDeviceForStream(numStreamTypes));
                        }
                    }
                }
            }
            return true;
        }

        private VolumeStreamState(String str, int i2) {
            this.mIndex = new ConcurrentHashMap<>(8, 0.75f, 4);
            this.mVolumeIndexSettingName = str;
            this.mStreamType = i2;
            int i3 = AudioService.MAX_STREAM_VOLUME[i2];
            this.mIndexMax = i3;
            AudioSystem.initStreamVolume(i2, 0, i3);
            this.mIndexMax *= 10;
            this.mDeathHandlers = new ArrayList<>();
            readSettings();
        }
    }

    public AudioService(Context context) {
        AudioSystem.ErrorCallback errorCallback = new AudioSystem.ErrorCallback() { // from class: android.media.AudioService.1
            @Override // android.media.AudioSystem.ErrorCallback
            public void onError(int i2) {
                if (i2 != 100) {
                    return;
                }
                AudioService.sendMsg(AudioService.this.mAudioHandler, 4, 1, 0, 0, null, 0);
            }
        };
        this.mAudioSystemCallback = errorCallback;
        this.mRingerModeAffectedStreams = 0;
        AudioServiceBroadcastReceiver audioServiceBroadcastReceiver = new AudioServiceBroadcastReceiver();
        this.mReceiver = audioServiceBroadcastReceiver;
        this.mConnectedDevices = new HashMap<>();
        this.mSetModeDeathHandlers = new ArrayList<>();
        this.mScoClients = new ArrayList<>();
        this.mSoundPoolLooper = null;
        this.mPrevVolDirection = 0;
        this.mVolumeControlStream = -1;
        this.mForceControlStreamLock = new Object();
        this.mForceControlStreamClient = null;
        this.mDeviceOrientation = 0;
        this.mDeviceRotation = 0;
        this.mBluetoothA2dpEnabledLock = new Object();
        this.mCurAudioRoutes = new AudioRoutesInfo();
        this.mRoutesObservers = new RemoteCallbackList<>();
        this.mFixedVolumeDevices = 28672;
        this.mDockAudioMediaEnabled = true;
        this.mDockState = 0;
        this.mA2dpAvrcpLock = new Object();
        this.mAvrcpAbsVolSupported = false;
        this.mBluetoothProfileServiceListener = new BluetoothProfile.ServiceListener() { // from class: android.media.AudioService.2
            @Override // android.bluetooth.BluetoothProfile.ServiceListener
            public void onServiceConnected(int i2, BluetoothProfile bluetoothProfile) {
                boolean zConnectAudio = false;
                zConnectAudio = false;
                if (i2 != 1) {
                    if (i2 != 2) {
                        return;
                    }
                    synchronized (AudioService.this.mA2dpAvrcpLock) {
                        AudioService.this.mA2dp = (BluetoothA2dp) bluetoothProfile;
                        List<BluetoothDevice> connectedDevices = AudioService.this.mA2dp.getConnectedDevices();
                        if (connectedDevices.size() > 0) {
                            BluetoothDevice bluetoothDevice = connectedDevices.get(0);
                            synchronized (AudioService.this.mConnectedDevices) {
                                int connectionState = AudioService.this.mA2dp.getConnectionState(bluetoothDevice);
                                int iCheckSendBecomingNoisyIntent = AudioService.this.checkSendBecomingNoisyIntent(128, connectionState == 2 ? 1 : 0);
                                AudioService audioService = AudioService.this;
                                audioService.queueMsgUnderWakeLock(audioService.mAudioHandler, 101, connectionState, 0, bluetoothDevice, iCheckSendBecomingNoisyIntent);
                            }
                        }
                    }
                    return;
                }
                synchronized (AudioService.this.mScoClients) {
                    AudioService.this.mAudioHandler.removeMessages(9);
                    AudioService.this.mBluetoothHeadset = (BluetoothHeadset) bluetoothProfile;
                    List<BluetoothDevice> connectedDevices2 = AudioService.this.mBluetoothHeadset.getConnectedDevices();
                    if (connectedDevices2.size() > 0) {
                        AudioService.this.mBluetoothHeadsetDevice = connectedDevices2.get(0);
                    } else {
                        AudioService.this.mBluetoothHeadsetDevice = null;
                    }
                    AudioService.this.checkScoAudioState();
                    if (AudioService.this.mScoAudioState == 1 || AudioService.this.mScoAudioState == 5 || AudioService.this.mScoAudioState == 4) {
                        if (AudioService.this.mBluetoothHeadsetDevice != null) {
                            int i3 = AudioService.this.mScoAudioState;
                            if (i3 == 1) {
                                AudioService.this.mScoAudioState = 3;
                                zConnectAudio = AudioService.this.mScoAudioMode == 1 ? AudioService.this.mBluetoothHeadset.connectAudio() : AudioService.this.mBluetoothHeadset.startScoUsingVirtualVoiceCall(AudioService.this.mBluetoothHeadsetDevice);
                            } else if (i3 == 4) {
                                zConnectAudio = AudioService.this.mBluetoothHeadset.stopVoiceRecognition(AudioService.this.mBluetoothHeadsetDevice);
                            } else if (i3 == 5) {
                                zConnectAudio = AudioService.this.mScoAudioMode == 1 ? AudioService.this.mBluetoothHeadset.disconnectAudio() : AudioService.this.mBluetoothHeadset.stopScoUsingVirtualVoiceCall(AudioService.this.mBluetoothHeadsetDevice);
                            }
                        }
                        if (!zConnectAudio) {
                            AudioService.sendMsg(AudioService.this.mAudioHandler, 9, 0, 0, 0, null, 0);
                        }
                    }
                }
            }

            @Override // android.bluetooth.BluetoothProfile.ServiceListener
            public void onServiceDisconnected(int i2) {
                if (i2 == 1) {
                    synchronized (AudioService.this.mScoClients) {
                        AudioService.this.mBluetoothHeadset = null;
                    }
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    synchronized (AudioService.this.mA2dpAvrcpLock) {
                        AudioService.this.mA2dp = null;
                        synchronized (AudioService.this.mConnectedDevices) {
                            if (AudioService.this.mConnectedDevices.containsKey(128)) {
                                AudioService audioService = AudioService.this;
                                audioService.makeA2dpDeviceUnavailableNow((String) audioService.mConnectedDevices.get(128));
                            }
                        }
                    }
                }
            }
        };
        this.mBecomingNoisyIntentDevices = 32652;
        this.SAFE_MEDIA_VOLUME_NOT_CONFIGURED = 0;
        this.SAFE_MEDIA_VOLUME_DISABLED = 1;
        this.SAFE_MEDIA_VOLUME_INACTIVE = 2;
        this.SAFE_MEDIA_VOLUME_ACTIVE = 3;
        this.mMcc = 0;
        this.mSafeMediaVolumeDevices = 12;
        this.mContext = context;
        ContentResolver contentResolver = context.getContentResolver();
        this.mContentResolver = contentResolver;
        this.mAppOps = (AppOpsManager) context.getSystemService(Context.APP_OPS_SERVICE);
        this.mVoiceCapable = context.getResources().getBoolean(17891384);
        this.mAudioEventWakeLock = ((PowerManager) context.getSystemService(Context.POWER_SERVICE)).newWakeLock(1, "handleAudioEvent");
        Vibrator vibrator = (Vibrator) context.getSystemService(Context.VIBRATOR_SERVICE);
        this.mHasVibrator = vibrator == null ? false : vibrator.hasVibrator();
        int[] iArr = MAX_STREAM_VOLUME;
        iArr[0] = SystemProperties.getInt("ro.config.vc_call_vol_steps", iArr[0]);
        sSoundEffectVolumeDb = context.getResources().getInteger(17694724);
        this.mVolumePanel = new VolumePanel(context, this);
        this.mForcedUseForComm = 0;
        createAudioSystemThread();
        this.mMediaFocusControl = new MediaFocusControl(this.mAudioHandler.getLooper(), context, this.mVolumePanel, this);
        AudioSystem.setErrorCallback(errorCallback);
        boolean z2 = context.getResources().getBoolean(17891410);
        this.mCameraSoundForced = new Boolean(z2);
        sendMsg(this.mAudioHandler, 8, 2, 4, z2 ? 11 : 0, null, 0);
        this.mSafeMediaVolumeState = new Integer(Settings.Global.getInt(contentResolver, Settings.Global.AUDIO_SAFE_VOLUME_STATE, 0));
        this.mSafeMediaVolumeIndex = context.getResources().getInteger(17694788) * 10;
        this.mUseFixedVolume = context.getResources().getBoolean(17891414);
        updateStreamVolumeAlias(false);
        readPersistedSettings();
        this.mSettingsObserver = new SettingsObserver();
        createStreamStates();
        readAndSetLowRamDevice();
        this.mRingerModeMutedStreams = 0;
        setRingerModeInt(getRingerMode(), false);
        IntentFilter intentFilter = new IntentFilter(BluetoothHeadset.ACTION_AUDIO_STATE_CHANGED);
        intentFilter.addAction(BluetoothHeadset.ACTION_CONNECTION_STATE_CHANGED);
        intentFilter.addAction(Intent.ACTION_DOCK_EVENT);
        intentFilter.addAction(Intent.ACTION_USB_AUDIO_ACCESSORY_PLUG);
        intentFilter.addAction(Intent.ACTION_USB_AUDIO_DEVICE_PLUG);
        intentFilter.addAction(Intent.ACTION_BOOT_COMPLETED);
        intentFilter.addAction(Intent.ACTION_SCREEN_ON);
        intentFilter.addAction(Intent.ACTION_SCREEN_OFF);
        intentFilter.addAction(Intent.ACTION_USER_SWITCHED);
        intentFilter.addAction(Intent.ACTION_CONFIGURATION_CHANGED);
        boolean z3 = SystemProperties.getBoolean("ro.audio.monitorOrientation", false);
        this.mMonitorOrientation = z3;
        if (z3) {
            Log.v(TAG, "monitoring device orientation");
            setOrientationForAudioSystem();
        }
        boolean z4 = SystemProperties.getBoolean("ro.audio.monitorRotation", false);
        this.mMonitorRotation = z4;
        if (z4) {
            this.mDeviceRotation = ((WindowManager) context.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay().getRotation();
            Log.v(TAG, "monitoring device rotation, initial=" + this.mDeviceRotation);
            setRotationForAudioSystem();
        }
        context.registerReceiver(audioServiceBroadcastReceiver, intentFilter);
        this.mUseMasterVolume = context.getResources().getBoolean(17891344);
        restoreMasterVolume();
        this.mMasterVolumeRamp = context.getResources().getIntArray(17235978);
    }

    private void broadcastMasterMuteStatus(boolean z2) {
        Intent intent = new Intent(AudioManager.MASTER_MUTE_CHANGED_ACTION);
        intent.putExtra(AudioManager.EXTRA_MASTER_VOLUME_MUTED, z2);
        intent.addFlags(603979776);
        sendStickyBroadcastToAll(intent);
    }

    private void broadcastRingerMode(int i2) {
        Intent intent = new Intent(AudioManager.RINGER_MODE_CHANGED_ACTION);
        intent.putExtra(AudioManager.EXTRA_RINGER_MODE, i2);
        intent.addFlags(603979776);
        sendStickyBroadcastToAll(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void broadcastScoConnectionState(int i2) {
        sendMsg(this.mAudioHandler, 19, 2, i2, 0, null, 0);
    }

    private void broadcastVibrateSetting(int i2) {
        if (ActivityManagerNative.isSystemReady()) {
            Intent intent = new Intent(AudioManager.VIBRATE_SETTING_CHANGED_ACTION);
            intent.putExtra(AudioManager.EXTRA_VIBRATE_TYPE, i2);
            intent.putExtra(AudioManager.EXTRA_VIBRATE_SETTING, getVibrateSetting(i2));
            sendBroadcastToAll(intent);
        }
    }

    private void cancelA2dpDeviceTimeout() {
        this.mAudioHandler.removeMessages(6);
    }

    private void checkAllAliasStreamVolumes() {
        int numStreamTypes = AudioSystem.getNumStreamTypes();
        for (int i2 = 0; i2 < numStreamTypes; i2++) {
            int[] iArr = this.mStreamVolumeAlias;
            if (i2 != iArr[i2]) {
                VolumeStreamState[] volumeStreamStateArr = this.mStreamStates;
                volumeStreamStateArr[i2].setAllIndexes(volumeStreamStateArr[iArr[i2]]);
            }
            if (!this.mStreamStates[i2].isMuted()) {
                this.mStreamStates[i2].applyAllVolumes();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0050  */
    private boolean checkForRingerModeChange(int i2, int i3, int i4) {
        int ringerMode = getRingerMode();
        boolean z2 = false;
        if (ringerMode != 0) {
            if (ringerMode != 1) {
                if (ringerMode != 2) {
                    Log.e(TAG, "checkForRingerModeChange() wrong ringer mode: " + ringerMode);
                } else if (i3 == -1) {
                    if (this.mHasVibrator) {
                        if (i4 <= i2 && i2 < i4 * 2) {
                            ringerMode = 1;
                            z2 = true;
                        }
                    } else if (i2 < i4 && this.mPrevVolDirection != -1) {
                        ringerMode = 0;
                    }
                }
                z2 = true;
            } else if (!this.mHasVibrator) {
                Log.e(TAG, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present");
                z2 = true;
            } else if (i3 == -1) {
                if (this.mPrevVolDirection != -1) {
                    ringerMode = 0;
                }
            } else if (i3 == 1) {
                ringerMode = 2;
            }
        } else if (i3 == 1) {
            if (this.mHasVibrator) {
                ringerMode = 1;
            } else {
                ringerMode = 2;
            }
        }
        setRingerMode(ringerMode);
        this.mPrevVolDirection = i3;
        return z2;
    }

    private boolean checkSafeMediaVolume(int i2, int i3, int i4) {
        synchronized (this.mSafeMediaVolumeState) {
            return this.mSafeMediaVolumeState.intValue() != 3 || this.mStreamVolumeAlias[i2] != 3 || (i4 & 12) == 0 || i3 <= this.mSafeMediaVolumeIndex;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkScoAudioState() {
        BluetoothDevice bluetoothDevice;
        BluetoothHeadset bluetoothHeadset = this.mBluetoothHeadset;
        if (bluetoothHeadset == null || (bluetoothDevice = this.mBluetoothHeadsetDevice) == null || this.mScoAudioState != 0 || bluetoothHeadset.getAudioState(bluetoothDevice) == 10) {
            return;
        }
        this.mScoAudioState = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int checkSendBecomingNoisyIntent(int i2, int i3) {
        int i4 = 0;
        if (i3 == 0 && (this.mBecomingNoisyIntentDevices & i2) != 0) {
            Iterator<Integer> it = this.mConnectedDevices.keySet().iterator();
            int i5 = 0;
            while (it.hasNext()) {
                int iIntValue = it.next().intValue();
                if ((this.mBecomingNoisyIntentDevices & iIntValue) != 0) {
                    i5 |= iIntValue;
                }
            }
            if (i5 == i2) {
                sendMsg(this.mAudioHandler, 15, 0, 0, 0, null, 0);
                i4 = 1000;
            }
        }
        if (this.mAudioHandler.hasMessages(101) || this.mAudioHandler.hasMessages(100)) {
            return 1000;
        }
        return i4;
    }

    private void createAudioSystemThread() {
        AudioSystemThread audioSystemThread = new AudioSystemThread();
        this.mAudioSystemThread = audioSystemThread;
        audioSystemThread.start();
        waitForAudioHandlerCreation();
    }

    private void createStreamStates() {
        int numStreamTypes = AudioSystem.getNumStreamTypes();
        VolumeStreamState[] volumeStreamStateArr = new VolumeStreamState[numStreamTypes];
        this.mStreamStates = volumeStreamStateArr;
        for (int i2 = 0; i2 < numStreamTypes; i2++) {
            volumeStreamStateArr[i2] = new VolumeStreamState(Settings.System.VOLUME_SETTINGS[this.mStreamVolumeAlias[i2]], i2);
        }
        checkAllAliasStreamVolumes();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disconnectBluetoothSco(int i2) {
        synchronized (this.mScoClients) {
            checkScoAudioState();
            int i3 = this.mScoAudioState;
            if (i3 == 2 || i3 == 4) {
                BluetoothDevice bluetoothDevice = this.mBluetoothHeadsetDevice;
                if (bluetoothDevice != null) {
                    BluetoothHeadset bluetoothHeadset = this.mBluetoothHeadset;
                    if (bluetoothHeadset != null) {
                        if (!bluetoothHeadset.stopVoiceRecognition(bluetoothDevice)) {
                            sendMsg(this.mAudioHandler, 9, 0, 0, 0, null, 0);
                        }
                    } else if (i3 == 2 && getBluetoothHeadset()) {
                        this.mScoAudioState = 4;
                    }
                }
            } else {
                clearAllScoClients(i2, true);
            }
        }
    }

    private void doSetMasterVolume(float f2, int i2) {
        if (AudioSystem.getMasterMute()) {
            return;
        }
        int masterVolume = getMasterVolume();
        AudioSystem.setMasterVolume(f2);
        int masterVolume2 = getMasterVolume();
        if (masterVolume2 != masterVolume) {
            sendMsg(this.mAudioHandler, 2, 0, Math.round(f2 * 1000.0f), 0, null, 500);
        }
        sendMasterVolumeUpdate(i2, masterVolume, masterVolume2);
    }

    private void dumpRingerMode(PrintWriter printWriter) {
        printWriter.println("\nRinger mode: ");
        printWriter.println("- mode: " + RINGER_MODE_NAMES[this.mRingerMode]);
        printWriter.print("- ringer mode affected streams = 0x");
        printWriter.println(Integer.toHexString(this.mRingerModeAffectedStreams));
        printWriter.print("- ringer mode muted streams = 0x");
        printWriter.println(Integer.toHexString(this.mRingerModeMutedStreams));
    }

    private void dumpStreamStates(PrintWriter printWriter) {
        printWriter.println("\nStream volumes (device: index)");
        int numStreamTypes = AudioSystem.getNumStreamTypes();
        for (int i2 = 0; i2 < numStreamTypes; i2++) {
            printWriter.println("- " + this.STREAM_NAMES[i2] + ":");
            this.mStreamStates[i2].dump(printWriter);
            printWriter.println(ProxyProperties.LOCAL_EXCL_LIST);
        }
        printWriter.print("\n- mute affected streams = 0x");
        printWriter.println(Integer.toHexString(this.mMuteAffectedStreams));
    }

    private void enforceSafeMediaVolume() {
        VolumeStreamState volumeStreamState = this.mStreamStates[3];
        int i2 = 12;
        int i3 = 0;
        while (i2 != 0) {
            int i4 = i3 + 1;
            int i5 = 1 << i3;
            if ((i5 & i2) != 0) {
                int index = volumeStreamState.getIndex(i5);
                int i6 = this.mSafeMediaVolumeIndex;
                if (index > i6) {
                    volumeStreamState.setIndex(i6, i5);
                    sendMsg(this.mAudioHandler, 0, 2, i5, 0, volumeStreamState, 0);
                }
                i2 &= ~i5;
            }
            i3 = i4;
        }
    }

    private void ensureValidDirection(int i2) {
        if (i2 < -1 || i2 > 1) {
            throw new IllegalArgumentException("Bad direction " + i2);
        }
    }

    private void ensureValidRingerMode(int i2) {
        if (AudioManager.isValidRingerMode(i2)) {
            return;
        }
        throw new IllegalArgumentException("Bad ringer mode " + i2);
    }

    private void ensureValidSteps(int i2) {
        if (Math.abs(i2) <= 4) {
            return;
        }
        throw new IllegalArgumentException("Bad volume adjust steps " + i2);
    }

    private void ensureValidStreamType(int i2) {
        if (i2 < 0 || i2 >= this.mStreamStates.length) {
            throw new IllegalArgumentException("Bad stream type " + i2);
        }
    }

    private int findVolumeDelta(int i2, int i3) {
        int i4;
        if (i2 == 1) {
            if (i3 == 100) {
                return 0;
            }
            int[] iArr = this.mMasterVolumeRamp;
            int i5 = iArr[1];
            for (int length = iArr.length - 1; length > 1; length -= 2) {
                int[] iArr2 = this.mMasterVolumeRamp;
                if (i3 >= iArr2[length - 1]) {
                    i4 = iArr2[length];
                }
            }
            return i5;
        }
        if (i2 != -1 || i3 == 0) {
            return 0;
        }
        int[] iArr3 = this.mMasterVolumeRamp;
        int length2 = iArr3.length;
        i4 = -iArr3[length2 - 1];
        for (int i6 = 2; i6 < length2; i6 += 2) {
            int[] iArr4 = this.mMasterVolumeRamp;
            if (i3 <= iArr4[i6]) {
                return -iArr4[i6 - 1];
            }
        }
        return i4;
    }

    private int getActiveStreamType(int i2) {
        if (this.mVoiceCapable) {
            if (isInCommunication()) {
                return AudioSystem.getForceUse(0) == 3 ? 6 : 0;
            }
            if (i2 != Integer.MIN_VALUE) {
                if (isAfMusicActiveRecently(0)) {
                    return 3;
                }
                return i2;
            }
            if (isAfMusicActiveRecently(5000)) {
                return 3;
            }
            if (this.mMediaFocusControl.checkUpdateRemoteStateIfActive(3)) {
                return STREAM_REMOTE_MUSIC;
            }
            return 2;
        }
        if (isInCommunication()) {
            return AudioSystem.getForceUse(0) == 3 ? 6 : 0;
        }
        if (AudioSystem.isStreamActive(5, 5000) || AudioSystem.isStreamActive(2, 5000)) {
            return 5;
        }
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (!isAfMusicActiveRecently(5000) && this.mMediaFocusControl.checkUpdateRemoteStateIfActive(3)) {
            return STREAM_REMOTE_MUSIC;
        }
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getBluetoothHeadset() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        boolean profileProxy = defaultAdapter != null ? defaultAdapter.getProfileProxy(this.mContext, this.mBluetoothProfileServiceListener, 1) : false;
        sendMsg(this.mAudioHandler, 9, 0, 0, 0, null, profileProxy ? 3000 : 0);
        return profileProxy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDeviceForStream(int i2) {
        int devicesForStream = AudioSystem.getDevicesForStream(i2);
        if (((devicesForStream - 1) & devicesForStream) == 0) {
            return devicesForStream;
        }
        if ((devicesForStream & 2) != 0) {
            return 2;
        }
        return devicesForStream & AudioSystem.DEVICE_OUT_ALL_A2DP;
    }

    public static int getMaxStreamVolume(int i2) {
        return MAX_STREAM_VOLUME[i2];
    }

    private ScoClient getScoClient(IBinder iBinder, boolean z2) {
        synchronized (this.mScoClients) {
            ScoClient scoClient = null;
            int size = this.mScoClients.size();
            for (int i2 = 0; i2 < size; i2++) {
                scoClient = this.mScoClients.get(i2);
                if (scoClient.getBinder() == iBinder) {
                    return scoClient;
                }
            }
            if (z2) {
                scoClient = new ScoClient(iBinder);
                this.mScoClients.add(scoClient);
            }
            return scoClient;
        }
    }

    public static int getValueForVibrateSetting(int i2, int i3, int i4) {
        int i5 = i3 * 2;
        return (i2 & (~(3 << i5))) | ((i4 & 3) << i5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleConfigurationChanged(Context context) {
        int rotation;
        int i2;
        try {
            Configuration configuration = context.getResources().getConfiguration();
            if (this.mMonitorOrientation && (i2 = configuration.orientation) != this.mDeviceOrientation) {
                this.mDeviceOrientation = i2;
                setOrientationForAudioSystem();
            }
            if (this.mMonitorRotation && (rotation = ((WindowManager) context.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay().getRotation()) != this.mDeviceRotation) {
                this.mDeviceRotation = rotation;
                setRotationForAudioSystem();
            }
            sendMsg(this.mAudioHandler, 16, 0, 0, 0, null, 0);
            boolean z2 = this.mContext.getResources().getBoolean(17891410);
            synchronized (this.mSettingsLock) {
                synchronized (this.mCameraSoundForced) {
                    if (z2 != this.mCameraSoundForced.booleanValue()) {
                        this.mCameraSoundForced = Boolean.valueOf(z2);
                        VolumeStreamState[] volumeStreamStateArr = this.mStreamStates;
                        VolumeStreamState volumeStreamState = volumeStreamStateArr[7];
                        if (z2) {
                            volumeStreamState.setAllIndexesToMax();
                            this.mRingerModeAffectedStreams &= -129;
                        } else {
                            volumeStreamState.setAllIndexes(volumeStreamStateArr[1]);
                            this.mRingerModeAffectedStreams |= 128;
                        }
                        setRingerModeInt(getRingerMode(), false);
                        sendMsg(this.mAudioHandler, 8, 2, 4, z2 ? 11 : 0, null, 0);
                        sendMsg(this.mAudioHandler, 10, 2, 0, 0, this.mStreamStates[7], 0);
                    }
                }
            }
            this.mVolumePanel.setLayoutDirection(configuration.getLayoutDirection());
        } catch (Exception e2) {
            Log.e(TAG, "Error handling configuration change: ", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleDeviceConnection(boolean z2, int i2, String str) {
        synchronized (this.mConnectedDevices) {
            boolean z3 = this.mConnectedDevices.containsKey(Integer.valueOf(i2)) && (str.isEmpty() || this.mConnectedDevices.get(Integer.valueOf(i2)).equals(str));
            if (z3 && !z2) {
                AudioSystem.setDeviceConnectionState(i2, 0, this.mConnectedDevices.get(Integer.valueOf(i2)));
                this.mConnectedDevices.remove(Integer.valueOf(i2));
                return true;
            }
            if (z3 || !z2) {
                return false;
            }
            AudioSystem.setDeviceConnectionState(i2, 1, str);
            this.mConnectedDevices.put(new Integer(i2), str);
            return true;
        }
    }

    private boolean hasScheduledA2dpDockTimeout() {
        return this.mAudioHandler.hasMessages(6);
    }

    private boolean isAfMusicActiveRecently(int i2) {
        return AudioSystem.isStreamActive(3, i2) || AudioSystem.isStreamActiveRemotely(3, i2);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001e  */
    private boolean isInCommunication() {
        boolean zQ;
        if (this.mVoiceCapable) {
            try {
                d dVarJ2 = d.a.J2(ServiceManager.checkService("phone"));
                if (dVarJ2 != null) {
                    zQ = dVarJ2.q();
                } else {
                    zQ = false;
                }
            } catch (RemoteException e2) {
                Log.w(TAG, "Couldn't connect to phone service", e2);
            }
        } else {
            zQ = false;
        }
        return zQ || getMode() == 3;
    }

    private boolean isStreamMutedByRingerMode(int i2) {
        return ((1 << i2) & this.mRingerModeMutedStreams) != 0;
    }

    private void loadTouchSoundAssetDefaults() {
        SOUND_EFFECT_FILES.add("Effect_Tick.ogg");
        for (int i2 = 0; i2 < 10; i2++) {
            int[][] iArr = this.SOUND_EFFECT_FILES_MAP;
            iArr[i2][0] = 0;
            iArr[i2][1] = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:58:0x00de  */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x00db: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:56:0x00db */
    public void loadTouchSoundAssets() throws Throwable {
        XmlResourceParser xml;
        XmlPullParserException e2;
        IOException e3;
        Resources.NotFoundException e4;
        XmlResourceParser xmlResourceParser;
        boolean z2;
        if (SOUND_EFFECT_FILES.isEmpty()) {
            loadTouchSoundAssetDefaults();
            XmlResourceParser xmlResourceParser2 = null;
            try {
                try {
                    xml = this.mContext.getResources().getXml(17760257);
                    try {
                        n.a(xml, TAG_AUDIO_ASSETS);
                        if (ASSET_FILE_VERSION.equals(xml.getAttributeValue(null, "version"))) {
                            while (true) {
                                n.f(xml);
                                String name = xml.getName();
                                if (name != null) {
                                    if (name.equals("group") && GROUP_TOUCH_SOUNDS.equals(xml.getAttributeValue(null, "name"))) {
                                        z2 = true;
                                        break;
                                    }
                                } else {
                                    z2 = false;
                                    break;
                                }
                            }
                            while (z2) {
                                n.f(xml);
                                String name2 = xml.getName();
                                if (name2 == null || !name2.equals(TAG_ASSET)) {
                                    break;
                                    break;
                                }
                                String attributeValue = xml.getAttributeValue(null, "id");
                                String attributeValue2 = xml.getAttributeValue(null, "file");
                                try {
                                    int i2 = AudioManager.class.getField(attributeValue).getInt(null);
                                    List<String> list = SOUND_EFFECT_FILES;
                                    int iIndexOf = list.indexOf(attributeValue2);
                                    if (iIndexOf == -1) {
                                        iIndexOf = list.size();
                                        list.add(attributeValue2);
                                    }
                                    this.SOUND_EFFECT_FILES_MAP[i2][0] = iIndexOf;
                                } catch (Exception unused) {
                                    Log.w(TAG, "Invalid touch sound ID: " + attributeValue);
                                }
                            }
                        }
                    } catch (Resources.NotFoundException e5) {
                        e4 = e5;
                        Log.w(TAG, "audio assets file not found", e4);
                        if (xml == null) {
                            return;
                        }
                    } catch (IOException e6) {
                        e3 = e6;
                        Log.w(TAG, "I/O exception reading touch sound assets", e3);
                        if (xml == null) {
                            return;
                        }
                    } catch (XmlPullParserException e7) {
                        e2 = e7;
                        Log.w(TAG, "XML parser exception reading touch sound assets", e2);
                        if (xml == null) {
                            return;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    xmlResourceParser2 = xmlResourceParser;
                    if (xmlResourceParser2 != null) {
                        xmlResourceParser2.close();
                    }
                    throw th;
                }
            } catch (Resources.NotFoundException e8) {
                xml = null;
                e4 = e8;
            } catch (IOException e9) {
                xml = null;
                e3 = e9;
            } catch (XmlPullParserException e10) {
                xml = null;
                e2 = e10;
            } catch (Throwable th2) {
                th = th2;
                if (xmlResourceParser2 != null) {
                    xmlResourceParser2.close();
                }
                throw th;
            }
            xml.close();
        }
    }

    private void makeA2dpDeviceAvailable(String str) {
        sendMsg(this.mAudioHandler, 0, 2, 128, 0, this.mStreamStates[3], 0);
        setBluetoothA2dpOnInt(true);
        AudioSystem.setDeviceConnectionState(128, 1, str);
        AudioSystem.setParameters("A2dpSuspended=false");
        this.mConnectedDevices.put(new Integer(128), str);
    }

    private void makeA2dpDeviceUnavailableLater(String str) {
        AudioSystem.setParameters("A2dpSuspended=true");
        this.mConnectedDevices.remove(128);
        this.mAudioHandler.sendMessageDelayed(this.mAudioHandler.obtainMessage(6, str), 8000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void makeA2dpDeviceUnavailableNow(String str) {
        synchronized (this.mA2dpAvrcpLock) {
            this.mAvrcpAbsVolSupported = false;
        }
        AudioSystem.setDeviceConnectionState(128, 0, str);
        this.mConnectedDevices.remove(128);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBroadcastScoConnectionState(int i2) {
        if (i2 != this.mScoConnectionState) {
            Intent intent = new Intent(AudioManager.ACTION_SCO_AUDIO_STATE_UPDATED);
            intent.putExtra(AudioManager.EXTRA_SCO_AUDIO_STATE, i2);
            intent.putExtra(AudioManager.EXTRA_SCO_AUDIO_PREVIOUS_STATE, this.mScoConnectionState);
            sendStickyBroadcastToAll(intent);
            this.mScoConnectionState = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCheckMusicActive() {
        synchronized (this.mSafeMediaVolumeState) {
            if (this.mSafeMediaVolumeState.intValue() == 2) {
                int deviceForStream = getDeviceForStream(3);
                if ((deviceForStream & 12) != 0) {
                    sendMsg(this.mAudioHandler, 14, 0, 0, 0, null, 60000);
                    int index = this.mStreamStates[3].getIndex(deviceForStream);
                    if (AudioSystem.isStreamActive(3, 0) && index > this.mSafeMediaVolumeIndex) {
                        int i2 = this.mMusicActiveMs + 60000;
                        this.mMusicActiveMs = i2;
                        if (i2 > UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX) {
                            setSafeMediaVolumeEnabled(true);
                            this.mMusicActiveMs = 0;
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onConfigureSafeVolume(boolean z2) {
        int i2;
        synchronized (this.mSafeMediaVolumeState) {
            int i3 = this.mContext.getResources().getConfiguration().mcc;
            int i4 = this.mMcc;
            if (i4 != i3 || (i4 == 0 && z2)) {
                this.mSafeMediaVolumeIndex = this.mContext.getResources().getInteger(17694788) * 10;
                if (this.mContext.getResources().getBoolean(17891408)) {
                    if (this.mSafeMediaVolumeState.intValue() != 2) {
                        this.mSafeMediaVolumeState = 3;
                        enforceSafeMediaVolume();
                    }
                    i2 = 3;
                } else {
                    this.mSafeMediaVolumeState = 1;
                    i2 = 1;
                }
                this.mMcc = i3;
                sendMsg(this.mAudioHandler, 18, 2, i2, 0, null, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSendBecomingNoisyIntent() {
        sendBroadcastToAll(new Intent(AudioManager.ACTION_AUDIO_BECOMING_NOISY));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSetA2dpConnectionState(BluetoothDevice bluetoothDevice, int i2) {
        if (bluetoothDevice == null) {
            return;
        }
        String address = bluetoothDevice.getAddress();
        if (!BluetoothAdapter.checkBluetoothAddress(address)) {
            address = ProxyProperties.LOCAL_EXCL_LIST;
        }
        synchronized (this.mConnectedDevices) {
            boolean z2 = this.mConnectedDevices.containsKey(128) && this.mConnectedDevices.get(128).equals(address);
            if (z2 && i2 != 2) {
                if (!bluetoothDevice.isBluetoothDock()) {
                    makeA2dpDeviceUnavailableNow(address);
                } else if (i2 == 0) {
                    makeA2dpDeviceUnavailableLater(address);
                }
                synchronized (this.mCurAudioRoutes) {
                    AudioRoutesInfo audioRoutesInfo = this.mCurAudioRoutes;
                    if (audioRoutesInfo.mBluetoothName != null) {
                        audioRoutesInfo.mBluetoothName = null;
                        sendMsg(this.mAudioHandler, 12, 1, 0, 0, null, 0);
                    }
                }
            } else if (!z2 && i2 == 2) {
                if (bluetoothDevice.isBluetoothDock()) {
                    cancelA2dpDeviceTimeout();
                    this.mDockAddress = address;
                } else if (hasScheduledA2dpDockTimeout()) {
                    cancelA2dpDeviceTimeout();
                    makeA2dpDeviceUnavailableNow(this.mDockAddress);
                }
                makeA2dpDeviceAvailable(address);
                synchronized (this.mCurAudioRoutes) {
                    String aliasName = bluetoothDevice.getAliasName();
                    if (!TextUtils.equals(this.mCurAudioRoutes.mBluetoothName, aliasName)) {
                        this.mCurAudioRoutes.mBluetoothName = aliasName;
                        sendMsg(this.mAudioHandler, 12, 1, 0, 0, null, 0);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v3, types: [boolean] */
    private void onSetStreamVolume(int i2, int i3, int i4, int i5) {
        setStreamVolumeInt(this.mStreamVolumeAlias[i2], i3, i5, false);
        if ((i4 & 2) != 0 || this.mStreamVolumeAlias[i2] == getMasterStreamType()) {
            setRingerMode(i3 == 0 ? this.mHasVibrator : 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSetWiredDeviceConnectionState(int i2, int i3, String str) {
        synchronized (this.mConnectedDevices) {
            boolean z2 = true;
            if (i3 == 0 && (i2 == 4 || i2 == 8)) {
                try {
                    setBluetoothA2dpOnInt(true);
                } catch (Throwable th) {
                    throw th;
                }
            }
            boolean z3 = (i2 & AudioSystem.DEVICE_OUT_ALL_USB) != 0;
            if (i3 != 1) {
                z2 = false;
            }
            handleDeviceConnection(z2, i2, z3 ? str : ProxyProperties.LOCAL_EXCL_LIST);
            if (i3 != 0) {
                if (i2 == 4 || i2 == 8) {
                    setBluetoothA2dpOnInt(false);
                }
                if ((i2 & 12) != 0) {
                    sendMsg(this.mAudioHandler, 14, 0, 0, 0, null, 60000);
                }
            }
            if (!z3) {
                sendDeviceConnectionIntent(i2, i3, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queueMsgUnderWakeLock(Handler handler, int i2, int i3, int i4, Object obj, int i5) {
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        this.mAudioEventWakeLock.acquire();
        Binder.restoreCallingIdentity(jClearCallingIdentity);
        sendMsg(handler, i2, 2, i3, i4, obj, i5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void readAndSetLowRamDevice() {
        int lowRamDevice = AudioSystem.setLowRamDevice(ActivityManager.isLowRamDeviceStatic());
        if (lowRamDevice != 0) {
            Log.w(TAG, "AudioFlinger informed of device's low RAM attribute; status " + lowRamDevice);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readAudioSettings(boolean z2) {
        readPersistedSettings();
        int numStreamTypes = AudioSystem.getNumStreamTypes();
        for (int i2 = 0; i2 < numStreamTypes; i2++) {
            VolumeStreamState volumeStreamState = this.mStreamStates[i2];
            if (!z2 || this.mStreamVolumeAlias[i2] != 3) {
                synchronized (volumeStreamState) {
                    volumeStreamState.readSettings();
                    if (volumeStreamState.isMuted() && ((!isStreamAffectedByMute(i2) && !isStreamMutedByRingerMode(i2)) || this.mUseFixedVolume)) {
                        int size = volumeStreamState.mDeathHandlers.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            ((VolumeStreamState.VolumeDeathHandler) volumeStreamState.mDeathHandlers.get(i3)).mMuteCount = 1;
                            ((VolumeStreamState.VolumeDeathHandler) volumeStreamState.mDeathHandlers.get(i3)).mute(false);
                        }
                    }
                }
            }
        }
        setRingerModeInt(getRingerMode(), false);
        checkAllAliasStreamVolumes();
        synchronized (this.mSafeMediaVolumeState) {
            if (this.mSafeMediaVolumeState.intValue() == 3) {
                enforceSafeMediaVolume();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readDockAudioSettings(ContentResolver contentResolver) {
        boolean z2 = Settings.Global.getInt(contentResolver, Settings.Global.DOCK_AUDIO_MEDIA_ENABLED, 0) == 1;
        this.mDockAudioMediaEnabled = z2;
        if (z2) {
            this.mBecomingNoisyIntentDevices |= 2048;
        } else {
            this.mBecomingNoisyIntentDevices &= -2049;
        }
        sendMsg(this.mAudioHandler, 8, 2, 3, z2 ? 8 : 0, null, 0);
    }

    private void readPersistedSettings() {
        ContentResolver contentResolver = this.mContentResolver;
        int i2 = 2;
        int i3 = Settings.Global.getInt(contentResolver, "mode_ringer", 2);
        int i4 = !AudioManager.isValidRingerMode(i3) ? 2 : i3;
        if (i4 == 1 && !this.mHasVibrator) {
            i4 = 0;
        }
        if (i4 != i3) {
            Settings.Global.putInt(contentResolver, "mode_ringer", i4);
        }
        if (this.mUseFixedVolume) {
            i4 = 2;
        }
        synchronized (this.mSettingsLock) {
            this.mRingerMode = i4;
            int valueForVibrateSetting = getValueForVibrateSetting(0, 1, this.mHasVibrator ? 2 : 0);
            this.mVibrateSetting = valueForVibrateSetting;
            if (!this.mHasVibrator) {
                i2 = 0;
            }
            this.mVibrateSetting = getValueForVibrateSetting(valueForVibrateSetting, 0, i2);
            updateRingerModeAffectedStreams();
            readDockAudioSettings(contentResolver);
        }
        this.mMuteAffectedStreams = Settings.System.getIntForUser(contentResolver, Settings.System.MUTE_STREAMS_AFFECTED, 14, -2);
        boolean z2 = Settings.System.getIntForUser(contentResolver, Settings.System.VOLUME_MASTER_MUTE, 0, -2) == 1;
        if (this.mUseFixedVolume) {
            AudioSystem.setMasterVolume(1.0f);
            z2 = false;
        }
        AudioSystem.setMasterMute(z2);
        broadcastMasterMuteStatus(z2);
        broadcastRingerMode(i4);
        broadcastVibrateSetting(0);
        broadcastVibrateSetting(1);
        this.mMediaFocusControl.restoreMediaButtonReceiver();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int rescaleIndex(int i2, int i3, int i4) {
        return ((i2 * this.mStreamStates[i4].getMaxIndex()) + (this.mStreamStates[i3].getMaxIndex() / 2)) / this.mStreamStates[i3].getMaxIndex();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetBluetoothSco() {
        synchronized (this.mScoClients) {
            clearAllScoClients(0, false);
            this.mScoAudioState = 0;
            broadcastScoConnectionState(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreMasterVolume() {
        if (this.mUseFixedVolume) {
            AudioSystem.setMasterVolume(1.0f);
        } else if (this.mUseMasterVolume) {
            float floatForUser = Settings.System.getFloatForUser(this.mContentResolver, Settings.System.VOLUME_MASTER, -1.0f, -2);
            if (floatForUser >= 0.0f) {
                AudioSystem.setMasterVolume(floatForUser);
            }
        }
    }

    private void sendBroadcastToAll(Intent intent) {
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    private void sendDeviceConnectionIntent(int i2, int i3, String str) {
        Intent intent = new Intent();
        intent.putExtra("state", i3);
        intent.putExtra("name", str);
        intent.addFlags(1073741824);
        int i4 = 1;
        if (i2 == 4) {
            intent.setAction(Intent.ACTION_HEADSET_PLUG);
            intent.putExtra("microphone", 1);
        } else if (i2 == 8) {
            i4 = 2;
            intent.setAction(Intent.ACTION_HEADSET_PLUG);
            intent.putExtra("microphone", 0);
        } else {
            if (i2 == 2048) {
                intent.setAction(Intent.ACTION_ANALOG_AUDIO_DOCK_PLUG);
            } else if (i2 == 4096) {
                intent.setAction(Intent.ACTION_DIGITAL_AUDIO_DOCK_PLUG);
            } else if (i2 == 1024) {
                intent.setAction(Intent.ACTION_HDMI_AUDIO_PLUG);
                i4 = 8;
            } else {
                i4 = 0;
            }
            i4 = 4;
        }
        synchronized (this.mCurAudioRoutes) {
            if (i4 != 0) {
                AudioRoutesInfo audioRoutesInfo = this.mCurAudioRoutes;
                int i5 = audioRoutesInfo.mMainType;
                int i6 = i3 != 0 ? i5 | i4 : (~i4) & i5;
                if (i6 != i5) {
                    audioRoutesInfo.mMainType = i6;
                    sendMsg(this.mAudioHandler, 12, 1, 0, 0, null, 0);
                }
            }
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            ActivityManagerNative.broadcastStickyIntent(intent, null, -1);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    private void sendMasterMuteUpdate(boolean z2, int i2) {
        this.mVolumePanel.postMasterMuteChanged(i2);
        broadcastMasterMuteStatus(z2);
    }

    private void sendMasterVolumeUpdate(int i2, int i3, int i4) {
        this.mVolumePanel.postMasterVolumeChanged(i2);
        Intent intent = new Intent(AudioManager.MASTER_VOLUME_CHANGED_ACTION);
        intent.putExtra(AudioManager.EXTRA_PREV_MASTER_VOLUME_VALUE, i3);
        intent.putExtra(AudioManager.EXTRA_MASTER_VOLUME_VALUE, i4);
        sendBroadcastToAll(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sendMsg(Handler handler, int i2, int i3, int i4, int i5, Object obj, int i6) {
        if (i3 == 0) {
            handler.removeMessages(i2);
        } else if (i3 == 1 && handler.hasMessages(i2)) {
            return;
        }
        handler.sendMessageDelayed(handler.obtainMessage(i2, i4, i5, obj), i6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendStickyBroadcastToAll(Intent intent) {
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    private void sendVolumeUpdate(int i2, int i3, int i4, int i5) {
        if (!this.mVoiceCapable && i2 == 2) {
            i2 = 5;
        }
        this.mVolumePanel.postVolumeChanged(i2, i5);
        if ((i5 & 32) == 0) {
            Intent intent = new Intent(AudioManager.VOLUME_CHANGED_ACTION);
            intent.putExtra(AudioManager.EXTRA_VOLUME_STREAM_TYPE, i2);
            intent.putExtra(AudioManager.EXTRA_VOLUME_STREAM_VALUE, (i4 + 5) / 10);
            intent.putExtra(AudioManager.EXTRA_PREV_VOLUME_STREAM_VALUE, (i3 + 5) / 10);
            sendBroadcastToAll(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOrientationForAudioSystem() {
        int i2 = this.mDeviceOrientation;
        if (i2 == 0) {
            AudioSystem.setParameters("orientation=undefined");
            return;
        }
        if (i2 == 1) {
            AudioSystem.setParameters("orientation=portrait");
            return;
        }
        if (i2 == 2) {
            AudioSystem.setParameters("orientation=landscape");
        } else if (i2 != 3) {
            Log.e(TAG, "Unknown orientation");
        } else {
            AudioSystem.setParameters("orientation=square");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRingerModeInt(int i2, boolean z2) {
        synchronized (this.mSettingsLock) {
            this.mRingerMode = i2;
        }
        for (int numStreamTypes = AudioSystem.getNumStreamTypes() - 1; numStreamTypes >= 0; numStreamTypes--) {
            if (isStreamMutedByRingerMode(numStreamTypes)) {
                if (!isStreamAffectedByRingerMode(numStreamTypes) || i2 == 2) {
                    if (this.mVoiceCapable && this.mStreamVolumeAlias[numStreamTypes] == 2) {
                        synchronized (this.mStreamStates[numStreamTypes]) {
                            for (Map.Entry entry : this.mStreamStates[numStreamTypes].mIndex.entrySet()) {
                                if (((Integer) entry.getValue()).intValue() == 0) {
                                    entry.setValue(10);
                                }
                            }
                        }
                    }
                    this.mStreamStates[numStreamTypes].mute(null, false);
                    this.mRingerModeMutedStreams &= ~(1 << numStreamTypes);
                }
            } else if (isStreamAffectedByRingerMode(numStreamTypes) && i2 != 2) {
                this.mStreamStates[numStreamTypes].mute(null, true);
                this.mRingerModeMutedStreams |= 1 << numStreamTypes;
            }
        }
        if (z2) {
            sendMsg(this.mAudioHandler, 3, 0, 0, 0, null, 500);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRotationForAudioSystem() {
        int i2 = this.mDeviceRotation;
        if (i2 == 0) {
            AudioSystem.setParameters("rotation=0");
            return;
        }
        if (i2 == 1) {
            AudioSystem.setParameters("rotation=90");
            return;
        }
        if (i2 == 2) {
            AudioSystem.setParameters("rotation=180");
        } else if (i2 != 3) {
            Log.e(TAG, "Unknown device rotation");
        } else {
            AudioSystem.setParameters("rotation=270");
        }
    }

    private void setSafeMediaVolumeEnabled(boolean z2) {
        synchronized (this.mSafeMediaVolumeState) {
            if (this.mSafeMediaVolumeState.intValue() != 0 && this.mSafeMediaVolumeState.intValue() != 1) {
                if (z2 && this.mSafeMediaVolumeState.intValue() == 2) {
                    this.mSafeMediaVolumeState = 3;
                    enforceSafeMediaVolume();
                } else if (!z2 && this.mSafeMediaVolumeState.intValue() == 3) {
                    this.mSafeMediaVolumeState = 2;
                    this.mMusicActiveMs = 0;
                    sendMsg(this.mAudioHandler, 14, 0, 0, 0, null, 60000);
                }
            }
        }
    }

    private void setStreamVolumeInt(int i2, int i3, int i4, boolean z2) {
        VolumeStreamState volumeStreamState = this.mStreamStates[i2];
        if (volumeStreamState.setIndex(i3, i4) || z2) {
            sendMsg(this.mAudioHandler, 0, 2, i4, 0, volumeStreamState, 0);
        }
    }

    private void updateStreamVolumeAlias(boolean z2) {
        if (this.mVoiceCapable) {
            this.mStreamVolumeAlias = this.STREAM_VOLUME_ALIAS;
        } else {
            this.mStreamVolumeAlias = this.STREAM_VOLUME_ALIAS;
        }
        int i2 = 2;
        if (isInCommunication()) {
            this.mRingerModeAffectedStreams &= -257;
            i2 = 0;
        } else {
            this.mRingerModeAffectedStreams |= 256;
        }
        this.mStreamVolumeAlias[8] = i2;
        if (z2) {
            VolumeStreamState[] volumeStreamStateArr = this.mStreamStates;
            volumeStreamStateArr[8].setAllIndexes(volumeStreamStateArr[i2]);
            setRingerModeInt(getRingerMode(), false);
            sendMsg(this.mAudioHandler, 10, 2, 0, 0, this.mStreamStates[8], 0);
        }
    }

    private void waitForAudioHandlerCreation() {
        synchronized (this) {
            while (this.mAudioHandler == null) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    Log.e(TAG, "Interrupted while waiting on volume handler.");
                }
            }
        }
    }

    @Override // android.media.IAudioService
    public int abandonAudioFocus(IAudioFocusDispatcher iAudioFocusDispatcher, String str) {
        return this.mMediaFocusControl.abandonAudioFocus(iAudioFocusDispatcher, str);
    }

    @Override // android.media.IAudioService
    public void adjustLocalOrRemoteStreamVolume(int i2, int i3, String str) {
        if (AudioSystem.isStreamActive(3, 0)) {
            adjustStreamVolume(3, i3, 0, str);
        } else if (this.mMediaFocusControl.checkUpdateRemoteStateIfActive(3)) {
            this.mMediaFocusControl.adjustRemoteVolume(3, i3, 0);
        }
    }

    @Override // android.media.IAudioService
    public void adjustMasterVolume(int i2, int i3, String str) {
        if (this.mUseFixedVolume) {
            return;
        }
        ensureValidSteps(i2);
        int iRound = Math.round(AudioSystem.getMasterVolume() * 100.0f);
        int iAbs = Math.abs(i2);
        int i4 = i2 > 0 ? 1 : -1;
        for (int i5 = 0; i5 < iAbs; i5++) {
            iRound += findVolumeDelta(i4, iRound);
        }
        setMasterVolume(iRound, i3, str);
    }

    @Override // android.media.IAudioService
    public void adjustStreamVolume(int i2, int i3, int i4, String str) {
        int iRescaleIndex;
        boolean zCheckForRingerModeChange;
        if (this.mUseFixedVolume) {
            return;
        }
        ensureValidDirection(i3);
        ensureValidStreamType(i2);
        int i5 = this.mStreamVolumeAlias[i2];
        VolumeStreamState volumeStreamState = this.mStreamStates[i5];
        int deviceForStream = getDeviceForStream(i5);
        int index = volumeStreamState.getIndex(deviceForStream);
        int i6 = deviceForStream & AudioSystem.DEVICE_OUT_ALL_A2DP;
        if ((i6 != 0 || (i4 & 64) == 0) && this.mAppOps.noteOp(STEAM_VOLUME_OPS[i5], Binder.getCallingUid(), str) == 0) {
            synchronized (this.mSafeMediaVolumeState) {
                this.mPendingVolumeCommand = null;
            }
            int i7 = i4 & (-33);
            if (i5 != 3 || (deviceForStream & 28672) == 0) {
                iRescaleIndex = rescaleIndex(10, i2, i5);
            } else {
                i7 |= 32;
                iRescaleIndex = (this.mSafeMediaVolumeState.intValue() != 3 || (deviceForStream & 12) == 0) ? volumeStreamState.getMaxIndex() : this.mSafeMediaVolumeIndex;
                if (index != 0) {
                    index = iRescaleIndex;
                }
            }
            if ((i7 & 2) != 0 || i5 == getMasterStreamType()) {
                if (getRingerMode() == 1) {
                    i7 &= -17;
                }
                zCheckForRingerModeChange = checkForRingerModeChange(index, i3, iRescaleIndex);
            } else {
                zCheckForRingerModeChange = true;
            }
            int index2 = this.mStreamStates[i2].getIndex(deviceForStream);
            if (zCheckForRingerModeChange && i3 != 0) {
                if (i5 == 3 && i6 != 0 && (i7 & 64) == 0) {
                    synchronized (this.mA2dpAvrcpLock) {
                        BluetoothA2dp bluetoothA2dp = this.mA2dp;
                        if (bluetoothA2dp != null && this.mAvrcpAbsVolSupported) {
                            bluetoothA2dp.adjustAvrcpAbsoluteVolume(i3);
                        }
                    }
                }
                if (i3 == 1 && !checkSafeMediaVolume(i5, index + iRescaleIndex, deviceForStream)) {
                    Log.e(TAG, "adjustStreamVolume() safe volume index = " + index2);
                    this.mVolumePanel.postDisplaySafeVolumeWarning(i7);
                } else if (volumeStreamState.adjustIndex(i3 * iRescaleIndex, deviceForStream)) {
                    sendMsg(this.mAudioHandler, 0, 2, deviceForStream, 0, volumeStreamState, 0);
                }
            }
            sendVolumeUpdate(i2, index2, this.mStreamStates[i2].getIndex(deviceForStream), i7);
        }
    }

    @Override // android.media.IAudioService
    public void adjustSuggestedStreamVolume(int i2, int i3, int i4, String str) {
        KeyguardManager keyguardManager;
        int activeStreamType = this.mVolumeControlStream;
        if (activeStreamType == -1) {
            activeStreamType = getActiveStreamType(i3);
        }
        if (activeStreamType != -200 && (i4 & 4) != 0 && (this.mStreamVolumeAlias[activeStreamType] != 2 || ((keyguardManager = this.mKeyguardManager) != null && keyguardManager.isKeyguardLocked()))) {
            i4 &= -5;
        }
        if (activeStreamType == -200) {
            this.mMediaFocusControl.adjustRemoteVolume(3, i2, i4 & (-37));
        } else {
            adjustStreamVolume(activeStreamType, i2, i4, str);
        }
    }

    @Override // android.media.IAudioService
    public void adjustVolume(int i2, int i3, String str) {
        adjustSuggestedStreamVolume(i2, Integer.MIN_VALUE, i3, str);
    }

    @Override // android.media.IAudioService
    public void avrcpSupportsAbsoluteVolume(String str, boolean z2) {
        synchronized (this.mA2dpAvrcpLock) {
            this.mAvrcpAbsVolSupported = z2;
            sendMsg(this.mAudioHandler, 0, 2, 128, 0, this.mStreamStates[3], 0);
            sendMsg(this.mAudioHandler, 0, 2, 128, 0, this.mStreamStates[2], 0);
        }
    }

    public boolean checkAudioSettingsPermission(String str) {
        if (this.mContext.checkCallingOrSelfPermission(Manifest.permission.MODIFY_AUDIO_SETTINGS) == 0) {
            return true;
        }
        Log.w(TAG, "Audio Settings Permission Denial: " + str + " from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
        return false;
    }

    public void clearAllScoClients(int i2, boolean z2) {
        synchronized (this.mScoClients) {
            ScoClient scoClient = null;
            int size = this.mScoClients.size();
            for (int i3 = 0; i3 < size; i3++) {
                ScoClient scoClient2 = this.mScoClients.get(i3);
                if (scoClient2.getPid() != i2) {
                    scoClient2.clearCount(z2);
                } else {
                    scoClient = scoClient2;
                }
            }
            this.mScoClients.clear();
            if (scoClient != null) {
                this.mScoClients.add(scoClient);
            }
        }
    }

    public void disableSafeMediaVolume() {
        synchronized (this.mSafeMediaVolumeState) {
            setSafeMediaVolumeEnabled(false);
            StreamVolumeCommand streamVolumeCommand = this.mPendingVolumeCommand;
            if (streamVolumeCommand != null) {
                onSetStreamVolume(streamVolumeCommand.mStreamType, streamVolumeCommand.mIndex, streamVolumeCommand.mFlags, streamVolumeCommand.mDevice);
                this.mPendingVolumeCommand = null;
            }
        }
    }

    @Override // android.media.IAudioService
    public void dispatchMediaKeyEvent(KeyEvent keyEvent) {
        this.mMediaFocusControl.dispatchMediaKeyEvent(keyEvent);
    }

    @Override // android.media.IAudioService
    public void dispatchMediaKeyEventUnderWakelock(KeyEvent keyEvent) {
        this.mMediaFocusControl.dispatchMediaKeyEventUnderWakelock(keyEvent);
    }

    @Override // android.os.Binder
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.mContext.enforceCallingOrSelfPermission(Manifest.permission.DUMP, TAG);
        this.mMediaFocusControl.dump(printWriter);
        dumpStreamStates(printWriter);
        dumpRingerMode(printWriter);
        printWriter.println("\nAudio routes:");
        printWriter.print("  mMainType=0x");
        printWriter.println(Integer.toHexString(this.mCurAudioRoutes.mMainType));
        printWriter.print("  mBluetoothName=");
        printWriter.println(this.mCurAudioRoutes.mBluetoothName);
    }

    public int findnavi(String str) {
        String[] strArr = {"cld.navi.mobile.mainframe", "title.navi", "cld.navi.c2802.mainframe", "com.navngo.igo.javaclient", "com.autonavi.xmgd.navigator", "com.autonavi.xmgd.navigator", "cn.com.tiros.android.navidog", "cn.com.tiros.android.navidog", "cn.com.tiros.android.navidog4x", "com.mapbar.android.mapnavi", "com.mapbar.android.mapnavi", "com.pdager", "com.raxtone.flynavi", "com.uu.uunavi", "com.baidu.navi", "com.mapbar.android.mapbarmap", "cld.navi.c3280.mainframe"};
        for (int i2 = 0; i2 < 17; i2++) {
            if (str.equals(strArr[i2])) {
                return 1;
            }
        }
        return 0;
    }

    @Override // android.media.IAudioService
    public void forceVolumeControlStream(int i2, IBinder iBinder) {
        synchronized (this.mForceControlStreamLock) {
            this.mVolumeControlStream = i2;
            if (i2 == -1) {
                ForceControlStreamClient forceControlStreamClient = this.mForceControlStreamClient;
                if (forceControlStreamClient != null) {
                    forceControlStreamClient.release();
                    this.mForceControlStreamClient = null;
                }
            } else {
                this.mForceControlStreamClient = new ForceControlStreamClient(iBinder);
            }
        }
    }

    @Override // android.media.IAudioService
    public int getCurrentAudioFocus() {
        return this.mMediaFocusControl.getCurrentAudioFocus();
    }

    @Override // android.media.IAudioService
    public int getLastAudibleMasterVolume() {
        return Math.round(AudioSystem.getMasterVolume() * 100.0f);
    }

    @Override // android.media.IAudioService
    public int getLastAudibleStreamVolume(int i2) {
        ensureValidStreamType(i2);
        return (this.mStreamStates[i2].getIndex(getDeviceForStream(i2)) + 5) / 10;
    }

    @Override // android.media.IAudioService
    public int getMasterMaxVolume() {
        return 100;
    }

    @Override // android.media.IAudioService
    public int getMasterStreamType() {
        return this.mVoiceCapable ? 2 : 3;
    }

    @Override // android.media.IAudioService
    public int getMasterVolume() {
        if (isMasterMute()) {
            return 0;
        }
        return getLastAudibleMasterVolume();
    }

    @Override // android.media.IAudioService
    public int getMode() {
        return this.mMode;
    }

    @Override // android.media.IAudioService
    public int getRemoteStreamMaxVolume() {
        return this.mMediaFocusControl.getRemoteStreamMaxVolume();
    }

    @Override // android.media.IAudioService
    public int getRemoteStreamVolume() {
        return this.mMediaFocusControl.getRemoteStreamVolume();
    }

    @Override // android.media.IAudioService
    public int getRingerMode() {
        int i2;
        synchronized (this.mSettingsLock) {
            i2 = this.mRingerMode;
        }
        return i2;
    }

    @Override // android.media.IAudioService
    public IRingtonePlayer getRingtonePlayer() {
        return this.mRingtonePlayer;
    }

    @Override // android.media.IAudioService
    public int getStreamMaxVolume(int i2) {
        ensureValidStreamType(i2);
        return (this.mStreamStates[i2].getMaxIndex() + 5) / 10;
    }

    @Override // android.media.IAudioService
    public int getStreamVolume(int i2) {
        ensureValidStreamType(i2);
        int deviceForStream = getDeviceForStream(i2);
        int index = this.mStreamStates[i2].getIndex(deviceForStream);
        if (this.mStreamStates[i2].isMuted()) {
            index = 0;
        }
        if (index != 0 && this.mStreamVolumeAlias[i2] == 3 && (deviceForStream & 28672) != 0) {
            index = this.mStreamStates[i2].getMaxIndex();
        }
        return (index + 5) / 10;
    }

    @Override // android.media.IAudioService
    public int getVibrateSetting(int i2) {
        if (this.mHasVibrator) {
            return (this.mVibrateSetting >> (i2 * 2)) & 3;
        }
        return 0;
    }

    @Override // android.media.IAudioService
    public boolean isBluetoothA2dpOn() {
        boolean z2;
        synchronized (this.mBluetoothA2dpEnabledLock) {
            z2 = this.mBluetoothA2dpEnabled;
        }
        return z2;
    }

    @Override // android.media.IAudioService
    public boolean isBluetoothScoOn() {
        return this.mForcedUseForComm == 3;
    }

    @Override // android.media.IAudioService
    public boolean isCameraSoundForced() {
        boolean zBooleanValue;
        synchronized (this.mCameraSoundForced) {
            zBooleanValue = this.mCameraSoundForced.booleanValue();
        }
        return zBooleanValue;
    }

    @Override // android.media.IAudioService
    public boolean isLocalOrRemoteMusicActive() {
        return AudioSystem.isStreamActive(3, 0) || this.mMediaFocusControl.checkUpdateRemoteStateIfActive(3) || AudioSystem.isStreamActiveRemotely(3, 0);
    }

    @Override // android.media.IAudioService
    public boolean isMasterMute() {
        return AudioSystem.getMasterMute();
    }

    @Override // android.media.IAudioService
    public boolean isSpeakerphoneOn() {
        return this.mForcedUseForComm == 1;
    }

    public boolean isStreamAffectedByMute(int i2) {
        return ((1 << i2) & this.mMuteAffectedStreams) != 0;
    }

    public boolean isStreamAffectedByRingerMode(int i2) {
        return ((1 << i2) & this.mRingerModeAffectedStreams) != 0;
    }

    @Override // android.media.IAudioService
    public boolean isStreamMute(int i2) {
        return this.mStreamStates[i2].isMuted();
    }

    @Override // android.media.IAudioService
    public int ismapapplication(int i2) {
        String str;
        try {
            FileInputStream fileInputStream = new FileInputStream("/proc/" + i2 + "/cmdline");
            byte[] bArr = new byte[256];
            int i3 = fileInputStream.read(bArr);
            for (int i4 = 0; i4 < i3; i4++) {
                if (bArr[i4] == 0) {
                    i3 = i4;
                    break;
                }
            }
            fileInputStream.close();
            str = new String(bArr, 0, i3);
        } catch (FileNotFoundException unused) {
            Log.e(TAG, "ismapapplication FileNotFound!");
            str = null;
        } catch (IOException unused2) {
            Log.e(TAG, "ismapapplication IOException");
            str = null;
        }
        if (str.equals("com.basarsoft.igo.javaclient")) {
            return 3;
        }
        if (findnavi(str) == 1) {
            return 1;
        }
        String str2 = SystemProperties.get("persist.sys.navi.packagename");
        Log.e(TAG, ">>>>>>>   prop_navi is " + str2);
        return str.equals(str2) ? 1 : 0;
    }

    @Override // android.media.IAudioService
    public boolean loadSoundEffects() {
        int i2;
        LoadSoundEffectReply loadSoundEffectReply = new LoadSoundEffectReply();
        synchronized (loadSoundEffectReply) {
            sendMsg(this.mAudioHandler, 7, 2, 0, 0, loadSoundEffectReply, 0);
            int i3 = 3;
            while (true) {
                i2 = loadSoundEffectReply.mStatus;
                if (i2 != 1) {
                    break;
                }
                int i4 = i3 - 1;
                if (i3 <= 0) {
                    break;
                }
                try {
                    loadSoundEffectReply.wait(TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
                } catch (InterruptedException unused) {
                    Log.w(TAG, "loadSoundEffects Interrupted while waiting sound pool loaded.");
                }
                i3 = i4;
                throw th;
            }
        }
        return i2 == 0;
    }

    @Override // android.media.IAudioService
    public void playSoundEffect(int i2) {
        playSoundEffectVolume(i2, -1.0f);
    }

    @Override // android.media.IAudioService
    public void playSoundEffectVolume(int i2, float f2) {
        sendMsg(this.mAudioHandler, 5, 2, i2, (int) (f2 * 1000.0f), null, 0);
    }

    @Override // android.media.IAudioService
    public String procName(int i2) {
        try {
            FileInputStream fileInputStream = new FileInputStream("/proc/" + i2 + "/cmdline");
            byte[] bArr = new byte[256];
            int i3 = fileInputStream.read(bArr);
            for (int i4 = 0; i4 < i3; i4++) {
                if (bArr[i4] == 0) {
                    i3 = i4;
                    break;
                }
            }
            fileInputStream.close();
            return new String(bArr, 0, i3);
        } catch (FileNotFoundException unused) {
            Log.e(TAG, "procName FileNotFound!");
            return null;
        } catch (IOException unused2) {
            Log.e(TAG, "procName IOException");
            return null;
        }
    }

    @Override // android.media.IAudioService
    public void registerMediaButtonEventReceiverForCalls(ComponentName componentName) {
        this.mMediaFocusControl.registerMediaButtonEventReceiverForCalls(componentName);
    }

    @Override // android.media.IAudioService
    public void registerMediaButtonIntent(PendingIntent pendingIntent, ComponentName componentName, IBinder iBinder) {
        this.mMediaFocusControl.registerMediaButtonIntent(pendingIntent, componentName, iBinder);
    }

    @Override // android.media.IAudioService
    public int registerRemoteControlClient(PendingIntent pendingIntent, IRemoteControlClient iRemoteControlClient, String str) {
        return this.mMediaFocusControl.registerRemoteControlClient(pendingIntent, iRemoteControlClient, str);
    }

    @Override // android.media.IAudioService
    public boolean registerRemoteControlDisplay(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3) {
        return this.mMediaFocusControl.registerRemoteControlDisplay(iRemoteControlDisplay, i2, i3);
    }

    @Override // android.media.IAudioService
    public boolean registerRemoteController(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3, ComponentName componentName) {
        return this.mMediaFocusControl.registerRemoteController(iRemoteControlDisplay, i2, i3, componentName);
    }

    @Override // android.media.IAudioService
    public void registerRemoteVolumeObserverForRcc(int i2, IRemoteVolumeObserver iRemoteVolumeObserver) {
        this.mMediaFocusControl.registerRemoteVolumeObserverForRcc(i2, iRemoteVolumeObserver);
    }

    @Override // android.media.IAudioService
    public void reloadAudioSettings() {
        readAudioSettings(false);
    }

    @Override // android.media.IAudioService
    public void remoteControlDisplayUsesBitmapSize(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3) {
        this.mMediaFocusControl.remoteControlDisplayUsesBitmapSize(iRemoteControlDisplay, i2, i3);
    }

    @Override // android.media.IAudioService
    public void remoteControlDisplayWantsPlaybackPositionSync(IRemoteControlDisplay iRemoteControlDisplay, boolean z2) {
        this.mMediaFocusControl.remoteControlDisplayWantsPlaybackPositionSync(iRemoteControlDisplay, z2);
    }

    @Override // android.media.IAudioService
    public int requestAudioFocus(int i2, int i3, IBinder iBinder, IAudioFocusDispatcher iAudioFocusDispatcher, String str, String str2) {
        return this.mMediaFocusControl.requestAudioFocus(i2, i3, iBinder, iAudioFocusDispatcher, str, str2);
    }

    @Override // android.media.IAudioService
    public void sendToSyuServiceAudioInformation(int i2, int[] iArr, float[] fArr, String[] strArr) {
        Log.e("AudioServiceFyt", "sendToSyuServiceAudioInformation");
        if (i2 == 3) {
            e.b(a.f17941e, 3, iArr, fArr, strArr);
            return;
        }
        if (i2 == 0) {
            e.b(a.f17941e, 0, iArr, fArr, strArr);
            return;
        }
        if (i2 == 1) {
            e.b(a.f17941e, 1, iArr, fArr, strArr);
        } else if (i2 == 2) {
            e.b(a.f17941e, 2, iArr, fArr, strArr);
        } else if (i2 == 6) {
            e.b(a.f17941e, 6, iArr, fArr, strArr);
        }
    }

    @Override // android.media.IAudioService
    public int setBluetoothA2dpDeviceConnectionState(BluetoothDevice bluetoothDevice, int i2) {
        int iCheckSendBecomingNoisyIntent;
        synchronized (this.mConnectedDevices) {
            iCheckSendBecomingNoisyIntent = checkSendBecomingNoisyIntent(128, i2 == 2 ? 1 : 0);
            queueMsgUnderWakeLock(this.mAudioHandler, 101, i2, 0, bluetoothDevice, iCheckSendBecomingNoisyIntent);
        }
        return iCheckSendBecomingNoisyIntent;
    }

    @Override // android.media.IAudioService
    public void setBluetoothA2dpOn(boolean z2) {
        synchronized (this.mBluetoothA2dpEnabledLock) {
            this.mBluetoothA2dpEnabled = z2;
            sendMsg(this.mAudioHandler, 13, 2, 1, z2 ? 0 : 10, null, 0);
        }
    }

    public void setBluetoothA2dpOnInt(boolean z2) {
        synchronized (this.mBluetoothA2dpEnabledLock) {
            this.mBluetoothA2dpEnabled = z2;
            this.mAudioHandler.removeMessages(13);
            AudioSystem.setForceUse(1, this.mBluetoothA2dpEnabled ? 0 : 10);
        }
    }

    @Override // android.media.IAudioService
    public void setBluetoothScoOn(boolean z2) {
        if (checkAudioSettingsPermission("setBluetoothScoOn()")) {
            if (z2) {
                this.mForcedUseForComm = 3;
            } else if (this.mForcedUseForComm == 3) {
                this.mForcedUseForComm = 0;
            }
            sendMsg(this.mAudioHandler, 8, 2, 0, this.mForcedUseForComm, null, 0);
            sendMsg(this.mAudioHandler, 8, 2, 2, this.mForcedUseForComm, null, 0);
        }
    }

    @Override // android.media.IAudioService
    public void setMasterMute(boolean z2, int i2, IBinder iBinder) {
        if (this.mUseFixedVolume || z2 == AudioSystem.getMasterMute()) {
            return;
        }
        AudioSystem.setMasterMute(z2);
        sendMsg(this.mAudioHandler, 11, 0, z2 ? 1 : 0, 0, null, 500);
        sendMasterMuteUpdate(z2, i2);
    }

    @Override // android.media.IAudioService
    public void setMasterVolume(int i2, int i3, String str) {
        if (!this.mUseFixedVolume && this.mAppOps.noteOp(33, Binder.getCallingUid(), str) == 0) {
            if (i2 < 0) {
                i2 = 0;
            } else if (i2 > 100) {
                i2 = 100;
            }
            doSetMasterVolume(i2 / 100.0f, i3);
        }
    }

    @Override // android.media.IAudioService
    public void setMode(int i2, IBinder iBinder) {
        int modeInt;
        if (checkAudioSettingsPermission("setMode()") && i2 >= -1 && i2 < 4) {
            synchronized (this.mSetModeDeathHandlers) {
                if (i2 == -1) {
                    i2 = this.mMode;
                    modeInt = setModeInt(i2, iBinder, Binder.getCallingPid());
                } else {
                    modeInt = setModeInt(i2, iBinder, Binder.getCallingPid());
                }
                throw th;
            }
            if (modeInt != 0) {
                disconnectBluetoothSco(modeInt);
            }
        }
    }

    public int setModeInt(int i2, IBinder iBinder, int i3) {
        int phoneState;
        int pid = 0;
        if (iBinder == null) {
            Log.e(TAG, "setModeInt() called with null binder");
            return 0;
        }
        SetModeDeathHandler setModeDeathHandler = null;
        Iterator<SetModeDeathHandler> it = this.mSetModeDeathHandlers.iterator();
        while (it.hasNext()) {
            SetModeDeathHandler next = it.next();
            if (next.getPid() == i3) {
                it.remove();
                next.getBinder().unlinkToDeath(next, 0);
                setModeDeathHandler = next;
                break;
            }
        }
        do {
            if (i2 != 0) {
                if (setModeDeathHandler == null) {
                    setModeDeathHandler = new SetModeDeathHandler(iBinder, i3);
                }
                try {
                    iBinder.linkToDeath(setModeDeathHandler, 0);
                } catch (RemoteException unused) {
                    Log.w(TAG, "setMode() could not link to " + iBinder + " binder death");
                }
                this.mSetModeDeathHandlers.add(0, setModeDeathHandler);
                setModeDeathHandler.setMode(i2);
            } else if (!this.mSetModeDeathHandlers.isEmpty()) {
                SetModeDeathHandler setModeDeathHandler2 = this.mSetModeDeathHandlers.get(0);
                iBinder = setModeDeathHandler2.getBinder();
                setModeDeathHandler = setModeDeathHandler2;
                i2 = setModeDeathHandler2.getMode();
            }
            if (i2 != this.mMode) {
                phoneState = AudioSystem.setPhoneState(i2);
                if (phoneState == 0) {
                    this.mMode = i2;
                } else {
                    if (setModeDeathHandler != null) {
                        this.mSetModeDeathHandlers.remove(setModeDeathHandler);
                        iBinder.unlinkToDeath(setModeDeathHandler, 0);
                    }
                    i2 = 0;
                }
            } else {
                phoneState = 0;
            }
            if (phoneState == 0) {
                break;
            }
        } while (!this.mSetModeDeathHandlers.isEmpty());
        if (phoneState == 0) {
            if (i2 != 0) {
                if (this.mSetModeDeathHandlers.isEmpty()) {
                    Log.e(TAG, "setMode() different from MODE_NORMAL with empty mode client stack");
                } else {
                    pid = this.mSetModeDeathHandlers.get(0).getPid();
                }
            }
            int activeStreamType = getActiveStreamType(Integer.MIN_VALUE);
            if (activeStreamType == -200) {
                activeStreamType = 3;
            }
            int deviceForStream = getDeviceForStream(activeStreamType);
            setStreamVolumeInt(this.mStreamVolumeAlias[activeStreamType], this.mStreamStates[this.mStreamVolumeAlias[activeStreamType]].getIndex(deviceForStream), deviceForStream, true);
            updateStreamVolumeAlias(true);
        }
        return pid;
    }

    @Override // android.media.IAudioService
    public void setPlaybackInfoForRcc(int i2, int i3, int i4) {
        this.mMediaFocusControl.setPlaybackInfoForRcc(i2, i3, i4);
    }

    @Override // android.media.IAudioService
    public void setPlaybackStateForRcc(int i2, int i3, long j2, float f2) {
        this.mMediaFocusControl.setPlaybackStateForRcc(i2, i3, j2, f2);
    }

    @Override // android.media.IAudioService
    public void setRemoteControlClientPlaybackPosition(int i2, long j2) {
        this.mMediaFocusControl.setRemoteControlClientPlaybackPosition(i2, j2);
    }

    @Override // android.media.IAudioService
    public void setRemoteStreamVolume(int i2) {
        this.mMediaFocusControl.setRemoteStreamVolume(i2);
    }

    @Override // android.media.IAudioService
    public void setRingerMode(int i2) {
        if (this.mUseFixedVolume) {
            return;
        }
        if (i2 == 1 && !this.mHasVibrator) {
            i2 = 0;
        }
        if (i2 != getRingerMode()) {
            setRingerModeInt(i2, true);
            broadcastRingerMode(i2);
        }
    }

    @Override // android.media.IAudioService
    public void setRingtonePlayer(IRingtonePlayer iRingtonePlayer) {
        this.mContext.enforceCallingOrSelfPermission(Manifest.permission.REMOTE_AUDIO_PLAYBACK, null);
        this.mRingtonePlayer = iRingtonePlayer;
    }

    @Override // android.media.IAudioService
    public void setSpeakerphoneOn(boolean z2) {
        if (checkAudioSettingsPermission("setSpeakerphoneOn()")) {
            if (z2) {
                if (this.mForcedUseForComm == 3) {
                    sendMsg(this.mAudioHandler, 8, 2, 2, 0, null, 0);
                }
                this.mForcedUseForComm = 1;
            } else if (this.mForcedUseForComm == 1) {
                this.mForcedUseForComm = 0;
            }
            sendMsg(this.mAudioHandler, 8, 2, 0, this.mForcedUseForComm, null, 0);
        }
    }

    @Override // android.media.IAudioService
    public void setStreamMute(int i2, boolean z2, IBinder iBinder) {
        if (!this.mUseFixedVolume && isStreamAffectedByMute(i2)) {
            this.mStreamStates[i2].mute(iBinder, z2);
        }
    }

    @Override // android.media.IAudioService
    public void setStreamSolo(int i2, boolean z2, IBinder iBinder) {
        if (this.mUseFixedVolume) {
            return;
        }
        for (int i3 = 0; i3 < this.mStreamStates.length; i3++) {
            if (isStreamAffectedByMute(i3) && i3 != i2) {
                this.mStreamStates[i3].mute(iBinder, z2);
            }
        }
    }

    @Override // android.media.IAudioService
    public void setStreamVolume(int i2, int i3, int i4, String str) {
        int index;
        int iRescaleIndex;
        int i5;
        if (this.mUseFixedVolume) {
            return;
        }
        ensureValidStreamType(i2);
        int i6 = this.mStreamVolumeAlias[i2];
        VolumeStreamState volumeStreamState = this.mStreamStates[i6];
        int deviceForStream = getDeviceForStream(i2);
        int i7 = deviceForStream & AudioSystem.DEVICE_OUT_ALL_A2DP;
        if ((i7 != 0 || (i4 & 64) == 0) && this.mAppOps.noteOp(STEAM_VOLUME_OPS[i6], Binder.getCallingUid(), str) == 0) {
            synchronized (this.mSafeMediaVolumeState) {
                this.mPendingVolumeCommand = null;
                index = volumeStreamState.getIndex(deviceForStream);
                iRescaleIndex = rescaleIndex(i3 * 10, i2, i6);
                if (i6 == 3 && i7 != 0 && (i4 & 64) == 0) {
                    synchronized (this.mA2dpAvrcpLock) {
                        BluetoothA2dp bluetoothA2dp = this.mA2dp;
                        if (bluetoothA2dp != null && this.mAvrcpAbsVolSupported) {
                            bluetoothA2dp.setAvrcpAbsoluteVolume(iRescaleIndex / 10);
                        }
                    }
                }
                i5 = i4 & (-33);
                if (i6 == 3 && (deviceForStream & 28672) != 0) {
                    i5 |= 32;
                    if (iRescaleIndex != 0) {
                        iRescaleIndex = (this.mSafeMediaVolumeState.intValue() != 3 || (deviceForStream & 12) == 0) ? volumeStreamState.getMaxIndex() : this.mSafeMediaVolumeIndex;
                    }
                }
                if (checkSafeMediaVolume(i6, iRescaleIndex, deviceForStream)) {
                    onSetStreamVolume(i2, iRescaleIndex, i5, deviceForStream);
                    iRescaleIndex = this.mStreamStates[i2].getIndex(deviceForStream);
                } else {
                    this.mVolumePanel.postDisplaySafeVolumeWarning(i5);
                    this.mPendingVolumeCommand = new StreamVolumeCommand(i2, iRescaleIndex, i5, deviceForStream);
                }
            }
            sendVolumeUpdate(i2, index, iRescaleIndex, i5);
        }
    }

    @Override // android.media.IAudioService
    public void setVibrateSetting(int i2, int i3) {
        if (this.mHasVibrator) {
            this.mVibrateSetting = getValueForVibrateSetting(this.mVibrateSetting, i2, i3);
            broadcastVibrateSetting(i2);
        }
    }

    @Override // android.media.IAudioService
    public void setWiredDeviceConnectionState(int i2, int i3, String str) {
        synchronized (this.mConnectedDevices) {
            queueMsgUnderWakeLock(this.mAudioHandler, 100, i2, i3, str, checkSendBecomingNoisyIntent(i2, i3));
        }
    }

    @Override // android.media.IAudioService
    public boolean shouldVibrate(int i2) {
        if (!this.mHasVibrator) {
            return false;
        }
        int vibrateSetting = getVibrateSetting(i2);
        if (vibrateSetting != 1) {
            return vibrateSetting == 2 && getRingerMode() == 1;
        }
        return getRingerMode() != 0;
    }

    @Override // android.media.IAudioService
    public void startBluetoothSco(IBinder iBinder, int i2) {
        if (checkAudioSettingsPermission("startBluetoothSco()") && this.mBootCompleted) {
            ScoClient scoClient = getScoClient(iBinder, true);
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            scoClient.incCount(i2);
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // android.media.IAudioService
    public AudioRoutesInfo startWatchingRoutes(IAudioRoutesObserver iAudioRoutesObserver) {
        AudioRoutesInfo audioRoutesInfo;
        synchronized (this.mCurAudioRoutes) {
            audioRoutesInfo = new AudioRoutesInfo(this.mCurAudioRoutes);
            this.mRoutesObservers.register(iAudioRoutesObserver);
        }
        return audioRoutesInfo;
    }

    @Override // android.media.IAudioService
    public void stopBluetoothSco(IBinder iBinder) {
        if (checkAudioSettingsPermission("stopBluetoothSco()") && this.mBootCompleted) {
            ScoClient scoClient = getScoClient(iBinder, false);
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            if (scoClient != null) {
                scoClient.decCount();
            }
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // android.media.IAudioService
    public void unloadSoundEffects() {
        sendMsg(this.mAudioHandler, 20, 2, 0, 0, null, 0);
    }

    @Override // android.media.IAudioService
    public void unregisterAudioFocusClient(String str) {
        this.mMediaFocusControl.unregisterAudioFocusClient(str);
    }

    @Override // android.media.IAudioService
    public void unregisterMediaButtonEventReceiverForCalls() {
        this.mMediaFocusControl.unregisterMediaButtonEventReceiverForCalls();
    }

    @Override // android.media.IAudioService
    public void unregisterMediaButtonIntent(PendingIntent pendingIntent) {
        this.mMediaFocusControl.unregisterMediaButtonIntent(pendingIntent);
    }

    @Override // android.media.IAudioService
    public void unregisterRemoteControlClient(PendingIntent pendingIntent, IRemoteControlClient iRemoteControlClient) {
        this.mMediaFocusControl.unregisterRemoteControlClient(pendingIntent, iRemoteControlClient);
    }

    @Override // android.media.IAudioService
    public void unregisterRemoteControlDisplay(IRemoteControlDisplay iRemoteControlDisplay) {
        this.mMediaFocusControl.unregisterRemoteControlDisplay(iRemoteControlDisplay);
    }

    @Override // android.media.IAudioService
    public void updateRemoteControlClientMetadata(int i2, int i3, Rating rating) {
        this.mMediaFocusControl.updateRemoteControlClientMetadata(i2, i3, rating);
    }

    public boolean updateRingerModeAffectedStreams() {
        int i2;
        int intForUser = Settings.System.getIntForUser(this.mContentResolver, Settings.System.MODE_RINGER_STREAMS_AFFECTED, 166, -2) | 38;
        int i3 = this.mVoiceCapable ? intForUser & (-9) : intForUser | 8;
        synchronized (this.mCameraSoundForced) {
            i2 = this.mCameraSoundForced.booleanValue() ? i3 & (-129) : i3 | 128;
        }
        int i4 = this.mStreamVolumeAlias[8] == 2 ? i2 | 256 : i2 & (-257);
        if (i4 == this.mRingerModeAffectedStreams) {
            return false;
        }
        Settings.System.putIntForUser(this.mContentResolver, Settings.System.MODE_RINGER_STREAMS_AFFECTED, i4, -2);
        this.mRingerModeAffectedStreams = i4;
        return true;
    }

    @Override // android.media.IAudioService
    public int verifyX509CertChain(int i2, byte[] bArr, String str, String str2) {
        byte[][] bArr2 = new byte[i2][];
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        for (int i3 = 0; i3 < i2; i3++) {
            bArr2[i3] = new byte[byteBufferWrap.getInt()];
            byteBufferWrap.get(bArr2[i3]);
        }
        try {
            SslError sslErrorVerifyServerCertificates = CertificateChainValidator.verifyServerCertificates(bArr2, str, str2);
            if (sslErrorVerifyServerCertificates == null) {
                return -1;
            }
            return sslErrorVerifyServerCertificates.getPrimaryError();
        } catch (Exception e2) {
            Log.e(TAG, "failed to verify chain: " + e2);
            return 5;
        }
    }
}
