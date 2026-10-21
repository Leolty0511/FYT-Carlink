package com.android.internal.net;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class LegacyVpnInfo implements Parcelable {
    public static final Parcelable.Creator<LegacyVpnInfo> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f981b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PendingIntent f982c;

    public static class a implements Parcelable.Creator<LegacyVpnInfo> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegacyVpnInfo createFromParcel(Parcel parcel) {
            LegacyVpnInfo legacyVpnInfo = new LegacyVpnInfo();
            legacyVpnInfo.f980a = parcel.readString();
            legacyVpnInfo.f981b = parcel.readInt();
            legacyVpnInfo.f982c = (PendingIntent) parcel.readParcelable(null);
            return legacyVpnInfo;
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public LegacyVpnInfo[] newArray(int i2) {
            return new LegacyVpnInfo[i2];
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f980a);
        parcel.writeInt(this.f981b);
        parcel.writeParcelable(this.f982c, i2);
    }
}
