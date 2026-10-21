package com.android.internal.view;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface e extends IInterface {

    public static abstract class a extends Binder implements e {
        private static final String DESCRIPTOR = "com.android.internal.view.IInputMethodClient";
        public static final int TRANSACTION_onBindMethod = 2;
        public static final int TRANSACTION_onUnbindMethod = 3;
        public static final int TRANSACTION_setActive = 4;
        public static final int TRANSACTION_setUsingInputMethod = 1;

        /* JADX INFO: renamed from: com.android.internal.view.e$a$a, reason: collision with other inner class name */
        public static class C0025a implements e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f1244a;

            public C0025a(IBinder iBinder) {
                this.f1244a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f1244a;
            }
        }

        public a() {
            attachInterface(this, DESCRIPTOR);
        }

        public static e asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof e)) ? new C0025a(iBinder) : (e) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                setUsingInputMethod(parcel.readInt() != 0);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onBindMethod(parcel.readInt() != 0 ? InputBindResult.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                onUnbindMethod(parcel.readInt());
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                setActive(parcel.readInt() != 0);
                return true;
            }
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onBindMethod(InputBindResult inputBindResult);

    void onUnbindMethod(int i2);

    void setActive(boolean z2);

    void setUsingInputMethod(boolean z2);
}
