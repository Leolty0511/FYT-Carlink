package android.os;

import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.Locale;
import libcore.io.OsConstants;

/* JADX INFO: loaded from: classes.dex */
class CommonTimeUtils {
    public static final int ERROR = -1;
    public static final int ERROR_BAD_VALUE = -4;
    public static final int ERROR_DEAD_OBJECT = -7;
    public static final int SUCCESS = 0;
    private String mInterfaceDesc;
    private IBinder mRemote;

    public CommonTimeUtils(IBinder iBinder, String str) {
        this.mRemote = iBinder;
        this.mInterfaceDesc = str;
    }

    public int transactGetInt(int i2, int i3) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(this.mInterfaceDesc);
            this.mRemote.transact(i2, parcelObtain, parcelObtain2, 0);
            if (parcelObtain2.readInt() == 0) {
                i3 = parcelObtain2.readInt();
            }
            return i3;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public long transactGetLong(int i2, long j2) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(this.mInterfaceDesc);
            this.mRemote.transact(i2, parcelObtain, parcelObtain2, 0);
            if (parcelObtain2.readInt() == 0) {
                j2 = parcelObtain2.readLong();
            }
            return j2;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x00e7  */
    public InetSocketAddress transactGetSockaddr(int i2) {
        InetSocketAddress inetSocketAddress;
        String str;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(this.mInterfaceDesc);
            int i3 = 0;
            this.mRemote.transact(i2, parcelObtain, parcelObtain2, 0);
            if (parcelObtain2.readInt() != 0) {
                inetSocketAddress = null;
            } else {
                int i4 = parcelObtain2.readInt();
                if (OsConstants.AF_INET == i4) {
                    int i5 = parcelObtain2.readInt();
                    int i6 = parcelObtain2.readInt();
                    str = String.format(Locale.US, "%d.%d.%d.%d", Integer.valueOf((i5 >> 24) & 255), Integer.valueOf((i5 >> 16) & 255), Integer.valueOf((i5 >> 8) & 255), Integer.valueOf(i5 & 255));
                    i3 = i6;
                } else if (OsConstants.AF_INET6 == i4) {
                    int i7 = parcelObtain2.readInt();
                    int i8 = parcelObtain2.readInt();
                    int i9 = parcelObtain2.readInt();
                    int i10 = parcelObtain2.readInt();
                    int i11 = parcelObtain2.readInt();
                    parcelObtain2.readInt();
                    parcelObtain2.readInt();
                    str = String.format(Locale.US, "[%04X:%04X:%04X:%04X:%04X:%04X:%04X:%04X]", Integer.valueOf((i7 >> 16) & 65535), Integer.valueOf(i7 & 65535), Integer.valueOf((i8 >> 16) & 65535), Integer.valueOf(i8 & 65535), Integer.valueOf((i9 >> 16) & 65535), Integer.valueOf(i9 & 65535), Integer.valueOf((i10 >> 16) & 65535), Integer.valueOf(i10 & 65535));
                    i3 = i11;
                } else {
                    str = null;
                }
                if (str != null) {
                    inetSocketAddress = new InetSocketAddress(str, i3);
                } else {
                    inetSocketAddress = null;
                }
            }
            return inetSocketAddress;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public String transactGetString(int i2, String str) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(this.mInterfaceDesc);
            this.mRemote.transact(i2, parcelObtain, parcelObtain2, 0);
            if (parcelObtain2.readInt() == 0) {
                str = parcelObtain2.readString();
            }
            return str;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public int transactSetInt(int i2, int i3) {
        int i4;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(this.mInterfaceDesc);
            parcelObtain.writeInt(i3);
            this.mRemote.transact(i2, parcelObtain, parcelObtain2, 0);
            i4 = parcelObtain2.readInt();
        } catch (RemoteException unused) {
            i4 = -7;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
        return i4;
    }

    public int transactSetLong(int i2, long j2) {
        int i3;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(this.mInterfaceDesc);
            parcelObtain.writeLong(j2);
            this.mRemote.transact(i2, parcelObtain, parcelObtain2, 0);
            i3 = parcelObtain2.readInt();
        } catch (RemoteException unused) {
            i3 = -7;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
        return i3;
    }

    public int transactSetSockaddr(int i2, InetSocketAddress inetSocketAddress) {
        int i3;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(this.mInterfaceDesc);
            if (inetSocketAddress == null) {
                parcelObtain.writeInt(0);
            } else {
                parcelObtain.writeInt(1);
                InetAddress address = inetSocketAddress.getAddress();
                byte[] address2 = address.getAddress();
                int port = inetSocketAddress.getPort();
                if (address instanceof Inet4Address) {
                    int i4 = ((address2[1] & 255) << 16) | ((address2[0] & 255) << 24) | ((address2[2] & 255) << 8) | (address2[3] & 255);
                    parcelObtain.writeInt(OsConstants.AF_INET);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(port);
                } else {
                    if (!(address instanceof Inet6Address)) {
                        return -4;
                    }
                    Inet6Address inet6Address = (Inet6Address) address;
                    parcelObtain.writeInt(OsConstants.AF_INET6);
                    for (int i5 = 0; i5 < 4; i5++) {
                        int i6 = i5 * 4;
                        parcelObtain.writeInt((address2[i6 + 3] & 255) | ((address2[i6 + 0] & 255) << 24) | ((address2[i6 + 1] & 255) << 16) | ((address2[i6 + 2] & 255) << 8));
                    }
                    parcelObtain.writeInt(port);
                    parcelObtain.writeInt(0);
                    parcelObtain.writeInt(inet6Address.getScopeId());
                }
            }
            this.mRemote.transact(i2, parcelObtain, parcelObtain2, 0);
            i3 = parcelObtain2.readInt();
        } catch (RemoteException unused) {
            i3 = -7;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
        return i3;
    }

    public int transactSetString(int i2, String str) {
        int i3;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(this.mInterfaceDesc);
            parcelObtain.writeString(str);
            this.mRemote.transact(i2, parcelObtain, parcelObtain2, 0);
            i3 = parcelObtain2.readInt();
        } catch (RemoteException unused) {
            i3 = -7;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
        return i3;
    }
}
