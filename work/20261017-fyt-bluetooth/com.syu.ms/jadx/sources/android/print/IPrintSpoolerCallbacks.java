package android.print;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IPrintSpoolerCallbacks extends IInterface {

    public static abstract class Stub extends Binder implements IPrintSpoolerCallbacks {
        private static final String DESCRIPTOR = "android.print.IPrintSpoolerCallbacks";
        public static final int TRANSACTION_onCancelPrintJobResult = 2;
        public static final int TRANSACTION_onGetPrintJobInfoResult = 5;
        public static final int TRANSACTION_onGetPrintJobInfosResult = 1;
        public static final int TRANSACTION_onSetPrintJobStateResult = 3;
        public static final int TRANSACTION_onSetPrintJobTagResult = 4;

        public static class Proxy implements IPrintSpoolerCallbacks {
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

            @Override // android.print.IPrintSpoolerCallbacks
            public void onCancelPrintJobResult(boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.print.IPrintSpoolerCallbacks
            public void onGetPrintJobInfoResult(PrintJobInfo printJobInfo, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (printJobInfo != null) {
                        parcelObtain.writeInt(1);
                        printJobInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.print.IPrintSpoolerCallbacks
            public void onGetPrintJobInfosResult(List<PrintJobInfo> list, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedList(list);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.print.IPrintSpoolerCallbacks
            public void onSetPrintJobStateResult(boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.print.IPrintSpoolerCallbacks
            public void onSetPrintJobTagResult(boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPrintSpoolerCallbacks asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IPrintSpoolerCallbacks)) ? new Proxy(iBinder) : (IPrintSpoolerCallbacks) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onGetPrintJobInfosResult(parcel.createTypedArrayList(PrintJobInfo.CREATOR), parcel.readInt());
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onCancelPrintJobResult(parcel.readInt() != 0, parcel.readInt());
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                onSetPrintJobStateResult(parcel.readInt() != 0, parcel.readInt());
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                onSetPrintJobTagResult(parcel.readInt() != 0, parcel.readInt());
                return true;
            }
            if (i2 == 5) {
                parcel.enforceInterface(DESCRIPTOR);
                onGetPrintJobInfoResult(parcel.readInt() != 0 ? PrintJobInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                return true;
            }
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onCancelPrintJobResult(boolean z2, int i2);

    void onGetPrintJobInfoResult(PrintJobInfo printJobInfo, int i2);

    void onGetPrintJobInfosResult(List<PrintJobInfo> list, int i2);

    void onSetPrintJobStateResult(boolean z2, int i2);

    void onSetPrintJobTagResult(boolean z2, int i2);
}
