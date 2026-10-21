package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ChangedPackages implements Parcelable {
    public static final Parcelable.Creator<ChangedPackages> CREATOR = new Parcelable.Creator<ChangedPackages>() { // from class: android.content.pm.ChangedPackages.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChangedPackages createFromParcel(Parcel parcel) {
            return new ChangedPackages(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChangedPackages[] newArray(int i2) {
            return new ChangedPackages[i2];
        }
    };
    private final List<String> mPackageNames;
    private final int mSequenceNumber;

    public ChangedPackages(int i2, List<String> list) {
        this.mSequenceNumber = i2;
        this.mPackageNames = list;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<String> getPackageNames() {
        return this.mPackageNames;
    }

    public int getSequenceNumber() {
        return this.mSequenceNumber;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mSequenceNumber);
        parcel.writeStringList(this.mPackageNames);
    }

    public ChangedPackages(Parcel parcel) {
        this.mSequenceNumber = parcel.readInt();
        this.mPackageNames = parcel.createStringArrayList();
    }
}
