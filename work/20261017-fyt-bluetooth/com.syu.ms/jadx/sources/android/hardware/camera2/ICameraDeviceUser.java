package android.hardware.camera2;

import android.hardware.camera2.impl.CameraMetadataNative;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.Surface;

/* JADX INFO: loaded from: classes.dex */
public interface ICameraDeviceUser extends IInterface {

    public static abstract class Stub extends Binder implements ICameraDeviceUser {
        private static final String DESCRIPTOR = "android.hardware.camera2.ICameraDeviceUser";
        public static final int TRANSACTION_cancelRequest = 3;
        public static final int TRANSACTION_createDefaultRequest = 6;
        public static final int TRANSACTION_createStream = 5;
        public static final int TRANSACTION_deleteStream = 4;
        public static final int TRANSACTION_disconnect = 1;
        public static final int TRANSACTION_flush = 9;
        public static final int TRANSACTION_getCameraInfo = 7;
        public static final int TRANSACTION_submitRequest = 2;
        public static final int TRANSACTION_waitUntilIdle = 8;

        public static class Proxy implements ICameraDeviceUser {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.hardware.camera2.ICameraDeviceUser
            public int cancelRequest(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.camera2.ICameraDeviceUser
            public int createDefaultRequest(int i2, CameraMetadataNative cameraMetadataNative) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
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

            @Override // android.hardware.camera2.ICameraDeviceUser
            public int createStream(int i2, int i3, int i4, Surface surface) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    if (surface != null) {
                        parcelObtain.writeInt(1);
                        surface.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.camera2.ICameraDeviceUser
            public int deleteStream(int i2) {
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

            @Override // android.hardware.camera2.ICameraDeviceUser
            public void disconnect() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.camera2.ICameraDeviceUser
            public int flush() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.camera2.ICameraDeviceUser
            public int getCameraInfo(CameraMetadataNative cameraMetadataNative) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    int i2 = parcelObtain2.readInt();
                    if (parcelObtain2.readInt() != 0) {
                        cameraMetadataNative.readFromParcel(parcelObtain2);
                    }
                    return i2;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.hardware.camera2.ICameraDeviceUser
            public int submitRequest(CaptureRequest captureRequest, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i2 = 1;
                    if (captureRequest != null) {
                        parcelObtain.writeInt(1);
                        captureRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z2) {
                        i2 = 0;
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.camera2.ICameraDeviceUser
            public int waitUntilIdle() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
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

        public static ICameraDeviceUser asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ICameraDeviceUser)) ? new Proxy(iBinder) : (ICameraDeviceUser) iInterfaceQueryLocalInterface;
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
                    disconnect();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSubmitRequest = submitRequest(parcel.readInt() != 0 ? CaptureRequest.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iSubmitRequest);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCancelRequest = cancelRequest(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCancelRequest);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iDeleteStream = deleteStream(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iDeleteStream);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCreateStream = createStream(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? Surface.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iCreateStream);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int i4 = parcel.readInt();
                    CameraMetadataNative cameraMetadataNative = new CameraMetadataNative();
                    int iCreateDefaultRequest = createDefaultRequest(i4, cameraMetadataNative);
                    parcel2.writeNoException();
                    parcel2.writeInt(iCreateDefaultRequest);
                    parcel2.writeInt(1);
                    cameraMetadataNative.writeToParcel(parcel2, 1);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    CameraMetadataNative cameraMetadataNative2 = new CameraMetadataNative();
                    int cameraInfo = getCameraInfo(cameraMetadataNative2);
                    parcel2.writeNoException();
                    parcel2.writeInt(cameraInfo);
                    parcel2.writeInt(1);
                    cameraMetadataNative2.writeToParcel(parcel2, 1);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iWaitUntilIdle = waitUntilIdle();
                    parcel2.writeNoException();
                    parcel2.writeInt(iWaitUntilIdle);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iFlush = flush();
                    parcel2.writeNoException();
                    parcel2.writeInt(iFlush);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    int cancelRequest(int i2);

    int createDefaultRequest(int i2, CameraMetadataNative cameraMetadataNative);

    int createStream(int i2, int i3, int i4, Surface surface);

    int deleteStream(int i2);

    void disconnect();

    int flush();

    int getCameraInfo(CameraMetadataNative cameraMetadataNative);

    int submitRequest(CaptureRequest captureRequest, boolean z2);

    int waitUntilIdle();
}
