package android.service.carrier;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface ICarrierMessagingService extends IInterface {

    public static abstract class Stub extends Binder implements ICarrierMessagingService {
        private static final String DESCRIPTOR = "android.service.carrier.ICarrierMessagingService";
        static final int TRANSACTION_downloadMms = 6;
        static final int TRANSACTION_filterSms = 1;
        static final int TRANSACTION_sendDataSms = 3;
        static final int TRANSACTION_sendMms = 5;
        static final int TRANSACTION_sendMultipartTextSms = 4;
        static final int TRANSACTION_sendTextSms = 2;

        public static class Proxy implements ICarrierMessagingService {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.service.carrier.ICarrierMessagingService
            public void downloadMms(Uri uri, int i2, Uri uri2, ICarrierMessagingCallback iCarrierMessagingCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    if (uri2 != null) {
                        parcelObtain.writeInt(1);
                        uri2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iCarrierMessagingCallback != null ? iCarrierMessagingCallback.asBinder() : null);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.service.carrier.ICarrierMessagingService
            public void filterSms(MessagePdu messagePdu, String str, int i2, int i3, ICarrierMessagingCallback iCarrierMessagingCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (messagePdu != null) {
                        parcelObtain.writeInt(1);
                        messagePdu.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iCarrierMessagingCallback != null ? iCarrierMessagingCallback.asBinder() : null);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.service.carrier.ICarrierMessagingService
            public void sendDataSms(byte[] bArr, int i2, String str, int i3, int i4, ICarrierMessagingCallback iCarrierMessagingCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeStrongBinder(iCarrierMessagingCallback != null ? iCarrierMessagingCallback.asBinder() : null);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.service.carrier.ICarrierMessagingService
            public void sendMms(Uri uri, int i2, Uri uri2, ICarrierMessagingCallback iCarrierMessagingCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    if (uri2 != null) {
                        parcelObtain.writeInt(1);
                        uri2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iCarrierMessagingCallback != null ? iCarrierMessagingCallback.asBinder() : null);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.service.carrier.ICarrierMessagingService
            public void sendMultipartTextSms(List<String> list, int i2, String str, int i3, ICarrierMessagingCallback iCarrierMessagingCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iCarrierMessagingCallback != null ? iCarrierMessagingCallback.asBinder() : null);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.service.carrier.ICarrierMessagingService
            public void sendTextSms(String str, int i2, String str2, int i3, ICarrierMessagingCallback iCarrierMessagingCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iCarrierMessagingCallback != null ? iCarrierMessagingCallback.asBinder() : null);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarrierMessagingService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ICarrierMessagingService)) ? new Proxy(iBinder) : (ICarrierMessagingService) iInterfaceQueryLocalInterface;
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
                    filterSms(parcel.readInt() != 0 ? MessagePdu.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt(), ICarrierMessagingCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendTextSms(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt(), ICarrierMessagingCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendDataSms(parcel.createByteArray(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt(), ICarrierMessagingCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendMultipartTextSms(parcel.createStringArrayList(), parcel.readInt(), parcel.readString(), parcel.readInt(), ICarrierMessagingCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendMms(parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, ICarrierMessagingCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    downloadMms(parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, ICarrierMessagingCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void downloadMms(Uri uri, int i2, Uri uri2, ICarrierMessagingCallback iCarrierMessagingCallback);

    void filterSms(MessagePdu messagePdu, String str, int i2, int i3, ICarrierMessagingCallback iCarrierMessagingCallback);

    void sendDataSms(byte[] bArr, int i2, String str, int i3, int i4, ICarrierMessagingCallback iCarrierMessagingCallback);

    void sendMms(Uri uri, int i2, Uri uri2, ICarrierMessagingCallback iCarrierMessagingCallback);

    void sendMultipartTextSms(List<String> list, int i2, String str, int i3, ICarrierMessagingCallback iCarrierMessagingCallback);

    void sendTextSms(String str, int i2, String str2, int i3, ICarrierMessagingCallback iCarrierMessagingCallback);
}
