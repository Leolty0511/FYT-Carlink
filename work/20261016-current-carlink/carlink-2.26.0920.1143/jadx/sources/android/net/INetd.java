package android.net;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.io.FileDescriptor;

/* JADX INFO: loaded from: classes.dex */
public interface INetd extends IInterface {
    public static final int CONF = 1;
    public static final int IPV4 = 4;
    public static final int IPV6 = 6;
    public static final int IPV6_ADDR_GEN_MODE_DEFAULT = 0;
    public static final int IPV6_ADDR_GEN_MODE_EUI64 = 0;
    public static final int IPV6_ADDR_GEN_MODE_NONE = 1;
    public static final int IPV6_ADDR_GEN_MODE_RANDOM = 3;
    public static final int IPV6_ADDR_GEN_MODE_STABLE_PRIVACY = 2;
    public static final int NEIGH = 2;
    public static final int PRIVATE_DNS_BAD_ADDRESS = 1;
    public static final int PRIVATE_DNS_BAD_FINGERPRINT = 4;
    public static final int PRIVATE_DNS_BAD_PORT = 2;
    public static final int PRIVATE_DNS_SUCCESS = 0;
    public static final int PRIVATE_DNS_UNKNOWN_ALGORITHM = 3;
    public static final int RESOLVER_PARAMS_COUNT = 4;
    public static final int RESOLVER_PARAMS_MAX_SAMPLES = 3;
    public static final int RESOLVER_PARAMS_MIN_SAMPLES = 2;
    public static final int RESOLVER_PARAMS_SAMPLE_VALIDITY = 0;
    public static final int RESOLVER_PARAMS_SUCCESS_THRESHOLD = 1;
    public static final int RESOLVER_STATS_COUNT = 7;
    public static final int RESOLVER_STATS_ERRORS = 1;
    public static final int RESOLVER_STATS_INTERNAL_ERRORS = 3;
    public static final int RESOLVER_STATS_LAST_SAMPLE_TIME = 5;
    public static final int RESOLVER_STATS_RTT_AVG = 4;
    public static final int RESOLVER_STATS_SUCCESSES = 0;
    public static final int RESOLVER_STATS_TIMEOUTS = 2;
    public static final int RESOLVER_STATS_USABLE = 6;

    public static abstract class Stub extends Binder implements INetd {
        private static final String DESCRIPTOR = "android.net.INetd";
        static final int TRANSACTION_addPrivateDnsServer = 8;
        static final int TRANSACTION_bandwidthEnableDataSaver = 3;
        static final int TRANSACTION_firewallReplaceUidChain = 2;
        static final int TRANSACTION_getMetricsReportingLevel = 14;
        static final int TRANSACTION_getResolverInfo = 7;
        static final int TRANSACTION_interfaceAddAddress = 11;
        static final int TRANSACTION_interfaceDelAddress = 12;
        static final int TRANSACTION_ipSecAddSecurityAssociation = 17;
        static final int TRANSACTION_ipSecAllocateSpi = 16;
        static final int TRANSACTION_ipSecApplyTransportModeTransform = 19;
        static final int TRANSACTION_ipSecDeleteSecurityAssociation = 18;
        static final int TRANSACTION_ipSecRemoveTransportModeTransform = 20;
        static final int TRANSACTION_isAlive = 1;
        static final int TRANSACTION_networkRejectNonSecureVpn = 4;
        static final int TRANSACTION_removePrivateDnsServer = 9;
        static final int TRANSACTION_setIPv6AddrGenMode = 23;
        static final int TRANSACTION_setMetricsReportingLevel = 15;
        static final int TRANSACTION_setProcSysNet = 13;
        static final int TRANSACTION_setResolverConfiguration = 6;
        static final int TRANSACTION_socketDestroy = 5;
        static final int TRANSACTION_tetherApplyDnsInterfaces = 10;
        static final int TRANSACTION_wakeupAddInterface = 21;
        static final int TRANSACTION_wakeupDelInterface = 22;

