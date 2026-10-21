package j;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.android.internal.os.PkgUsageStats;

/* JADX INFO: loaded from: classes.dex */
public interface e extends IInterface {

    public static abstract class a extends Binder implements e {

        /* JADX INFO: renamed from: j.e$a$a, reason: collision with other inner class name */
        public static class C0058a implements e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f2928a;

            public C0058a(IBinder iBinder) {
                this.f2928a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f2928a;
            }

            @Override // j.e
            public PkgUsageStats[] f2() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.app.IUsageStats");
                    this.f2928a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (PkgUsageStats[]) parcelObtain2.createTypedArray(PkgUsageStats.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static e J2(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.internal.app.IUsageStats");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof e)) ? new C0058a(iBinder) : (e) iInterfaceQueryLocalInterface;
        }
    }

    PkgUsageStats[] f2();
}
