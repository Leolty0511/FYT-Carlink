package android.hardware.location;

import android.location.IFusedGeofenceHardware;
import android.location.IGpsGeofenceHardware;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface IGeofenceHardware extends IInterface {

    public static abstract class Stub extends Binder implements IGeofenceHardware {
        private static final String DESCRIPTOR = "android.hardware.location.IGeofenceHardware";
        public static final int TRANSACTION_addCircularFence = 5;
        public static final int TRANSACTION_getMonitoringTypes = 3;
        public static final int TRANSACTION_getStatusOfMonitoringType = 4;
        public static final int TRANSACTION_pauseGeofence = 7;
        public static final int TRANSACTION_registerForMonitorStateChangeCallback = 9;
        public static final int TRANSACTION_removeGeofence = 6;
        public static final int TRANSACTION_resumeGeofence = 8;
        public static final int TRANSACTION_setFusedGeofenceHardware = 2;
        public static final int TRANSACTION_setGpsGeofenceHardware = 1;
        public static final int TRANSACTION_unregisterForMonitorStateChangeCallback = 10;

        public static class Proxy implements IGeofenceHardware {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.hardware.location.IGeofenceHardware
            public boolean addCircularFence(int i2, int i3, double d2, double d3, double d4, int i4, int i5, int i6, int i7, IGeofenceHardwareCallback iGeofenceHardwareCallback) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeDouble(d2);
                    parcelObtain.writeDouble(d3);
                    parcelObtain.writeDouble(d4);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeInt(i6);
                    parcelObtain.writeInt(i7);
                    parcelObtain.writeStrongBinder(iGeofenceHardwareCallback != null ? iGeofenceHardwareCallback.asBinder() : null);
                    try {
                        this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                        parcelObtain2.readException();
                        boolean z2 = parcelObtain2.readInt() != 0;
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return z2;
                    } catch (Throwable th) {
                        th = th;
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.hardware.location.IGeofenceHardware
            public int[] getMonitoringTypes() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.location.IGeofenceHardware
            public int getStatusOfMonitoringType(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.location.IGeofenceHardware
            public boolean pauseGeofence(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.location.IGeofenceHardware
            public boolean registerForMonitorStateChangeCallback(int i2, IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iGeofenceHardwareMonitorCallback != null ? iGeofenceHardwareMonitorCallback.asBinder() : null);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.location.IGeofenceHardware
            public boolean removeGeofence(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.location.IGeofenceHardware
            public boolean resumeGeofence(int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.location.IGeofenceHardware
            public void setFusedGeofenceHardware(IFusedGeofenceHardware iFusedGeofenceHardware) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iFusedGeofenceHardware != null ? iFusedGeofenceHardware.asBinder() : null);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.location.IGeofenceHardware
            public void setGpsGeofenceHardware(IGpsGeofenceHardware iGpsGeofenceHardware) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iGpsGeofenceHardware != null ? iGpsGeofenceHardware.asBinder() : null);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.location.IGeofenceHardware
            public boolean unregisterForMonitorStateChangeCallback(int i2, IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iGeofenceHardwareMonitorCallback != null ? iGeofenceHardwareMonitorCallback.asBinder() : null);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IGeofenceHardware asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IGeofenceHardware)) ? new Proxy(iBinder) : (IGeofenceHardware) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    setGpsGeofenceHardware(IGpsGeofenceHardware.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    setFusedGeofenceHardware(IFusedGeofenceHardware.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] monitoringTypes = getMonitoringTypes();
                    parcel2.writeNoException();
                    parcel2.writeIntArray(monitoringTypes);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int statusOfMonitoringType = getStatusOfMonitoringType(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(statusOfMonitoringType);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAddCircularFence = addCircularFence(parcel.readInt(), parcel.readInt(), parcel.readDouble(), parcel.readDouble(), parcel.readDouble(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), IGeofenceHardwareCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zAddCircularFence ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRemoveGeofence = removeGeofence(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zRemoveGeofence ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPauseGeofence = pauseGeofence(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zPauseGeofence ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zResumeGeofence = resumeGeofence(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zResumeGeofence ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRegisterForMonitorStateChangeCallback = registerForMonitorStateChangeCallback(parcel.readInt(), IGeofenceHardwareMonitorCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegisterForMonitorStateChangeCallback ? 1 : 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUnregisterForMonitorStateChangeCallback = unregisterForMonitorStateChangeCallback(parcel.readInt(), IGeofenceHardwareMonitorCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zUnregisterForMonitorStateChangeCallback ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    boolean addCircularFence(int i2, int i3, double d2, double d3, double d4, int i4, int i5, int i6, int i7, IGeofenceHardwareCallback iGeofenceHardwareCallback);

    int[] getMonitoringTypes();

    int getStatusOfMonitoringType(int i2);

    boolean pauseGeofence(int i2, int i3);

    boolean registerForMonitorStateChangeCallback(int i2, IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback);

    boolean removeGeofence(int i2, int i3);

    boolean resumeGeofence(int i2, int i3, int i4);

    void setFusedGeofenceHardware(IFusedGeofenceHardware iFusedGeofenceHardware);

    void setGpsGeofenceHardware(IGpsGeofenceHardware iGpsGeofenceHardware);

    boolean unregisterForMonitorStateChangeCallback(int i2, IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback);
}
