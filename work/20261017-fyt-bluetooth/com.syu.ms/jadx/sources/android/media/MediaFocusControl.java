package android.media;

import android.Manifest;
import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.net.ProxyProperties;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.UserHandle;
import android.provider.Settings;
import android.speech.RecognizerIntent;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.util.Slog;
import android.view.KeyEvent;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Stack;

/* JADX INFO: loaded from: classes.dex */
public class MediaFocusControl implements PendingIntent.OnFinished {
    public static final boolean DEBUG_RC = false;
    public static final boolean DEBUG_VOL = false;
    private static final String EXTRA_WAKELOCK_ACQUIRED = "android.media.AudioService.WAKELOCK_ACQUIRED";
    public static final String IN_VOICE_COMM_FOCUS_ID = "AudioFocus_For_Phone_Ring_And_Calls";
    private static final int MSG_PERSIST_MEDIABUTTONRECEIVER = 0;
    private static final int MSG_PROMOTE_RCC = 6;
    private static final int MSG_RCC_NEW_PLAYBACK_INFO = 4;
    private static final int MSG_RCC_NEW_PLAYBACK_STATE = 7;
    private static final int MSG_RCC_NEW_VOLUME_OBS = 5;
    private static final int MSG_RCC_SEEK_REQUEST = 8;
    private static final int MSG_RCC_UPDATE_METADATA = 9;
    private static final int MSG_RCDISPLAY_CLEAR = 1;
    private static final int MSG_RCDISPLAY_INIT_INFO = 10;
    private static final int MSG_RCDISPLAY_UPDATE = 2;
    private static final int MSG_REEVALUATE_RCD = 11;
    private static final int MSG_REEVALUATE_REMOTE = 3;
    private static final int RCD_REG_FAILURE = 0;
    private static final int RCD_REG_SUCCESS_ENABLED_NOTIF = 2;
    private static final int RCD_REG_SUCCESS_PERMISSION = 1;
    private static final int RC_INFO_ALL = 15;
    private static final int RC_INFO_NONE = 0;
    private static final int SENDMSG_NOOP = 1;
    private static final int SENDMSG_QUEUE = 2;
    private static final int SENDMSG_REPLACE = 0;
    private static final String TAG = "MediaFocusControl";
    private static final int VOICEBUTTON_ACTION_DISCARD_CURRENT_KEY_PRESS = 1;
    private static final int VOICEBUTTON_ACTION_SIMULATE_KEY_PRESS = 3;
    private static final int VOICEBUTTON_ACTION_START_VOICE_INPUT = 2;
    private static final int WAKELOCK_RELEASE_ON_FINISHED = 1980;
    private final AppOpsManager mAppOps;
    private final AudioService mAudioService;
    private final ContentResolver mContentResolver;
    private final Context mContext;
    private IRemoteControlClient mCurrentRcClient;
    private int mCurrentRcClientGen;
    private PendingIntent mCurrentRcClientIntent;
    private final Object mCurrentRcLock;
    private final MediaEventHandler mEventHandler;
    private final Stack<FocusRequester> mFocusStack;
    private boolean mHasRemotePlayback;
    private boolean mIsRinging = false;
    public BroadcastReceiver mKeyEventDone;
    private final KeyguardManager mKeyguardManager;
    private RemotePlaybackState mMainRemote;
    private boolean mMainRemoteIsActive;
    private final PowerManager.WakeLock mMediaEventWakeLock;
    private ComponentName mMediaReceiverForCalls;
    private final NotificationListenerObserver mNotifListenerObserver;
    private PhoneStateListener mPhoneStateListener;
    private final Stack<RemoteControlStackEntry> mRCStack;
    private ArrayList<DisplayInfoForServer> mRcDisplays;
    private final BroadcastReceiver mReceiver;
    private boolean mVoiceButtonDown;
    private boolean mVoiceButtonHandled;
    private final Object mVoiceEventLock;
    private final VolumeController mVolumeController;
    private static final Uri ENABLED_NOTIFICATION_LISTENERS_URI = Settings.Secure.getUriFor(Settings.Secure.ENABLED_NOTIFICATION_LISTENERS);
    private static final Object mAudioFocusLock = new Object();
    private static final Object mRingingLock = new Object();
    private static int sLastRccId = 0;

    public class AudioFocusDeathHandler implements IBinder.DeathRecipient {
        private IBinder mCb;

        public AudioFocusDeathHandler(IBinder iBinder) {
            this.mCb = iBinder;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (MediaFocusControl.mAudioFocusLock) {
                Log.w(MediaFocusControl.TAG, "  AudioFocus   audio focus client died");
                MediaFocusControl.this.removeFocusStackEntryForClient(this.mCb);
            }
        }

        public IBinder getBinder() {
            return this.mCb;
        }
    }

    public class DisplayInfoForServer implements IBinder.DeathRecipient {
        private int mArtworkExpectedHeight;
        private int mArtworkExpectedWidth;
        private ComponentName mClientNotifListComp;
        private final IRemoteControlDisplay mRcDisplay;
        private final IBinder mRcDisplayBinder;
        private boolean mWantsPositionSync = false;
        private boolean mEnabled = true;

        public DisplayInfoForServer(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3) {
            this.mArtworkExpectedWidth = -1;
            this.mArtworkExpectedHeight = -1;
            this.mRcDisplay = iRemoteControlDisplay;
            this.mRcDisplayBinder = iRemoteControlDisplay.asBinder();
            this.mArtworkExpectedWidth = i2;
            this.mArtworkExpectedHeight = i3;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (MediaFocusControl.this.mRCStack) {
                Log.w(MediaFocusControl.TAG, "RemoteControl: display " + this.mRcDisplay + " died");
                Iterator it = MediaFocusControl.this.mRcDisplays.iterator();
                while (it.hasNext()) {
                    if (((DisplayInfoForServer) it.next()).mRcDisplay == this.mRcDisplay) {
                        it.remove();
                        return;
                    }
                }
            }
        }

        public boolean init() {
            try {
                this.mRcDisplayBinder.linkToDeath(this, 0);
                return true;
            } catch (RemoteException unused) {
                Log.w(MediaFocusControl.TAG, "registerRemoteControlDisplay() has a dead client " + this.mRcDisplayBinder);
                return false;
            }
        }

        public void release() {
            try {
                this.mRcDisplayBinder.unlinkToDeath(this, 0);
            } catch (NoSuchElementException e2) {
                Log.e(MediaFocusControl.TAG, "Error in DisplaInfoForServer.relase()", e2);
            }
        }
    }

