package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ClientRequestStats implements Parcelable {
    public static final Parcelable.Creator<ClientRequestStats> CREATOR = new Parcelable.Creator<ClientRequestStats>() { // from class: android.telephony.ClientRequestStats.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ClientRequestStats createFromParcel(Parcel parcel) {
            return new ClientRequestStats(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ClientRequestStats[] newArray(int i2) {
            return new ClientRequestStats[i2];
        }
    };
    private static final int REQUEST_HISTOGRAM_BUCKET_COUNT = 5;
    private String mCallingPackage;
    private long mCompletedRequestsCount;
    private long mCompletedRequestsWakelockTime;
    private long mPendingRequestsCount;
    private long mPendingRequestsWakelockTime;
    private SparseArray<TelephonyHistogram> mRequestHistograms;

    public ClientRequestStats(Parcel parcel) {
        this.mCompletedRequestsWakelockTime = 0L;
        this.mCompletedRequestsCount = 0L;
        this.mPendingRequestsWakelockTime = 0L;
        this.mPendingRequestsCount = 0L;
        this.mRequestHistograms = new SparseArray<>();
        readFromParcel(parcel);
    }

    public void addCompletedWakelockTime(long j2) {
        this.mCompletedRequestsWakelockTime += j2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCallingPackage() {
        return this.mCallingPackage;
    }

    public long getCompletedRequestsCount() {
        return this.mCompletedRequestsCount;
    }

    public long getCompletedRequestsWakelockTime() {
        return this.mCompletedRequestsWakelockTime;
    }

    public long getPendingRequestsCount() {
        return this.mPendingRequestsCount;
    }

    public long getPendingRequestsWakelockTime() {
        return this.mPendingRequestsWakelockTime;
    }

    public List<TelephonyHistogram> getRequestHistograms() {
        ArrayList arrayList;
        synchronized (this.mRequestHistograms) {
            arrayList = new ArrayList(this.mRequestHistograms.size());
            for (int i2 = 0; i2 < this.mRequestHistograms.size(); i2++) {
                arrayList.add(new TelephonyHistogram(this.mRequestHistograms.valueAt(i2)));
            }
        }
        return arrayList;
    }

    public void incrementCompletedRequestsCount() {
        this.mCompletedRequestsCount++;
    }

    public void readFromParcel(Parcel parcel) {
        this.mCallingPackage = parcel.readString();
        this.mCompletedRequestsWakelockTime = parcel.readLong();
        this.mCompletedRequestsCount = parcel.readLong();
        this.mPendingRequestsWakelockTime = parcel.readLong();
        this.mPendingRequestsCount = parcel.readLong();
        ArrayList<TelephonyHistogram> arrayList = new ArrayList();
        parcel.readTypedList(arrayList, TelephonyHistogram.CREATOR);
        for (TelephonyHistogram telephonyHistogram : arrayList) {
            this.mRequestHistograms.put(telephonyHistogram.getId(), telephonyHistogram);
        }
    }

    public void setCallingPackage(String str) {
        this.mCallingPackage = str;
    }

    public void setPendingRequestsCount(long j2) {
        this.mPendingRequestsCount = j2;
    }

    public void setPendingRequestsWakelockTime(long j2) {
        this.mPendingRequestsWakelockTime = j2;
    }

    public String toString() {
        return "ClientRequestStats{mCallingPackage='" + this.mCallingPackage + "', mCompletedRequestsWakelockTime=" + this.mCompletedRequestsWakelockTime + ", mCompletedRequestsCount=" + this.mCompletedRequestsCount + ", mPendingRequestsWakelockTime=" + this.mPendingRequestsWakelockTime + ", mPendingRequestsCount=" + this.mPendingRequestsCount + '}';
    }

    public void updateRequestHistograms(int i2, int i3) {
        synchronized (this.mRequestHistograms) {
            TelephonyHistogram telephonyHistogram = this.mRequestHistograms.get(i2);
            if (telephonyHistogram == null) {
                telephonyHistogram = new TelephonyHistogram(1, i2, 5);
                this.mRequestHistograms.put(i2, telephonyHistogram);
            }
            telephonyHistogram.addTimeTaken(i3);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mCallingPackage);
        parcel.writeLong(this.mCompletedRequestsWakelockTime);
        parcel.writeLong(this.mCompletedRequestsCount);
        parcel.writeLong(this.mPendingRequestsWakelockTime);
        parcel.writeLong(this.mPendingRequestsCount);
        parcel.writeTypedList(getRequestHistograms());
    }

    public ClientRequestStats() {
        this.mCompletedRequestsWakelockTime = 0L;
        this.mCompletedRequestsCount = 0L;
        this.mPendingRequestsWakelockTime = 0L;
        this.mPendingRequestsCount = 0L;
        this.mRequestHistograms = new SparseArray<>();
    }

    public ClientRequestStats(ClientRequestStats clientRequestStats) {
        this.mCompletedRequestsWakelockTime = 0L;
        this.mCompletedRequestsCount = 0L;
        this.mPendingRequestsWakelockTime = 0L;
        this.mPendingRequestsCount = 0L;
        this.mRequestHistograms = new SparseArray<>();
        this.mCallingPackage = clientRequestStats.getCallingPackage();
        this.mCompletedRequestsCount = clientRequestStats.getCompletedRequestsCount();
        this.mCompletedRequestsWakelockTime = clientRequestStats.getCompletedRequestsWakelockTime();
        this.mPendingRequestsCount = clientRequestStats.getPendingRequestsCount();
        this.mPendingRequestsWakelockTime = clientRequestStats.getPendingRequestsWakelockTime();
        for (TelephonyHistogram telephonyHistogram : clientRequestStats.getRequestHistograms()) {
            this.mRequestHistograms.put(telephonyHistogram.getId(), telephonyHistogram);
        }
    }
}
