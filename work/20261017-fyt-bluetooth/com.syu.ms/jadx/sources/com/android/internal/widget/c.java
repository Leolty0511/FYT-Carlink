package com.android.internal.widget;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface c extends IInterface {

    public static abstract class a extends Binder implements c {

        /* JADX INFO: renamed from: com.android.internal.widget.c$a$a, reason: collision with other inner class name */
        public static class C0030a implements c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f1514a;

            public C0030a(IBinder iBinder) {
                this.f1514a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f1514a;
            }

            @Override // com.android.internal.widget.c
            public String s0(String str, String str2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.widget.ILockSettings");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    this.f1514a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static c J2(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.internal.widget.ILockSettings");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) ? new C0030a(iBinder) : (c) iInterfaceQueryLocalInterface;
        }
    }

    String s0(String str, String str2, int i2);
}
