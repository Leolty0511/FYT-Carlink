package r;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface e extends IInterface {

    public static abstract class a extends Binder implements e {
        private static final String DESCRIPTOR = "com.android.internal.telephony.ITelephonyListener";
        public static final int TRANSACTION_onUpdate = 1;

        /* JADX INFO: renamed from: r.e$a$a, reason: collision with other inner class name */
        public static class C0101a implements e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f17143a;

            public C0101a(IBinder iBinder) {
                this.f17143a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f17143a;
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
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof e)) ? new C0101a(iBinder) : (e) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onUpdate(parcel.readInt(), parcel.readInt(), parcel.readString());
                return true;
            }
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onUpdate(int i2, int i3, String str);
}
