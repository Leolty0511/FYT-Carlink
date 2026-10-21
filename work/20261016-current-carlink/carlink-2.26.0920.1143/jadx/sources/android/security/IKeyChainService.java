package android.security;

import android.content.pm.StringParceledListSlice;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IKeyChainService extends IInterface {

    public static abstract class Stub extends Binder implements IKeyChainService {
        private static final String DESCRIPTOR = "android.security.IKeyChainService";
        static final int TRANSACTION_containsCaAlias = 11;
        static final int TRANSACTION_deleteCaCertificate = 7;
        static final int TRANSACTION_getCaCertificateChainAliases = 13;
        static final int TRANSACTION_getCaCertificates = 3;
        static final int TRANSACTION_getCertificate = 2;
        static final int TRANSACTION_getEncodedCaCertificate = 12;
        static final int TRANSACTION_getSystemCaAliases = 10;
        static final int TRANSACTION_getUserCaAliases = 9;
        static final int TRANSACTION_hasGrant = 15;
        static final int TRANSACTION_installCaCertificate = 4;
        static final int TRANSACTION_installKeyPair = 5;
        static final int TRANSACTION_removeKeyPair = 6;
        static final int TRANSACTION_requestPrivateKey = 1;
        static final int TRANSACTION_reset = 8;
        static final int TRANSACTION_setGrant = 14;

        public static class Proxy implements IKeyChainService {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.security.IKeyChainService
            public boolean containsCaAlias(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.security.IKeyChainService
            public boolean deleteCaCertificate(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.security.IKeyChainService
            public List<String> getCaCertificateChainAliases(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.security.IKeyChainService
            public byte[] getCaCertificates(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createByteArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.security.IKeyChainService
            public byte[] getCertificate(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createByteArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.security.IKeyChainService
            public byte[] getEncodedCaCertificate(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createByteArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.security.IKeyChainService
            public StringParceledListSlice getSystemCaAliases() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? StringParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.security.IKeyChainService
            public StringParceledListSlice getUserCaAliases() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? StringParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.security.IKeyChainService
            public boolean hasGrant(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.security.IKeyChainService
            public String installCaCertificate(byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.security.IKeyChainService
            public boolean installKeyPair(byte[] bArr, byte[] bArr2, byte[] bArr3, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeByteArray(bArr2);
                    parcelObtain.writeByteArray(bArr3);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.security.IKeyChainService
            public boolean removeKeyPair(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.security.IKeyChainService
            public String requestPrivateKey(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.security.IKeyChainService
            public boolean reset() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.security.IKeyChainService
            public void setGrant(int i2, String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IKeyChainService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IKeyChainService)) ? new Proxy(iBinder) : (IKeyChainService) iInterfaceQueryLocalInterface;
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
                    String strRequestPrivateKey = requestPrivateKey(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strRequestPrivateKey);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] certificate = getCertificate(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(certificate);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] caCertificates = getCaCertificates(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(caCertificates);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strInstallCaCertificate = installCaCertificate(parcel.createByteArray());
                    parcel2.writeNoException();
                    parcel2.writeString(strInstallCaCertificate);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zInstallKeyPair = installKeyPair(parcel.createByteArray(), parcel.createByteArray(), parcel.createByteArray(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zInstallKeyPair ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRemoveKeyPair = removeKeyPair(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zRemoveKeyPair ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDeleteCaCertificate = deleteCaCertificate(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zDeleteCaCertificate ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zReset = reset();
                    parcel2.writeNoException();
                    parcel2.writeInt(zReset ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    StringParceledListSlice userCaAliases = getUserCaAliases();
                    parcel2.writeNoException();
                    if (userCaAliases != null) {
                        parcel2.writeInt(1);
                        userCaAliases.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    StringParceledListSlice systemCaAliases = getSystemCaAliases();
                    parcel2.writeNoException();
                    if (systemCaAliases != null) {
                        parcel2.writeInt(1);
                        systemCaAliases.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zContainsCaAlias = containsCaAlias(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zContainsCaAlias ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] encodedCaCertificate = getEncodedCaCertificate(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeByteArray(encodedCaCertificate);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> caCertificateChainAliases = getCaCertificateChainAliases(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeStringList(caCertificateChainAliases);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    setGrant(parcel.readInt(), parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zHasGrant = hasGrant(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zHasGrant ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    boolean containsCaAlias(String str);

    boolean deleteCaCertificate(String str);

    List<String> getCaCertificateChainAliases(String str, boolean z2);

    byte[] getCaCertificates(String str);

    byte[] getCertificate(String str);

    byte[] getEncodedCaCertificate(String str, boolean z2);

    StringParceledListSlice getSystemCaAliases();

    StringParceledListSlice getUserCaAliases();

    boolean hasGrant(int i2, String str);

    String installCaCertificate(byte[] bArr);

    boolean installKeyPair(byte[] bArr, byte[] bArr2, byte[] bArr3, String str);

    boolean removeKeyPair(String str);

    String requestPrivateKey(String str);

    boolean reset();

    void setGrant(int i2, String str, boolean z2);
}
