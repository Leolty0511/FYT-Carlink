package j;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface b extends IInterface {

    public static abstract class a extends Binder implements b {
        private static final String DESCRIPTOR = "com.android.internal.app.IAppOpsCallback";
        public static final int TRANSACTION_opChanged = 1;

        /* JADX INFO: renamed from: j.b$a$a, reason: collision with other inner class name */
        public static class C0055a implements b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f2925a;

            public C0055a(IBinder iBinder) {
                this.f2925a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f2925a;
            }
        }

        public a() {
            attachInterface(this, DESCRIPTOR);
        }

        public static b asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0055a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                opChanged(parcel.readInt(), parcel.readString());
                return true;
            }
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void opChanged(int i2, String str);
}
