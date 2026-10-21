package com.android.internal.statusbar;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class StatusBarIconList implements Parcelable {
    public static final Parcelable.Creator<StatusBarIconList> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String[] f1215a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public StatusBarIcon[] f1216b;

    public static class a implements Parcelable.Creator<StatusBarIconList> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public StatusBarIconList createFromParcel(Parcel parcel) {
            return new StatusBarIconList(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public StatusBarIconList[] newArray(int i2) {
            return new StatusBarIconList[i2];
        }
    }

    public StatusBarIconList() {
    }

    public void a(Parcel parcel) {
        this.f1215a = parcel.readStringArray();
        int i2 = parcel.readInt();
        if (i2 < 0) {
            this.f1216b = null;
            return;
        }
        this.f1216b = new StatusBarIcon[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            if (parcel.readInt() != 0) {
                this.f1216b[i3] = new StatusBarIcon(parcel);
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStringArray(this.f1215a);
        StatusBarIcon[] statusBarIconArr = this.f1216b;
        if (statusBarIconArr == null) {
            parcel.writeInt(-1);
            return;
        }
        int length = statusBarIconArr.length;
        parcel.writeInt(length);
        for (int i3 = 0; i3 < length; i3++) {
            StatusBarIcon statusBarIcon = this.f1216b[i3];
            if (statusBarIcon == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                statusBarIcon.writeToParcel(parcel, i2);
            }
        }
    }

    public StatusBarIconList(Parcel parcel) {
        a(parcel);
    }
}
