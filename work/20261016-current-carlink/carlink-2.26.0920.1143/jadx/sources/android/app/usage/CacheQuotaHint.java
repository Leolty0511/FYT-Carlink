package android.app.usage;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class CacheQuotaHint implements Parcelable {
    public static final Parcelable.Creator<CacheQuotaHint> CREATOR = new Parcelable.Creator<CacheQuotaHint>() { // from class: android.app.usage.CacheQuotaHint.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CacheQuotaHint createFromParcel(Parcel parcel) {
            return new Builder().setVolumeUuid(parcel.readString()).setUid(parcel.readInt()).setQuota(parcel.readLong()).setUsageStats((UsageStats) parcel.readParcelable(UsageStats.class.getClassLoader())).build();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CacheQuotaHint[] newArray(int i2) {
            return new CacheQuotaHint[i2];
        }
    };
    public static final long QUOTA_NOT_SET = -1;
    private final long mQuota;
    private final int mUid;
    private final UsageStats mUsageStats;
    private final String mUuid;

    public static final class Builder {
        private long mQuota;
        private int mUid;
        private UsageStats mUsageStats;
        private String mUuid;

        public Builder() {
        }

        public CacheQuotaHint build() {
            return new CacheQuotaHint(this);
        }

        public Builder setQuota(long j2) {
            Preconditions.checkArgument(j2 >= -1);
            this.mQuota = j2;
            return this;
        }

        public Builder setUid(int i2) {
            Preconditions.checkArgumentNonnegative(i2, "Proposed uid was negative.");
            this.mUid = i2;
            return this;
        }

        public Builder setUsageStats(UsageStats usageStats) {
            this.mUsageStats = usageStats;
            return this;
        }

        public Builder setVolumeUuid(String str) {
            this.mUuid = str;
            return this;
        }

        public Builder(CacheQuotaHint cacheQuotaHint) {
            setVolumeUuid(cacheQuotaHint.getVolumeUuid());
            setUid(cacheQuotaHint.getUid());
            setUsageStats(cacheQuotaHint.getUsageStats());
            setQuota(cacheQuotaHint.getQuota());
        }
    }

    public CacheQuotaHint(Builder builder) {
        this.mUuid = builder.mUuid;
        this.mUid = builder.mUid;
        this.mUsageStats = builder.mUsageStats;
        this.mQuota = builder.mQuota;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CacheQuotaHint)) {
            return false;
        }
        CacheQuotaHint cacheQuotaHint = (CacheQuotaHint) obj;
        return Objects.equals(this.mUuid, cacheQuotaHint.mUuid) && Objects.equals(this.mUsageStats, cacheQuotaHint.mUsageStats) && this.mUid == cacheQuotaHint.mUid && this.mQuota == cacheQuotaHint.mQuota;
    }

    public long getQuota() {
        return this.mQuota;
    }

    public int getUid() {
        return this.mUid;
    }

    public UsageStats getUsageStats() {
        return this.mUsageStats;
    }

    public String getVolumeUuid() {
        return this.mUuid;
    }

    public int hashCode() {
        return Objects.hash(this.mUuid, Integer.valueOf(this.mUid), this.mUsageStats, Long.valueOf(this.mQuota));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mUuid);
        parcel.writeInt(this.mUid);
        parcel.writeLong(this.mQuota);
        parcel.writeParcelable(this.mUsageStats, 0);
    }
}
