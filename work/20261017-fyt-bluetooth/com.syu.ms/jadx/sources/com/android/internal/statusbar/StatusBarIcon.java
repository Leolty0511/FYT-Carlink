package com.android.internal.statusbar;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;

/* JADX INFO: loaded from: classes.dex */
public class StatusBarIcon implements Parcelable {
    public static final Parcelable.Creator<StatusBarIcon> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f1208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public UserHandle f1209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1210c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1211d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1212e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1213f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public CharSequence f1214g;

    public static class a implements Parcelable.Creator<StatusBarIcon> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public StatusBarIcon createFromParcel(Parcel parcel) {
            return new StatusBarIcon(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public StatusBarIcon[] newArray(int i2) {
            return new StatusBarIcon[i2];
        }
    }

    public StatusBarIcon(String str, UserHandle userHandle, int i2, int i3, int i4, CharSequence charSequence) {
        this.f1208a = str;
        this.f1209b = userHandle;
        this.f1210c = i2;
        this.f1211d = i3;
        this.f1213f = i4;
        this.f1214g = charSequence;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public StatusBarIcon clone() {
        StatusBarIcon statusBarIcon = new StatusBarIcon(this.f1208a, this.f1209b, this.f1210c, this.f1211d, this.f1213f, this.f1214g);
        statusBarIcon.f1212e = this.f1212e;
        return statusBarIcon;
    }

    public void b(Parcel parcel) {
        this.f1208a = parcel.readString();
        this.f1209b = (UserHandle) parcel.readParcelable(null);
        this.f1210c = parcel.readInt();
        this.f1211d = parcel.readInt();
        this.f1212e = parcel.readInt() != 0;
        this.f1213f = parcel.readInt();
        this.f1214g = parcel.readCharSequence();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "StatusBarIcon(pkg=" + this.f1208a + "user=" + this.f1209b.getIdentifier() + " id=0x" + Integer.toHexString(this.f1210c) + " level=" + this.f1211d + " visible=" + this.f1212e + " num=" + this.f1213f + " )";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f1208a);
        parcel.writeParcelable(this.f1209b, 0);
        parcel.writeInt(this.f1210c);
        parcel.writeInt(this.f1211d);
        parcel.writeInt(this.f1212e ? 1 : 0);
        parcel.writeInt(this.f1213f);
        parcel.writeCharSequence(this.f1214g);
    }

    public StatusBarIcon(Parcel parcel) {
        b(parcel);
    }
}
