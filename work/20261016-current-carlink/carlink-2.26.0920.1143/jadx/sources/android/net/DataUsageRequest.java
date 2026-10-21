package android.net;

import android.app.m;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class DataUsageRequest implements Parcelable {
    public static final Parcelable.Creator<DataUsageRequest> CREATOR = new Parcelable.Creator<DataUsageRequest>() { // from class: android.net.DataUsageRequest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DataUsageRequest createFromParcel(Parcel parcel) {
            return new DataUsageRequest(parcel.readInt(), (NetworkTemplate) parcel.readParcelable(null), parcel.readLong());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DataUsageRequest[] newArray(int i2) {
            return new DataUsageRequest[i2];
        }
    };
    public static final String PARCELABLE_KEY = "DataUsageRequest";
    public static final int REQUEST_ID_UNSET = 0;
    public final int requestId;
    public final NetworkTemplate template;
    public final long thresholdInBytes;

    public DataUsageRequest(int i2, NetworkTemplate networkTemplate, long j2) {
        this.requestId = i2;
        this.template = networkTemplate;
        this.thresholdInBytes = j2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DataUsageRequest)) {
            return false;
        }
        DataUsageRequest dataUsageRequest = (DataUsageRequest) obj;
        return dataUsageRequest.requestId == this.requestId && Objects.equals(dataUsageRequest.template, this.template) && dataUsageRequest.thresholdInBytes == this.thresholdInBytes;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.requestId), this.template, Long.valueOf(this.thresholdInBytes));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DataUsageRequest [ requestId=");
        sb.append(this.requestId);
        sb.append(", networkTemplate=");
        sb.append(this.template);
        sb.append(", thresholdInBytes=");
        return m.k(sb, this.thresholdInBytes, " ]");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.requestId);
        parcel.writeParcelable(this.template, i2);
        parcel.writeLong(this.thresholdInBytes);
    }
}