    public class MediaEventHandler extends Handler {
        public MediaEventHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    MediaFocusControl.this.onHandlePersistMediaButtonReceiver((ComponentName) message.obj);
                    break;
                case 1:
                    MediaFocusControl.this.onRcDisplayClear();
                    break;
                case 2:
                    MediaFocusControl.this.onRcDisplayUpdate((RemoteControlStackEntry) message.obj, message.arg1);
                    break;
                case 3:
                    MediaFocusControl.this.onReevaluateRemote();
                    break;
                case 4:
                    MediaFocusControl.this.onNewPlaybackInfoForRcc(message.arg1, message.arg2, ((Integer) message.obj).intValue());
                    break;
                case 5:
                    MediaFocusControl.this.onRegisterVolumeObserverForRcc(message.arg1, (IRemoteVolumeObserver) message.obj);
                    break;
                case 6:
                    MediaFocusControl.this.onPromoteRcc(message.arg1);
                    break;
                case 7:
                    MediaFocusControl.this.onNewPlaybackStateForRcc(message.arg1, message.arg2, (RccPlaybackState) message.obj);
                    break;
                case 8:
                    MediaFocusControl.this.onSetRemoteControlClientPlaybackPosition(message.arg1, ((Long) message.obj).longValue());
                    break;
                case 9:
                    MediaFocusControl.this.onUpdateRemoteControlClientMetadata(message.arg1, message.arg2, (Rating) message.obj);
                    break;
                case 10:
                    MediaFocusControl.this.onRcDisplayInitInfo((IRemoteControlDisplay) message.obj, message.arg1, message.arg2);
                    break;
                case 11:
                    MediaFocusControl.this.onReevaluateRemoteControlDisplays();
                    break;
            }
        }
    }

    public class NotificationListenerObserver extends ContentObserver {
        public NotificationListenerObserver() {
            super(MediaFocusControl.this.mEventHandler);
            MediaFocusControl.this.mContentResolver.registerContentObserver(Settings.Secure.getUriFor(Settings.Secure.ENABLED_NOTIFICATION_LISTENERS), false, this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z2, Uri uri) {
            if (!MediaFocusControl.ENABLED_NOTIFICATION_LISTENERS_URI.equals(uri) || z2) {
                return;
            }
            MediaFocusControl.this.postReevaluateRemoteControlDisplays();
        }
    }

    public class PackageIntentsReceiver extends BroadcastReceiver {
        private PackageIntentsReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String schemeSpecificPart;
            String schemeSpecificPart2;
            String action = intent.getAction();
            if (action.equals(Intent.ACTION_PACKAGE_REMOVED) || action.equals(Intent.ACTION_PACKAGE_DATA_CLEARED)) {
                if (intent.getBooleanExtra(Intent.EXTRA_REPLACING, false) || (schemeSpecificPart = intent.getData().getSchemeSpecificPart()) == null) {
                    return;
                }
                MediaFocusControl.this.cleanupMediaButtonReceiverForPackage(schemeSpecificPart, true);
                return;
            }
            if ((action.equals(Intent.ACTION_PACKAGE_ADDED) || action.equals(Intent.ACTION_PACKAGE_CHANGED)) && (schemeSpecificPart2 = intent.getData().getSchemeSpecificPart()) != null) {
                MediaFocusControl.this.cleanupMediaButtonReceiverForPackage(schemeSpecificPart2, false);
            }
        }
    }

    public class RcClientDeathHandler implements IBinder.DeathRecipient {
        private final IBinder mCb;
        private final PendingIntent mMediaIntent;

        public RcClientDeathHandler(IBinder iBinder, PendingIntent pendingIntent) {
            this.mCb = iBinder;
            this.mMediaIntent = pendingIntent;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Log.w(MediaFocusControl.TAG, "  RemoteControlClient died");
            MediaFocusControl.this.registerRemoteControlClient(this.mMediaIntent, null, null);
            MediaFocusControl.this.postReevaluateRemote();
        }

        public IBinder getBinder() {
            return this.mCb;
        }
    }

    public static class RccPlaybackState {
        public long mPositionMs;
        public float mSpeed;
        public int mState;

        public RccPlaybackState(int i2, long j2, float f2) {
            this.mState = i2;
            this.mPositionMs = j2;
            this.mSpeed = f2;
        }

        private String posToString() {
            long j2 = this.mPositionMs;
            if (j2 == -1) {
                return "PLAYBACK_POSITION_INVALID";
            }
            if (j2 == RemoteControlClient.PLAYBACK_POSITION_ALWAYS_UNKNOWN) {
                return "PLAYBACK_POSITION_ALWAYS_UNKNOWN";
            }
            return String.valueOf(this.mPositionMs) + "ms";
        }

        private String stateToString() {
            switch (this.mState) {
                case 0:
                    return "PLAYSTATE_NONE";
                case 1:
                    return "PLAYSTATE_STOPPED";
                case 2:
                    return "PLAYSTATE_PAUSED";
                case 3:
                    return "PLAYSTATE_PLAYING";
                case 4:
                    return "PLAYSTATE_FAST_FORWARDING";
                case 5:
                    return "PLAYSTATE_REWINDING";
                case 6:
                    return "PLAYSTATE_SKIPPING_FORWARDS";
                case 7:
                    return "PLAYSTATE_SKIPPING_BACKWARDS";
                case 8:
                    return "PLAYSTATE_BUFFERING";
                case 9:
                    return "PLAYSTATE_ERROR";
                default:
                    return "[invalid playstate]";
            }
        }

        public void reset() {
            this.mState = 1;
            this.mPositionMs = -1L;
            this.mSpeed = 1.0f;
        }

        public String toString() {
            return stateToString() + ", " + posToString() + ", " + this.mSpeed + "X";
        }
    }

    public static class RemoteControlStackEntry implements IBinder.DeathRecipient {
        public String mCallingPackageName;
        public final MediaFocusControl mController;
        public final PendingIntent mMediaIntent;
        public int mPlaybackStream;
        public int mPlaybackType;
        public int mPlaybackVolume;
        public int mPlaybackVolumeHandling;
        public int mPlaybackVolumeMax;
        public RcClientDeathHandler mRcClientDeathHandler;
        public int mRccId;
        public final ComponentName mReceiverComponent;
        public IRemoteVolumeObserver mRemoteVolumeObs;
        public IBinder mToken;
        public int mCallingUid = -1;
        public IRemoteControlClient mRcClient = null;
        public RccPlaybackState mPlaybackState = new RccPlaybackState(1, -1, 1.0f);

        public RemoteControlStackEntry(MediaFocusControl mediaFocusControl, PendingIntent pendingIntent, ComponentName componentName, IBinder iBinder) {
            this.mRccId = -1;
            this.mController = mediaFocusControl;
            this.mMediaIntent = pendingIntent;
            this.mReceiverComponent = componentName;
            this.mToken = iBinder;
            this.mRccId = MediaFocusControl.access$3004();
            resetPlaybackInfo();
            IBinder iBinder2 = this.mToken;
            if (iBinder2 != null) {
                try {
                    iBinder2.linkToDeath(this, 0);
                } catch (RemoteException unused) {
                    this.mController.mEventHandler.post(new Runnable() { // from class: android.media.MediaFocusControl.RemoteControlStackEntry.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RemoteControlStackEntry remoteControlStackEntry = RemoteControlStackEntry.this;
                            remoteControlStackEntry.mController.unregisterMediaButtonIntent(remoteControlStackEntry.mMediaIntent);
                        }
                    });
                }
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            this.mController.unregisterMediaButtonIntent(this.mMediaIntent);
        }

        public void destroy() {
            unlinkToRcClientDeath();
            IBinder iBinder = this.mToken;
            if (iBinder != null) {
                iBinder.unlinkToDeath(this, 0);
                this.mToken = null;
            }
        }

        public void finalize() throws Throwable {
            destroy();
            super.finalize();
        }

        public void resetPlaybackInfo() {
            this.mPlaybackType = 0;
            this.mPlaybackVolume = 15;
            this.mPlaybackVolumeMax = 15;
            this.mPlaybackVolumeHandling = 1;
            this.mPlaybackStream = 3;
            this.mPlaybackState.reset();
            this.mRemoteVolumeObs = null;
        }

        public void unlinkToRcClientDeath() {
            RcClientDeathHandler rcClientDeathHandler = this.mRcClientDeathHandler;
            if (rcClientDeathHandler == null || rcClientDeathHandler.mCb == null) {
                return;
            }
            try {
                this.mRcClientDeathHandler.mCb.unlinkToDeath(this.mRcClientDeathHandler, 0);
                this.mRcClientDeathHandler = null;
            } catch (NoSuchElementException e2) {
                Log.e(MediaFocusControl.TAG, "Encountered " + e2 + " in unlinkToRcClientDeath()");
                e2.printStackTrace();
            }
        }
    }

    public class RemotePlaybackState {
        public int mRccId;
        public int mVolume;
        public int mVolumeHandling;
        public int mVolumeMax;

        private RemotePlaybackState(int i2, int i3, int i4) {
            this.mRccId = i2;
            this.mVolume = i3;
            this.mVolumeMax = i4;
            this.mVolumeHandling = 1;
        }
    }

    public MediaFocusControl(Looper looper, Context context, VolumeController volumeController, AudioService audioService) {
        PackageIntentsReceiver packageIntentsReceiver = new PackageIntentsReceiver();
        this.mReceiver = packageIntentsReceiver;
        this.mPhoneStateListener = new PhoneStateListener() { // from class: android.media.MediaFocusControl.1
            @Override // android.telephony.PhoneStateListener
            public void onCallStateChanged(int i2, String str) {
                if (i2 == 1) {
                    synchronized (MediaFocusControl.mRingingLock) {
                        MediaFocusControl.this.mIsRinging = true;
                    }
                } else if (i2 == 2 || i2 == 0) {
                    synchronized (MediaFocusControl.mRingingLock) {
                        MediaFocusControl.this.mIsRinging = false;
                    }
                }
            }
        };
        this.mFocusStack = new Stack<>();
        this.mVoiceEventLock = new Object();
        this.mKeyEventDone = new BroadcastReceiver() { // from class: android.media.MediaFocusControl.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                Bundle extras;
                if (intent == null || (extras = intent.getExtras()) == null || !extras.containsKey(MediaFocusControl.EXTRA_WAKELOCK_ACQUIRED)) {
                    return;
                }
                MediaFocusControl.this.mMediaEventWakeLock.release();
            }
        };
        this.mCurrentRcLock = new Object();
        this.mCurrentRcClient = null;
        this.mCurrentRcClientIntent = null;
        this.mCurrentRcClientGen = 0;
        this.mRCStack = new Stack<>();
        this.mMediaReceiverForCalls = null;
        this.mRcDisplays = new ArrayList<>(1);
        this.mEventHandler = new MediaEventHandler(looper);
        this.mContext = context;
        this.mContentResolver = context.getContentResolver();
        this.mVolumeController = volumeController;
        this.mAudioService = audioService;
        this.mMediaEventWakeLock = ((PowerManager) context.getSystemService(Context.POWER_SERVICE)).newWakeLock(1, "handleMediaEvent");
        this.mMainRemote = new RemotePlaybackState(-1, AudioService.getMaxStreamVolume(3), AudioService.getMaxStreamVolume(3));
        ((TelephonyManager) context.getSystemService("phone")).listen(this.mPhoneStateListener, 32);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Intent.ACTION_PACKAGE_REMOVED);
        intentFilter.addAction(Intent.ACTION_PACKAGE_ADDED);
        intentFilter.addAction(Intent.ACTION_PACKAGE_CHANGED);
        intentFilter.addAction(Intent.ACTION_PACKAGE_DATA_CLEARED);
        intentFilter.addDataScheme("package");
        context.registerReceiver(packageIntentsReceiver, intentFilter);
        this.mAppOps = (AppOpsManager) context.getSystemService(Context.APP_OPS_SERVICE);
        this.mKeyguardManager = (KeyguardManager) context.getSystemService(Context.KEYGUARD_SERVICE);
        this.mNotifListenerObserver = new NotificationListenerObserver();
        this.mHasRemotePlayback = false;
        this.mMainRemoteIsActive = false;
        postReevaluateRemote();
    }

    public static /* synthetic */ int access$3004() {
        int i2 = sLastRccId + 1;
        sLastRccId = i2;
        return i2;
    }

    private boolean canReassignAudioFocus() {
        return this.mFocusStack.isEmpty() || !this.mFocusStack.peek().hasSameClient(IN_VOICE_COMM_FOCUS_ID);
    }

    private int checkRcdRegistrationAuthorization(ComponentName componentName) {
        if (this.mContext.checkCallingOrSelfPermission(Manifest.permission.MEDIA_CONTENT_CONTROL) == 0) {
            return 1;
        }
        if (componentName != null) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                String stringForUser = Settings.Secure.getStringForUser(this.mContext.getContentResolver(), Settings.Secure.ENABLED_NOTIFICATION_LISTENERS, ActivityManager.getCurrentUser());
                if (stringForUser != null) {
                    for (String str : stringForUser.split(":")) {
                        ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                        if (componentNameUnflattenFromString != null && componentName.equals(componentNameUnflattenFromString)) {
                            Binder.restoreCallingIdentity(jClearCallingIdentity);
                            return 2;
                        }
                    }
                }
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
                throw th;
            }
        }
        return 0;
    }

    private void checkUpdateRemoteControlDisplay_syncAfRcs(int i2) {
        if (this.mRCStack.isEmpty() || this.mFocusStack.isEmpty()) {
            clearRemoteControlDisplay_syncAfRcs();
            return;
        }
        FocusRequester focusRequester = null;
        try {
            for (int size = this.mFocusStack.size() - 1; size >= 0; size--) {
                FocusRequester focusRequesterElementAt = this.mFocusStack.elementAt(size);
                if (focusRequesterElementAt.getStreamType() == 3 || focusRequesterElementAt.getGainRequest() == 1) {
                    focusRequester = focusRequesterElementAt;
                    break;
                }
            }
        } catch (ArrayIndexOutOfBoundsException e2) {
            Log.e(TAG, "Wrong index accessing audio focus stack when updating RCD: " + e2);
        }
        if (focusRequester == null) {
            clearRemoteControlDisplay_syncAfRcs();
            return;
        }
        if (!focusRequester.hasSamePackage(this.mRCStack.peek().mCallingPackageName)) {
            clearRemoteControlDisplay_syncAfRcs();
        } else if (focusRequester.hasSameUid(this.mRCStack.peek().mCallingUid)) {
            updateRemoteControlDisplay_syncAfRcs(i2);
        } else {
            clearRemoteControlDisplay_syncAfRcs();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanupMediaButtonReceiverForPackage(String str, boolean z2) {
        ComponentName componentName;
        synchronized (this.mRCStack) {
            try {
                if (this.mRCStack.empty()) {
                    return;
                }
                PackageManager packageManager = this.mContext.getPackageManager();
                RemoteControlStackEntry remoteControlStackEntryPeek = this.mRCStack.peek();
                Iterator<RemoteControlStackEntry> it = this.mRCStack.iterator();
                while (it.hasNext()) {
                    RemoteControlStackEntry next = it.next();
                    if (z2 && str.equals(next.mMediaIntent.getCreatorPackage())) {
                        it.remove();
                        next.destroy();
                    } else {
                        ComponentName componentName2 = next.mReceiverComponent;
                        if (componentName2 != null) {
                            try {
                                packageManager.getReceiverInfo(componentName2, 0);
                            } catch (PackageManager.NameNotFoundException unused) {
                                it.remove();
                                next.destroy();
                            }
                        }
                    }
                }
                if (this.mRCStack.empty()) {
                    MediaEventHandler mediaEventHandler = this.mEventHandler;
                    mediaEventHandler.sendMessage(mediaEventHandler.obtainMessage(0, 0, 0, null));
                } else if (remoteControlStackEntryPeek != this.mRCStack.peek() && (componentName = this.mRCStack.peek().mReceiverComponent) != null) {
                    MediaEventHandler mediaEventHandler2 = this.mEventHandler;
                    mediaEventHandler2.sendMessage(mediaEventHandler2.obtainMessage(0, 0, 0, componentName));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void clearRemoteControlDisplay_syncAfRcs() {
        synchronized (this.mCurrentRcLock) {
            this.mCurrentRcClient = null;
        }
        MediaEventHandler mediaEventHandler = this.mEventHandler;
        mediaEventHandler.sendMessage(mediaEventHandler.obtainMessage(1));
    }

    private void dispatchMediaKeyEventForCalls(KeyEvent keyEvent, boolean z2) {
        Intent intent = new Intent(Intent.ACTION_MEDIA_BUTTON, (Uri) null);
        intent.putExtra(Intent.EXTRA_KEY_EVENT, keyEvent);
        intent.setPackage(this.mMediaReceiverForCalls.getPackageName());
        if (z2) {
            this.mMediaEventWakeLock.acquire();
            intent.putExtra(EXTRA_WAKELOCK_ACQUIRED, WAKELOCK_RELEASE_ON_FINISHED);
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mContext.sendOrderedBroadcastAsUser(intent, UserHandle.ALL, null, this.mKeyEventDone, this.mEventHandler, -1, null, null);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    private void dumpFocusStack(PrintWriter printWriter) {
        printWriter.println("\nAudio Focus stack entries (last is top of stack):");
        synchronized (mAudioFocusLock) {
            Iterator<FocusRequester> it = this.mFocusStack.iterator();
            while (it.hasNext()) {
                it.next().dump(printWriter);
            }
        }
    }

    private void dumpRCCStack(PrintWriter printWriter) {
        printWriter.println("\nRemote Control Client stack entries (last is top of stack):");
        synchronized (this.mRCStack) {
            for (RemoteControlStackEntry remoteControlStackEntry : this.mRCStack) {
                printWriter.println("  uid: " + remoteControlStackEntry.mCallingUid + "  -- id: " + remoteControlStackEntry.mRccId + "  -- type: " + remoteControlStackEntry.mPlaybackType + "  -- state: " + remoteControlStackEntry.mPlaybackState + "  -- vol handling: " + remoteControlStackEntry.mPlaybackVolumeHandling + "  -- vol: " + remoteControlStackEntry.mPlaybackVolume + "  -- volMax: " + remoteControlStackEntry.mPlaybackVolumeMax + "  -- volObs: " + remoteControlStackEntry.mRemoteVolumeObs);
            }
            synchronized (this.mCurrentRcLock) {
                printWriter.println("\nCurrent remote control generation ID = " + this.mCurrentRcClientGen);
            }
        }
        synchronized (this.mMainRemote) {
            printWriter.println("\nRemote Volume State:");
            printWriter.println("  has remote: " + this.mHasRemotePlayback);
            printWriter.println("  is remote active: " + this.mMainRemoteIsActive);
            printWriter.println("  rccId: " + this.mMainRemote.mRccId);
            StringBuilder sb = new StringBuilder();
            sb.append("  volume handling: ");
            sb.append(this.mMainRemote.mVolumeHandling == 0 ? "PLAYBACK_VOLUME_FIXED(0)" : "PLAYBACK_VOLUME_VARIABLE(1)");
            printWriter.println(sb.toString());
            printWriter.println("  volume: " + this.mMainRemote.mVolume);
            printWriter.println("  volume steps: " + this.mMainRemote.mVolumeMax);
        }
    }

    private void dumpRCDList(PrintWriter printWriter) {
        printWriter.println("\nRemote Control Display list entries:");
        synchronized (this.mRCStack) {
            for (DisplayInfoForServer displayInfoForServer : this.mRcDisplays) {
                StringBuilder sb = new StringBuilder();
                sb.append("  IRCD: ");
                sb.append(displayInfoForServer.mRcDisplay);
                sb.append("  -- w:");
                sb.append(displayInfoForServer.mArtworkExpectedWidth);
                sb.append("  -- h:");
                sb.append(displayInfoForServer.mArtworkExpectedHeight);
                sb.append("  -- wantsPosSync:");
                sb.append(displayInfoForServer.mWantsPositionSync);
                sb.append("  -- ");
                sb.append(displayInfoForServer.mEnabled ? "enabled" : "disabled");
                printWriter.println(sb.toString());
            }
        }
    }

    private void dumpRCStack(PrintWriter printWriter) {
        printWriter.println("\nRemote Control stack entries (last is top of stack):");
        synchronized (this.mRCStack) {
            for (RemoteControlStackEntry remoteControlStackEntry : this.mRCStack) {
                printWriter.println("  pi: " + remoteControlStackEntry.mMediaIntent + " -- pack: " + remoteControlStackEntry.mCallingPackageName + "  -- ercvr: " + remoteControlStackEntry.mReceiverComponent + "  -- client: " + remoteControlStackEntry.mRcClient + "  -- uid: " + remoteControlStackEntry.mCallingUid + "  -- type: " + remoteControlStackEntry.mPlaybackType + "  state: " + remoteControlStackEntry.mPlaybackState);
            }
        }
    }

    private void enableRemoteControlDisplayForClient_syncRcStack(IRemoteControlDisplay iRemoteControlDisplay, boolean z2) {
        Iterator<RemoteControlStackEntry> it = this.mRCStack.iterator();
        while (it.hasNext()) {
            IRemoteControlClient iRemoteControlClient = it.next().mRcClient;
            if (iRemoteControlClient != null) {
                try {
                    iRemoteControlClient.enableRemoteControlDisplay(iRemoteControlDisplay, z2);
                } catch (RemoteException e2) {
                    Log.e(TAG, "Error connecting RCD to client: ", e2);
                }
            }
        }
    }

    private void filterMediaKeyEvent(KeyEvent keyEvent, boolean z2) {
        if (!isValidMediaKeyEvent(keyEvent)) {
            Log.e(TAG, "not dispatching invalid media key event " + keyEvent);
            return;
        }
        synchronized (mRingingLock) {
            synchronized (this.mRCStack) {
                if (this.mMediaReceiverForCalls != null && (this.mIsRinging || this.mAudioService.getMode() == 2)) {
                    dispatchMediaKeyEventForCalls(keyEvent, z2);
                } else if (isValidVoiceInputKeyCode(keyEvent.getKeyCode())) {
                    filterVoiceInputKeyEvent(keyEvent, z2);
                } else {
                    dispatchMediaKeyEvent(keyEvent, z2);
                }
            }
        }
    }

    private void filterVoiceInputKeyEvent(KeyEvent keyEvent, boolean z2) {
        char c2;
        int action = keyEvent.getAction();
        synchronized (this.mVoiceEventLock) {
            c2 = 1;
            try {
                if (action == 0) {
                    if (keyEvent.getRepeatCount() == 0) {
                        this.mVoiceButtonDown = true;
                        this.mVoiceButtonHandled = false;
                    } else if (this.mVoiceButtonDown && !this.mVoiceButtonHandled && (keyEvent.getFlags() & 128) != 0) {
                        this.mVoiceButtonHandled = true;
                        c2 = 2;
                    }
                } else if (action == 1 && this.mVoiceButtonDown) {
                    this.mVoiceButtonDown = false;
                    if (!this.mVoiceButtonHandled && !keyEvent.isCanceled()) {
                        c2 = 3;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (c2 == 2) {
            startVoiceBasedInteractions(z2);
        } else {
            if (c2 != 3) {
                return;
            }
            sendSimulatedMediaButtonEvent(keyEvent, z2);
        }
    }

    private boolean isComponentInStringArray(ComponentName componentName, String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            String strFlattenToString = componentName.flattenToString();
            for (String str : strArr) {
                if (strFlattenToString.equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean isCurrentRcController(PendingIntent pendingIntent) {
        return !this.mRCStack.empty() && this.mRCStack.peek().mMediaIntent.equals(pendingIntent);
    }

    public static boolean isMediaKeyCode(int i2) {
        if (i2 == 79 || i2 == 222) {
            return true;
        }
        switch (i2) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (i2) {
                    case 126:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    private static boolean isPlaystateActive(int i2) {
        switch (i2) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    private static boolean isValidMediaKeyEvent(KeyEvent keyEvent) {
        if (keyEvent == null) {
            return false;
        }
        return isMediaKeyCode(keyEvent.getKeyCode());
    }

    private static boolean isValidVoiceInputKeyCode(int i2) {
        return i2 == 79;
    }

    private void notifyTopOfAudioFocusStack() {
        if (this.mFocusStack.empty() || !canReassignAudioFocus()) {
            return;
        }
        this.mFocusStack.peek().handleFocusGain(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onHandlePersistMediaButtonReceiver(ComponentName componentName) {
        Settings.System.putStringForUser(this.mContentResolver, Settings.System.MEDIA_BUTTON_RECEIVER, componentName == null ? ProxyProperties.LOCAL_EXCL_LIST : componentName.flattenToString(), -2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNewPlaybackInfoForRcc(int i2, int i3, int i4) {
        synchronized (this.mRCStack) {
            try {
                try {
                    for (int size = this.mRCStack.size() - 1; size >= 0; size--) {
                        RemoteControlStackEntry remoteControlStackEntryElementAt = this.mRCStack.elementAt(size);
                        if (remoteControlStackEntryElementAt.mRccId == i2) {
                            if (i3 == 1) {
                                remoteControlStackEntryElementAt.mPlaybackType = i4;
                                postReevaluateRemote();
                            } else if (i3 == 2) {
                                remoteControlStackEntryElementAt.mPlaybackVolume = i4;
                                synchronized (this.mMainRemote) {
                                    RemotePlaybackState remotePlaybackState = this.mMainRemote;
                                    if (i2 == remotePlaybackState.mRccId) {
                                        remotePlaybackState.mVolume = i4;
                                        this.mVolumeController.postHasNewRemotePlaybackInfo();
                                    }
                                }
                            } else if (i3 == 3) {
                                remoteControlStackEntryElementAt.mPlaybackVolumeMax = i4;
                                synchronized (this.mMainRemote) {
                                    RemotePlaybackState remotePlaybackState2 = this.mMainRemote;
                                    if (i2 == remotePlaybackState2.mRccId) {
                                        remotePlaybackState2.mVolumeMax = i4;
                                        this.mVolumeController.postHasNewRemotePlaybackInfo();
                                    }
                                }
                            } else if (i3 == 4) {
                                remoteControlStackEntryElementAt.mPlaybackVolumeHandling = i4;
                                synchronized (this.mMainRemote) {
                                    RemotePlaybackState remotePlaybackState3 = this.mMainRemote;
                                    if (i2 == remotePlaybackState3.mRccId) {
                                        remotePlaybackState3.mVolumeHandling = i4;
                                        this.mVolumeController.postHasNewRemotePlaybackInfo();
                                    }
                                }
                            } else if (i3 != 5) {
                                Log.e(TAG, "unhandled key " + i3 + " for RCC " + i2);
                            } else {
                                remoteControlStackEntryElementAt.mPlaybackStream = i4;
                            }
                            return;
                        }
                    }
                } catch (ArrayIndexOutOfBoundsException e2) {
                    Log.e(TAG, "Wrong index mRCStack on onNewPlaybackInfoForRcc, lock error? ", e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNewPlaybackStateForRcc(int i2, int i3, RccPlaybackState rccPlaybackState) {
        synchronized (this.mRCStack) {
            try {
                for (int size = this.mRCStack.size() - 1; size >= 0; size--) {
                    RemoteControlStackEntry remoteControlStackEntryElementAt = this.mRCStack.elementAt(size);
                    if (remoteControlStackEntryElementAt.mRccId == i2) {
                        remoteControlStackEntryElementAt.mPlaybackState = rccPlaybackState;
                        synchronized (this.mMainRemote) {
                            if (i2 == this.mMainRemote.mRccId) {
                                this.mMainRemoteIsActive = isPlaystateActive(i3);
                                postReevaluateRemote();
                            }
                        }
                        if (isPlaystateActive(i3)) {
                            postPromoteRcc(i2);
                        }
                    }
                }
            } catch (ArrayIndexOutOfBoundsException e2) {
                Log.e(TAG, "Wrong index on mRCStack in onNewPlaybackStateForRcc, lock error? ", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPromoteRcc(int i2) {
        synchronized (mAudioFocusLock) {
            synchronized (this.mRCStack) {
                if (this.mRCStack.isEmpty() || this.mRCStack.peek().mRccId != i2) {
                    try {
                        int size = this.mRCStack.size() - 1;
                        while (true) {
                            if (size < 0) {
                                size = -1;
                                break;
                            } else if (this.mRCStack.elementAt(size).mRccId == i2) {
                                break;
                            } else {
                                size--;
                            }
                        }
                        if (size >= 0) {
                            this.mRCStack.push(this.mRCStack.remove(size));
                            checkUpdateRemoteControlDisplay_syncAfRcs(15);
                        }
                    } catch (ArrayIndexOutOfBoundsException e2) {
                        Log.e(TAG, "Wrong index accessing RC stack, lock error? ", e2);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRcDisplayClear() {
        synchronized (this.mRCStack) {
            synchronized (this.mCurrentRcLock) {
                int i2 = this.mCurrentRcClientGen + 1;
                this.mCurrentRcClientGen = i2;
                setNewRcClient_syncRcsCurrc(i2, null, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRcDisplayInitInfo(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3) {
        synchronized (this.mRCStack) {
            synchronized (this.mCurrentRcLock) {
                if (this.mCurrentRcClient != null) {
                    try {
                        iRemoteControlDisplay.setCurrentClientId(this.mCurrentRcClientGen, this.mCurrentRcClientIntent, false);
                        try {
                            this.mCurrentRcClient.informationRequestForDisplay(iRemoteControlDisplay, i2, i3);
                        } catch (RemoteException e2) {
                            Log.e(TAG, "Current valid remote client is dead: ", e2);
                            this.mCurrentRcClient = null;
                        }
                    } catch (RemoteException e3) {
                        Log.e(TAG, "Dead display in onRcDisplayInitInfo()", e3);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRcDisplayUpdate(RemoteControlStackEntry remoteControlStackEntry, int i2) {
        synchronized (this.mRCStack) {
            synchronized (this.mCurrentRcLock) {
                IRemoteControlClient iRemoteControlClient = this.mCurrentRcClient;
                if (iRemoteControlClient != null && iRemoteControlClient.equals(remoteControlStackEntry.mRcClient)) {
                    int i3 = this.mCurrentRcClientGen + 1;
                    this.mCurrentRcClientGen = i3;
                    setNewRcClient_syncRcsCurrc(i3, remoteControlStackEntry.mMediaIntent, false);
                    try {
                        this.mCurrentRcClient.onInformationRequested(this.mCurrentRcClientGen, i2);
                    } catch (RemoteException e2) {
                        Log.e(TAG, "Current valid remote client is dead: " + e2);
                        this.mCurrentRcClient = null;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onReevaluateRemote() {
        boolean z2;
        synchronized (this.mRCStack) {
            Iterator<RemoteControlStackEntry> it = this.mRCStack.iterator();
            do {
                z2 = true;
                if (!it.hasNext()) {
                    z2 = false;
                    break;
                }
            } while (it.next().mPlaybackType != 1);
        }
        synchronized (this.mMainRemote) {
            if (this.mHasRemotePlayback != z2) {
                this.mHasRemotePlayback = z2;
                this.mVolumeController.postRemoteSliderVisibility(z2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onReevaluateRemoteControlDisplays() {
        String stringForUser = Settings.Secure.getStringForUser(this.mContext.getContentResolver(), Settings.Secure.ENABLED_NOTIFICATION_LISTENERS, ActivityManager.getCurrentUser());
        synchronized (mAudioFocusLock) {
            synchronized (this.mRCStack) {
                String[] strArrSplit = stringForUser == null ? null : stringForUser.split(":");
                for (DisplayInfoForServer displayInfoForServer : this.mRcDisplays) {
                    if (displayInfoForServer.mClientNotifListComp != null) {
                        boolean z2 = displayInfoForServer.mEnabled;
                        displayInfoForServer.mEnabled = isComponentInStringArray(displayInfoForServer.mClientNotifListComp, strArrSplit);
                        if (z2 != displayInfoForServer.mEnabled) {
                            try {
                                displayInfoForServer.mRcDisplay.setEnabled(displayInfoForServer.mEnabled);
                                enableRemoteControlDisplayForClient_syncRcStack(displayInfoForServer.mRcDisplay, displayInfoForServer.mEnabled);
                                if (displayInfoForServer.mEnabled) {
                                    sendMsg(this.mEventHandler, 10, 2, displayInfoForServer.mArtworkExpectedWidth, displayInfoForServer.mArtworkExpectedHeight, displayInfoForServer.mRcDisplay, 0);
                                }
                            } catch (RemoteException e2) {
                                Log.e(TAG, "Error en/disabling RCD: ", e2);
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRegisterVolumeObserverForRcc(int i2, IRemoteVolumeObserver iRemoteVolumeObserver) {
        synchronized (this.mRCStack) {
            try {
                for (int size = this.mRCStack.size() - 1; size >= 0; size--) {
                    RemoteControlStackEntry remoteControlStackEntryElementAt = this.mRCStack.elementAt(size);
                    if (remoteControlStackEntryElementAt.mRccId == i2) {
                        remoteControlStackEntryElementAt.mRemoteVolumeObs = iRemoteVolumeObserver;
                        break;
                    }
                }
            } catch (ArrayIndexOutOfBoundsException e2) {
                Log.e(TAG, "Wrong index accessing media button stack, lock error? ", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSetRemoteControlClientPlaybackPosition(int i2, long j2) {
        synchronized (this.mRCStack) {
            synchronized (this.mCurrentRcLock) {
                IRemoteControlClient iRemoteControlClient = this.mCurrentRcClient;
                if (iRemoteControlClient != null && this.mCurrentRcClientGen == i2) {
                    try {
                        iRemoteControlClient.seekTo(i2, j2);
                    } catch (RemoteException e2) {
                        Log.e(TAG, "Current valid remote client is dead: " + e2);
                        this.mCurrentRcClient = null;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUpdateRemoteControlClientMetadata(int i2, int i3, Rating rating) {
        synchronized (this.mRCStack) {
            synchronized (this.mCurrentRcLock) {
                IRemoteControlClient iRemoteControlClient = this.mCurrentRcClient;
                if (iRemoteControlClient != null && this.mCurrentRcClientGen == i2) {
                    try {
                        if (i3 != 268435457) {
                            Log.e(TAG, "unhandled metadata key " + i3 + " update for RCC " + i2);
                        } else {
                            iRemoteControlClient.updateMetadata(i2, i3, rating);
                        }
                    } catch (RemoteException e2) {
                        Log.e(TAG, "Current valid remote client is dead", e2);
                        this.mCurrentRcClient = null;
                    }
                }
            }
        }
    }

    private void plugRemoteControlDisplaysIntoClient_syncRcStack(IRemoteControlClient iRemoteControlClient) {
        for (DisplayInfoForServer displayInfoForServer : this.mRcDisplays) {
            try {
                iRemoteControlClient.plugRemoteControlDisplay(displayInfoForServer.mRcDisplay, displayInfoForServer.mArtworkExpectedWidth, displayInfoForServer.mArtworkExpectedHeight);
                if (displayInfoForServer.mWantsPositionSync) {
                    iRemoteControlClient.setWantsSyncForDisplay(displayInfoForServer.mRcDisplay, true);
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "Error connecting RCD to RCC in RCC registration", e2);
            }
        }
    }

    private void postPromoteRcc(int i2) {
        sendMsg(this.mEventHandler, 6, 0, i2, 0, null, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postReevaluateRemote() {
        sendMsg(this.mEventHandler, 3, 2, 0, 0, null, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postReevaluateRemoteControlDisplays() {
        sendMsg(this.mEventHandler, 11, 2, 0, 0, null, 0);
    }

    private void propagateFocusLossFromGain_syncAf(int i2) {
        Iterator<FocusRequester> it = this.mFocusStack.iterator();
        while (it.hasNext()) {
            it.next().handleExternalFocusGain(i2);
        }
    }

    private boolean pushMediaButtonReceiver_syncAfRcs(PendingIntent pendingIntent, ComponentName componentName, IBinder iBinder) {
        RemoteControlStackEntry remoteControlStackEntryElementAt;
        ArrayIndexOutOfBoundsException e2;
        boolean z2;
        if ((!this.mRCStack.empty() && this.mRCStack.peek().mMediaIntent.equals(pendingIntent)) || this.mAppOps.noteOp(31, Binder.getCallingUid(), pendingIntent.getCreatorPackage()) != 0) {
            return false;
        }
        RemoteControlStackEntry remoteControlStackEntry = null;
        try {
            int size = this.mRCStack.size() - 1;
            while (true) {
                if (size < 0) {
                    z2 = false;
                    break;
                }
                remoteControlStackEntryElementAt = this.mRCStack.elementAt(size);
                try {
                    if (remoteControlStackEntryElementAt.mMediaIntent.equals(pendingIntent)) {
                        this.mRCStack.removeElementAt(size);
                        z2 = true;
                    } else {
                        size--;
                        remoteControlStackEntry = remoteControlStackEntryElementAt;
                    }
                } catch (ArrayIndexOutOfBoundsException e3) {
                    e2 = e3;
                    Log.e(TAG, "Wrong index accessing media button stack, lock error? ", e2);
                    z2 = false;
                }
                remoteControlStackEntry = remoteControlStackEntryElementAt;
                break;
            }
        } catch (ArrayIndexOutOfBoundsException e4) {
            remoteControlStackEntryElementAt = remoteControlStackEntry;
            e2 = e4;
        }
        if (!z2) {
            remoteControlStackEntry = new RemoteControlStackEntry(this, pendingIntent, componentName, iBinder);
        }
        this.mRCStack.push(remoteControlStackEntry);
        if (componentName != null) {
            MediaEventHandler mediaEventHandler = this.mEventHandler;
            mediaEventHandler.sendMessage(mediaEventHandler.obtainMessage(0, 0, 0, componentName));
        }
        return true;
    }

    private boolean rcDisplayIsPluggedIn_syncRcStack(IRemoteControlDisplay iRemoteControlDisplay) {
        Iterator<DisplayInfoForServer> it = this.mRcDisplays.iterator();
        while (it.hasNext()) {
            if (it.next().mRcDisplay.asBinder().equals(iRemoteControlDisplay.asBinder())) {
                return true;
            }
        }
        return false;
    }

    private void registerRemoteControlDisplay_int(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3, ComponentName componentName) {
        synchronized (mAudioFocusLock) {
            synchronized (this.mRCStack) {
                if (iRemoteControlDisplay != null) {
                    try {
                        if (!rcDisplayIsPluggedIn_syncRcStack(iRemoteControlDisplay)) {
                            DisplayInfoForServer displayInfoForServer = new DisplayInfoForServer(iRemoteControlDisplay, i2, i3);
                            displayInfoForServer.mEnabled = true;
                            displayInfoForServer.mClientNotifListComp = componentName;
                            if (displayInfoForServer.init()) {
                                this.mRcDisplays.add(displayInfoForServer);
                                Iterator<RemoteControlStackEntry> it = this.mRCStack.iterator();
                                while (it.hasNext()) {
                                    IRemoteControlClient iRemoteControlClient = it.next().mRcClient;
                                    if (iRemoteControlClient != null) {
                                        try {
                                            iRemoteControlClient.plugRemoteControlDisplay(iRemoteControlDisplay, i2, i3);
                                        } catch (RemoteException e2) {
                                            Log.e(TAG, "Error connecting RCD to client: ", e2);
                                        }
                                    }
                                }
                                sendMsg(this.mEventHandler, 10, 2, i2, i3, iRemoteControlDisplay, 0);
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    private void removeFocusStackEntry(String str, boolean z2) {
        if (!this.mFocusStack.empty() && this.mFocusStack.peek().hasSameClient(str)) {
            this.mFocusStack.pop().release();
            if (z2) {
                notifyTopOfAudioFocusStack();
                synchronized (this.mRCStack) {
                    checkUpdateRemoteControlDisplay_syncAfRcs(15);
                }
                return;
            }
            return;
        }
        Iterator<FocusRequester> it = this.mFocusStack.iterator();
        while (it.hasNext()) {
            FocusRequester next = it.next();
            if (next.hasSameClient(str)) {
                Log.i(TAG, "AudioFocus  removeFocusStackEntry(): removing entry for " + str);
                it.remove();
                next.release();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeFocusStackEntryForClient(IBinder iBinder) {
        boolean z2 = !this.mFocusStack.isEmpty() && this.mFocusStack.peek().hasSameBinder(iBinder);
        Iterator<FocusRequester> it = this.mFocusStack.iterator();
        while (it.hasNext()) {
            if (it.next().hasSameBinder(iBinder)) {
                Log.i(TAG, "AudioFocus  removeFocusStackEntry(): removing entry for " + iBinder);
                it.remove();
            }
        }
        if (z2) {
            notifyTopOfAudioFocusStack();
            synchronized (this.mRCStack) {
                checkUpdateRemoteControlDisplay_syncAfRcs(15);
            }
        }
    }

    private void removeMediaButtonReceiver_syncAfRcs(PendingIntent pendingIntent) {
        try {
            for (int size = this.mRCStack.size() - 1; size >= 0; size--) {
                RemoteControlStackEntry remoteControlStackEntryElementAt = this.mRCStack.elementAt(size);
                if (remoteControlStackEntryElementAt.mMediaIntent.equals(pendingIntent)) {
                    remoteControlStackEntryElementAt.destroy();
                    this.mRCStack.removeElementAt(size);
                    return;
                }
            }
        } catch (ArrayIndexOutOfBoundsException e2) {
            Log.e(TAG, "Wrong index accessing media button stack, lock error? ", e2);
        }
    }

    private static void sendMsg(Handler handler, int i2, int i3, int i4, int i5, Object obj, int i6) {
        if (i3 == 0) {
            handler.removeMessages(i2);
        } else if (i3 == 1 && handler.hasMessages(i2)) {
            return;
        }
        handler.sendMessageDelayed(handler.obtainMessage(i2, i4, i5, obj), i6);
    }

    private void sendSimulatedMediaButtonEvent(KeyEvent keyEvent, boolean z2) {
        dispatchMediaKeyEvent(KeyEvent.changeAction(keyEvent, 0), z2);
        dispatchMediaKeyEvent(KeyEvent.changeAction(keyEvent, 1), z2);
    }

    private void sendVolumeUpdateToRemote(int i2, int i3) {
        if (i3 == 0) {
            return;
        }
        IRemoteVolumeObserver iRemoteVolumeObserver = null;
        synchronized (this.mRCStack) {
            try {
                for (int size = this.mRCStack.size() - 1; size >= 0; size--) {
                    RemoteControlStackEntry remoteControlStackEntryElementAt = this.mRCStack.elementAt(size);
                    if (remoteControlStackEntryElementAt.mRccId == i2) {
                        iRemoteVolumeObserver = remoteControlStackEntryElementAt.mRemoteVolumeObs;
                        break;
                    }
                }
            } catch (ArrayIndexOutOfBoundsException e2) {
                Log.e(TAG, "Wrong index accessing media button stack, lock error? ", e2);
            }
        }
        if (iRemoteVolumeObserver != null) {
            try {
                iRemoteVolumeObserver.dispatchRemoteVolumeUpdate(i3, -1);
            } catch (RemoteException e3) {
                Log.e(TAG, "Error dispatching relative volume update", e3);
            }
        }
    }

    private void setNewRcClientGenerationOnClients_syncRcsCurrc(int i2) {
        IRemoteControlClient iRemoteControlClient;
        Iterator<RemoteControlStackEntry> it = this.mRCStack.iterator();
        while (it.hasNext()) {
            RemoteControlStackEntry next = it.next();
            if (next != null && (iRemoteControlClient = next.mRcClient) != null) {
                try {
                    iRemoteControlClient.setCurrentClientGenerationId(i2);
                } catch (RemoteException e2) {
                    Log.w(TAG, "Dead client in setNewRcClientGenerationOnClients_syncRcsCurrc()", e2);
                    it.remove();
                    next.unlinkToRcClientDeath();
                }
            }
        }
    }

    private void setNewRcClientOnDisplays_syncRcsCurrc(int i2, PendingIntent pendingIntent, boolean z2) {
        synchronized (this.mRCStack) {
            if (this.mRcDisplays.size() > 0) {
                Iterator<DisplayInfoForServer> it = this.mRcDisplays.iterator();
                while (it.hasNext()) {
                    DisplayInfoForServer next = it.next();
                    try {
                        next.mRcDisplay.setCurrentClientId(i2, pendingIntent, z2);
                    } catch (RemoteException e2) {
                        Log.e(TAG, "Dead display in setNewRcClientOnDisplays_syncRcsCurrc()", e2);
                        next.release();
                        it.remove();
                    }
                }
            }
        }
    }

    private void setNewRcClient_syncRcsCurrc(int i2, PendingIntent pendingIntent, boolean z2) {
        setNewRcClientOnDisplays_syncRcsCurrc(i2, pendingIntent, z2);
        setNewRcClientGenerationOnClients_syncRcsCurrc(i2);
    }

    private void startVoiceBasedInteractions(boolean z2) {
        Intent intent;
        PowerManager powerManager = (PowerManager) this.mContext.getSystemService(Context.POWER_SERVICE);
        KeyguardManager keyguardManager = this.mKeyguardManager;
        boolean z3 = keyguardManager != null && keyguardManager.isKeyguardLocked();
        if (z3 || !powerManager.isScreenOn()) {
            intent = new Intent(RecognizerIntent.ACTION_VOICE_SEARCH_HANDS_FREE);
            intent.putExtra(RecognizerIntent.EXTRA_SECURE, z3 && this.mKeyguardManager.isKeyguardSecure());
            Log.i(TAG, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE");
        } else {
            intent = new Intent(RecognizerIntent.ACTION_WEB_SEARCH);
            Log.i(TAG, "voice-based interactions: about to use ACTION_WEB_SEARCH");
        }
        if (z2) {
            this.mMediaEventWakeLock.acquire();
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            intent.setFlags(276824064);
            this.mContext.startActivityAsUser(intent, UserHandle.CURRENT);
        } catch (ActivityNotFoundException e2) {
            Log.w(TAG, "No activity for search: " + e2);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            if (z2) {
                this.mMediaEventWakeLock.release();
            }
        }
    }

    private void updateRemoteControlDisplay_syncAfRcs(int i2) {
        RemoteControlStackEntry remoteControlStackEntryPeek = this.mRCStack.peek();
        if (remoteControlStackEntryPeek.mRcClient == null) {
            clearRemoteControlDisplay_syncAfRcs();
            return;
        }
        synchronized (this.mCurrentRcLock) {
            if (!remoteControlStackEntryPeek.mRcClient.equals(this.mCurrentRcClient)) {
                i2 = 15;
            }
            this.mCurrentRcClient = remoteControlStackEntryPeek.mRcClient;
            this.mCurrentRcClientIntent = remoteControlStackEntryPeek.mMediaIntent;
        }
        MediaEventHandler mediaEventHandler = this.mEventHandler;
        mediaEventHandler.sendMessage(mediaEventHandler.obtainMessage(2, i2, 0, remoteControlStackEntryPeek));
    }

    public int abandonAudioFocus(IAudioFocusDispatcher iAudioFocusDispatcher, String str) {
        Log.i(TAG, " AudioFocus  abandonAudioFocus() from " + str);
        try {
            synchronized (mAudioFocusLock) {
                removeFocusStackEntry(str, true);
            }
        } catch (ConcurrentModificationException e2) {
            Log.e(TAG, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused " + e2);
            e2.printStackTrace();
        }
        return 1;
    }

    public void adjustRemoteVolume(int i2, int i3, int i4) {
        synchronized (this.mMainRemote) {
            if (this.mMainRemoteIsActive) {
                RemotePlaybackState remotePlaybackState = this.mMainRemote;
                int i5 = remotePlaybackState.mRccId;
                boolean z2 = remotePlaybackState.mVolumeHandling == 0;
                if (!z2) {
                    sendVolumeUpdateToRemote(i5, i3);
                }
                this.mVolumeController.postRemoteVolumeChanged(i2, i4);
            }
        }
    }

    public boolean checkUpdateRemoteStateIfActive(int i2) {
        synchronized (this.mRCStack) {
            try {
                for (int size = this.mRCStack.size() - 1; size >= 0; size--) {
                    RemoteControlStackEntry remoteControlStackEntryElementAt = this.mRCStack.elementAt(size);
                    if (remoteControlStackEntryElementAt.mPlaybackType == 1 && isPlaystateActive(remoteControlStackEntryElementAt.mPlaybackState.mState) && remoteControlStackEntryElementAt.mPlaybackStream == i2) {
                        synchronized (this.mMainRemote) {
                            RemotePlaybackState remotePlaybackState = this.mMainRemote;
                            remotePlaybackState.mRccId = remoteControlStackEntryElementAt.mRccId;
                            remotePlaybackState.mVolume = remoteControlStackEntryElementAt.mPlaybackVolume;
                            remotePlaybackState.mVolumeMax = remoteControlStackEntryElementAt.mPlaybackVolumeMax;
                            remotePlaybackState.mVolumeHandling = remoteControlStackEntryElementAt.mPlaybackVolumeHandling;
                            this.mMainRemoteIsActive = true;
                        }
                        return true;
                    }
                }
            } catch (ArrayIndexOutOfBoundsException e2) {
                Log.e(TAG, "Wrong index accessing RC stack, lock error? ", e2);
            }
            synchronized (this.mMainRemote) {
                this.mMainRemoteIsActive = false;
            }
            return false;
        }
    }

    public void discardAudioFocusOwner() {
        synchronized (mAudioFocusLock) {
            if (!this.mFocusStack.empty()) {
                FocusRequester focusRequesterPop = this.mFocusStack.pop();
                focusRequesterPop.handleFocusLoss(-1);
                focusRequesterPop.release();
                synchronized (this.mRCStack) {
                    clearRemoteControlDisplay_syncAfRcs();
                }
            }
        }
    }

    public void dispatchMediaKeyEvent(KeyEvent keyEvent) {
        filterMediaKeyEvent(keyEvent, false);
    }

    public void dispatchMediaKeyEventUnderWakelock(KeyEvent keyEvent) {
        filterMediaKeyEvent(keyEvent, true);
    }

    public void dump(PrintWriter printWriter) {
        dumpFocusStack(printWriter);
        dumpRCStack(printWriter);
        dumpRCCStack(printWriter);
        dumpRCDList(printWriter);
    }

    public int getCurrentAudioFocus() {
        synchronized (mAudioFocusLock) {
            if (this.mFocusStack.empty()) {
                return 0;
            }
            return this.mFocusStack.peek().getGainRequest();
        }
    }

    public int getRemoteStreamMaxVolume() {
        synchronized (this.mMainRemote) {
            RemotePlaybackState remotePlaybackState = this.mMainRemote;
            if (remotePlaybackState.mRccId == -1) {
                return 0;
            }
            return remotePlaybackState.mVolumeMax;
        }
    }

    public int getRemoteStreamVolume() {
        synchronized (this.mMainRemote) {
            RemotePlaybackState remotePlaybackState = this.mMainRemote;
            if (remotePlaybackState.mRccId == -1) {
                return 0;
            }
            return remotePlaybackState.mVolume;
        }
    }

    @Override // android.app.PendingIntent.OnFinished
    public void onSendFinished(PendingIntent pendingIntent, Intent intent, int i2, String str, Bundle bundle) {
        if (i2 == WAKELOCK_RELEASE_ON_FINISHED) {
            this.mMediaEventWakeLock.release();
        }
    }

    public void registerMediaButtonEventReceiverForCalls(ComponentName componentName) {
        if (this.mContext.checkCallingPermission(Manifest.permission.MODIFY_PHONE_STATE) != 0) {
            Log.e(TAG, "Invalid permissions to register media button receiver for calls");
            return;
        }
        synchronized (this.mRCStack) {
            this.mMediaReceiverForCalls = componentName;
        }
    }

    public void registerMediaButtonIntent(PendingIntent pendingIntent, ComponentName componentName, IBinder iBinder) {
        Log.i(TAG, "  Remote Control   registerMediaButtonIntent() for " + pendingIntent);
        synchronized (mAudioFocusLock) {
            synchronized (this.mRCStack) {
                if (pushMediaButtonReceiver_syncAfRcs(pendingIntent, componentName, iBinder)) {
                    checkUpdateRemoteControlDisplay_syncAfRcs(15);
                }
            }
        }
    }

    public int registerRemoteControlClient(PendingIntent pendingIntent, IRemoteControlClient iRemoteControlClient, String str) {
        int i2;
        synchronized (mAudioFocusLock) {
            synchronized (this.mRCStack) {
                i2 = -1;
                try {
                    for (int size = this.mRCStack.size() - 1; size >= 0; size--) {
                        RemoteControlStackEntry remoteControlStackEntryElementAt = this.mRCStack.elementAt(size);
                        if (remoteControlStackEntryElementAt.mMediaIntent.equals(pendingIntent)) {
                            if (remoteControlStackEntryElementAt.mRcClientDeathHandler != null) {
                                remoteControlStackEntryElementAt.unlinkToRcClientDeath();
                            }
                            remoteControlStackEntryElementAt.mRcClient = iRemoteControlClient;
                            remoteControlStackEntryElementAt.mCallingPackageName = str;
                            remoteControlStackEntryElementAt.mCallingUid = Binder.getCallingUid();
                            if (iRemoteControlClient != null) {
                                i2 = remoteControlStackEntryElementAt.mRccId;
                                if (this.mRcDisplays.size() > 0) {
                                    plugRemoteControlDisplaysIntoClient_syncRcStack(remoteControlStackEntryElementAt.mRcClient);
                                }
                                IBinder iBinderAsBinder = remoteControlStackEntryElementAt.mRcClient.asBinder();
                                RcClientDeathHandler rcClientDeathHandler = new RcClientDeathHandler(iBinderAsBinder, remoteControlStackEntryElementAt.mMediaIntent);
                                try {
                                    iBinderAsBinder.linkToDeath(rcClientDeathHandler, 0);
                                } catch (RemoteException unused) {
                                    Log.w(TAG, "registerRemoteControlClient() has a dead client " + iBinderAsBinder);
                                    remoteControlStackEntryElementAt.mRcClient = null;
                                }
                                remoteControlStackEntryElementAt.mRcClientDeathHandler = rcClientDeathHandler;
                                break;
                            }
                            remoteControlStackEntryElementAt.resetPlaybackInfo();
                            break;
                        }
                    }
                } catch (ArrayIndexOutOfBoundsException e2) {
                    Log.e(TAG, "Wrong index accessing RC stack, lock error? ", e2);
                }
                if (isCurrentRcController(pendingIntent)) {
                    checkUpdateRemoteControlDisplay_syncAfRcs(15);
                }
            }
        }
        return i2;
    }

    public boolean registerRemoteControlDisplay(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3) {
        if (checkRcdRegistrationAuthorization(null) != 0) {
            registerRemoteControlDisplay_int(iRemoteControlDisplay, i2, i3, null);
            return true;
        }
        Slog.w(TAG, "Access denied to process: " + Binder.getCallingPid() + ", must have permission " + Manifest.permission.MEDIA_CONTENT_CONTROL + " to register IRemoteControlDisplay");
        return false;
    }

    public boolean registerRemoteController(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3, ComponentName componentName) {
        if (checkRcdRegistrationAuthorization(componentName) != 0) {
            registerRemoteControlDisplay_int(iRemoteControlDisplay, i2, i3, componentName);
            return true;
        }
        Slog.w(TAG, "Access denied to process: " + Binder.getCallingPid() + ", must have permission " + Manifest.permission.MEDIA_CONTENT_CONTROL + " or be an enabled NotificationListenerService for registerRemoteController");
        return false;
    }

    public void registerRemoteVolumeObserverForRcc(int i2, IRemoteVolumeObserver iRemoteVolumeObserver) {
        sendMsg(this.mEventHandler, 5, 2, i2, 0, iRemoteVolumeObserver, 0);
    }

    public void remoteControlDisplayUsesBitmapSize(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3) {
        synchronized (this.mRCStack) {
            Iterator<DisplayInfoForServer> it = this.mRcDisplays.iterator();
            boolean z2 = false;
            while (it.hasNext() && !z2) {
                DisplayInfoForServer next = it.next();
                if (next.mRcDisplay.asBinder().equals(iRemoteControlDisplay.asBinder()) && (next.mArtworkExpectedWidth != i2 || next.mArtworkExpectedHeight != i3)) {
                    next.mArtworkExpectedWidth = i2;
                    next.mArtworkExpectedHeight = i3;
                    z2 = true;
                }
            }
            if (z2) {
                Iterator<RemoteControlStackEntry> it2 = this.mRCStack.iterator();
                while (it2.hasNext()) {
                    IRemoteControlClient iRemoteControlClient = it2.next().mRcClient;
                    if (iRemoteControlClient != null) {
                        try {
                            iRemoteControlClient.setBitmapSizeForDisplay(iRemoteControlDisplay, i2, i3);
                        } catch (RemoteException e2) {
                            Log.e(TAG, "Error setting bitmap size for RCD on RCC: ", e2);
                        }
                    }
                }
            }
        }
    }

    public void remoteControlDisplayWantsPlaybackPositionSync(IRemoteControlDisplay iRemoteControlDisplay, boolean z2) {
        synchronized (this.mRCStack) {
            boolean z3 = false;
            for (DisplayInfoForServer displayInfoForServer : this.mRcDisplays) {
                if (displayInfoForServer.mRcDisplay.asBinder().equals(iRemoteControlDisplay.asBinder())) {
                    displayInfoForServer.mWantsPositionSync = z2;
                    z3 = true;
                    break;
                }
            }
            if (z3) {
                Iterator<RemoteControlStackEntry> it = this.mRCStack.iterator();
                while (it.hasNext()) {
                    IRemoteControlClient iRemoteControlClient = it.next().mRcClient;
                    if (iRemoteControlClient != null) {
                        try {
                            iRemoteControlClient.setWantsSyncForDisplay(iRemoteControlDisplay, z2);
                        } catch (RemoteException e2) {
                            Log.e(TAG, "Error setting position sync flag for RCD on RCC: ", e2);
                        }
                    }
                }
            }
        }
    }

    public int requestAudioFocus(int i2, int i3, IBinder iBinder, IAudioFocusDispatcher iAudioFocusDispatcher, String str, String str2) {
        Log.i(TAG, " AudioFocus  requestAudioFocus() from " + str);
        if (!iBinder.pingBinder()) {
            Log.e(TAG, " AudioFocus DOA client for requestAudioFocus(), aborting.");
            return 0;
        }
        if (this.mAppOps.noteOp(32, Binder.getCallingUid(), str2) != 0) {
            return 0;
        }
        synchronized (mAudioFocusLock) {
            if (!canReassignAudioFocus()) {
                return 0;
            }
            AudioFocusDeathHandler audioFocusDeathHandler = new AudioFocusDeathHandler(iBinder);
            try {
                iBinder.linkToDeath(audioFocusDeathHandler, 0);
                if (!this.mFocusStack.empty() && this.mFocusStack.peek().hasSameClient(str)) {
                    if (this.mFocusStack.peek().getGainRequest() == i3) {
                        iBinder.unlinkToDeath(audioFocusDeathHandler, 0);
                        return 1;
                    }
                    this.mFocusStack.pop().release();
                }
                removeFocusStackEntry(str, false);
                if (!this.mFocusStack.empty()) {
                    propagateFocusLossFromGain_syncAf(i3);
                }
                this.mFocusStack.push(new FocusRequester(i2, i3, iAudioFocusDispatcher, iBinder, str, audioFocusDeathHandler, str2, Binder.getCallingUid()));
                synchronized (this.mRCStack) {
                    checkUpdateRemoteControlDisplay_syncAfRcs(15);
                }
                return 1;
            } catch (RemoteException unused) {
                Log.w(TAG, "AudioFocus  requestAudioFocus() could not link to " + iBinder + " binder death");
                return 0;
            }
        }
    }

    public void restoreMediaButtonReceiver() {
        ComponentName componentNameUnflattenFromString;
        String stringForUser = Settings.System.getStringForUser(this.mContentResolver, Settings.System.MEDIA_BUTTON_RECEIVER, -2);
        if (stringForUser == null || stringForUser.isEmpty() || (componentNameUnflattenFromString = ComponentName.unflattenFromString(stringForUser)) == null) {
            return;
        }
        Intent intent = new Intent(Intent.ACTION_MEDIA_BUTTON);
        intent.setComponent(componentNameUnflattenFromString);
        registerMediaButtonIntent(PendingIntent.getBroadcast(this.mContext, 0, intent, 0), componentNameUnflattenFromString, null);
    }

    public void setPlaybackInfoForRcc(int i2, int i3, int i4) {
        sendMsg(this.mEventHandler, 4, 2, i2, i3, Integer.valueOf(i4), 0);
    }

    public void setPlaybackStateForRcc(int i2, int i3, long j2, float f2) {
        sendMsg(this.mEventHandler, 7, 2, i2, i3, new RccPlaybackState(i3, j2, f2), 0);
    }

    public void setRemoteControlClientPlaybackPosition(int i2, long j2) {
        synchronized (this.mRCStack) {
            synchronized (this.mCurrentRcLock) {
                if (this.mCurrentRcClientGen != i2) {
                    return;
                }
                sendMsg(this.mEventHandler, 8, 0, i2, 0, new Long(j2), 0);
            }
        }
    }

    public void setRemoteStreamVolume(int i2) {
        synchronized (this.mMainRemote) {
            int i3 = this.mMainRemote.mRccId;
            if (i3 == -1) {
                return;
            }
            IRemoteVolumeObserver iRemoteVolumeObserver = null;
            synchronized (this.mRCStack) {
                try {
                    for (int size = this.mRCStack.size() - 1; size >= 0; size--) {
                        RemoteControlStackEntry remoteControlStackEntryElementAt = this.mRCStack.elementAt(size);
                        if (remoteControlStackEntryElementAt.mRccId == i3) {
                            iRemoteVolumeObserver = remoteControlStackEntryElementAt.mRemoteVolumeObs;
                            break;
                        }
                    }
                } catch (ArrayIndexOutOfBoundsException e2) {
                    Log.e(TAG, "Wrong index accessing media button stack, lock error? ", e2);
                }
            }
            if (iRemoteVolumeObserver != null) {
                try {
                    iRemoteVolumeObserver.dispatchRemoteVolumeUpdate(0, i2);
                } catch (RemoteException e3) {
                    Log.e(TAG, "Error dispatching absolute volume update", e3);
                }
            }
        }
    }

    public void unregisterAudioFocusClient(String str) {
        synchronized (mAudioFocusLock) {
            removeFocusStackEntry(str, false);
        }
    }

    public void unregisterMediaButtonEventReceiverForCalls() {
        if (this.mContext.checkCallingPermission(Manifest.permission.MODIFY_PHONE_STATE) != 0) {
            Log.e(TAG, "Invalid permissions to unregister media button receiver for calls");
            return;
        }
        synchronized (this.mRCStack) {
            this.mMediaReceiverForCalls = null;
        }
    }

    public void unregisterMediaButtonIntent(PendingIntent pendingIntent) {
        Log.i(TAG, "  Remote Control   unregisterMediaButtonIntent() for " + pendingIntent);
        synchronized (mAudioFocusLock) {
            synchronized (this.mRCStack) {
                boolean zIsCurrentRcController = isCurrentRcController(pendingIntent);
                removeMediaButtonReceiver_syncAfRcs(pendingIntent);
                if (zIsCurrentRcController) {
                    checkUpdateRemoteControlDisplay_syncAfRcs(15);
                }
            }
        }
    }

    public void unregisterRemoteControlClient(PendingIntent pendingIntent, IRemoteControlClient iRemoteControlClient) {
        synchronized (mAudioFocusLock) {
            try {
                synchronized (this.mRCStack) {
                    boolean z2 = false;
                    try {
                        for (int size = this.mRCStack.size() - 1; size >= 0; size--) {
                            RemoteControlStackEntry remoteControlStackEntryElementAt = this.mRCStack.elementAt(size);
                            if (remoteControlStackEntryElementAt.mMediaIntent.equals(pendingIntent) && iRemoteControlClient.equals(remoteControlStackEntryElementAt.mRcClient)) {
                                remoteControlStackEntryElementAt.unlinkToRcClientDeath();
                                remoteControlStackEntryElementAt.mRcClient = null;
                                remoteControlStackEntryElementAt.mCallingPackageName = null;
                                if (size != this.mRCStack.size() - 1) {
                                    break;
                                }
                                z2 = true;
                                break;
                            }
                        }
                    } catch (ArrayIndexOutOfBoundsException e2) {
                        Log.e(TAG, "Wrong index accessing RC stack, lock error? ", e2);
                    }
                    if (z2) {
                        checkUpdateRemoteControlDisplay_syncAfRcs(15);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void unregisterRemoteControlDisplay(IRemoteControlDisplay iRemoteControlDisplay) {
        synchronized (this.mRCStack) {
            if (iRemoteControlDisplay == null) {
                return;
            }
            boolean z2 = false;
            Iterator<DisplayInfoForServer> it = this.mRcDisplays.iterator();
            while (it.hasNext() && !z2) {
                DisplayInfoForServer next = it.next();
                if (next.mRcDisplay.asBinder().equals(iRemoteControlDisplay.asBinder())) {
                    z2 = true;
                    next.release();
                    it.remove();
                }
            }
            if (z2) {
                Iterator<RemoteControlStackEntry> it2 = this.mRCStack.iterator();
                while (it2.hasNext()) {
                    IRemoteControlClient iRemoteControlClient = it2.next().mRcClient;
                    if (iRemoteControlClient != null) {
                        try {
                            iRemoteControlClient.unplugRemoteControlDisplay(iRemoteControlDisplay);
                        } catch (RemoteException e2) {
                            Log.e(TAG, "Error disconnecting remote control display to client: ", e2);
                        }
                    }
                }
            }
        }
    }

    public void updateRemoteControlClientMetadata(int i2, int i3, Rating rating) {
        sendMsg(this.mEventHandler, 9, 2, i2, i3, rating, 0);
    }

    private void dispatchMediaKeyEvent(KeyEvent keyEvent, boolean z2) {
        if (z2) {
            this.mMediaEventWakeLock.acquire();
        }
        Intent intent = new Intent(Intent.ACTION_MEDIA_BUTTON, (Uri) null);
        intent.putExtra(Intent.EXTRA_KEY_EVENT, keyEvent);
        synchronized (this.mRCStack) {
            if (this.mRCStack.empty()) {
                if (z2) {
                    intent.putExtra(EXTRA_WAKELOCK_ACQUIRED, WAKELOCK_RELEASE_ON_FINISHED);
                }
                long jClearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    this.mContext.sendOrderedBroadcastAsUser(intent, UserHandle.ALL, null, this.mKeyEventDone, this.mEventHandler, -1, null, null);
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                    throw th;
                }
            } else {
                try {
                    this.mRCStack.peek().mMediaIntent.send(this.mContext, z2 ? WAKELOCK_RELEASE_ON_FINISHED : 0, intent, this, this.mEventHandler);
                } catch (PendingIntent.CanceledException e2) {
                    Log.e(TAG, "Error sending pending intent " + this.mRCStack.peek());
                    e2.printStackTrace();
                }
            }
        }
    }
}
