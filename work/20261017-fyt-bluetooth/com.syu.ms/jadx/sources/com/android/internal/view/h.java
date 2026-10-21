package com.android.internal.view;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface h extends IInterface {

    public static abstract class a extends Binder implements h {

        /* JADX INFO: renamed from: com.android.internal.view.h$a$a, reason: collision with other inner class name */
        public static class C0028a implements h {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f1247a;

            public C0028a(IBinder iBinder) {
                this.f1247a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f1247a;
            }

            @Override // com.android.internal.view.h
            public void g(g gVar) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.view.IInputSessionCallback");
                    parcelObtain.writeStrongBinder(gVar != null ? gVar.asBinder() : null);
                    this.f1247a.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static h J2(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.internal.view.IInputSessionCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof h)) ? new C0028a(iBinder) : (h) iInterfaceQueryLocalInterface;
        }
    }

    void g(g gVar);
}
