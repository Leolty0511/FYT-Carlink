package android.app.backup;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class RestoreSet implements Parcelable {
    public static final Parcelable.Creator<RestoreSet> CREATOR = new Parcelable.Creator<RestoreSet>() { // from class: android.app.backup.RestoreSet.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RestoreSet createFromParcel(Parcel parcel) {
            return new RestoreSet(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RestoreSet[] newArray(int i2) {
            return new RestoreSet[i2];
        }
    };
    public String device;
    public String name;
    public long token;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.name);
        parcel.writeString(this.device);
        parcel.writeLong(this.token);
    }

    public RestoreSet() {
    }

    public RestoreSet(String str, String str2, long j2) {
        this.name = str;
        this.device = str2;
        this.token = j2;
    }

    private RestoreSet(Parcel parcel) {
        this.name = parcel.readString();
        this.device = parcel.readString();
        this.token = parcel.readLong();
    }
}
