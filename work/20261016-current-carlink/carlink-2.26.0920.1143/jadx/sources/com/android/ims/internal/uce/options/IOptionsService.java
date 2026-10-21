package com.android.ims.internal.uce.options;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.android.ims.internal.uce.common.CapInfo;
import com.android.ims.internal.uce.common.StatusCode;
import com.android.ims.internal.uce.common.UceLong;

/* JADX INFO: loaded from: classes2.dex */
public interface IOptionsService extends IInterface {

    public static abstract class Stub extends Binder implements IOptionsService {
        private static final String DESCRIPTOR = "com.android.ims.internal.uce.options.IOptionsService";
        static final int TRANSACTION_addListener = 2;
        static final int TRANSACTION_getContactCap = 6;
        static final int TRANSACTION_getContactListCap = 7;
        static final int TRANSACTION_getMyInfo = 5;
        static final int TRANSACTION_getVersion = 1;
        static final int TRANSACTION_removeListener = 3;
        static final int TRANSACTION_responseIncomingOptions = 8;
        static final int TRANSACTION_setMyInfo = 4;

        public static class Proxy implements IOptionsService {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.android.ims.internal.uce.options.IOptionsService
            public StatusCode addListener(int i2, IOptionsListener iOptionsListener, UceLong uceLong) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iOptionsListener != null ? iOptionsListener.asBinder() : null);
                    if (uceLong != null) {
                        parcelObtain.writeInt(1);
                        uceLong.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    StatusCode statusCodeCreateFromParcel = parcelObtain2.readInt() != 0 ? StatusCode.CREATOR.createFromParcel(parcelObtain2) : null;
                    if (parcelObtain2.readInt() != 0) {
                        uceLong.readFromParcel(parcelObtain2);
                    }
                    return statusCodeCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.android.ims.internal.uce.options.IOptionsService
            public StatusCode getContactCap(int i2, String str, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? StatusCode.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.uce.options.IOptionsService
            public StatusCode getContactListCap(int i2, String[] strArr, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStringArray(strArr);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? StatusCode.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.android.ims.internal.uce.options.IOptionsService
            public StatusCode getMyInfo(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? StatusCode.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.uce.options.IOptionsService
            public StatusCode getVersion(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? StatusCode.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.uce.options.IOptionsService
            public StatusCode removeListener(int i2, UceLong uceLong) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    if (uceLong != null) {
                        parcelObtain.writeInt(1);
                        uceLong.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? StatusCode.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.uce.options.IOptionsService
            public StatusCode responseIncomingOptions(int i2, int i3, int i4, String str, OptionsCapInfo optionsCapInfo, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeString(str);
                    int i5 = 1;
                    if (optionsCapInfo != null) {
                        parcelObtain.writeInt(1);
                        optionsCapInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z2) {
                        i5 = 0;
                    }
                    parcelObtain.writeInt(i5);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? StatusCode.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.uce.options.IOptionsService
            public StatusCode setMyInfo(int i2, CapInfo capInfo, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    if (capInfo != null) {
                        parcelObtain.writeInt(1);
                        capInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? StatusCode.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IOptionsService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IOptionsService)) ? new Proxy(iBinder) : (IOptionsService) iInterfaceQueryLocalInterface;
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
                    StatusCode version = getVersion(parcel.readInt());
                    parcel2.writeNoException();
                    if (version != null) {
                        parcel2.writeInt(1);
                        version.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int i4 = parcel.readInt();
                    IOptionsListener iOptionsListenerAsInterface = IOptionsListener.Stub.asInterface(parcel.readStrongBinder());
                    UceLong uceLongCreateFromParcel = parcel.readInt() != 0 ? UceLong.CREATOR.createFromParcel(parcel) : null;
                    StatusCode statusCodeAddListener = addListener(i4, iOptionsListenerAsInterface, uceLongCreateFromParcel);
                    parcel2.writeNoException();
                    if (statusCodeAddListener != null) {
                        parcel2.writeInt(1);
                        statusCodeAddListener.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    if (uceLongCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        uceLongCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    StatusCode statusCodeRemoveListener = removeListener(parcel.readInt(), parcel.readInt() != 0 ? UceLong.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (statusCodeRemoveListener != null) {
                        parcel2.writeInt(1);
                        statusCodeRemoveListener.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    StatusCode myInfo = setMyInfo(parcel.readInt(), parcel.readInt() != 0 ? CapInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    if (myInfo != null) {
                        parcel2.writeInt(1);
                        myInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    StatusCode myInfo2 = getMyInfo(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (myInfo2 != null) {
                        parcel2.writeInt(1);
                        myInfo2.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    StatusCode contactCap = getContactCap(parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (contactCap != null) {
                        parcel2.writeInt(1);
                        contactCap.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    StatusCode contactListCap = getContactListCap(parcel.readInt(), parcel.createStringArray(), parcel.readInt());
                    parcel2.writeNoException();
                    if (contactListCap != null) {
                        parcel2.writeInt(1);
                        contactListCap.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    StatusCode statusCodeResponseIncomingOptions = responseIncomingOptions(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? OptionsCapInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    if (statusCodeResponseIncomingOptions != null) {
                        parcel2.writeInt(1);
                        statusCodeResponseIncomingOptions.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    StatusCode addListener(int i2, IOptionsListener iOptionsListener, UceLong uceLong);

    StatusCode getContactCap(int i2, String str, int i3);

    StatusCode getContactListCap(int i2, String[] strArr, int i3);

    StatusCode getMyInfo(int i2, int i3);

    StatusCode getVersion(int i2);

    StatusCode removeListener(int i2, UceLong uceLong);

    StatusCode responseIncomingOptions(int i2, int i3, int i4, String str, OptionsCapInfo optionsCapInfo, boolean z2);

    StatusCode setMyInfo(int i2, CapInfo capInfo, int i3);
}
