package com.android.internal.view;

import android.graphics.Rect;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.ExtractedText;

/* JADX INFO: loaded from: classes3.dex */
public interface IInputMethodSession extends IInterface {

    public static abstract class Stub extends Binder implements IInputMethodSession {
        private static final String DESCRIPTOR = "com.android.internal.view.IInputMethodSession";
        static final int TRANSACTION_appPrivateCommand = 7;
        static final int TRANSACTION_displayCompletions = 6;
        static final int TRANSACTION_finishInput = 1;
        static final int TRANSACTION_finishSession = 9;
        static final int TRANSACTION_toggleSoftInput = 8;
        static final int TRANSACTION_updateCursor = 5;
        static final int TRANSACTION_updateCursorAnchorInfo = 10;
        static final int TRANSACTION_updateExtractedText = 2;
        static final int TRANSACTION_updateSelection = 3;
        static final int TRANSACTION_viewClicked = 4;

        public static class Proxy implements IInputMethodSession {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.android.internal.view.IInputMethodSession
            public void appPrivateCommand(String str, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.android.internal.view.IInputMethodSession
            public void displayCompletions(CompletionInfo[] completionInfoArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedArray(completionInfoArr, 0);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodSession
            public void finishInput() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodSession
            public void finishSession() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.android.internal.view.IInputMethodSession
            public void toggleSoftInput(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodSession
            public void updateCursor(Rect rect) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (rect != null) {
                        parcelObtain.writeInt(1);
                        rect.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodSession
            public void updateCursorAnchorInfo(CursorAnchorInfo cursorAnchorInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (cursorAnchorInfo != null) {
                        parcelObtain.writeInt(1);
                        cursorAnchorInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(10, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodSession
            public void updateExtractedText(int i2, ExtractedText extractedText) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    if (extractedText != null) {
                        parcelObtain.writeInt(1);
                        extractedText.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodSession
            public void updateSelection(int i2, int i3, int i4, int i5, int i6, int i7) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeInt(i6);
                    parcelObtain.writeInt(i7);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodSession
            public void viewClicked(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IInputMethodSession asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IInputMethodSession)) ? new Proxy(iBinder) : (IInputMethodSession) iInterfaceQueryLocalInterface;
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
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateCursorAnchorInfo(parcel.readInt() != 0 ? CursorAnchorInfo.CREATOR.createFromParcel(parcel) : null);
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

    void updateCursorAnchorInfo(CursorAnchorInfo cursorAnchorInfo);

    void updateExtractedText(int i2, ExtractedText extractedText);

    void updateSelection(int i2, int i3, int i4, int i5, int i6, int i7);

    void viewClicked(boolean z2);
}
