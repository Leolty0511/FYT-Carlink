package android.service.trust;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.PersistableBundle;
import android.os.UserHandle;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface ITrustAgentService extends IInterface {

    public static abstract class Stub extends Binder implements ITrustAgentService {
        private static final String DESCRIPTOR = "android.service.trust.ITrustAgentService";
        static final int TRANSACTION_onConfigure = 6;
        static final int TRANSACTION_onDeviceLocked = 4;
        static final int TRANSACTION_onDeviceUnlocked = 5;
        static final int TRANSACTION_onEscrowTokenAdded = 8;
        static final int TRANSACTION_onEscrowTokenRemoved = 10;
        static final int TRANSACTION_onTokenStateReceived = 9;
        static final int TRANSACTION_onTrustTimeout = 3;
        static final int TRANSACTION_onUnlockAttempt = 1;
        static final int TRANSACTION_onUnlockLockout = 2;
        static final int TRANSACTION_setCallback = 7;

        public static class Proxy implements ITrustAgentService {
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

            @Override // android.service.trust.ITrustAgentService
            public void onConfigure(List<PersistableBundle> list, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedList(list);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.service.trust.ITrustAgentService
            public void onDeviceLocked() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.service.trust.ITrustAgentService
            public void onDeviceUnlocked() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.service.trust.ITrustAgentService
            public void onEscrowTokenAdded(byte[] bArr, long j2, UserHandle userHandle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeLong(j2);
                    if (userHandle != null) {
                        parcelObtain.writeInt(1);
                        userHandle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.service.trust.ITrustAgentService
            public void onEscrowTokenRemoved(long j2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(10, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.service.trust.ITrustAgentService
            public void onTokenStateReceived(long j2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(9, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.service.trust.ITrustAgentService
            public void onTrustTimeout() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.service.trust.ITrustAgentService
            public void onUnlockAttempt(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.service.trust.ITrustAgentService
            public void onUnlockLockout(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.service.trust.ITrustAgentService
            public void setCallback(ITrustAgentServiceCallback iTrustAgentServiceCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iTrustAgentServiceCallback != null ? iTrustAgentServiceCallback.asBinder() : null);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITrustAgentService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITrustAgentService)) ? new Proxy(iBinder) : (ITrustAgentService) iInterfaceQueryLocalInterface;
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
                    onUnlockAttempt(parcel.readInt() != 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUnlockLockout(parcel.readInt());
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTrustTimeout();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDeviceLocked();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDeviceUnlocked();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onConfigure(parcel.createTypedArrayList(PersistableBundle.CREATOR), parcel.readStrongBinder());
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCallback(ITrustAgentServiceCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    onEscrowTokenAdded(parcel.createByteArray(), parcel.readLong(), parcel.readInt() != 0 ? UserHandle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTokenStateReceived(parcel.readLong(), parcel.readInt());
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    onEscrowTokenRemoved(parcel.readLong(), parcel.readInt() != 0);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void onConfigure(List<PersistableBundle> list, IBinder iBinder);

    void onDeviceLocked();

    void onDeviceUnlocked();

    void onEscrowTokenAdded(byte[] bArr, long j2, UserHandle userHandle);

    void onEscrowTokenRemoved(long j2, boolean z2);

    void onTokenStateReceived(long j2, int i2);

    void onTrustTimeout();

    void onUnlockAttempt(boolean z2);

    void onUnlockLockout(int i2);

    void setCallback(ITrustAgentServiceCallback iTrustAgentServiceCallback);
}
