package android.print;

import android.content.ComponentName;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class PrinterId implements Parcelable {
    public static final Parcelable.Creator<PrinterId> CREATOR = new Parcelable.Creator<PrinterId>() { // from class: android.print.PrinterId.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrinterId createFromParcel(Parcel parcel) {
            return new PrinterId(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrinterId[] newArray(int i2) {
            return new PrinterId[i2];
        }
    };
    private final String mLocalId;
    private final ComponentName mServiceName;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PrinterId.class != obj.getClass()) {
            return false;
        }
        PrinterId printerId = (PrinterId) obj;
        return this.mServiceName.equals(printerId.mServiceName) && this.mLocalId.equals(printerId.mLocalId);
    }

    public String getLocalId() {
        return this.mLocalId;
    }

    public ComponentName getServiceName() {
        return this.mServiceName;
    }

    public int hashCode() {
        return this.mLocalId.hashCode() + ((this.mServiceName.hashCode() + 31) * 31);
    }

    public String toString() {
        return "PrinterId{serviceName=" + this.mServiceName.flattenToString() + ", localId=" + this.mLocalId + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mServiceName, i2);
        parcel.writeString(this.mLocalId);
    }

    public PrinterId(ComponentName componentName, String str) {
        this.mServiceName = componentName;
        this.mLocalId = str;
    }

    private PrinterId(Parcel parcel) {
        this.mServiceName = (ComponentName) Preconditions.checkNotNull((ComponentName) parcel.readParcelable(null));
        this.mLocalId = (String) Preconditions.checkNotNull(parcel.readString());
    }
}
