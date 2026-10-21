package com.android.ims.internal;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.android.ims.ImsReasonInfo;

/* JADX INFO: loaded from: classes2.dex */
public interface IImsRegistrationListener extends IInterface {

    public static abstract class Stub extends Binder implements IImsRegistrationListener {
        private static final String DESCRIPTOR = "com.android.ims.internal.IImsRegistrationListener";
        static final int TRANSACTION_registrationAssociatedUriChanged = 11;
        static final int TRANSACTION_registrationChangeFailed = 12;
        static final int TRANSACTION_registrationConnected = 1;
        static final int TRANSACTION_registrationConnectedWithRadioTech = 3;
        static final int TRANSACTION_registrationDisconnected = 5;
        static final int TRANSACTION_registrationFeatureCapabilityChanged = 9;
        static final int TRANSACTION_registrationProgressing = 2;
        static final int TRANSACTION_registrationProgressingWithRadioTech = 4;
        static final int TRANSACTION_registrationResumed = 6;
        static final int TRANSACTION_registrationServiceCapabilityChanged = 8;
        static final int TRANSACTION_registrationSuspended = 7;
        static final int TRANSACTION_voiceMessageCountUpdate = 10;

        public static class Proxy implements IImsRegistrationListener {
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

            @Override // com.android.ims.internal.IImsRegistrationListener
            public void registrationAssociatedUriChanged(Uri[] uriArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedArray(uriArr, 0);
                    this.mRemote.transact(11, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsRegistrationListener
            public void registrationChangeFailed(int i2, ImsReasonInfo imsReasonInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    if (imsReasonInfo != null) {
                        parcelObtain.writeInt(1);
                        imsReasonInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(12, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsRegistrationListener
            public void registrationConnected() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsRegistrationListener
            public void registrationConnectedWithRadioTech(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsRegistrationListener
            public void registrationDisconnected(ImsReasonInfo imsReasonInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (imsReasonInfo != null) {
                        parcelObtain.writeInt(1);
                        imsReasonInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsRegistrationListener
            public void registrationFeatureCapabilityChanged(int i2, int[] iArr, int[] iArr2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeIntArray(iArr);
                    parcelObtain.writeIntArray(iArr2);
                    this.mRemote.transact(9, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsRegistrationListener
            public void registrationProgressing() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsRegistrationListener
            public void registrationProgressingWithRadioTech(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsRegistrationListener
            public void registrationResumed() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsRegistrationListener
            public void registrationServiceCapabilityChanged(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsRegistrationListener
            public void registrationSuspended() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsRegistrationListener
            public void voiceMessageCountUpdate(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(10, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IImsRegistrationListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IImsRegistrationListener)) ? new Proxy(iBinder) : (IImsRegistrationListener) iInterfaceQueryLocalInterface;
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
                    registrationConnected();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    registrationProgressing();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    registrationConnectedWithRadioTech(parcel.readInt());
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    registrationProgressingWithRadioTech(parcel.readInt());
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    registrationDisconnected(parcel.readInt() != 0 ? ImsReasonInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    registrationResumed();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    registrationSuspended();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    registrationServiceCapabilityChanged(parcel.readInt(), parcel.readInt());
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    registrationFeatureCapabilityChanged(parcel.readInt(), parcel.createIntArray(), parcel.createIntArray());
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    voiceMessageCountUpdate(parcel.readInt());
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    registrationAssociatedUriChanged((Uri[]) parcel.createTypedArray(Uri.CREATOR));
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    registrationChangeFailed(parcel.readInt(), parcel.readInt() != 0 ? ImsReasonInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void registrationAssociatedUriChanged(Uri[] uriArr);

    void registrationChangeFailed(int i2, ImsReasonInfo imsReasonInfo);

    void registrationConnected();

    void registrationConnectedWithRadioTech(int i2);

    void registrationDisconnected(ImsReasonInfo imsReasonInfo);

    void registrationFeatureCapabilityChanged(int i2, int[] iArr, int[] iArr2);

    void registrationProgressing();

    void registrationProgressingWithRadioTech(int i2);

    void registrationResumed();

    void registrationServiceCapabilityChanged(int i2, int i3);

    void registrationSuspended();

    void voiceMessageCountUpdate(int i2);
}
