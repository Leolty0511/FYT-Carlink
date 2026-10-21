package android.app.usage;

import android.accessibilityservice.c;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.ArrayMap;

/* JADX INFO: loaded from: classes.dex */
public final class UsageStats implements Parcelable {
    public static final Parcelable.Creator<UsageStats> CREATOR = new Parcelable.Creator<UsageStats>() { // from class: android.app.usage.UsageStats.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsageStats createFromParcel(Parcel parcel) {
            UsageStats usageStats = new UsageStats();
            usageStats.mPackageName = parcel.readString();
            usageStats.mBeginTimeStamp = parcel.readLong();
            usageStats.mEndTimeStamp = parcel.readLong();
            usageStats.mLastTimeUsed = parcel.readLong();
            usageStats.mTotalTimeInForeground = parcel.readLong();
            usageStats.mLaunchCount = parcel.readInt();
            usageStats.mLastEvent = parcel.readInt();
            Bundle bundle = parcel.readBundle();
            if (bundle != null) {
                usageStats.mChooserCounts = new ArrayMap<>();
                for (String str : bundle.keySet()) {
                    if (!usageStats.mChooserCounts.containsKey(str)) {
                        usageStats.mChooserCounts.put(str, new ArrayMap<>());
                    }
                    Bundle bundle2 = bundle.getBundle(str);
                    if (bundle2 != null) {
                        for (String str2 : bundle2.keySet()) {
                            int i2 = bundle2.getInt(str2);
                            if (i2 > 0) {
                                usageStats.mChooserCounts.get(str).put(str2, Integer.valueOf(i2));
                            }
                        }
                    }
                }
            }
            return usageStats;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsageStats[] newArray(int i2) {
            return new UsageStats[i2];
        }
    };
    public long mBeginTimeStamp;
    public ArrayMap<String, ArrayMap<String, Integer>> mChooserCounts;
    public long mEndTimeStamp;
    public int mLastEvent;
    public long mLastTimeUsed;
    public int mLaunchCount;
    public String mPackageName;
    public long mTotalTimeInForeground;

    public UsageStats() {
    }

    public void add(UsageStats usageStats) {
        if (!this.mPackageName.equals(usageStats.mPackageName)) {
            StringBuilder sb = new StringBuilder("Can't merge UsageStats for package '");
            sb.append(this.mPackageName);
            sb.append("' with UsageStats for package '");
            throw new IllegalArgumentException(c.n(sb, usageStats.mPackageName, "'."));
        }
        if (usageStats.mBeginTimeStamp > this.mBeginTimeStamp) {
            this.mLastEvent = Math.max(this.mLastEvent, usageStats.mLastEvent);
            this.mLastTimeUsed = Math.max(this.mLastTimeUsed, usageStats.mLastTimeUsed);
        }
        this.mBeginTimeStamp = Math.min(this.mBeginTimeStamp, usageStats.mBeginTimeStamp);
        this.mEndTimeStamp = Math.max(this.mEndTimeStamp, usageStats.mEndTimeStamp);
        this.mTotalTimeInForeground += usageStats.mTotalTimeInForeground;
        this.mLaunchCount += usageStats.mLaunchCount;
        if (this.mChooserCounts == null) {
            this.mChooserCounts = usageStats.mChooserCounts;
            return;
        }
        ArrayMap<String, ArrayMap<String, Integer>> arrayMap = usageStats.mChooserCounts;
        if (arrayMap != null) {
            int size = arrayMap.size();
            for (int i2 = 0; i2 < size; i2++) {
                String strKeyAt = usageStats.mChooserCounts.keyAt(i2);
                ArrayMap<String, Integer> arrayMapValueAt = usageStats.mChooserCounts.valueAt(i2);
                if (!this.mChooserCounts.containsKey(strKeyAt) || this.mChooserCounts.get(strKeyAt) == null) {
                    this.mChooserCounts.put(strKeyAt, arrayMapValueAt);
                } else {
                    int size2 = arrayMapValueAt.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        String strKeyAt2 = arrayMapValueAt.keyAt(i3);
                        this.mChooserCounts.get(strKeyAt).put(strKeyAt2, Integer.valueOf(this.mChooserCounts.get(strKeyAt).getOrDefault(strKeyAt2, 0).intValue() + arrayMapValueAt.valueAt(i3).intValue()));
                    }
                }
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getFirstTimeStamp() {
        return this.mBeginTimeStamp;
    }

    public long getLastTimeStamp() {
        return this.mEndTimeStamp;
    }

    public long getLastTimeUsed() {
        return this.mLastTimeUsed;
    }

    public UsageStats getObfuscatedForInstantApp() {
        UsageStats usageStats = new UsageStats(this);
        usageStats.mPackageName = UsageEvents.INSTANT_APP_PACKAGE_NAME;
        return usageStats;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public long getTotalTimeInForeground() {
        return this.mTotalTimeInForeground;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mPackageName);
        parcel.writeLong(this.mBeginTimeStamp);
        parcel.writeLong(this.mEndTimeStamp);
        parcel.writeLong(this.mLastTimeUsed);
        parcel.writeLong(this.mTotalTimeInForeground);
        parcel.writeInt(this.mLaunchCount);
        parcel.writeInt(this.mLastEvent);
        Bundle bundle = new Bundle();
        ArrayMap<String, ArrayMap<String, Integer>> arrayMap = this.mChooserCounts;
        if (arrayMap != null) {
            int size = arrayMap.size();
            for (int i3 = 0; i3 < size; i3++) {
                String strKeyAt = this.mChooserCounts.keyAt(i3);
                ArrayMap<String, Integer> arrayMapValueAt = this.mChooserCounts.valueAt(i3);
                Bundle bundle2 = new Bundle();
                int size2 = arrayMapValueAt.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    bundle2.putInt(arrayMapValueAt.keyAt(i4), arrayMapValueAt.valueAt(i4).intValue());
                }
                bundle.putBundle(strKeyAt, bundle2);
            }
        }
        parcel.writeBundle(bundle);
    }

    public UsageStats(UsageStats usageStats) {
        this.mPackageName = usageStats.mPackageName;
        this.mBeginTimeStamp = usageStats.mBeginTimeStamp;
        this.mEndTimeStamp = usageStats.mEndTimeStamp;
        this.mLastTimeUsed = usageStats.mLastTimeUsed;
        this.mTotalTimeInForeground = usageStats.mTotalTimeInForeground;
        this.mLaunchCount = usageStats.mLaunchCount;
        this.mLastEvent = usageStats.mLastEvent;
        this.mChooserCounts = usageStats.mChooserCounts;
    }
}
