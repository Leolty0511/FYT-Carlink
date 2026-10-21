package r;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface f extends IInterface {

    public static abstract class a extends Binder implements f {

        /* JADX INFO: renamed from: r.f$a$a, reason: collision with other inner class name */
        public static class C0102a implements f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f17144a;

            public C0102a(IBinder iBinder) {
                this.f17144a = iBinder;
            }

            @Override // r.f
            public void I(String str, b bVar, int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.telephony.ITelephonyRegistry");
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.f17144a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f17144a;
            }
        }

        public static f J2(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.internal.telephony.ITelephonyRegistry");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof f)) ? new C0102a(iBinder) : (f) iInterfaceQueryLocalInterface;
        }
    }

    void I(String str, b bVar, int i2, boolean z2);
}
