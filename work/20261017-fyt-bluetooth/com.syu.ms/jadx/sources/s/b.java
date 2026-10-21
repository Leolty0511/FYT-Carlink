package s;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.textservice.TextInfo;

/* JADX INFO: loaded from: classes.dex */
public interface b extends IInterface {

    public static abstract class a extends Binder implements b {
        private static final String DESCRIPTOR = "com.android.internal.textservice.ISpellCheckerSession";
        public static final int TRANSACTION_onCancel = 3;
        public static final int TRANSACTION_onClose = 4;
        public static final int TRANSACTION_onGetSentenceSuggestionsMultiple = 2;
        public static final int TRANSACTION_onGetSuggestionsMultiple = 1;

        /* JADX INFO: renamed from: s.b$a$a, reason: collision with other inner class name */
        public static class C0106a implements b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f17162a;

            public C0106a(IBinder iBinder) {
                this.f17162a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f17162a;
            }

            @Override // s.b
            public void onCancel() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    this.f17162a.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // s.b
            public void onClose() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    this.f17162a.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // s.b
            public void onGetSentenceSuggestionsMultiple(TextInfo[] textInfoArr, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeTypedArray(textInfoArr, 0);
                    parcelObtain.writeInt(i2);
                    this.f17162a.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // s.b
            public void onGetSuggestionsMultiple(TextInfo[] textInfoArr, int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeTypedArray(textInfoArr, 0);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.f17162a.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, DESCRIPTOR);
        }

        public static b asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0106a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onGetSuggestionsMultiple((TextInfo[]) parcel.createTypedArray(TextInfo.CREATOR), parcel.readInt(), parcel.readInt() != 0);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onGetSentenceSuggestionsMultiple((TextInfo[]) parcel.createTypedArray(TextInfo.CREATOR), parcel.readInt());
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                onCancel();
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                onClose();
                return true;
            }
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onCancel();

    void onClose();

    void onGetSentenceSuggestionsMultiple(TextInfo[] textInfoArr, int i2);

    void onGetSuggestionsMultiple(TextInfo[] textInfoArr, int i2, boolean z2);
}
