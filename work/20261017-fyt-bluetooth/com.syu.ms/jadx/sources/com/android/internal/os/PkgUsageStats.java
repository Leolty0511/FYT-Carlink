package com.android.internal.os;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class PkgUsageStats implements Parcelable {
    public static final Parcelable.Creator<PkgUsageStats> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f1188a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f1190c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Map<String, Long> f1191d;

    public static class a implements Parcelable.Creator<PkgUsageStats> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PkgUsageStats createFromParcel(Parcel parcel) {
            return new PkgUsageStats(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public PkgUsageStats[] newArray(int i2) {
            return new PkgUsageStats[i2];
        }
    }

    public PkgUsageStats(Parcel parcel) {
        this.f1188a = parcel.readString();
        this.f1189b = parcel.readInt();
        this.f1190c = parcel.readLong();
        int i2 = parcel.readInt();
        this.f1191d = new HashMap(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            this.f1191d.put(parcel.readString(), Long.valueOf(parcel.readLong()));
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "PkgUsageStats{" + Integer.toHexString(System.identityHashCode(this)) + " " + this.f1188a + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f1188a);
        parcel.writeInt(this.f1189b);
        parcel.writeLong(this.f1190c);
        parcel.writeInt(this.f1191d.size());
        for (Map.Entry<String, Long> entry : this.f1191d.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeLong(entry.getValue().longValue());
        }
    }
}
