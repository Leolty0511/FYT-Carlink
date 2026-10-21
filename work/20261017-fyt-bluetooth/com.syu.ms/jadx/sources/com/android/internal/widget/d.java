package com.android.internal.widget;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface d extends IInterface {

    public static abstract class a extends Binder implements d {
        private static final String DESCRIPTOR = "com.android.internal.widget.IRemoteViewsAdapterConnection";
        public static final int TRANSACTION_onServiceConnected = 1;
        public static final int TRANSACTION_onServiceDisconnected = 2;

        /* JADX INFO: renamed from: com.android.internal.widget.d$a$a, reason: collision with other inner class name */
        public static class C0031a implements d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f1515a;

            public C0031a(IBinder iBinder) {
                this.f1515a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f1515a;
            }
        }

        public a() {
            attachInterface(this, DESCRIPTOR);
        }

        public static d asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof d)) ? new C0031a(iBinder) : (d) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onServiceConnected(parcel.readStrongBinder());
                parcel2.writeNoException();
                return true;
            }
            if (i2 != 2) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            onServiceDisconnected();
            parcel2.writeNoException();
            return true;
        }
    }

    void onServiceConnected(IBinder iBinder);

    void onServiceDisconnected();
}
