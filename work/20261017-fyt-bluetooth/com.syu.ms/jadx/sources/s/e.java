package s;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface e extends IInterface {

    public static abstract class a extends Binder implements e {
        private static final String DESCRIPTOR = "com.android.internal.textservice.ITextServicesSessionListener";
        public static final int TRANSACTION_onServiceConnected = 1;

        /* JADX INFO: renamed from: s.e$a$a, reason: collision with other inner class name */
        public static class C0109a implements e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f17165a;

            public C0109a(IBinder iBinder) {
                this.f17165a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f17165a;
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
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof e)) ? new C0109a(iBinder) : (e) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onServiceConnected(b.a.asInterface(parcel.readStrongBinder()));
                return true;
            }
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onServiceConnected(b bVar);
}
