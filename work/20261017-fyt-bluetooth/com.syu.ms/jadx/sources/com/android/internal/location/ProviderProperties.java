package com.android.internal.location;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class ProviderProperties implements Parcelable {
    public static final Parcelable.Creator<ProviderProperties> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f968a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f970c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f971d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f972e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f973f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f974g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f975h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f976i;

    public static class a implements Parcelable.Creator<ProviderProperties> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ProviderProperties createFromParcel(Parcel parcel) {
            return new ProviderProperties(parcel.readInt() == 1, parcel.readInt() == 1, parcel.readInt() == 1, parcel.readInt() == 1, parcel.readInt() == 1, parcel.readInt() == 1, parcel.readInt() == 1, parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ProviderProperties[] newArray(int i2) {
            return new ProviderProperties[i2];
        }
    }

    public ProviderProperties(boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, int i2, int i3) {
        this.f968a = z2;
        this.f969b = z3;
        this.f970c = z4;
        this.f971d = z5;
        this.f972e = z6;
        this.f973f = z7;
        this.f974g = z8;
        this.f975h = i2;
        this.f976i = i3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f968a ? 1 : 0);
        parcel.writeInt(this.f969b ? 1 : 0);
        parcel.writeInt(this.f970c ? 1 : 0);
        parcel.writeInt(this.f971d ? 1 : 0);
        parcel.writeInt(this.f972e ? 1 : 0);
        parcel.writeInt(this.f973f ? 1 : 0);
        parcel.writeInt(this.f974g ? 1 : 0);
        parcel.writeInt(this.f975h);
        parcel.writeInt(this.f976i);
    }
}
