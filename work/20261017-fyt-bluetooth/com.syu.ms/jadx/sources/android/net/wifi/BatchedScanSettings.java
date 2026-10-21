package android.net.wifi;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class BatchedScanSettings implements Parcelable {
    public static final Parcelable.Creator<BatchedScanSettings> CREATOR = new Parcelable.Creator<BatchedScanSettings>() { // from class: android.net.wifi.BatchedScanSettings.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BatchedScanSettings createFromParcel(Parcel parcel) {
            BatchedScanSettings batchedScanSettings = new BatchedScanSettings();
            batchedScanSettings.maxScansPerBatch = parcel.readInt();
            batchedScanSettings.maxApPerScan = parcel.readInt();
            batchedScanSettings.scanIntervalSec = parcel.readInt();
            batchedScanSettings.maxApForDistance = parcel.readInt();
            int i2 = parcel.readInt();
            if (i2 > 0) {
                batchedScanSettings.channelSet = new ArrayList(i2);
                while (true) {
                    int i3 = i2 - 1;
                    if (i2 <= 0) {
                        break;
                    }
                    batchedScanSettings.channelSet.add(parcel.readString());
                    i2 = i3;
                }
            }
            return batchedScanSettings;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BatchedScanSettings[] newArray(int i2) {
            return new BatchedScanSettings[i2];
        }
    };
    public static final int DEFAULT_AP_FOR_DISTANCE = 0;
    public static final int DEFAULT_AP_PER_SCAN = 16;
    public static final int DEFAULT_INTERVAL_SEC = 30;
    public static final int DEFAULT_SCANS_PER_BATCH = 255;
    public static final int MAX_AP_FOR_DISTANCE = 255;
    public static final int MAX_AP_PER_SCAN = 255;
    public static final int MAX_INTERVAL_SEC = 3600;
    public static final int MAX_SCANS_PER_BATCH = 255;
    public static final int MAX_WIFI_CHANNEL = 196;
    public static final int MIN_AP_FOR_DISTANCE = 0;
    public static final int MIN_AP_PER_SCAN = 2;
    public static final int MIN_INTERVAL_SEC = 0;
    public static final int MIN_SCANS_PER_BATCH = 2;
    private static final String TAG = "BatchedScanSettings";
    public static final int UNSPECIFIED = Integer.MAX_VALUE;
    public Collection<String> channelSet;
    public int maxApForDistance;
    public int maxApPerScan;
    public int maxScansPerBatch;
    public int scanIntervalSec;

    public BatchedScanSettings() {
        clear();
    }

    private boolean channelSetIsValid() {
        Collection<String> collection = this.channelSet;
        if (collection != null && !collection.isEmpty()) {
            for (String str : this.channelSet) {
                try {
                    int i2 = Integer.parseInt(str);
                    if (i2 <= 0 || i2 > 196) {
                        if (!str.equals("A") && !str.equals("B")) {
                            return false;
                        }
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        return true;
    }

    public void clear() {
        this.maxScansPerBatch = Integer.MAX_VALUE;
        this.maxApPerScan = Integer.MAX_VALUE;
        this.channelSet = null;
        this.scanIntervalSec = Integer.MAX_VALUE;
        this.maxApForDistance = Integer.MAX_VALUE;
    }

    public void constrain() {
        int i2 = this.scanIntervalSec;
        if (i2 == Integer.MAX_VALUE) {
            this.scanIntervalSec = 30;
        } else if (i2 < 0) {
            this.scanIntervalSec = 0;
        } else if (i2 > 3600) {
            this.scanIntervalSec = MAX_INTERVAL_SEC;
        }
        int i3 = this.maxScansPerBatch;
        if (i3 == Integer.MAX_VALUE) {
            this.maxScansPerBatch = 255;
        } else if (i3 < 2) {
            this.maxScansPerBatch = 2;
        } else if (i3 > 255) {
            this.maxScansPerBatch = 255;
        }
        int i4 = this.maxApPerScan;
        if (i4 == Integer.MAX_VALUE) {
            this.maxApPerScan = 16;
        } else if (i4 < 2) {
            this.maxApPerScan = 2;
        } else if (i4 > 255) {
            this.maxApPerScan = 255;
        }
        int i5 = this.maxApForDistance;
        if (i5 == Integer.MAX_VALUE) {
            this.maxApForDistance = 0;
        } else if (i5 < 0) {
            this.maxApForDistance = 0;
        } else if (i5 > 255) {
            this.maxApForDistance = 255;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BatchedScanSettings)) {
            return false;
        }
        BatchedScanSettings batchedScanSettings = (BatchedScanSettings) obj;
        if (this.maxScansPerBatch != batchedScanSettings.maxScansPerBatch || this.maxApPerScan != batchedScanSettings.maxApPerScan || this.scanIntervalSec != batchedScanSettings.scanIntervalSec || this.maxApForDistance != batchedScanSettings.maxApForDistance) {
            return false;
        }
        Collection<String> collection = this.channelSet;
        if (collection == null) {
            return batchedScanSettings.channelSet == null;
        }
        return collection.equals(batchedScanSettings.channelSet);
    }

    public int hashCode() {
        return this.maxScansPerBatch + (this.maxApPerScan * 3) + (this.scanIntervalSec * 5) + (this.maxApForDistance * 7) + (this.channelSet.hashCode() * 11);
    }

    public boolean isInvalid() {
        int i2 = this.maxScansPerBatch;
        if (i2 != Integer.MAX_VALUE && (i2 < 2 || i2 > 255)) {
            return true;
        }
        int i3 = this.maxApPerScan;
        if ((i3 != Integer.MAX_VALUE && (i3 < 2 || i3 > 255)) || !channelSetIsValid()) {
            return true;
        }
        int i4 = this.scanIntervalSec;
        if (i4 != Integer.MAX_VALUE && (i4 < 0 || i4 > 3600)) {
            return true;
        }
        int i5 = this.maxApForDistance;
        if (i5 != Integer.MAX_VALUE) {
            return i5 < 0 || i5 > 255;
        }
        return false;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("BatchScanSettings [maxScansPerBatch: ");
        int i2 = this.maxScansPerBatch;
        stringBuffer.append(i2 == Integer.MAX_VALUE ? "<none>" : Integer.valueOf(i2));
        stringBuffer.append(", maxApPerScan: ");
        int i3 = this.maxApPerScan;
        stringBuffer.append(i3 == Integer.MAX_VALUE ? "<none>" : Integer.valueOf(i3));
        stringBuffer.append(", scanIntervalSec: ");
        int i4 = this.scanIntervalSec;
        stringBuffer.append(i4 == Integer.MAX_VALUE ? "<none>" : Integer.valueOf(i4));
        stringBuffer.append(", maxApForDistance: ");
        int i5 = this.maxApForDistance;
        stringBuffer.append(i5 != Integer.MAX_VALUE ? Integer.valueOf(i5) : "<none>");
        stringBuffer.append(", channelSet: ");
        if (this.channelSet == null) {
            stringBuffer.append("ALL");
        } else {
            stringBuffer.append("<");
            Iterator<String> it = this.channelSet.iterator();
            while (it.hasNext()) {
                stringBuffer.append(" " + it.next());
            }
            stringBuffer.append(">");
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.maxScansPerBatch);
        parcel.writeInt(this.maxApPerScan);
        parcel.writeInt(this.scanIntervalSec);
        parcel.writeInt(this.maxApForDistance);
        Collection<String> collection = this.channelSet;
        parcel.writeInt(collection == null ? 0 : collection.size());
        Collection<String> collection2 = this.channelSet;
        if (collection2 != null) {
            Iterator<String> it = collection2.iterator();
            while (it.hasNext()) {
                parcel.writeString(it.next());
            }
        }
    }

    public BatchedScanSettings(BatchedScanSettings batchedScanSettings) {
        this.maxScansPerBatch = batchedScanSettings.maxScansPerBatch;
        this.maxApPerScan = batchedScanSettings.maxApPerScan;
        if (batchedScanSettings.channelSet != null) {
            this.channelSet = new ArrayList(batchedScanSettings.channelSet);
        }
        this.scanIntervalSec = batchedScanSettings.scanIntervalSec;
        this.maxApForDistance = batchedScanSettings.maxApForDistance;
    }
}