        public static class Proxy implements INetd {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.net.INetd
            public void addPrivateDnsServer(String str, int i2, String str2, String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStringArray(strArr);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.net.INetd
            public boolean bandwidthEnableDataSaver(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public boolean firewallReplaceUidChain(String str, boolean z2, int[] iArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeIntArray(iArr);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.net.INetd
            public int getMetricsReportingLevel() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public void getResolverInfo(int i2, String[] strArr, String[] strArr2, int[] iArr, int[] iArr2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    if (strArr == null) {
                        parcelObtain.writeInt(-1);
                    } else {
                        parcelObtain.writeInt(strArr.length);
                    }
                    if (strArr2 == null) {
                        parcelObtain.writeInt(-1);
                    } else {
                        parcelObtain.writeInt(strArr2.length);
                    }
                    if (iArr == null) {
                        parcelObtain.writeInt(-1);
                    } else {
                        parcelObtain.writeInt(iArr.length);
                    }
                    if (iArr2 == null) {
                        parcelObtain.writeInt(-1);
                    } else {
                        parcelObtain.writeInt(iArr2.length);
                    }
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.readStringArray(strArr);
                    parcelObtain2.readStringArray(strArr2);
                    parcelObtain2.readIntArray(iArr);
                    parcelObtain2.readIntArray(iArr2);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public void interfaceAddAddress(String str, String str2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public void interfaceDelAddress(String str, String str2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public void ipSecAddSecurityAssociation(int i2, int i3, int i4, String str, String str2, long j2, int i5, String str3, byte[] bArr, int i6, String str4, byte[] bArr2, int i7, int i8, int i9, int i10) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeInt(i6);
                    parcelObtain.writeString(str4);
                    parcelObtain.writeByteArray(bArr2);
                    parcelObtain.writeInt(i7);
                    parcelObtain.writeInt(i8);
                    parcelObtain.writeInt(i9);
                    parcelObtain.writeInt(i10);
                    try {
                        this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    } catch (Throwable th) {
                        th = th;
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            @Override // android.net.INetd
            public int ipSecAllocateSpi(int i2, int i3, String str, String str2, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public void ipSecApplyTransportModeTransform(FileDescriptor fileDescriptor, int i2, int i3, String str, String str2, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeRawFileDescriptor(fileDescriptor);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public void ipSecDeleteSecurityAssociation(int i2, int i3, String str, String str2, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public void ipSecRemoveTransportModeTransform(FileDescriptor fileDescriptor) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeRawFileDescriptor(fileDescriptor);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public boolean isAlive() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public void networkRejectNonSecureVpn(boolean z2, UidRange[] uidRangeArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeTypedArray(uidRangeArr, 0);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public void removePrivateDnsServer(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public void setIPv6AddrGenMode(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public void setMetricsReportingLevel(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public void setProcSysNet(int i2, int i3, String str, String str2, String str3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public void setResolverConfiguration(int i2, String[] strArr, String[] strArr2, int[] iArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStringArray(strArr);
                    parcelObtain.writeStringArray(strArr2);
                    parcelObtain.writeIntArray(iArr);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public void socketDestroy(UidRange[] uidRangeArr, int[] iArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedArray(uidRangeArr, 0);
                    parcelObtain.writeIntArray(iArr);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public boolean tetherApplyDnsInterfaces() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public void wakeupAddInterface(String str, String str2, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.INetd
            public void wakeupDelInterface(String str, String str2, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
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

        public static INetd asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof INetd)) ? new Proxy(iBinder) : (INetd) iInterfaceQueryLocalInterface;
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
                    boolean zIsAlive = isAlive();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsAlive ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zFirewallReplaceUidChain = firewallReplaceUidChain(parcel.readString(), parcel.readInt() != 0, parcel.createIntArray());
                    parcel2.writeNoException();
                    parcel2.writeInt(zFirewallReplaceUidChain ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zBandwidthEnableDataSaver = bandwidthEnableDataSaver(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zBandwidthEnableDataSaver ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    networkRejectNonSecureVpn(parcel.readInt() != 0, (UidRange[]) parcel.createTypedArray(UidRange.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    socketDestroy((UidRange[]) parcel.createTypedArray(UidRange.CREATOR), parcel.createIntArray());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    setResolverConfiguration(parcel.readInt(), parcel.createStringArray(), parcel.createStringArray(), parcel.createIntArray());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int i4 = parcel.readInt();
                    int i5 = parcel.readInt();
                    String[] strArr = i5 < 0 ? null : new String[i5];
                    int i6 = parcel.readInt();
                    String[] strArr2 = i6 < 0 ? null : new String[i6];
                    int i7 = parcel.readInt();
                    int[] iArr = i7 < 0 ? null : new int[i7];
                    int i8 = parcel.readInt();
                    int[] iArr2 = i8 >= 0 ? new int[i8] : null;
                    getResolverInfo(i4, strArr, strArr2, iArr, iArr2);
                    parcel2.writeNoException();
                    parcel2.writeStringArray(strArr);
                    parcel2.writeStringArray(strArr2);
                    parcel2.writeIntArray(iArr);
                    parcel2.writeIntArray(iArr2);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    addPrivateDnsServer(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    removePrivateDnsServer(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zTetherApplyDnsInterfaces = tetherApplyDnsInterfaces();
                    parcel2.writeNoException();
                    parcel2.writeInt(zTetherApplyDnsInterfaces ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    interfaceAddAddress(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    interfaceDelAddress(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    setProcSysNet(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    int metricsReportingLevel = getMetricsReportingLevel();
                    parcel2.writeNoException();
                    parcel2.writeInt(metricsReportingLevel);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMetricsReportingLevel(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iIpSecAllocateSpi = ipSecAllocateSpi(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iIpSecAllocateSpi);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    ipSecAddSecurityAssociation(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readInt(), parcel.readString(), parcel.createByteArray(), parcel.readInt(), parcel.readString(), parcel.createByteArray(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    ipSecDeleteSecurityAssociation(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    ipSecApplyTransportModeTransform(parcel.readRawFileDescriptor(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    ipSecRemoveTransportModeTransform(parcel.readRawFileDescriptor());
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    wakeupAddInterface(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    wakeupDelInterface(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    setIPv6AddrGenMode(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void addPrivateDnsServer(String str, int i2, String str2, String[] strArr);

    boolean bandwidthEnableDataSaver(boolean z2);

    boolean firewallReplaceUidChain(String str, boolean z2, int[] iArr);

    int getMetricsReportingLevel();

    void getResolverInfo(int i2, String[] strArr, String[] strArr2, int[] iArr, int[] iArr2);

    void interfaceAddAddress(String str, String str2, int i2);

    void interfaceDelAddress(String str, String str2, int i2);

    void ipSecAddSecurityAssociation(int i2, int i3, int i4, String str, String str2, long j2, int i5, String str3, byte[] bArr, int i6, String str4, byte[] bArr2, int i7, int i8, int i9, int i10);

    int ipSecAllocateSpi(int i2, int i3, String str, String str2, int i4);

    void ipSecApplyTransportModeTransform(FileDescriptor fileDescriptor, int i2, int i3, String str, String str2, int i4);

    void ipSecDeleteSecurityAssociation(int i2, int i3, String str, String str2, int i4);

    void ipSecRemoveTransportModeTransform(FileDescriptor fileDescriptor);

    boolean isAlive();

    void networkRejectNonSecureVpn(boolean z2, UidRange[] uidRangeArr);

    void removePrivateDnsServer(String str);

    void setIPv6AddrGenMode(String str, int i2);

    void setMetricsReportingLevel(int i2);

    void setProcSysNet(int i2, int i3, String str, String str2, String str3);

    void setResolverConfiguration(int i2, String[] strArr, String[] strArr2, int[] iArr);

    void socketDestroy(UidRange[] uidRangeArr, int[] iArr);

    boolean tetherApplyDnsInterfaces();

    void wakeupAddInterface(String str, String str2, int i2, int i3);

    void wakeupDelInterface(String str, String str2, int i2, int i3);
}
