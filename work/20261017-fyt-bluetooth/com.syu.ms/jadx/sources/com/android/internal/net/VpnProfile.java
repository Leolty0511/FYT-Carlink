package com.android.internal.net;

import android.net.ProxyProperties;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class VpnProfile implements Cloneable, Parcelable {
    public static final Parcelable.Creator<VpnProfile> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f997a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f998b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f999c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f1000d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f1001e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f1002f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f1003g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f1004h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f1005i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1006j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f1007k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f1008l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f1009m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f1010n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f1011o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f1012p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1013q;

    public static class a implements Parcelable.Creator<VpnProfile> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public VpnProfile createFromParcel(Parcel parcel) {
            return new VpnProfile(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public VpnProfile[] newArray(int i2) {
            return new VpnProfile[i2];
        }
    }

    public VpnProfile(Parcel parcel) {
        this.f998b = ProxyProperties.LOCAL_EXCL_LIST;
        this.f999c = 0;
        this.f1000d = ProxyProperties.LOCAL_EXCL_LIST;
        this.f1001e = ProxyProperties.LOCAL_EXCL_LIST;
        this.f1002f = ProxyProperties.LOCAL_EXCL_LIST;
        this.f1003g = ProxyProperties.LOCAL_EXCL_LIST;
        this.f1004h = ProxyProperties.LOCAL_EXCL_LIST;
        this.f1005i = ProxyProperties.LOCAL_EXCL_LIST;
        this.f1006j = true;
        this.f1007k = ProxyProperties.LOCAL_EXCL_LIST;
        this.f1008l = ProxyProperties.LOCAL_EXCL_LIST;
        this.f1009m = ProxyProperties.LOCAL_EXCL_LIST;
        this.f1010n = ProxyProperties.LOCAL_EXCL_LIST;
        this.f1011o = ProxyProperties.LOCAL_EXCL_LIST;
        this.f1012p = ProxyProperties.LOCAL_EXCL_LIST;
        this.f1013q = false;
        this.f997a = parcel.readString();
        this.f998b = parcel.readString();
        this.f999c = parcel.readInt();
        this.f1000d = parcel.readString();
        this.f1001e = parcel.readString();
        this.f1002f = parcel.readString();
        this.f1003g = parcel.readString();
        this.f1004h = parcel.readString();
        this.f1005i = parcel.readString();
        this.f1006j = parcel.readInt() != 0;
        this.f1007k = parcel.readString();
        this.f1008l = parcel.readString();
        this.f1009m = parcel.readString();
        this.f1010n = parcel.readString();
        this.f1011o = parcel.readString();
        this.f1012p = parcel.readString();
        this.f1013q = parcel.readInt() != 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f997a);
        parcel.writeString(this.f998b);
        parcel.writeInt(this.f999c);
        parcel.writeString(this.f1000d);
        parcel.writeString(this.f1001e);
        parcel.writeString(this.f1002f);
        parcel.writeString(this.f1003g);
        parcel.writeString(this.f1004h);
        parcel.writeString(this.f1005i);
        parcel.writeInt(this.f1006j ? 1 : 0);
        parcel.writeString(this.f1007k);
        parcel.writeString(this.f1008l);
        parcel.writeString(this.f1009m);
        parcel.writeString(this.f1010n);
        parcel.writeString(this.f1011o);
        parcel.writeString(this.f1012p);
        parcel.writeInt(this.f1013q ? 1 : 0);
    }
}
