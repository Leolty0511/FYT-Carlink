package android.hardware;

import android.hardware.camera2.ICameraDeviceCallbacks;
import android.hardware.camera2.impl.CameraMetadataNative;
import android.hardware.camera2.utils.BinderHolder;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface ICameraService extends IInterface {

    public static abstract class Stub extends Binder implements ICameraService {
        private static final String DESCRIPTOR = "android.hardware.ICameraService";
        public static final int TRANSACTION_addListener = 6;
        public static final int TRANSACTION_connect = 3;
        public static final int TRANSACTION_connectDevice = 5;
        public static final int TRANSACTION_connectPro = 4;
        public static final int TRANSACTION_getCameraCharacteristics = 8;
        public static final int TRANSACTION_getCameraInfo = 2;
        public static final int TRANSACTION_getNumberOfCameras = 1;
        public static final int TRANSACTION_removeListener = 7;

        public static class Proxy implements ICameraService {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.hardware.ICameraService
            public int addListener(ICameraServiceListener iCameraServiceListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCameraServiceListener != null ? iCameraServiceListener.asBinder() : null);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.hardware.ICameraService
            public int connect(ICameraClient iCameraClient, int i2, String str, int i3, BinderHolder binderHolder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCameraClient != null ? iCameraClient.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    int i4 = parcelObtain2.readInt();
                    if (parcelObtain2.readInt() != 0) {
                        binderHolder.readFromParcel(parcelObtain2);
                    }
                    return i4;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.ICameraService
            public int connectDevice(ICameraDeviceCallbacks iCameraDeviceCallbacks, int i2, String str, int i3, BinderHolder binderHolder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCameraDeviceCallbacks != null ? iCameraDeviceCallbacks.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    int i4 = parcelObtain2.readInt();
                    if (parcelObtain2.readInt() != 0) {
                        binderHolder.readFromParcel(parcelObtain2);
                    }
                    return i4;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.ICameraService
            public int connectPro(IProCameraCallbacks iProCameraCallbacks, int i2, String str, int i3, BinderHolder binderHolder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iProCameraCallbacks != null ? iProCameraCallbacks.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    int i4 = parcelObtain2.readInt();
                    if (parcelObtain2.readInt() != 0) {
                        binderHolder.readFromParcel(parcelObtain2);
                    }
                    return i4;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.ICameraService
            public int getCameraCharacteristics(int i2, CameraMetadataNative cameraMetadataNative) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    int i3 = parcelObtain2.readInt();
                    if (parcelObtain2.readInt() != 0) {
                        cameraMetadataNative.readFromParcel(parcelObtain2);
                    }
                    return i3;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.ICameraService
            public int getCameraInfo(int i2, CameraInfo cameraInfo) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    int i3 = parcelObtain2.readInt();
                    if (parcelObtain2.readInt() != 0) {
                        cameraInfo.readFromParcel(parcelObtain2);
                    }
                    return i3;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.hardware.ICameraService
            public int getNumberOfCameras() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.ICameraService
            public int removeListener(ICameraServiceListener iCameraServiceListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCameraServiceListener != null ? iCameraServiceListener.asBinder() : null);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICameraService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ICameraService)) ? new Proxy(iBinder) : (ICameraService) iInterfaceQueryLocalInterface;
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
                    int numberOfCameras = getNumberOfCameras();
                    parcel2.writeNoException();
                    parcel2.writeInt(numberOfCameras);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int i4 = parcel.readInt();
                    CameraInfo cameraInfo = new CameraInfo();
                    int cameraInfo2 = getCameraInfo(i4, cameraInfo);
                    parcel2.writeNoException();
                    parcel2.writeInt(cameraInfo2);
                    parcel2.writeInt(1);
                    cameraInfo.writeToParcel(parcel2, 1);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    ICameraClient iCameraClientAsInterface = ICameraClient.Stub.asInterface(parcel.readStrongBinder());
                    int i5 = parcel.readInt();
                    String string = parcel.readString();
                    int i6 = parcel.readInt();
                    BinderHolder binderHolder = new BinderHolder();
                    int iConnect = connect(iCameraClientAsInterface, i5, string, i6, binderHolder);
                    parcel2.writeNoException();
                    parcel2.writeInt(iConnect);
                    parcel2.writeInt(1);
                    binderHolder.writeToParcel(parcel2, 1);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    IProCameraCallbacks iProCameraCallbacksAsInterface = IProCameraCallbacks.Stub.asInterface(parcel.readStrongBinder());
                    int i7 = parcel.readInt();
                    String string2 = parcel.readString();
                    int i8 = parcel.readInt();
                    BinderHolder binderHolder2 = new BinderHolder();
                    int iConnectPro = connectPro(iProCameraCallbacksAsInterface, i7, string2, i8, binderHolder2);
                    parcel2.writeNoException();
                    parcel2.writeInt(iConnectPro);
                    parcel2.writeInt(1);
                    binderHolder2.writeToParcel(parcel2, 1);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    ICameraDeviceCallbacks iCameraDeviceCallbacksAsInterface = ICameraDeviceCallbacks.Stub.asInterface(parcel.readStrongBinder());
                    int i9 = parcel.readInt();
                    String string3 = parcel.readString();
                    int i10 = parcel.readInt();
                    BinderHolder binderHolder3 = new BinderHolder();
                    int iConnectDevice = connectDevice(iCameraDeviceCallbacksAsInterface, i9, string3, i10, binderHolder3);
                    parcel2.writeNoException();
                    parcel2.writeInt(iConnectDevice);
                    parcel2.writeInt(1);
                    binderHolder3.writeToParcel(parcel2, 1);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAddListener = addListener(ICameraServiceListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(iAddListener);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iRemoveListener = removeListener(ICameraServiceListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(iRemoveListener);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int i11 = parcel.readInt();
                    CameraMetadataNative cameraMetadataNative = new CameraMetadataNative();
                    int cameraCharacteristics = getCameraCharacteristics(i11, cameraMetadataNative);
                    parcel2.writeNoException();
                    parcel2.writeInt(cameraCharacteristics);
                    parcel2.writeInt(1);
                    cameraMetadataNative.writeToParcel(parcel2, 1);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    int addListener(ICameraServiceListener iCameraServiceListener);

    int connect(ICameraClient iCameraClient, int i2, String str, int i3, BinderHolder binderHolder);

    int connectDevice(ICameraDeviceCallbacks iCameraDeviceCallbacks, int i2, String str, int i3, BinderHolder binderHolder);

    int connectPro(IProCameraCallbacks iProCameraCallbacks, int i2, String str, int i3, BinderHolder binderHolder);

    int getCameraCharacteristics(int i2, CameraMetadataNative cameraMetadataNative);

    int getCameraInfo(int i2, CameraInfo cameraInfo);

    int getNumberOfCameras();

    int removeListener(ICameraServiceListener iCameraServiceListener);
}
