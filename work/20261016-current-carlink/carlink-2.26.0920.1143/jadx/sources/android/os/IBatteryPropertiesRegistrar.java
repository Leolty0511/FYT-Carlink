package android.os;

/* JADX INFO: loaded from: classes.dex */
public interface IBatteryPropertiesRegistrar extends IInterface {

    public static abstract class Stub extends Binder implements IBatteryPropertiesRegistrar {
        private static final String DESCRIPTOR = "android.os.IBatteryPropertiesRegistrar";
        static final int TRANSACTION_getProperty = 3;
        static final int TRANSACTION_registerListener = 1;
        static final int TRANSACTION_scheduleUpdate = 4;
        static final int TRANSACTION_unregisterListener = 2;

        public static class Proxy implements IBatteryPropertiesRegistrar {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.os.IBatteryPropertiesRegistrar
            public int getProperty(int i2, BatteryProperty batteryProperty) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    int i3 = parcelObtain2.readInt();
                    if (parcelObtain2.readInt() != 0) {
                        batteryProperty.readFromParcel(parcelObtain2);
                    }
                    return i3;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IBatteryPropertiesRegistrar
            public void registerListener(IBatteryPropertiesListener iBatteryPropertiesListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBatteryPropertiesListener != null ? iBatteryPropertiesListener.asBinder() : null);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IBatteryPropertiesRegistrar
            public void scheduleUpdate() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IBatteryPropertiesRegistrar
            public void unregisterListener(IBatteryPropertiesListener iBatteryPropertiesListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBatteryPropertiesListener != null ? iBatteryPropertiesListener.asBinder() : null);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
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

        public static IBatteryPropertiesRegistrar asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IBatteryPropertiesRegistrar)) ? new Proxy(iBinder) : (IBatteryPropertiesRegistrar) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                registerListener(IBatteryPropertiesListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                unregisterListener(IBatteryPropertiesListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i2 != 3) {
                if (i2 == 4) {
                    parcel.enforceInterface(DESCRIPTOR);
                    scheduleUpdate();
                    return true;
                }
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            int i4 = parcel.readInt();
            BatteryProperty batteryProperty = new BatteryProperty();
            int property = getProperty(i4, batteryProperty);
            parcel2.writeNoException();
            parcel2.writeInt(property);
            parcel2.writeInt(1);
            batteryProperty.writeToParcel(parcel2, 1);
            return true;
        }
    }

    int getProperty(int i2, BatteryProperty batteryProperty);

    void registerListener(IBatteryPropertiesListener iBatteryPropertiesListener);

    void scheduleUpdate();

    void unregisterListener(IBatteryPropertiesListener iBatteryPropertiesListener);
}
