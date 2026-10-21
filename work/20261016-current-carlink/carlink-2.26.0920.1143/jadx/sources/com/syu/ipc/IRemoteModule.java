package com.syu.ipc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public interface IRemoteModule extends IInterface {

    public static abstract class Stub extends Binder implements IRemoteModule {
        private static final String DESCRIPTOR = "com.syu.ipc.IRemoteModule";
        static final int TRANSACTION_cmd = 1;
        static final int TRANSACTION_get = 2;
        static final int TRANSACTION_register = 3;
        static final int TRANSACTION_unregister = 4;

        public static class Proxy implements IRemoteModule {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.syu.ipc.IRemoteModule
            public void cmd(int i2, int[] iArr, float[] fArr, String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeIntArray(iArr);
                    parcelObtain.writeFloatArray(fArr);
                    parcelObtain.writeStringArray(strArr);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.syu.ipc.IRemoteModule
            public ModuleObject get(int i2, int[] iArr, float[] fArr, String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeIntArray(iArr);
                    parcelObtain.writeFloatArray(fArr);
                    parcelObtain.writeStringArray(strArr);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ModuleObject.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.syu.ipc.IRemoteModule
            public void register(IModuleCallback iModuleCallback, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iModuleCallback != null ? iModuleCallback.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.syu.ipc.IRemoteModule
            public void unregister(IModuleCallback iModuleCallback, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iModuleCallback != null ? iModuleCallback.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IRemoteModule asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IRemoteModule)) ? new Proxy(iBinder) : (IRemoteModule) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                cmd(parcel.readInt(), parcel.createIntArray(), parcel.createFloatArray(), parcel.createStringArray());
                parcel2.writeNoException();
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                ModuleObject moduleObject = get(parcel.readInt(), parcel.createIntArray(), parcel.createFloatArray(), parcel.createStringArray());
                parcel2.writeNoException();
                if (moduleObject != null) {
                    parcel2.writeInt(1);
                    moduleObject.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                register(IModuleCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (i2 != 4) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            unregister(IModuleCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }

    void cmd(int i2, int[] iArr, float[] fArr, String[] strArr);

    ModuleObject get(int i2, int[] iArr, float[] fArr, String[] strArr);

    void register(IModuleCallback iModuleCallback, int i2, int i3);

    void unregister(IModuleCallback iModuleCallback, int i2);
}
