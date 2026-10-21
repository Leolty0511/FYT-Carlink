package android.app.job;

import android.accessibilityservice.c;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class JobWorkItem implements Parcelable {
    public static final Parcelable.Creator<JobWorkItem> CREATOR = new Parcelable.Creator<JobWorkItem>() { // from class: android.app.job.JobWorkItem.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public JobWorkItem createFromParcel(Parcel parcel) {
            return new JobWorkItem(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public JobWorkItem[] newArray(int i2) {
            return new JobWorkItem[i2];
        }
    };
    int mDeliveryCount;
    Object mGrants;
    final Intent mIntent;
    int mWorkId;

    public JobWorkItem(Intent intent) {
        this.mIntent = intent;
    }

    public void bumpDeliveryCount() {
        this.mDeliveryCount++;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getDeliveryCount() {
        return this.mDeliveryCount;
    }

    public Object getGrants() {
        return this.mGrants;
    }

    public Intent getIntent() {
        return this.mIntent;
    }

    public int getWorkId() {
        return this.mWorkId;
    }

    public void setGrants(Object obj) {
        this.mGrants = obj;
    }

    public void setWorkId(int i2) {
        this.mWorkId = i2;
    }

    public String toString() {
        StringBuilder sbQ = c.q(64, "JobWorkItem{id=");
        sbQ.append(this.mWorkId);
        sbQ.append(" intent=");
        sbQ.append(this.mIntent);
        if (this.mDeliveryCount != 0) {
            sbQ.append(" dcount=");
            sbQ.append(this.mDeliveryCount);
        }
        sbQ.append("}");
        return sbQ.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.mIntent != null) {
            parcel.writeInt(1);
            this.mIntent.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.mDeliveryCount);
        parcel.writeInt(this.mWorkId);
    }

    public JobWorkItem(Parcel parcel) {
        if (parcel.readInt() != 0) {
            this.mIntent = Intent.CREATOR.createFromParcel(parcel);
        } else {
            this.mIntent = null;
        }
        this.mDeliveryCount = parcel.readInt();
        this.mWorkId = parcel.readInt();
    }
}
