package com.android.internal.view;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.text.TextUtils;
import android.view.inputmethod.ExtractedText;

/* JADX INFO: loaded from: classes.dex */
public interface c extends IInterface {

    public static abstract class a extends Binder implements c {

        /* JADX INFO: renamed from: com.android.internal.view.c$a$a, reason: collision with other inner class name */
        public static class C0023a implements c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f1242a;

            public C0023a(IBinder iBinder) {
                this.f1242a = iBinder;
            }

            @Override // com.android.internal.view.c
            public void B0(ExtractedText extractedText, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.view.IInputContextCallback");
                    if (extractedText != null) {
                        parcelObtain.writeInt(1);
                        extractedText.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.f1242a.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.c
            public void E(CharSequence charSequence, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.view.IInputContextCallback");
                    if (charSequence != null) {
                        parcelObtain.writeInt(1);
                        TextUtils.writeToParcel(charSequence, parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.f1242a.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f1242a;
            }

            @Override // com.android.internal.view.c
            public void f1(CharSequence charSequence, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.view.IInputContextCallback");
                    if (charSequence != null) {
                        parcelObtain.writeInt(1);
                        TextUtils.writeToParcel(charSequence, parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.f1242a.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.c
            public void p1(CharSequence charSequence, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.view.IInputContextCallback");
                    if (charSequence != null) {
                        parcelObtain.writeInt(1);
                        TextUtils.writeToParcel(charSequence, parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.f1242a.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.c
            public void x1(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.internal.view.IInputContextCallback");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.f1242a.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "com.android.internal.view.IInputContextCallback");
        }

        public static c J2(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.internal.view.IInputContextCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) ? new C0023a(iBinder) : (c) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface("com.android.internal.view.IInputContextCallback");
                f1(parcel.readInt() != 0 ? TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface("com.android.internal.view.IInputContextCallback");
                E(parcel.readInt() != 0 ? TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface("com.android.internal.view.IInputContextCallback");
                x1(parcel.readInt(), parcel.readInt());
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface("com.android.internal.view.IInputContextCallback");
                B0(parcel.readInt() != 0 ? ExtractedText.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                return true;
            }
            if (i2 == 5) {
                parcel.enforceInterface("com.android.internal.view.IInputContextCallback");
                p1(parcel.readInt() != 0 ? TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                return true;
            }
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel2.writeString("com.android.internal.view.IInputContextCallback");
            return true;
        }
    }

    void B0(ExtractedText extractedText, int i2);

    void E(CharSequence charSequence, int i2);

    void f1(CharSequence charSequence, int i2);

    void p1(CharSequence charSequence, int i2);

    void x1(int i2, int i3);
}
