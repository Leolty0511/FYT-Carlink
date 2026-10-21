package com.android.ims.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.android.ims.ImsCallForwardInfo;
import com.android.ims.ImsReasonInfo;
import com.android.ims.ImsSsInfo;

/* JADX INFO: loaded from: classes2.dex */
public interface IImsUtListener extends IInterface {

    public static abstract class Stub extends Binder implements IImsUtListener {
        private static final String DESCRIPTOR = "com.android.ims.internal.IImsUtListener";
        static final int TRANSACTION_utConfigurationCallBarringQueried = 5;
        static final int TRANSACTION_utConfigurationCallForwardQueried = 6;
        static final int TRANSACTION_utConfigurationCallWaitingQueried = 7;
        static final int TRANSACTION_utConfigurationQueried = 3;
        static final int TRANSACTION_utConfigurationQueryFailed = 4;
        static final int TRANSACTION_utConfigurationUpdateFailed = 2;
        static final int TRANSACTION_utConfigurationUpdated = 1;

        public static class Proxy implements IImsUtListener {
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

            @Override // com.android.ims.internal.IImsUtListener
            public void utConfigurationCallBarringQueried(IImsUt iImsUt, int i2, ImsSsInfo[] imsSsInfoArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsUt != null ? iImsUt.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeTypedArray(imsSsInfoArr, 0);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsUtListener
            public void utConfigurationCallForwardQueried(IImsUt iImsUt, int i2, ImsCallForwardInfo[] imsCallForwardInfoArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsUt != null ? iImsUt.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeTypedArray(imsCallForwardInfoArr, 0);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsUtListener
            public void utConfigurationCallWaitingQueried(IImsUt iImsUt, int i2, ImsSsInfo[] imsSsInfoArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsUt != null ? iImsUt.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeTypedArray(imsSsInfoArr, 0);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsUtListener
            public void utConfigurationQueried(IImsUt iImsUt, int i2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsUt != null ? iImsUt.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsUtListener
            public void utConfigurationQueryFailed(IImsUt iImsUt, int i2, ImsReasonInfo imsReasonInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsUt != null ? iImsUt.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    if (imsReasonInfo != null) {
                        parcelObtain.writeInt(1);
                        imsReasonInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsUtListener
            public void utConfigurationUpdateFailed(IImsUt iImsUt, int i2, ImsReasonInfo imsReasonInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsUt != null ? iImsUt.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    if (imsReasonInfo != null) {
                        parcelObtain.writeInt(1);
                        imsReasonInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsUtListener
            public void utConfigurationUpdated(IImsUt iImsUt, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsUt != null ? iImsUt.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IImsUtListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IImsUtListener)) ? new Proxy(iBinder) : (IImsUtListener) iInterfaceQueryLocalInterface;
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
                    utConfigurationUpdated(IImsUt.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    utConfigurationUpdateFailed(IImsUt.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0 ? ImsReasonInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    utConfigurationQueried(IImsUt.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    utConfigurationQueryFailed(IImsUt.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0 ? ImsReasonInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    utConfigurationCallBarringQueried(IImsUt.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), (ImsSsInfo[]) parcel.createTypedArray(ImsSsInfo.CREATOR));
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    utConfigurationCallForwardQueried(IImsUt.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), (ImsCallForwardInfo[]) parcel.createTypedArray(ImsCallForwardInfo.CREATOR));
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    utConfigurationCallWaitingQueried(IImsUt.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), (ImsSsInfo[]) parcel.createTypedArray(ImsSsInfo.CREATOR));
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void utConfigurationCallBarringQueried(IImsUt iImsUt, int i2, ImsSsInfo[] imsSsInfoArr);

    void utConfigurationCallForwardQueried(IImsUt iImsUt, int i2, ImsCallForwardInfo[] imsCallForwardInfoArr);

    void utConfigurationCallWaitingQueried(IImsUt iImsUt, int i2, ImsSsInfo[] imsSsInfoArr);

    void utConfigurationQueried(IImsUt iImsUt, int i2, Bundle bundle);

    void utConfigurationQueryFailed(IImsUt iImsUt, int i2, ImsReasonInfo imsReasonInfo);

    void utConfigurationUpdateFailed(IImsUt iImsUt, int i2, ImsReasonInfo imsReasonInfo);

    void utConfigurationUpdated(IImsUt iImsUt, int i2);
}
