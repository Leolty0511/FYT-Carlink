package android.media;

import android.app.ActivityThread;
import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import com.android.internal.app.IAppOpsCallback;
import com.android.internal.app.IAppOpsService;
import java.lang.ref.WeakReference;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class PlayerBase {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_APP_OPS = false;
    private static final String TAG = "PlayerBase";
    private static IAudioService sService;
    private IAppOpsService mAppOps;
    private IAppOpsCallback mAppOpsCallback;
    protected AudioAttributes mAttributes;
    private final int mImplType;
    private int mPlayerIId;
    private int mState;
    protected float mLeftVolume = 1.0f;
    protected float mRightVolume = 1.0f;
    protected float mAuxEffectSendLevel = 0.0f;
    private boolean mHasAppOpsPlayAudio = true;
    private final Object mLock = new Object();
    private int mStartDelayMs = 0;
    private float mPanMultiplierL = 1.0f;
    private float mPanMultiplierR = 1.0f;

    public static class IAppOpsCallbackWrapper extends IAppOpsCallback.Stub {
        private final WeakReference<PlayerBase> mWeakPB;

        public IAppOpsCallbackWrapper(PlayerBase playerBase) {
            this.mWeakPB = new WeakReference<>(playerBase);
        }

        @Override // com.android.internal.app.IAppOpsCallback
        public void opChanged(int i2, int i3, String str) {
            PlayerBase playerBase;
            if (i2 != 28 || (playerBase = this.mWeakPB.get()) == null) {
                return;
            }
            playerBase.updateAppOpsPlayAudio();
        }
    }

    public static class IPlayerWrapper extends IPlayer.Stub {
        private final WeakReference<PlayerBase> mWeakPB;

        public IPlayerWrapper(PlayerBase playerBase) {
            this.mWeakPB = new WeakReference<>(playerBase);
        }

        @Override // android.media.IPlayer
        public void applyVolumeShaper(VolumeShaper.Configuration configuration, VolumeShaper.Operation operation) {
            PlayerBase playerBase = this.mWeakPB.get();
            if (playerBase != null) {
                playerBase.playerApplyVolumeShaper(configuration, operation);
            }
        }

        @Override // android.media.IPlayer
        public void pause() {
            PlayerBase playerBase = this.mWeakPB.get();
            if (playerBase != null) {
                playerBase.playerPause();
            }
        }

        @Override // android.media.IPlayer
        public void setPan(float f2) {
            PlayerBase playerBase = this.mWeakPB.get();
            if (playerBase != null) {
                playerBase.baseSetPan(f2);
            }
        }

        @Override // android.media.IPlayer
        public void setStartDelayMs(int i2) {
            PlayerBase playerBase = this.mWeakPB.get();
            if (playerBase != null) {
                playerBase.baseSetStartDelayMs(i2);
            }
        }

        @Override // android.media.IPlayer
        public void setVolume(float f2) {
            PlayerBase playerBase = this.mWeakPB.get();
            if (playerBase != null) {
                playerBase.baseSetVolume(f2, f2);
            }
        }

        @Override // android.media.IPlayer
        public void start() {
            PlayerBase playerBase = this.mWeakPB.get();
            if (playerBase != null) {
                playerBase.playerStart();
            }
        }

        @Override // android.media.IPlayer
        public void stop() {
            PlayerBase playerBase = this.mWeakPB.get();
            if (playerBase != null) {
                playerBase.playerStop();
            }
        }
    }

    public static class PlayerIdCard implements Parcelable {
        public static final int AUDIO_ATTRIBUTES_DEFINED = 1;
        public static final int AUDIO_ATTRIBUTES_NONE = 0;
        public static final Parcelable.Creator<PlayerIdCard> CREATOR = new Parcelable.Creator<PlayerIdCard>() { // from class: android.media.PlayerBase.PlayerIdCard.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PlayerIdCard createFromParcel(Parcel parcel) {
                return new PlayerIdCard(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PlayerIdCard[] newArray(int i2) {
                return new PlayerIdCard[i2];
            }
        };
        public final AudioAttributes mAttributes;
        public final IPlayer mIPlayer;
        public final int mPlayerType;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof PlayerIdCard)) {
                return false;
            }
            PlayerIdCard playerIdCard = (PlayerIdCard) obj;
            return this.mPlayerType == playerIdCard.mPlayerType && this.mAttributes.equals(playerIdCard.mAttributes);
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.mPlayerType));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.mPlayerType);
            this.mAttributes.writeToParcel(parcel, 0);
            IPlayer iPlayer = this.mIPlayer;
            parcel.writeStrongBinder(iPlayer == null ? null : iPlayer.asBinder());
        }

        public PlayerIdCard(int i2, AudioAttributes audioAttributes, IPlayer iPlayer) {
            this.mPlayerType = i2;
            this.mAttributes = audioAttributes;
            this.mIPlayer = iPlayer;
        }

        private PlayerIdCard(Parcel parcel) {
            this.mPlayerType = parcel.readInt();
            this.mAttributes = AudioAttributes.CREATOR.createFromParcel(parcel);
            IBinder strongBinder = parcel.readStrongBinder();
            this.mIPlayer = strongBinder == null ? null : IPlayer.Stub.asInterface(strongBinder);
        }
    }

    public PlayerBase(AudioAttributes audioAttributes, int i2) {
        if (audioAttributes == null) {
            throw new IllegalArgumentException("Illegal null AudioAttributes");
        }
        this.mAttributes = audioAttributes;
        this.mImplType = i2;
        this.mState = 1;
    }

    public static void deprecateStreamTypeForPlayback(int i2, String str, String str2) {
        if (i2 == 10) {
            throw new IllegalArgumentException("Use of STREAM_ACCESSIBILITY is reserved for volume control");
        }
        Log.w(str, "Use of stream types is deprecated for operations other than volume control");
        Log.w(str, "See the documentation of " + str2 + " for what to use instead with android.media.AudioAttributes to qualify your playback use case");
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

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAppOpsPlayAudio() {
        synchronized (this.mLock) {
            updateAppOpsPlayAudio_sync(false);
        }
    }

    public void basePause() {
        try {
            synchronized (this.mLock) {
                try {
                    this.mState = 3;
                    getService().playerEvent(this.mPlayerIId, this.mState);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error talking to audio service, PAUSED state will not be tracked", e2);
        }
    }

    public void baseRegisterPlayer() {
        int iTrackPlayer;
        this.mAppOps = IAppOpsService.Stub.asInterface(ServiceManager.getService(Context.APP_OPS_SERVICE));
        updateAppOpsPlayAudio();
        this.mAppOpsCallback = new IAppOpsCallbackWrapper(this);
        try {
            this.mAppOps.startWatchingMode(28, ActivityThread.currentPackageName(), this.mAppOpsCallback);
        } catch (RemoteException unused) {
            this.mHasAppOpsPlayAudio = false;
        }
        try {
            iTrackPlayer = getService().trackPlayer(new PlayerIdCard(this.mImplType, this.mAttributes, new IPlayerWrapper(this)));
        } catch (RemoteException e2) {
            Log.e(TAG, "Error talking to audio service, player will not be tracked", e2);
            iTrackPlayer = -1;
        }
        this.mPlayerIId = iTrackPlayer;
    }

    public void baseRelease() {
        try {
            synchronized (this.mLock) {
                try {
                    if (this.mState != 0) {
                        getService().releasePlayer(this.mPlayerIId);
                        this.mState = 0;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error talking to audio service, the player will still be tracked", e2);
        }
        try {
            IAppOpsService iAppOpsService = this.mAppOps;
            if (iAppOpsService != null) {
                iAppOpsService.stopWatchingMode(this.mAppOpsCallback);
            }
        } catch (Exception unused) {
        }
    }

    public int baseSetAuxEffectSendLevel(float f2) {
        synchronized (this.mLock) {
            this.mAuxEffectSendLevel = f2;
            if (isRestricted_sync()) {
                return 0;
            }
            return playerSetAuxEffectSendLevel(false, f2);
        }
    }

    public void baseSetPan(float f2) {
        float fMin = Math.min(Math.max(-1.0f, f2), 1.0f);
        synchronized (this.mLock) {
            try {
                if (fMin >= 0.0f) {
                    this.mPanMultiplierL = 1.0f - fMin;
                    this.mPanMultiplierR = 1.0f;
                } else {
                    this.mPanMultiplierL = 1.0f;
                    this.mPanMultiplierR = fMin + 1.0f;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        baseSetVolume(this.mLeftVolume, this.mRightVolume);
    }

    public void baseSetStartDelayMs(int i2) {
        synchronized (this.mLock) {
            this.mStartDelayMs = Math.max(i2, 0);
        }
    }

    public void baseSetVolume(float f2, float f3) {
        boolean zIsRestricted_sync;
        synchronized (this.mLock) {
            this.mLeftVolume = f2;
            this.mRightVolume = f3;
            zIsRestricted_sync = isRestricted_sync();
        }
        playerSetVolume(zIsRestricted_sync, f2 * this.mPanMultiplierL, f3 * this.mPanMultiplierR);
    }

    public void baseStart() {
        try {
            synchronized (this.mLock) {
                this.mState = 2;
                getService().playerEvent(this.mPlayerIId, this.mState);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error talking to audio service, STARTED state will not be tracked", e2);
        }
        synchronized (this.mLock) {
            if (isRestricted_sync()) {
                playerSetVolume(true, 0.0f, 0.0f);
            }
        }
    }

    public void baseStop() {
        try {
            synchronized (this.mLock) {
                try {
                    this.mState = 4;
                    getService().playerEvent(this.mPlayerIId, this.mState);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error talking to audio service, STOPPED state will not be tracked", e2);
        }
    }

    public void baseUpdateAudioAttributes(AudioAttributes audioAttributes) {
        if (audioAttributes == null) {
            throw new IllegalArgumentException("Illegal null AudioAttributes");
        }
        try {
            getService().playerAttributes(this.mPlayerIId, audioAttributes);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error talking to audio service, STARTED state will not be tracked", e2);
        }
        synchronized (this.mLock) {
            boolean z2 = this.mAttributes != audioAttributes;
            this.mAttributes = audioAttributes;
            updateAppOpsPlayAudio_sync(z2);
        }
    }

    public int getStartDelayMs() {
        int i2;
        synchronized (this.mLock) {
            i2 = this.mStartDelayMs;
        }
        return i2;
    }

    public boolean isRestricted_sync() {
        boolean zIsCameraSoundForced;
        if (this.mHasAppOpsPlayAudio || (this.mAttributes.getAllFlags() & 64) != 0) {
            return false;
        }
        if ((this.mAttributes.getAllFlags() & 1) != 0 && this.mAttributes.getUsage() == 13) {
            try {
                zIsCameraSoundForced = getService().isCameraSoundForced();
            } catch (RemoteException unused) {
                Log.e(TAG, "Cannot access AudioService in isRestricted_sync()");
                zIsCameraSoundForced = false;
            } catch (NullPointerException unused2) {
                Log.e(TAG, "Null AudioService in isRestricted_sync()");
                zIsCameraSoundForced = false;
            }
            if (zIsCameraSoundForced) {
                return false;
            }
        }
        return true;
    }

    public abstract int playerApplyVolumeShaper(VolumeShaper.Configuration configuration, VolumeShaper.Operation operation);

    public abstract VolumeShaper.State playerGetVolumeShaperState(int i2);

    public abstract void playerPause();

    public abstract int playerSetAuxEffectSendLevel(boolean z2, float f2);

    public abstract void playerSetVolume(boolean z2, float f2, float f3);

    public abstract void playerStart();

    public abstract void playerStop();

    public void setStartDelayMs(int i2) {
        baseSetStartDelayMs(i2);
    }

    public void updateAppOpsPlayAudio_sync(boolean z2) {
        boolean z3 = this.mHasAppOpsPlayAudio;
        try {
            IAppOpsService iAppOpsService = this.mAppOps;
            this.mHasAppOpsPlayAudio = (iAppOpsService != null ? iAppOpsService.checkAudioOperation(28, this.mAttributes.getUsage(), Process.myUid(), ActivityThread.currentPackageName()) : 1) == 0;
        } catch (RemoteException unused) {
            this.mHasAppOpsPlayAudio = false;
        }
        try {
            if (z3 != this.mHasAppOpsPlayAudio || z2) {
                getService().playerHasOpPlayAudio(this.mPlayerIId, this.mHasAppOpsPlayAudio);
                if (isRestricted_sync()) {
                    playerSetVolume(true, 0.0f, 0.0f);
                    playerSetAuxEffectSendLevel(true, 0.0f);
                } else {
                    playerSetVolume(false, this.mLeftVolume * this.mPanMultiplierL, this.mRightVolume * this.mPanMultiplierR);
                    playerSetAuxEffectSendLevel(false, this.mAuxEffectSendLevel);
                }
            }
        } catch (Exception unused2) {
        }
    }
}
