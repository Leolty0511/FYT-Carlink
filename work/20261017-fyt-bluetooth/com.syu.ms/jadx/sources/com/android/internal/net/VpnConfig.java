package com.android.internal.net;

import android.app.PendingIntent;
import android.content.Intent;
import android.net.LinkAddress;
import android.net.RouteInfo;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class VpnConfig implements Parcelable {
    public static final Parcelable.Creator<VpnConfig> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f986a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f988c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List<String> f992g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List<String> f993h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PendingIntent f994i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f996k;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f989d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List<LinkAddress> f990e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List<RouteInfo> f991f = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f995j = -1;

    public static class a implements Parcelable.Creator<VpnConfig> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public VpnConfig createFromParcel(Parcel parcel) {
            VpnConfig vpnConfig = new VpnConfig();
            vpnConfig.f986a = parcel.readString();
            vpnConfig.f987b = parcel.readString();
            vpnConfig.f988c = parcel.readString();
            vpnConfig.f989d = parcel.readInt();
            parcel.readTypedList(vpnConfig.f990e, LinkAddress.CREATOR);
            parcel.readTypedList(vpnConfig.f991f, RouteInfo.CREATOR);
            vpnConfig.f992g = parcel.createStringArrayList();
            vpnConfig.f993h = parcel.createStringArrayList();
            vpnConfig.f994i = (PendingIntent) parcel.readParcelable(null);
            vpnConfig.f995j = parcel.readLong();
            vpnConfig.f996k = parcel.readInt() != 0;
            return vpnConfig;
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public VpnConfig[] newArray(int i2) {
            return new VpnConfig[i2];
        }
    }

    public static Intent a() {
        Intent intent = new Intent();
        intent.setClassName("com.android.vpndialogs", "com.android.vpndialogs.ConfirmDialog");
        return intent;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f986a);
        parcel.writeString(this.f987b);
        parcel.writeString(this.f988c);
        parcel.writeInt(this.f989d);
        parcel.writeTypedList(this.f990e);
        parcel.writeTypedList(this.f991f);
        parcel.writeStringList(this.f992g);
        parcel.writeStringList(this.f993h);
        parcel.writeParcelable(this.f994i, i2);
        parcel.writeLong(this.f995j);
        parcel.writeInt(this.f996k ? 1 : 0);
    }
}
