package w;

import android.net.PacProxySelector;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: w.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0123a extends Binder implements a {

        /* JADX INFO: renamed from: w.a$a$a, reason: collision with other inner class name */
        public static class C0124a implements a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f17788a;

            public C0124a(IBinder iBinder) {
                this.f17788a = iBinder;
            }

            @Override // w.a
            public String E2(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(PacProxySelector.PROXY_SERVICE);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.f17788a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f17788a;
            }
        }

        public static a J2(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(PacProxySelector.PROXY_SERVICE);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0124a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }
    }

    String E2(String str, String str2);
}
