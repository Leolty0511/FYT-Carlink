package y;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface d extends IInterface {

    public static abstract class a extends Binder implements d {

        /* JADX INFO: renamed from: y.d$a$a, reason: collision with other inner class name */
        public static class C0129a implements d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f17945a;

            public C0129a(IBinder iBinder) {
                this.f17945a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f17945a;
            }

            @Override // y.d
            public c p2(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.syu.ipc.IRemoteToolkit");
                    parcelObtain.writeInt(i2);
                    this.f17945a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return c.a.J2(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "com.syu.ipc.IRemoteToolkit");
        }

        public static d J2(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.syu.ipc.IRemoteToolkit");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof d)) ? new C0129a(iBinder) : (d) iInterfaceQueryLocalInterface;
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
                parcel2.writeString("com.syu.ipc.IRemoteToolkit");
                return true;
            }
            parcel.enforceInterface("com.syu.ipc.IRemoteToolkit");
            c cVarP2 = p2(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeStrongBinder(cVarP2 != null ? cVarP2.asBinder() : null);
            return true;
        }
    }

    c p2(int i2);
}
