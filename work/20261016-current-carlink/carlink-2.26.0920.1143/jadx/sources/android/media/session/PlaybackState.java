package android.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class PlaybackState implements Parcelable {
    public static final long ACTION_FAST_FORWARD = 64;
    public static final long ACTION_PAUSE = 2;
    public static final long ACTION_PLAY = 4;
    public static final long ACTION_PLAY_FROM_MEDIA_ID = 1024;
    public static final long ACTION_PLAY_FROM_SEARCH = 2048;
    public static final long ACTION_PLAY_FROM_URI = 8192;
    public static final long ACTION_PLAY_PAUSE = 512;
    public static final long ACTION_PREPARE = 16384;
    public static final long ACTION_PREPARE_FROM_MEDIA_ID = 32768;
    public static final long ACTION_PREPARE_FROM_SEARCH = 65536;
    public static final long ACTION_PREPARE_FROM_URI = 131072;
    public static final long ACTION_REWIND = 8;
    public static final long ACTION_SEEK_TO = 256;
    public static final long ACTION_SET_RATING = 128;
    public static final long ACTION_SKIP_TO_NEXT = 32;
    public static final long ACTION_SKIP_TO_PREVIOUS = 16;
    public static final long ACTION_SKIP_TO_QUEUE_ITEM = 4096;
    public static final long ACTION_STOP = 1;
    public static final Parcelable.Creator<PlaybackState> CREATOR = new Parcelable.Creator<PlaybackState>() { // from class: android.media.session.PlaybackState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaybackState createFromParcel(Parcel parcel) {
            return new PlaybackState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaybackState[] newArray(int i2) {
            return new PlaybackState[i2];
        }
    };
    public static final long PLAYBACK_POSITION_UNKNOWN = -1;
    public static final int STATE_BUFFERING = 6;
    public static final int STATE_CONNECTING = 8;
    public static final int STATE_ERROR = 7;
    public static final int STATE_FAST_FORWARDING = 4;
    public static final int STATE_NONE = 0;
    public static final int STATE_PAUSED = 2;
    public static final int STATE_PLAYING = 3;
    public static final int STATE_REWINDING = 5;
    public static final int STATE_SKIPPING_TO_NEXT = 10;
    public static final int STATE_SKIPPING_TO_PREVIOUS = 9;
    public static final int STATE_SKIPPING_TO_QUEUE_ITEM = 11;
    public static final int STATE_STOPPED = 1;
    private static final String TAG = "PlaybackState";
    private final long mActions;
    private final long mActiveItemId;
    private final long mBufferedPosition;
    private List<CustomAction> mCustomActions;
    private final CharSequence mErrorMessage;
    private final Bundle mExtras;
    private final long mPosition;
    private final float mSpeed;
    private final int mState;
    private final long mUpdateTime;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Actions {
    }

    public static final class Builder {
        private long mActions;
        private long mActiveItemId;
        private long mBufferedPosition;
        private final List<CustomAction> mCustomActions;
        private CharSequence mErrorMessage;
        private Bundle mExtras;
        private long mPosition;
        private float mSpeed;
        private int mState;
        private long mUpdateTime;

        public Builder() {
            this.mCustomActions = new ArrayList();
            this.mActiveItemId = -1L;
        }

        public Builder addCustomAction(String str, String str2, int i2) {
            return addCustomAction(new CustomAction(str, str2, i2, null));
        }

        public PlaybackState build() {
            return new PlaybackState(this.mState, this.mPosition, this.mUpdateTime, this.mSpeed, this.mBufferedPosition, this.mActions, this.mCustomActions, this.mActiveItemId, this.mErrorMessage, this.mExtras);
        }

        public Builder setActions(long j2) {
            this.mActions = j2;
            return this;
        }

        public Builder setActiveQueueItemId(long j2) {
            this.mActiveItemId = j2;
            return this;
        }

        public Builder setBufferedPosition(long j2) {
            this.mBufferedPosition = j2;
            return this;
        }

        public Builder setErrorMessage(CharSequence charSequence) {
            this.mErrorMessage = charSequence;
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.mExtras = bundle;
            return this;
        }

        public Builder setState(int i2, long j2, float f2, long j3) {
            this.mState = i2;
            this.mPosition = j2;
            this.mUpdateTime = j3;
            this.mSpeed = f2;
            return this;
        }

        public Builder addCustomAction(CustomAction customAction) {
            if (customAction == null) {
                throw new IllegalArgumentException("You may not add a null CustomAction to PlaybackState.");
            }
            this.mCustomActions.add(customAction);
            return this;
        }

        public Builder(PlaybackState playbackState) {
            ArrayList arrayList = new ArrayList();
            this.mCustomActions = arrayList;
            this.mActiveItemId = -1L;
            if (playbackState == null) {
                return;
            }
            this.mState = playbackState.mState;
            this.mPosition = playbackState.mPosition;
            this.mBufferedPosition = playbackState.mBufferedPosition;
            this.mSpeed = playbackState.mSpeed;
            this.mActions = playbackState.mActions;
            if (playbackState.mCustomActions != null) {
                arrayList.addAll(playbackState.mCustomActions);
            }
            this.mErrorMessage = playbackState.mErrorMessage;
            this.mUpdateTime = playbackState.mUpdateTime;
            this.mActiveItemId = playbackState.mActiveItemId;
            this.mExtras = playbackState.mExtras;
        }

        public Builder setState(int i2, long j2, float f2) {
            return setState(i2, j2, f2, SystemClock.elapsedRealtime());
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface State {
    }

    private static long getActionForRccFlag(int i2) {
        if (i2 == 1) {
            return 16L;
        }
        if (i2 == 2) {
            return 8L;
        }
        if (i2 == 4) {
            return 4L;
        }
        if (i2 == 8) {
            return 512L;
        }
        if (i2 == 16) {
            return 2L;
        }
        if (i2 == 32) {
            return 1L;
        }
        if (i2 == 64) {
            return 64L;
        }
        if (i2 == 128) {
            return 32L;
        }
        if (i2 != 256) {
            return i2 != 512 ? 0L : 128L;
        }
        return 256L;
    }

    public static long getActionsFromRccControlFlags(int i2) {
        long j2 = 1;
        long actionForRccFlag = 0;
        while (true) {
            long j3 = i2;
            if (j2 > j3) {
                return actionForRccFlag;
            }
            if ((j3 & j2) != 0) {
                actionForRccFlag |= getActionForRccFlag((int) j2);
            }
            j2 <<= 1;
        }
    }

    public static int getRccControlFlagsFromActions(long j2) {
        int rccFlagForAction = 0;
        for (long j3 = 1; j3 <= j2 && j3 < 2147483647L; j3 <<= 1) {
            if ((j3 & j2) != 0) {
                rccFlagForAction |= getRccFlagForAction(j3);
            }
        }
        return rccFlagForAction;
    }

    private static int getRccFlagForAction(long j2) {
        int i2 = j2 < 2147483647L ? (int) j2 : 0;
        int i3 = 1;
        if (i2 == 1) {
            return 32;
        }
        if (i2 == 2) {
            return 16;
        }
        if (i2 == 4) {
            return 4;
        }
        if (i2 == 8) {
            return 2;
        }
        if (i2 != 16) {
            i3 = 128;
            if (i2 != 32) {
                int i4 = 64;
                if (i2 != 64) {
                    i4 = 512;
                    if (i2 != 128) {
                        if (i2 != 256) {
                            return i2 != 512 ? 0 : 8;
                        }
                        return 256;
                    }
                }
                return i4;
            }
        }
        return i3;
    }

    public static int getRccStateFromState(int i2) {
        switch (i2) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
            default:
                return -1;
            case 9:
                return 7;
            case 10:
                return 6;
        }
    }

    public static int getStateFromRccState(int i2) {
        switch (i2) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 10;
            case 7:
                return 9;
            case 8:
                return 6;
            case 9:
                return 7;
            default:
                return -1;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getActions() {
        return this.mActions;
    }

    public long getActiveQueueItemId() {
        return this.mActiveItemId;
    }

    public long getBufferedPosition() {
        return this.mBufferedPosition;
    }

    public List<CustomAction> getCustomActions() {
        return this.mCustomActions;
    }

    public CharSequence getErrorMessage() {
        return this.mErrorMessage;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public long getLastPositionUpdateTime() {
        return this.mUpdateTime;
    }

    public float getPlaybackSpeed() {
        return this.mSpeed;
    }

    public long getPosition() {
        return this.mPosition;
    }

    public int getState() {
        return this.mState;
    }

    public String toString() {
        return "PlaybackState {state=" + this.mState + ", position=" + this.mPosition + ", buffered position=" + this.mBufferedPosition + ", speed=" + this.mSpeed + ", updated=" + this.mUpdateTime + ", actions=" + this.mActions + ", custom actions=" + this.mCustomActions + ", active item id=" + this.mActiveItemId + ", error=" + this.mErrorMessage + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mState);
        parcel.writeLong(this.mPosition);
        parcel.writeFloat(this.mSpeed);
        parcel.writeLong(this.mUpdateTime);
        parcel.writeLong(this.mBufferedPosition);
        parcel.writeLong(this.mActions);
        parcel.writeTypedList(this.mCustomActions);
        parcel.writeLong(this.mActiveItemId);
        parcel.writeCharSequence(this.mErrorMessage);
        parcel.writeBundle(this.mExtras);
    }

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new Parcelable.Creator<CustomAction>() { // from class: android.media.session.PlaybackState.CustomAction.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CustomAction[] newArray(int i2) {
                return new CustomAction[i2];
            }
        };
        private final String mAction;
        private final Bundle mExtras;
        private final int mIcon;
        private final CharSequence mName;

        public static final class Builder {
            private final String mAction;
            private Bundle mExtras;
            private final int mIcon;
            private final CharSequence mName;

            public Builder(String str, CharSequence charSequence, int i2) {
                if (TextUtils.isEmpty(str)) {
                    throw new IllegalArgumentException("You must specify an action to build a CustomAction.");
                }
                if (TextUtils.isEmpty(charSequence)) {
                    throw new IllegalArgumentException("You must specify a name to build a CustomAction.");
                }
                if (i2 == 0) {
                    throw new IllegalArgumentException("You must specify an icon resource id to build a CustomAction.");
                }
                this.mAction = str;
                this.mName = charSequence;
                this.mIcon = i2;
            }

            public CustomAction build() {
                return new CustomAction(this.mAction, this.mName, this.mIcon, this.mExtras);
            }

            public Builder setExtras(Bundle bundle) {
                this.mExtras = bundle;
                return this;
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getAction() {
            return this.mAction;
        }

        public Bundle getExtras() {
            return this.mExtras;
        }

        public int getIcon() {
            return this.mIcon;
        }

        public CharSequence getName() {
            return this.mName;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.mName) + ", mIcon=" + this.mIcon + ", mExtras=" + this.mExtras;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.mAction);
            TextUtils.writeToParcel(this.mName, parcel, i2);
            parcel.writeInt(this.mIcon);
            parcel.writeBundle(this.mExtras);
        }

        private CustomAction(String str, CharSequence charSequence, int i2, Bundle bundle) {
            this.mAction = str;
            this.mName = charSequence;
            this.mIcon = i2;
            this.mExtras = bundle;
        }

        private CustomAction(Parcel parcel) {
            this.mAction = parcel.readString();
            this.mName = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.mIcon = parcel.readInt();
            this.mExtras = parcel.readBundle();
        }
    }

    private PlaybackState(int i2, long j2, long j3, float f2, long j4, long j5, List<CustomAction> list, long j6, CharSequence charSequence, Bundle bundle) {
        this.mState = i2;
        this.mPosition = j2;
        this.mSpeed = f2;
        this.mUpdateTime = j3;
        this.mBufferedPosition = j4;
        this.mActions = j5;
        this.mCustomActions = new ArrayList(list);
        this.mActiveItemId = j6;
        this.mErrorMessage = charSequence;
        this.mExtras = bundle;
    }

    private PlaybackState(Parcel parcel) {
        this.mState = parcel.readInt();
        this.mPosition = parcel.readLong();
        this.mSpeed = parcel.readFloat();
        this.mUpdateTime = parcel.readLong();
        this.mBufferedPosition = parcel.readLong();
        this.mActions = parcel.readLong();
        this.mCustomActions = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.mActiveItemId = parcel.readLong();
        this.mErrorMessage = parcel.readCharSequence();
        this.mExtras = parcel.readBundle();
    }
}
