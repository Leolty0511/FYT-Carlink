package com.android.internal.telephony;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class SmsRawData implements Parcelable {
    public static final Parcelable.Creator<SmsRawData> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f1229a;

    public static class a implements Parcelable.Creator<SmsRawData> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SmsRawData createFromParcel(Parcel parcel) {
            byte[] bArr = new byte[parcel.readInt()];
            parcel.readByteArray(bArr);
            return new SmsRawData(bArr);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public SmsRawData[] newArray(int i2) {
            return new SmsRawData[i2];
        }
    }

    public SmsRawData(byte[] bArr) {
        this.f1229a = bArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f1229a.length);
        parcel.writeByteArray(this.f1229a);
    }
}
