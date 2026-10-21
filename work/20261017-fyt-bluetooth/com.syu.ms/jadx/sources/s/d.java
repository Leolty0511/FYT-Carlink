package s;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.textservice.SpellCheckerInfo;
import android.view.textservice.SpellCheckerSubtype;

/* JADX INFO: loaded from: classes.dex */
public interface d extends IInterface {

    public static abstract class a extends Binder implements d {

        /* JADX INFO: renamed from: s.d$a$a, reason: collision with other inner class name */
        public static class C0108a implements d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f17164a;

            public C0108a(IBinder iBinder) {
                this.f17164a = iBinder;
            }

            @Override // s.d
            public void H1(String str, String str2, e eVar, c cVar, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.textservice.ITextServicesManager");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStrongBinder(eVar != null ? eVar.asBinder() : null);
                    parcelObtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.f17164a.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // s.d
            public boolean Q0() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.textservice.ITextServicesManager");
                    this.f17164a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f17164a;
            }

            @Override // s.d
            public SpellCheckerInfo f0(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.textservice.ITextServicesManager");
                    parcelObtain.writeString(str);
                    this.f17164a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? SpellCheckerInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // s.d
            public void h1(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.textservice.ITextServicesManager");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.f17164a.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // s.d
            public SpellCheckerInfo[] n0() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.textservice.ITextServicesManager");
                    this.f17164a.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (SpellCheckerInfo[]) parcelObtain2.createTypedArray(SpellCheckerInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // s.d
            public void o(c cVar) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.textservice.ITextServicesManager");
                    parcelObtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    this.f17164a.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // s.d
            public void o1(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.textservice.ITextServicesManager");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.f17164a.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // s.d
            public void w2(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.textservice.ITextServicesManager");
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.f17164a.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // s.d
            public SpellCheckerSubtype z2(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.textservice.ITextServicesManager");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.f17164a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? SpellCheckerSubtype.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static d J2(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.internal.textservice.ITextServicesManager");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof d)) ? new C0108a(iBinder) : (d) iInterfaceQueryLocalInterface;
        }
    }

    void H1(String str, String str2, e eVar, c cVar, Bundle bundle);

    boolean Q0();

    SpellCheckerInfo f0(String str);

    void h1(String str, int i2);

    SpellCheckerInfo[] n0();

    void o(c cVar);

    void o1(String str, String str2);

    void w2(boolean z2);

    SpellCheckerSubtype z2(String str, boolean z2);
}
