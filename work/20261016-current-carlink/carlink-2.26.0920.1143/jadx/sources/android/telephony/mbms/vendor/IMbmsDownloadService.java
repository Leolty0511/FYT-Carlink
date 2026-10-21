package android.telephony.mbms.vendor;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.telephony.mbms.DownloadRequest;
import android.telephony.mbms.FileInfo;
import android.telephony.mbms.IDownloadStateCallback;
import android.telephony.mbms.IMbmsDownloadSessionCallback;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IMbmsDownloadService extends IInterface {

    public static abstract class Stub extends Binder implements IMbmsDownloadService {
        private static final String DESCRIPTOR = "android.telephony.mbms.vendor.IMbmsDownloadService";
        static final int TRANSACTION_cancelDownload = 8;
        static final int TRANSACTION_dispose = 11;
        static final int TRANSACTION_download = 4;
        static final int TRANSACTION_getDownloadStatus = 9;
        static final int TRANSACTION_initialize = 1;
        static final int TRANSACTION_listPendingDownloads = 7;
        static final int TRANSACTION_registerStateCallback = 5;
        static final int TRANSACTION_requestUpdateFileServices = 2;
        static final int TRANSACTION_resetDownloadKnowledge = 10;
        static final int TRANSACTION_setTempFileRootDirectory = 3;
        static final int TRANSACTION_unregisterStateCallback = 6;

        public static class Proxy implements IMbmsDownloadService {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.telephony.mbms.vendor.IMbmsDownloadService
            public int cancelDownload(DownloadRequest downloadRequest) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (downloadRequest != null) {
                        parcelObtain.writeInt(1);
                        downloadRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.telephony.mbms.vendor.IMbmsDownloadService
            public void dispose(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.telephony.mbms.vendor.IMbmsDownloadService
            public int download(DownloadRequest downloadRequest) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (downloadRequest != null) {
                        parcelObtain.writeInt(1);
                        downloadRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.telephony.mbms.vendor.IMbmsDownloadService
            public int getDownloadStatus(DownloadRequest downloadRequest, FileInfo fileInfo) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (downloadRequest != null) {
                        parcelObtain.writeInt(1);
                        downloadRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (fileInfo != null) {
                        parcelObtain.writeInt(1);
                        fileInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.telephony.mbms.vendor.IMbmsDownloadService
            public int initialize(int i2, IMbmsDownloadSessionCallback iMbmsDownloadSessionCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iMbmsDownloadSessionCallback != null ? iMbmsDownloadSessionCallback.asBinder() : null);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.telephony.mbms.vendor.IMbmsDownloadService
            public List<DownloadRequest> listPendingDownloads(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(DownloadRequest.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.telephony.mbms.vendor.IMbmsDownloadService
            public int registerStateCallback(DownloadRequest downloadRequest, IDownloadStateCallback iDownloadStateCallback, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (downloadRequest != null) {
                        parcelObtain.writeInt(1);
                        downloadRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iDownloadStateCallback != null ? iDownloadStateCallback.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.telephony.mbms.vendor.IMbmsDownloadService
            public int requestUpdateFileServices(int i2, List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.telephony.mbms.vendor.IMbmsDownloadService
            public int resetDownloadKnowledge(DownloadRequest downloadRequest) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (downloadRequest != null) {
                        parcelObtain.writeInt(1);
                        downloadRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.telephony.mbms.vendor.IMbmsDownloadService
            public int setTempFileRootDirectory(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.telephony.mbms.vendor.IMbmsDownloadService
            public int unregisterStateCallback(DownloadRequest downloadRequest, IDownloadStateCallback iDownloadStateCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (downloadRequest != null) {
                        parcelObtain.writeInt(1);
                        downloadRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iDownloadStateCallback != null ? iDownloadStateCallback.asBinder() : null);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
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

        public static IMbmsDownloadService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMbmsDownloadService)) ? new Proxy(iBinder) : (IMbmsDownloadService) iInterfaceQueryLocalInterface;
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
                    int iInitialize = initialize(parcel.readInt(), IMbmsDownloadSessionCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(iInitialize);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iRequestUpdateFileServices = requestUpdateFileServices(parcel.readInt(), parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeInt(iRequestUpdateFileServices);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int tempFileRootDirectory = setTempFileRootDirectory(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(tempFileRootDirectory);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iDownload = download(parcel.readInt() != 0 ? DownloadRequest.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iDownload);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iRegisterStateCallback = registerStateCallback(parcel.readInt() != 0 ? DownloadRequest.CREATOR.createFromParcel(parcel) : null, IDownloadStateCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iRegisterStateCallback);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iUnregisterStateCallback = unregisterStateCallback(parcel.readInt() != 0 ? DownloadRequest.CREATOR.createFromParcel(parcel) : null, IDownloadStateCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(iUnregisterStateCallback);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<DownloadRequest> listListPendingDownloads = listPendingDownloads(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listListPendingDownloads);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCancelDownload = cancelDownload(parcel.readInt() != 0 ? DownloadRequest.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iCancelDownload);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int downloadStatus = getDownloadStatus(parcel.readInt() != 0 ? DownloadRequest.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? FileInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(downloadStatus);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iResetDownloadKnowledge = resetDownloadKnowledge(parcel.readInt() != 0 ? DownloadRequest.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iResetDownloadKnowledge);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    dispose(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    int cancelDownload(DownloadRequest downloadRequest);

    void dispose(int i2);

    int download(DownloadRequest downloadRequest);

    int getDownloadStatus(DownloadRequest downloadRequest, FileInfo fileInfo);

    int initialize(int i2, IMbmsDownloadSessionCallback iMbmsDownloadSessionCallback);

    List<DownloadRequest> listPendingDownloads(int i2);

    int registerStateCallback(DownloadRequest downloadRequest, IDownloadStateCallback iDownloadStateCallback, int i2);

    int requestUpdateFileServices(int i2, List<String> list);

    int resetDownloadKnowledge(DownloadRequest downloadRequest);

    int setTempFileRootDirectory(int i2, String str);

    int unregisterStateCallback(DownloadRequest downloadRequest, IDownloadStateCallback iDownloadStateCallback);
}
