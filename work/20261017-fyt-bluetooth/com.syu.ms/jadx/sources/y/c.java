package y;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface c extends IInterface {

    public static abstract class a extends Binder implements c {

        /* JADX INFO: renamed from: y.c$a$a, reason: collision with other inner class name */
        public static class C0128a implements c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f17944a;

            public C0128a(IBinder iBinder) {
                this.f17944a = iBinder;
            }

            @Override // y.c
            public f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
                f fVar;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.syu.ipc.IRemoteModule");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeIntArray(iArr);
                    parcelObtain.writeFloatArray(fArr);
                    parcelObtain.writeStringArray(strArr);
                    this.f17944a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        fVar = new f();
                        fVar.f17946a = parcelObtain2.createIntArray();
                        fVar.f17947b = parcelObtain2.createFloatArray();
                        fVar.f17948c = parcelObtain2.createStringArray();
                    } else {
                        fVar = null;
                    }
                    return fVar;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // y.c
            public void P0(b bVar, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.syu.ipc.IRemoteModule");
                    parcelObtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    this.f17944a.transact(4, parcelObtain, parcelObtain2, 1);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // y.c
            public void Y1(b bVar, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.syu.ipc.IRemoteModule");
                    parcelObtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.f17944a.transact(3, parcelObtain, parcelObtain2, 1);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // y.c
            public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.syu.ipc.IRemoteModule");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeIntArray(iArr);
                    parcelObtain.writeFloatArray(fArr);
                    parcelObtain.writeStringArray(strArr);
                    this.f17944a.transact(1, parcelObtain, parcelObtain2, 1);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f17944a;
            }
        }

        public a() {
            attachInterface(this, "com.syu.ipc.IRemoteModule");
        }

        public static c J2(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.syu.ipc.IRemoteModule");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) ? new C0128a(iBinder) : (c) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface("com.syu.ipc.IRemoteModule");
                Z0(parcel.readInt(), parcel.createIntArray(), parcel.createFloatArray(), parcel.createStringArray());
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface("com.syu.ipc.IRemoteModule");
                f fVarM1 = M1(parcel.readInt(), parcel.createIntArray(), parcel.createFloatArray(), parcel.createStringArray());
                parcel2.writeNoException();
                if (fVarM1 != null) {
                    parcel2.writeInt(1);
                    parcel2.writeIntArray(fVarM1.f17946a);
                    parcel2.writeFloatArray(fVarM1.f17947b);
                    parcel2.writeStringArray(fVarM1.f17948c);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface("com.syu.ipc.IRemoteModule");
                Y1(b.a.J2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface("com.syu.ipc.IRemoteModule");
                P0(b.a.J2(parcel.readStrongBinder()), parcel.readInt());
                return true;
            }
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel2.writeString("com.syu.ipc.IRemoteModule");
            return true;
        }
    }

    f M1(int i2, int[] iArr, float[] fArr, String[] strArr);

    void P0(b bVar, int i2);

    void Y1(b bVar, int i2, int i3);

    void Z0(int i2, int[] iArr, float[] fArr, String[] strArr);
}
