package android.printservice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.print.PrintJobInfo;
import android.print.PrinterId;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IPrintService extends IInterface {

    public static abstract class Stub extends Binder implements IPrintService {
        private static final String DESCRIPTOR = "android.printservice.IPrintService";
        public static final int TRANSACTION_createPrinterDiscoverySession = 4;
        public static final int TRANSACTION_destroyPrinterDiscoverySession = 10;
        public static final int TRANSACTION_onPrintJobQueued = 3;
        public static final int TRANSACTION_requestCancelPrintJob = 2;
        public static final int TRANSACTION_setClient = 1;
        public static final int TRANSACTION_startPrinterDiscovery = 5;
        public static final int TRANSACTION_startPrinterStateTracking = 8;
        public static final int TRANSACTION_stopPrinterDiscovery = 6;
        public static final int TRANSACTION_stopPrinterStateTracking = 9;
        public static final int TRANSACTION_validatePrinters = 7;

        public static class Proxy implements IPrintService {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.printservice.IPrintService
            public void createPrinterDiscoverySession() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.printservice.IPrintService
            public void destroyPrinterDiscoverySession() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.printservice.IPrintService
            public void onPrintJobQueued(PrintJobInfo printJobInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (printJobInfo != null) {
                        parcelObtain.writeInt(1);
                        printJobInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.printservice.IPrintService
            public void requestCancelPrintJob(PrintJobInfo printJobInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (printJobInfo != null) {
                        parcelObtain.writeInt(1);
                        printJobInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.printservice.IPrintService
            public void setClient(IPrintServiceClient iPrintServiceClient) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iPrintServiceClient != null ? iPrintServiceClient.asBinder() : null);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.printservice.IPrintService
            public void startPrinterDiscovery(List<PrinterId> list) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedList(list);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.printservice.IPrintService
            public void startPrinterStateTracking(PrinterId printerId) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (printerId != null) {
                        parcelObtain.writeInt(1);
                        printerId.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.printservice.IPrintService
            public void stopPrinterDiscovery() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.printservice.IPrintService
            public void stopPrinterStateTracking(PrinterId printerId) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (printerId != null) {
                        parcelObtain.writeInt(1);
                        printerId.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(9, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.printservice.IPrintService
            public void validatePrinters(List<PrinterId> list) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedList(list);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPrintService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IPrintService)) ? new Proxy(iBinder) : (IPrintService) iInterfaceQueryLocalInterface;
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
                    setClient(IPrintServiceClient.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestCancelPrintJob(parcel.readInt() != 0 ? PrintJobInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onPrintJobQueued(parcel.readInt() != 0 ? PrintJobInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    createPrinterDiscoverySession();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    startPrinterDiscovery(parcel.createTypedArrayList(PrinterId.CREATOR));
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopPrinterDiscovery();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    validatePrinters(parcel.createTypedArrayList(PrinterId.CREATOR));
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    startPrinterStateTracking(parcel.readInt() != 0 ? PrinterId.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopPrinterStateTracking(parcel.readInt() != 0 ? PrinterId.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    destroyPrinterDiscoverySession();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void createPrinterDiscoverySession();

    void destroyPrinterDiscoverySession();

    void onPrintJobQueued(PrintJobInfo printJobInfo);

    void requestCancelPrintJob(PrintJobInfo printJobInfo);

    void setClient(IPrintServiceClient iPrintServiceClient);

    void startPrinterDiscovery(List<PrinterId> list);

    void startPrinterStateTracking(PrinterId printerId);

    void stopPrinterDiscovery();

    void stopPrinterStateTracking(PrinterId printerId);

    void validatePrinters(List<PrinterId> list);
}
