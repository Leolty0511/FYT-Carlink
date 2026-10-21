package com.android.internal.view;

import android.graphics.Rect;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.ExtractedText;

/* JADX INFO: loaded from: classes.dex */
public interface g extends IInterface {

    public static abstract class a extends Binder implements g {
        private static final String DESCRIPTOR = "com.android.internal.view.IInputMethodSession";
        public static final int TRANSACTION_appPrivateCommand = 7;
        public static final int TRANSACTION_displayCompletions = 6;
        public static final int TRANSACTION_finishInput = 1;
        public static final int TRANSACTION_finishSession = 9;
        public static final int TRANSACTION_toggleSoftInput = 8;
        public static final int TRANSACTION_updateCursor = 5;
        public static final int TRANSACTION_updateExtractedText = 2;
        public static final int TRANSACTION_updateSelection = 3;
        public static final int TRANSACTION_viewClicked = 4;

        /* JADX INFO: renamed from: com.android.internal.view.g$a$a, reason: collision with other inner class name */
        public static class C0027a implements g {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f1246a;

            public C0027a(IBinder iBinder) {
                this.f1246a = iBinder;
            }

            @Override // com.android.internal.view.g
            public void appPrivateCommand(String str, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.f1246a.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f1246a;
            }

            @Override // com.android.internal.view.g
            public void displayCompletions(CompletionInfo[] completionInfoArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeTypedArray(completionInfoArr, 0);
                    this.f1246a.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.g
            public void toggleSoftInput(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.f1246a.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.g
            public void updateCursor(Rect rect) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    if (rect != null) {
                        parcelObtain.writeInt(1);
                        rect.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.f1246a.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.g
            public void updateExtractedText(int i2, ExtractedText extractedText) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    if (extractedText != null) {
                        parcelObtain.writeInt(1);
                        extractedText.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.f1246a.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.g
            public void updateSelection(int i2, int i3, int i4, int i5, int i6, int i7) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeInt(i6);
                    parcelObtain.writeInt(i7);
                    this.f1246a.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.g
            public void viewClicked(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.f1246a.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, DESCRIPTOR);
        }

        public static g asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof g)) ? new C0027a(iBinder) : (g) iInterfaceQueryLocalInterface;
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
                    finishInput();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateExtractedText(parcel.readInt(), parcel.readInt() != 0 ? ExtractedText.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateSelection(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    viewClicked(parcel.readInt() != 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateCursor(parcel.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    displayCompletions((CompletionInfo[]) parcel.createTypedArray(CompletionInfo.CREATOR));
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    appPrivateCommand(parcel.readString(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    toggleSoftInput(parcel.readInt(), parcel.readInt());
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    finishSession();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void appPrivateCommand(String str, Bundle bundle);

    void displayCompletions(CompletionInfo[] completionInfoArr);

    void finishInput();

    void finishSession();

    void toggleSoftInput(int i2, int i3);

    void updateCursor(Rect rect);

    void updateExtractedText(int i2, ExtractedText extractedText);

    void updateSelection(int i2, int i3, int i4, int i5, int i6, int i7);

    void viewClicked(boolean z2);
}
