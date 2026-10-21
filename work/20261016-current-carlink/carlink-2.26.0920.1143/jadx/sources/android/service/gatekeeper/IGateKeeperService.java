package android.service.gatekeeper;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public interface IGateKeeperService extends IInterface {

    public static abstract class Stub extends Binder implements IGateKeeperService {
        private static final String DESCRIPTOR = "android.service.gatekeeper.IGateKeeperService";
        static final int TRANSACTION_clearSecureUserId = 5;
        static final int TRANSACTION_enroll = 1;
        static final int TRANSACTION_getSecureUserId = 4;
        static final int TRANSACTION_reportDeviceSetupComplete = 6;
        static final int TRANSACTION_verify = 2;
        static final int TRANSACTION_verifyChallenge = 3;

        public static class Proxy implements IGateKeeperService {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.service.gatekeeper.IGateKeeperService
            public void clearSecureUserId(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.service.gatekeeper.IGateKeeperService");
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.service.gatekeeper.IGateKeeperService
            public GateKeeperResponse enroll(int i2, byte[] bArr, byte[] bArr2, byte[] bArr3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.service.gatekeeper.IGateKeeperService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeByteArray(bArr2);
                    parcelObtain.writeByteArray(bArr3);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? GateKeeperResponse.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return "android.service.gatekeeper.IGateKeeperService";
            }

            @Override // android.service.gatekeeper.IGateKeeperService
            public long getSecureUserId(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.service.gatekeeper.IGateKeeperService");
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readLong();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.service.gatekeeper.IGateKeeperService
            public void reportDeviceSetupComplete() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.service.gatekeeper.IGateKeeperService");
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.service.gatekeeper.IGateKeeperService
            public GateKeeperResponse verify(int i2, byte[] bArr, byte[] bArr2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.service.gatekeeper.IGateKeeperService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeByteArray(bArr2);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? GateKeeperResponse.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.service.gatekeeper.IGateKeeperService
            public GateKeeperResponse verifyChallenge(int i2, long j2, byte[] bArr, byte[] bArr2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.service.gatekeeper.IGateKeeperService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeByteArray(bArr2);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? GateKeeperResponse.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "android.service.gatekeeper.IGateKeeperService");
        }

        public static IGateKeeperService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.service.gatekeeper.IGateKeeperService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IGateKeeperService)) ? new Proxy(iBinder) : (IGateKeeperService) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString("android.service.gatekeeper.IGateKeeperService");
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface("android.service.gatekeeper.IGateKeeperService");
                    GateKeeperResponse gateKeeperResponseEnroll = enroll(parcel.readInt(), parcel.createByteArray(), parcel.createByteArray(), parcel.createByteArray());
                    parcel2.writeNoException();
                    if (gateKeeperResponseEnroll != null) {
                        parcel2.writeInt(1);
                        gateKeeperResponseEnroll.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 2:
                    parcel.enforceInterface("android.service.gatekeeper.IGateKeeperService");
                    GateKeeperResponse gateKeeperResponseVerify = verify(parcel.readInt(), parcel.createByteArray(), parcel.createByteArray());
                    parcel2.writeNoException();
                    if (gateKeeperResponseVerify != null) {
                        parcel2.writeInt(1);
                        gateKeeperResponseVerify.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 3:
                    parcel.enforceInterface("android.service.gatekeeper.IGateKeeperService");
                    GateKeeperResponse gateKeeperResponseVerifyChallenge = verifyChallenge(parcel.readInt(), parcel.readLong(), parcel.createByteArray(), parcel.createByteArray());
                    parcel2.writeNoException();
                    if (gateKeeperResponseVerifyChallenge != null) {
                        parcel2.writeInt(1);
                        gateKeeperResponseVerifyChallenge.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 4:
                    parcel.enforceInterface("android.service.gatekeeper.IGateKeeperService");
                    long secureUserId = getSecureUserId(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeLong(secureUserId);
                    return true;
                case 5:
                    parcel.enforceInterface("android.service.gatekeeper.IGateKeeperService");
                    clearSecureUserId(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("android.service.gatekeeper.IGateKeeperService");
                    reportDeviceSetupComplete();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void clearSecureUserId(int i2);

    GateKeeperResponse enroll(int i2, byte[] bArr, byte[] bArr2, byte[] bArr3);

    long getSecureUserId(int i2);

    void reportDeviceSetupComplete();

    GateKeeperResponse verify(int i2, byte[] bArr, byte[] bArr2);

    GateKeeperResponse verifyChallenge(int i2, long j2, byte[] bArr, byte[] bArr2);
}
