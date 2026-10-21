package android.printservice;

import android.content.pm.ParceledListSlice;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.print.PrintJobId;
import android.print.PrintJobInfo;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IPrintServiceClient extends IInterface {

    public static abstract class Stub extends Binder implements IPrintServiceClient {
        private static final String DESCRIPTOR = "android.printservice.IPrintServiceClient";
        public static final int TRANSACTION_getPrintJobInfo = 2;
        public static final int TRANSACTION_getPrintJobInfos = 1;
        public static final int TRANSACTION_onPrintersAdded = 6;
        public static final int TRANSACTION_onPrintersRemoved = 7;
        public static final int TRANSACTION_setPrintJobState = 3;
        public static final int TRANSACTION_setPrintJobTag = 4;
        public static final int TRANSACTION_writePrintJobData = 5;

        public static class Proxy implements IPrintServiceClient {
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

            @Override // android.printservice.IPrintServiceClient
            public PrintJobInfo getPrintJobInfo(PrintJobId printJobId) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (printJobId != null) {
                        parcelObtain.writeInt(1);
                        printJobId.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? PrintJobInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.printservice.IPrintServiceClient
            public List<PrintJobInfo> getPrintJobInfos() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(PrintJobInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.printservice.IPrintServiceClient
            public void onPrintersAdded(ParceledListSlice parceledListSlice) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (parceledListSlice != null) {
                        parcelObtain.writeInt(1);
                        parceledListSlice.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.printservice.IPrintServiceClient
            public void onPrintersRemoved(ParceledListSlice parceledListSlice) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (parceledListSlice != null) {
                        parcelObtain.writeInt(1);
                        parceledListSlice.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.printservice.IPrintServiceClient
            public boolean setPrintJobState(PrintJobId printJobId, int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (printJobId != null) {
                        parcelObtain.writeInt(1);
                        printJobId.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.printservice.IPrintServiceClient
            public boolean setPrintJobTag(PrintJobId printJobId, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (printJobId != null) {
                        parcelObtain.writeInt(1);
                        printJobId.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.printservice.IPrintServiceClient
            public void writePrintJobData(ParcelFileDescriptor parcelFileDescriptor, PrintJobId printJobId) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (parcelFileDescriptor != null) {
                        parcelObtain.writeInt(1);
                        parcelFileDescriptor.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (printJobId != null) {
                        parcelObtain.writeInt(1);
                        printJobId.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPrintServiceClient asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IPrintServiceClient)) ? new Proxy(iBinder) : (IPrintServiceClient) iInterfaceQueryLocalInterface;
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
                    List<PrintJobInfo> printJobInfos = getPrintJobInfos();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(printJobInfos);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    PrintJobInfo printJobInfo = getPrintJobInfo(parcel.readInt() != 0 ? PrintJobId.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (printJobInfo != null) {
                        parcel2.writeInt(1);
                        printJobInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean printJobState = setPrintJobState(parcel.readInt() != 0 ? PrintJobId.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(printJobState ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean printJobTag = setPrintJobTag(parcel.readInt() != 0 ? PrintJobId.CREATOR.createFromParcel(parcel) : null, parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(printJobTag ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    writePrintJobData(parcel.readInt() != 0 ? ParcelFileDescriptor.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? PrintJobId.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onPrintersAdded(parcel.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onPrintersRemoved(parcel.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    PrintJobInfo getPrintJobInfo(PrintJobId printJobId);

    List<PrintJobInfo> getPrintJobInfos();

    void onPrintersAdded(ParceledListSlice parceledListSlice);

    void onPrintersRemoved(ParceledListSlice parceledListSlice);

    boolean setPrintJobState(PrintJobId printJobId, int i2, String str);

    boolean setPrintJobTag(PrintJobId printJobId, String str);

    void writePrintJobData(ParcelFileDescriptor parcelFileDescriptor, PrintJobId printJobId);
}
