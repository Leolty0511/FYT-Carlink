package s;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: s.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0104a extends Binder implements a {
        private static final String DESCRIPTOR = "com.android.internal.textservice.ISpellCheckerService";
        public static final int TRANSACTION_getISpellCheckerSession = 1;

        /* JADX INFO: renamed from: s.a$a$a, reason: collision with other inner class name */
        public static class C0105a implements a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f17161a;

            public C0105a(IBinder iBinder) {
                this.f17161a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f17161a;
            }
        }

        public AbstractBinderC0104a() {
            attachInterface(this, DESCRIPTOR);
        }

        public static a asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0105a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 != 1) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            b iSpellCheckerSession = getISpellCheckerSession(parcel.readString(), c.a.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            parcel2.writeStrongBinder(iSpellCheckerSession != null ? iSpellCheckerSession.asBinder() : null);
            return true;
        }
    }

    b getISpellCheckerSession(String str, c cVar, Bundle bundle);
}
