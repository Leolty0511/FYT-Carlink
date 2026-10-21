package l;

import android.app.backup.RestoreSet;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;

/* JADX INFO: loaded from: classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: l.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0070a extends Binder implements a {
        public AbstractBinderC0070a() {
            attachInterface(this, "com.android.internal.backup.IBackupTransport");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString("com.android.internal.backup.IBackupTransport");
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface("com.android.internal.backup.IBackupTransport");
                    String strName = name();
                    parcel2.writeNoException();
                    parcel2.writeString(strName);
                    return true;
                case 2:
                    parcel.enforceInterface("com.android.internal.backup.IBackupTransport");
                    Intent intentS1 = s1();
                    parcel2.writeNoException();
                    if (intentS1 != null) {
                        parcel2.writeInt(1);
                        intentS1.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 3:
                    parcel.enforceInterface("com.android.internal.backup.IBackupTransport");
                    String strJ0 = j0();
                    parcel2.writeNoException();
                    parcel2.writeString(strJ0);
                    return true;
                case 4:
                    parcel.enforceInterface("com.android.internal.backup.IBackupTransport");
                    String strD1 = D1();
                    parcel2.writeNoException();
                    parcel2.writeString(strD1);
                    return true;
                case 5:
                    parcel.enforceInterface("com.android.internal.backup.IBackupTransport");
                    long jG0 = G0();
                    parcel2.writeNoException();
                    parcel2.writeLong(jG0);
                    return true;
                case 6:
                    parcel.enforceInterface("com.android.internal.backup.IBackupTransport");
                    int iN1 = N1();
                    parcel2.writeNoException();
                    parcel2.writeInt(iN1);
                    return true;
                case 7:
                    parcel.enforceInterface("com.android.internal.backup.IBackupTransport");
                    int iH2 = H2(parcel.readInt() != 0 ? PackageInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ParcelFileDescriptor.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iH2);
                    return true;
                case 8:
                    parcel.enforceInterface("com.android.internal.backup.IBackupTransport");
                    int iA1 = a1(parcel.readInt() != 0 ? PackageInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iA1);
                    return true;
                case 9:
                    parcel.enforceInterface("com.android.internal.backup.IBackupTransport");
                    int iZ = Z();
                    parcel2.writeNoException();
                    parcel2.writeInt(iZ);
                    return true;
                case 10:
                    parcel.enforceInterface("com.android.internal.backup.IBackupTransport");
                    RestoreSet[] restoreSetArrO2 = o2();
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(restoreSetArrO2, 1);
                    return true;
                case 11:
                    parcel.enforceInterface("com.android.internal.backup.IBackupTransport");
                    long jL2 = l2();
                    parcel2.writeNoException();
                    parcel2.writeLong(jL2);
                    return true;
                case 12:
                    parcel.enforceInterface("com.android.internal.backup.IBackupTransport");
                    int iV1 = V1(parcel.readLong(), (PackageInfo[]) parcel.createTypedArray(PackageInfo.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(iV1);
                    return true;
                case 13:
                    parcel.enforceInterface("com.android.internal.backup.IBackupTransport");
                    String strU1 = U1();
                    parcel2.writeNoException();
                    parcel2.writeString(strU1);
                    return true;
                case 14:
                    parcel.enforceInterface("com.android.internal.backup.IBackupTransport");
                    int iD = d(parcel.readInt() != 0 ? ParcelFileDescriptor.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iD);
                    return true;
                case 15:
                    parcel.enforceInterface("com.android.internal.backup.IBackupTransport");
                    Q1();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    String D1();

    long G0();

    int H2(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor);

    int N1();

    void Q1();

    String U1();

    int V1(long j2, PackageInfo[] packageInfoArr);

    int Z();

    int a1(PackageInfo packageInfo);

    int d(ParcelFileDescriptor parcelFileDescriptor);

    String j0();

    long l2();

    String name();

    RestoreSet[] o2();

    Intent s1();
}
