package android.app;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Rational;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class PictureInPictureArgs implements Parcelable {
    public static final Parcelable.Creator<PictureInPictureArgs> CREATOR = new Parcelable.Creator<PictureInPictureArgs>() { // from class: android.app.PictureInPictureArgs.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PictureInPictureArgs createFromParcel(Parcel parcel) {
            return new PictureInPictureArgs(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PictureInPictureArgs[] newArray(int i2) {
            return new PictureInPictureArgs[i2];
        }
    };
    private Rational mAspectRatio;
    private Rect mSourceRectHint;
    private Rect mSourceRectHintInsets;
    private List<RemoteAction> mUserActions;

    public static class Builder {
        private Rational mAspectRatio;
        private Rect mSourceRectHint;
        private List<RemoteAction> mUserActions;

        public PictureInPictureArgs build() {
            return new PictureInPictureArgs(this.mAspectRatio, this.mUserActions, this.mSourceRectHint);
        }

        public Builder setActions(List<RemoteAction> list) {
            if (this.mUserActions != null) {
                this.mUserActions = null;
            }
            if (list != null) {
                this.mUserActions = new ArrayList(list);
            }
            return this;
        }

        public Builder setAspectRatio(Rational rational) {
            this.mAspectRatio = rational;
            return this;
        }

        public Builder setSourceRectHint(Rect rect) {
            if (rect == null) {
                this.mSourceRectHint = null;
            } else {
                this.mSourceRectHint = new Rect(rect);
            }
            return this;
        }
    }

    public static PictureInPictureArgs convert(PictureInPictureParams pictureInPictureParams) {
        return new PictureInPictureArgs(pictureInPictureParams.getAspectRatioRational(), pictureInPictureParams.getActions(), pictureInPictureParams.getSourceRectHint());
    }

    public void copyOnlySet(PictureInPictureArgs pictureInPictureArgs) {
        if (pictureInPictureArgs.hasSetAspectRatio()) {
            this.mAspectRatio = pictureInPictureArgs.mAspectRatio;
        }
        if (pictureInPictureArgs.hasSetActions()) {
            this.mUserActions = pictureInPictureArgs.mUserActions;
        }
        if (pictureInPictureArgs.hasSourceBoundsHint()) {
            this.mSourceRectHint = new Rect(pictureInPictureArgs.getSourceRectHint());
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<RemoteAction> getActions() {
        return this.mUserActions;
    }

    public float getAspectRatio() {
        Rational rational = this.mAspectRatio;
        if (rational != null) {
            return rational.floatValue();
        }
        return 0.0f;
    }

    public Rational getAspectRatioRational() {
        return this.mAspectRatio;
    }

    public Rect getSourceRectHint() {
        return this.mSourceRectHint;
    }

    public Rect getSourceRectHintInsets() {
        return this.mSourceRectHintInsets;
    }

    public boolean hasSetActions() {
        return this.mUserActions != null;
    }

    public boolean hasSetAspectRatio() {
        return this.mAspectRatio != null;
    }

    public boolean hasSourceBoundsHint() {
        Rect rect = this.mSourceRectHint;
        return (rect == null || rect.isEmpty()) ? false : true;
    }

    public boolean hasSourceBoundsHintInsets() {
        return this.mSourceRectHintInsets != null;
    }

    @Deprecated
    public void setActions(List<RemoteAction> list) {
        if (this.mUserActions != null) {
            this.mUserActions = null;
        }
        if (list != null) {
            this.mUserActions = new ArrayList(list);
        }
    }

    @Deprecated
    public void setAspectRatio(float f2) {
        this.mAspectRatio = new Rational((int) (f2 * 1.0E9f), 1000000000);
    }

    @Deprecated
    public void setSourceRectHint(Rect rect) {
        if (rect == null) {
            this.mSourceRectHint = null;
        } else {
            this.mSourceRectHint = new Rect(rect);
        }
    }

    @Deprecated
    public void setSourceRectHintInsets(Rect rect) {
        if (rect == null) {
            this.mSourceRectHintInsets = null;
        } else {
            this.mSourceRectHintInsets = new Rect(rect);
        }
    }

    public void truncateActions(int i2) {
        if (hasSetActions()) {
            List<RemoteAction> list = this.mUserActions;
            this.mUserActions = list.subList(0, Math.min(list.size(), i2));
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.mAspectRatio != null) {
            parcel.writeInt(1);
            parcel.writeInt(this.mAspectRatio.getNumerator());
            parcel.writeInt(this.mAspectRatio.getDenominator());
        } else {
            parcel.writeInt(0);
        }
        if (this.mUserActions != null) {
            parcel.writeInt(1);
            parcel.writeParcelableList(this.mUserActions, 0);
        } else {
            parcel.writeInt(0);
        }
        if (this.mSourceRectHint == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            this.mSourceRectHint.writeToParcel(parcel, 0);
        }
    }

    @Deprecated
    public PictureInPictureArgs() {
    }

    public static PictureInPictureParams convert(PictureInPictureArgs pictureInPictureArgs) {
        return new PictureInPictureParams(pictureInPictureArgs.getAspectRatioRational(), pictureInPictureArgs.getActions(), pictureInPictureArgs.getSourceRectHint());
    }

    @Deprecated
    public PictureInPictureArgs(float f2, List<RemoteAction> list) {
        setAspectRatio(f2);
        setActions(list);
    }

    private PictureInPictureArgs(Parcel parcel) {
        if (parcel.readInt() != 0) {
            this.mAspectRatio = new Rational(parcel.readInt(), parcel.readInt());
        }
        if (parcel.readInt() != 0) {
            ArrayList arrayList = new ArrayList();
            this.mUserActions = arrayList;
            parcel.readParcelableList(arrayList, RemoteAction.class.getClassLoader());
        }
        if (parcel.readInt() != 0) {
            this.mSourceRectHint = Rect.CREATOR.createFromParcel(parcel);
        }
    }

    private PictureInPictureArgs(Rational rational, List<RemoteAction> list, Rect rect) {
        this.mAspectRatio = rational;
        this.mUserActions = list;
        this.mSourceRectHint = rect;
    }
}
