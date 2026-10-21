package android.net.wifi;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BatchedScanResult implements Parcelable {
    public static final Parcelable.Creator<BatchedScanResult> CREATOR = new Parcelable.Creator<BatchedScanResult>() { // from class: android.net.wifi.BatchedScanResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BatchedScanResult createFromParcel(Parcel parcel) {
            BatchedScanResult batchedScanResult = new BatchedScanResult();
            batchedScanResult.truncated = parcel.readInt() == 1;
            int i2 = parcel.readInt();
            while (true) {
                int i3 = i2 - 1;
                if (i2 <= 0) {
                    return batchedScanResult;
                }
                batchedScanResult.scanResults.add(ScanResult.CREATOR.createFromParcel(parcel));
                i2 = i3;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BatchedScanResult[] newArray(int i2) {
            return new BatchedScanResult[i2];
        }
    };
    private static final String TAG = "BatchedScanResult";
    public final List<ScanResult> scanResults = new ArrayList();
    public boolean truncated;

    public BatchedScanResult() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("BatchedScanResult: truncated: ");
        stringBuffer.append(String.valueOf(this.truncated));
        stringBuffer.append("scanResults: [");
        for (ScanResult scanResult : this.scanResults) {
            stringBuffer.append(" <");
            stringBuffer.append(scanResult.toString());
            stringBuffer.append("> ");
        }
        stringBuffer.append(" ]");
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.truncated ? 1 : 0);
        parcel.writeInt(this.scanResults.size());
        Iterator<ScanResult> it = this.scanResults.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, i2);
        }
    }

    public BatchedScanResult(BatchedScanResult batchedScanResult) {
        this.truncated = batchedScanResult.truncated;
        Iterator<ScanResult> it = batchedScanResult.scanResults.iterator();
        while (it.hasNext()) {
            this.scanResults.add(new ScanResult(it.next()));
        }
    }
}
