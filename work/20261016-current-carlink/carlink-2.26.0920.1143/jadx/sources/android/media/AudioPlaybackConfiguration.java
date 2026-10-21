package android.media;

import android.accessibilityservice.c;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class AudioPlaybackConfiguration implements Parcelable {
    private static final boolean DEBUG = false;
    public static final int PLAYER_PIID_INVALID = -1;
    public static final int PLAYER_STATE_IDLE = 1;
    public static final int PLAYER_STATE_PAUSED = 3;
    public static final int PLAYER_STATE_RELEASED = 0;
    public static final int PLAYER_STATE_STARTED = 2;
    public static final int PLAYER_STATE_STOPPED = 4;
    public static final int PLAYER_STATE_UNKNOWN = -1;
    public static final int PLAYER_TYPE_AAUDIO = 13;
    public static final int PLAYER_TYPE_EXTERNAL_PROXY = 15;
    public static final int PLAYER_TYPE_HW_SOURCE = 14;
    public static final int PLAYER_TYPE_JAM_AUDIOTRACK = 1;
    public static final int PLAYER_TYPE_JAM_MEDIAPLAYER = 2;
    public static final int PLAYER_TYPE_JAM_SOUNDPOOL = 3;
    public static final int PLAYER_TYPE_SLES_AUDIOPLAYER_BUFFERQUEUE = 11;
    public static final int PLAYER_TYPE_SLES_AUDIOPLAYER_URI_FD = 12;
    public static final int PLAYER_TYPE_UNKNOWN = -1;
    public static final int PLAYER_UPID_INVALID = -1;
    public static PlayerDeathMonitor sPlayerDeathMonitor;
    private int mClientPid;
    private int mClientUid;
    private IPlayerShell mIPlayerShell;
    private AudioAttributes mPlayerAttr;
    private final int mPlayerIId;
    private int mPlayerState;
    private int mPlayerType;
    private static final String TAG = new String("AudioPlaybackConfiguration");
    public static final Parcelable.Creator<AudioPlaybackConfiguration> CREATOR = new Parcelable.Creator<AudioPlaybackConfiguration>() { // from class: android.media.AudioPlaybackConfiguration.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AudioPlaybackConfiguration createFromParcel(Parcel parcel) {
            return new AudioPlaybackConfiguration(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AudioPlaybackConfiguration[] newArray(int i2) {
            return new AudioPlaybackConfiguration[i2];
        }
    };

    public static final class IPlayerShell implements IBinder.DeathRecipient {
        private volatile IPlayer mIPlayer;
        final AudioPlaybackConfiguration mMonitor;

        public IPlayerShell(AudioPlaybackConfiguration audioPlaybackConfiguration, IPlayer iPlayer) {
            this.mMonitor = audioPlaybackConfiguration;
            this.mIPlayer = iPlayer;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            AudioPlaybackConfiguration audioPlaybackConfiguration = this.mMonitor;
            if (audioPlaybackConfiguration != null) {
                audioPlaybackConfiguration.playerDied();
            }
        }

        public IPlayer getIPlayer() {
            return this.mIPlayer;
        }

        public synchronized void monitorDeath() {
            if (this.mIPlayer == null) {
                return;
            }
            try {
                this.mIPlayer.asBinder().linkToDeath(this, 0);
            } catch (RemoteException e2) {
                if (this.mMonitor != null) {
                    Log.w(AudioPlaybackConfiguration.TAG, "Could not link to client death for piid=" + this.mMonitor.mPlayerIId, e2);
                } else {
                    Log.w(AudioPlaybackConfiguration.TAG, "Could not link to client death", e2);
                }
            }
        }

        public synchronized void release() {
            if (this.mIPlayer == null) {
                return;
            }
            this.mIPlayer.asBinder().unlinkToDeath(this, 0);
            this.mIPlayer = null;
            Binder.flushPendingCommands();
        }
    }

    public interface PlayerDeathMonitor {
        void playerDeath(int i2);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface PlayerState {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface PlayerType {
    }

    public static AudioPlaybackConfiguration anonymizedCopy(AudioPlaybackConfiguration audioPlaybackConfiguration) {
        AudioPlaybackConfiguration audioPlaybackConfiguration2 = new AudioPlaybackConfiguration(audioPlaybackConfiguration.mPlayerIId);
        audioPlaybackConfiguration2.mPlayerState = audioPlaybackConfiguration.mPlayerState;
        audioPlaybackConfiguration2.mPlayerAttr = new AudioAttributes.Builder().setUsage(audioPlaybackConfiguration.mPlayerAttr.getUsage()).setContentType(audioPlaybackConfiguration.mPlayerAttr.getContentType()).setFlags(audioPlaybackConfiguration.mPlayerAttr.getFlags()).build();
        audioPlaybackConfiguration2.mPlayerType = -1;
        audioPlaybackConfiguration2.mClientUid = -1;
        audioPlaybackConfiguration2.mClientPid = -1;
        audioPlaybackConfiguration2.mIPlayerShell = null;
        return audioPlaybackConfiguration2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playerDied() {
        PlayerDeathMonitor playerDeathMonitor = sPlayerDeathMonitor;
        if (playerDeathMonitor != null) {
            playerDeathMonitor.playerDeath(this.mPlayerIId);
        }
    }

    public static String toLogFriendlyPlayerState(int i2) {
        if (i2 == -1) {
            return "unknown";
        }
        if (i2 == 0) {
            return "released";
        }
        if (i2 == 1) {
            return "idle";
        }
        if (i2 == 2) {
            return "started";
        }
        if (i2 != 3) {
            return i2 != 4 ? "unknown player state - FIXME" : "stopped";
        }
        return "paused";
    }

    public static String toLogFriendlyPlayerType(int i2) {
        if (i2 == -1) {
            return "unknown";
        }
        if (i2 == 1) {
            return "android.media.AudioTrack";
        }
        if (i2 == 2) {
            return "android.media.MediaPlayer";
        }
        if (i2 == 3) {
            return "android.media.SoundPool";
        }
        switch (i2) {
            case 11:
                return "OpenSL ES AudioPlayer (Buffer Queue)";
            case 12:
                return "OpenSL ES AudioPlayer (URI/FD)";
            case 13:
                return "AAudio";
            case 14:
                return "hardware source";
            case 15:
                return "external proxy";
            default:
                return c.e("unknown player type ", i2, " - FIXME");
        }
    }

    public static String toLogFriendlyString(AudioPlaybackConfiguration audioPlaybackConfiguration) {
        return new String("ID:" + audioPlaybackConfiguration.mPlayerIId + " -- type:" + toLogFriendlyPlayerType(audioPlaybackConfiguration.mPlayerType) + " -- u/pid:" + audioPlaybackConfiguration.mClientUid + "/" + audioPlaybackConfiguration.mClientPid + " -- state:" + toLogFriendlyPlayerState(audioPlaybackConfiguration.mPlayerState) + " -- attr:" + audioPlaybackConfiguration.mPlayerAttr);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("  " + toLogFriendlyString(this));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AudioPlaybackConfiguration)) {
            return false;
        }
        AudioPlaybackConfiguration audioPlaybackConfiguration = (AudioPlaybackConfiguration) obj;
        return this.mPlayerIId == audioPlaybackConfiguration.mPlayerIId && this.mPlayerType == audioPlaybackConfiguration.mPlayerType && this.mClientUid == audioPlaybackConfiguration.mClientUid && this.mClientPid == audioPlaybackConfiguration.mClientPid;
    }

    public AudioAttributes getAudioAttributes() {
        return this.mPlayerAttr;
    }

    public int getClientPid() {
        return this.mClientPid;
    }

    public int getClientUid() {
        return this.mClientUid;
    }

    public IPlayer getIPlayer() {
        IPlayerShell iPlayerShell;
        synchronized (this) {
            iPlayerShell = this.mIPlayerShell;
        }
        if (iPlayerShell == null) {
            return null;
        }
        return iPlayerShell.getIPlayer();
    }

    public int getPlayerInterfaceId() {
        return this.mPlayerIId;
    }

    public PlayerProxy getPlayerProxy() {
        IPlayerShell iPlayerShell;
        synchronized (this) {
            iPlayerShell = this.mIPlayerShell;
        }
        if (iPlayerShell == null) {
            return null;
        }
        return new PlayerProxy(this);
    }

    public int getPlayerState() {
        return this.mPlayerState;
    }

    public int getPlayerType() {
        int i2 = this.mPlayerType;
        switch (i2) {
            case 13:
            case 14:
            case 15:
                return -1;
            default:
                return i2;
        }
    }

    public boolean handleAudioAttributesEvent(AudioAttributes audioAttributes) {
        boolean z2 = !audioAttributes.equals(this.mPlayerAttr);
        this.mPlayerAttr = audioAttributes;
        return z2;
    }

    public boolean handleStateEvent(int i2) {
        boolean z2;
        IPlayerShell iPlayerShell;
        synchronized (this) {
            z2 = this.mPlayerState != i2;
            this.mPlayerState = i2;
            if (z2 && i2 == 0 && (iPlayerShell = this.mIPlayerShell) != null) {
                iPlayerShell.release();
                this.mIPlayerShell = null;
            }
        }
        return z2;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mPlayerIId), Integer.valueOf(this.mPlayerType), Integer.valueOf(this.mClientUid), Integer.valueOf(this.mClientPid));
    }

    public void init() {
        synchronized (this) {
            IPlayerShell iPlayerShell = this.mIPlayerShell;
            if (iPlayerShell != null) {
                iPlayerShell.monitorDeath();
            }
        }
    }

    public boolean isActive() {
        return this.mPlayerState == 2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        IPlayerShell iPlayerShell;
        parcel.writeInt(this.mPlayerIId);
        parcel.writeInt(this.mPlayerType);
        parcel.writeInt(this.mClientUid);
        parcel.writeInt(this.mClientPid);
        parcel.writeInt(this.mPlayerState);
        this.mPlayerAttr.writeToParcel(parcel, 0);
        synchronized (this) {
            iPlayerShell = this.mIPlayerShell;
        }
        parcel.writeStrongInterface(iPlayerShell == null ? null : iPlayerShell.getIPlayer());
    }

    private AudioPlaybackConfiguration(int i2) {
        this.mPlayerIId = i2;
        this.mIPlayerShell = null;
    }

    public AudioPlaybackConfiguration(PlayerBase.PlayerIdCard playerIdCard, int i2, int i3, int i4) {
        IPlayer iPlayer;
        this.mPlayerIId = i2;
        this.mPlayerType = playerIdCard.mPlayerType;
        this.mClientUid = i3;
        this.mClientPid = i4;
        this.mPlayerState = 1;
        this.mPlayerAttr = playerIdCard.mAttributes;
        if (sPlayerDeathMonitor != null && (iPlayer = playerIdCard.mIPlayer) != null) {
            this.mIPlayerShell = new IPlayerShell(this, iPlayer);
        } else {
            this.mIPlayerShell = null;
        }
    }

    private AudioPlaybackConfiguration(Parcel parcel) {
        this.mPlayerIId = parcel.readInt();
        this.mPlayerType = parcel.readInt();
        this.mClientUid = parcel.readInt();
        this.mClientPid = parcel.readInt();
        this.mPlayerState = parcel.readInt();
        this.mPlayerAttr = AudioAttributes.CREATOR.createFromParcel(parcel);
        IPlayer iPlayerAsInterface = IPlayer.Stub.asInterface(parcel.readStrongBinder());
        this.mIPlayerShell = iPlayerAsInterface != null ? new IPlayerShell(null, iPlayerAsInterface) : null;
    }
}
