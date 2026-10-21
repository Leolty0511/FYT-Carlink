package android.service.resolver;

import android.app.m;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public final class ResolverTarget implements Parcelable {
    public static final Parcelable.Creator<ResolverTarget> CREATOR = new Parcelable.Creator<ResolverTarget>() { // from class: android.service.resolver.ResolverTarget.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResolverTarget createFromParcel(Parcel parcel) {
            return new ResolverTarget(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResolverTarget[] newArray(int i2) {
            return new ResolverTarget[i2];
        }
    };
    private static final String TAG = "ResolverTarget";
    private float mChooserScore;
    private float mLaunchScore;
    private float mRecencyScore;
    private float mSelectProbability;
    private float mTimeSpentScore;

    public ResolverTarget() {
    }

    public ResolverTarget(Parcel parcel) {
        this.mRecencyScore = parcel.readFloat();
        this.mTimeSpentScore = parcel.readFloat();
        this.mLaunchScore = parcel.readFloat();
        this.mChooserScore = parcel.readFloat();
        this.mSelectProbability = parcel.readFloat();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public float getChooserScore() {
        return this.mChooserScore;
    }

    public float getLaunchScore() {
        return this.mLaunchScore;
    }

    public float getRecencyScore() {
        return this.mRecencyScore;
    }

    public float getSelectProbability() {
        return this.mSelectProbability;
    }

    public float getTimeSpentScore() {
        return this.mTimeSpentScore;
    }

    public void setChooserScore(float f2) {
        this.mChooserScore = f2;
    }

    public void setLaunchScore(float f2) {
        this.mLaunchScore = f2;
    }

    public void setRecencyScore(float f2) {
        this.mRecencyScore = f2;
    }

    public void setSelectProbability(float f2) {
        this.mSelectProbability = f2;
    }

    public void setTimeSpentScore(float f2) {
        this.mTimeSpentScore = f2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ResolverTarget{");
        sb.append(this.mRecencyScore);
        sb.append(", ");
        sb.append(this.mTimeSpentScore);
        sb.append(", ");
        sb.append(this.mLaunchScore);
        sb.append(", ");
        sb.append(this.mChooserScore);
        sb.append(", ");
        return m.i(sb, this.mSelectProbability, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeFloat(this.mRecencyScore);
        parcel.writeFloat(this.mTimeSpentScore);
        parcel.writeFloat(this.mLaunchScore);
        parcel.writeFloat(this.mChooserScore);
        parcel.writeFloat(this.mSelectProbability);
    }
}
