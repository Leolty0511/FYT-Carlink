package android.app.usage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class StorageStats implements Parcelable {
    public static final Parcelable.Creator<StorageStats> CREATOR = new Parcelable.Creator<StorageStats>() { // from class: android.app.usage.StorageStats.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StorageStats createFromParcel(Parcel parcel) {
            return new StorageStats(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StorageStats[] newArray(int i2) {
            return new StorageStats[i2];
        }
    };
    public long cacheBytes;
    public long codeBytes;
    public long dataBytes;

    public StorageStats() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getAppBytes() {
        return this.codeBytes;
    }

    public long getCacheBytes() {
        return this.cacheBytes;
    }

    @Deprecated
    public long getCodeBytes() {
        return getAppBytes();
    }

    public long getDataBytes() {
        return this.dataBytes;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.codeBytes);
        parcel.writeLong(this.dataBytes);
        parcel.writeLong(this.cacheBytes);
    }

    public StorageStats(Parcel parcel) {
        this.codeBytes = parcel.readLong();
        this.dataBytes = parcel.readLong();
        this.cacheBytes = parcel.readLong();
    }
}
