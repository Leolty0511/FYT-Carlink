package o;

import android.os.Binder;
import android.os.DropBoxManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface c extends IInterface {

    public static abstract class a extends Binder implements c {

        /* JADX INFO: renamed from: o.c$a$a, reason: collision with other inner class name */
        public static class C0087a implements c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f16693a;

            public C0087a(IBinder iBinder) {
                this.f16693a = iBinder;
            }

            @Override // o.c
            public void B1(DropBoxManager.Entry entry) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.os.IDropBoxManagerService");
                    if (entry != null) {
                        parcelObtain.writeInt(1);
                        entry.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.f16693a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f16693a;
            }

            @Override // o.c
            public boolean r0(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.os.IDropBoxManagerService");
                    parcelObtain.writeString(str);
                    this.f16693a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // o.c
            public DropBoxManager.Entry u2(String str, long j2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.os.IDropBoxManagerService");
                    parcelObtain.writeString(str);
                    parcelObtain.writeLong(j2);
                    this.f16693a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? DropBoxManager.Entry.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static c J2(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.internal.os.IDropBoxManagerService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) ? new C0087a(iBinder) : (c) iInterfaceQueryLocalInterface;
        }
    }

    void B1(DropBoxManager.Entry entry);

    boolean r0(String str);

    DropBoxManager.Entry u2(String str, long j2);
}
