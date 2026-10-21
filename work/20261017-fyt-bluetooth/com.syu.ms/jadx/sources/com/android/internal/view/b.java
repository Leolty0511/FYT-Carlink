package com.android.internal.view;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.ExtractedTextRequest;

/* JADX INFO: loaded from: classes.dex */
public interface b extends IInterface {

    public static abstract class a extends Binder implements b {
        private static final String DESCRIPTOR = "com.android.internal.view.IInputContext";
        public static final int TRANSACTION_beginBatchEdit = 14;
        public static final int TRANSACTION_clearMetaKeyStates = 18;
        public static final int TRANSACTION_commitCompletion = 9;
        public static final int TRANSACTION_commitCorrection = 10;
        public static final int TRANSACTION_commitText = 8;
        public static final int TRANSACTION_deleteSurroundingText = 5;
        public static final int TRANSACTION_endBatchEdit = 15;
        public static final int TRANSACTION_finishComposingText = 7;
        public static final int TRANSACTION_getCursorCapsMode = 3;
        public static final int TRANSACTION_getExtractedText = 4;
        public static final int TRANSACTION_getSelectedText = 21;
        public static final int TRANSACTION_getTextAfterCursor = 2;
        public static final int TRANSACTION_getTextBeforeCursor = 1;
        public static final int TRANSACTION_performContextMenuAction = 13;
        public static final int TRANSACTION_performEditorAction = 12;
        public static final int TRANSACTION_performPrivateCommand = 19;
        public static final int TRANSACTION_reportFullscreenMode = 16;
        public static final int TRANSACTION_sendKeyEvent = 17;
        public static final int TRANSACTION_setComposingRegion = 20;
        public static final int TRANSACTION_setComposingText = 6;
        public static final int TRANSACTION_setSelection = 11;

        /* JADX INFO: renamed from: com.android.internal.view.b$a$a, reason: collision with other inner class name */
        public static class C0022a implements b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f1241a;

            public C0022a(IBinder iBinder) {
                this.f1241a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f1241a;
            }

            @Override // com.android.internal.view.b
            public void beginBatchEdit() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    this.f1241a.transact(14, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void clearMetaKeyStates(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.f1241a.transact(18, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void commitCompletion(CompletionInfo completionInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    if (completionInfo != null) {
                        parcelObtain.writeInt(1);
                        completionInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.f1241a.transact(9, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void commitCorrection(CorrectionInfo correctionInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    if (correctionInfo != null) {
                        parcelObtain.writeInt(1);
                        correctionInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.f1241a.transact(10, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void commitText(CharSequence charSequence, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    if (charSequence != null) {
                        parcelObtain.writeInt(1);
                        TextUtils.writeToParcel(charSequence, parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.f1241a.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void deleteSurroundingText(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.f1241a.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void endBatchEdit() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    this.f1241a.transact(15, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void finishComposingText() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    this.f1241a.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void getCursorCapsMode(int i2, int i3, c cVar) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    this.f1241a.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void getExtractedText(ExtractedTextRequest extractedTextRequest, int i2, int i3, c cVar) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    if (extractedTextRequest != null) {
                        parcelObtain.writeInt(1);
                        extractedTextRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    this.f1241a.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void getSelectedText(int i2, int i3, c cVar) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    this.f1241a.transact(21, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void getTextAfterCursor(int i2, int i3, int i4, c cVar) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    this.f1241a.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void getTextBeforeCursor(int i2, int i3, int i4, c cVar) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    this.f1241a.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void performContextMenuAction(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.f1241a.transact(13, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void performEditorAction(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.f1241a.transact(12, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void performPrivateCommand(String str, Bundle bundle) {
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
                    this.f1241a.transact(19, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void reportFullscreenMode(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.f1241a.transact(16, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void sendKeyEvent(KeyEvent keyEvent) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    if (keyEvent != null) {
                        parcelObtain.writeInt(1);
                        keyEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.f1241a.transact(17, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void setComposingRegion(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.f1241a.transact(20, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void setComposingText(CharSequence charSequence, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    if (charSequence != null) {
                        parcelObtain.writeInt(1);
                        TextUtils.writeToParcel(charSequence, parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.f1241a.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.b
            public void setSelection(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.f1241a.transact(11, parcelObtain, null, 1);
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
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0022a(iBinder) : (b) iInterfaceQueryLocalInterface;
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
                    getTextBeforeCursor(parcel.readInt(), parcel.readInt(), parcel.readInt(), c.a.J2(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    getTextAfterCursor(parcel.readInt(), parcel.readInt(), parcel.readInt(), c.a.J2(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    getCursorCapsMode(parcel.readInt(), parcel.readInt(), c.a.J2(parcel.readStrongBinder()));
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    getExtractedText(parcel.readInt() != 0 ? ExtractedTextRequest.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), c.a.J2(parcel.readStrongBinder()));
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    deleteSurroundingText(parcel.readInt(), parcel.readInt());
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    setComposingText(parcel.readInt() != 0 ? TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    finishComposingText();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    commitText(parcel.readInt() != 0 ? TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    commitCompletion(parcel.readInt() != 0 ? CompletionInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    commitCorrection(parcel.readInt() != 0 ? CorrectionInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSelection(parcel.readInt(), parcel.readInt());
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    performEditorAction(parcel.readInt());
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    performContextMenuAction(parcel.readInt());
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    beginBatchEdit();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    endBatchEdit();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    reportFullscreenMode(parcel.readInt() != 0);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendKeyEvent(parcel.readInt() != 0 ? KeyEvent.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearMetaKeyStates(parcel.readInt());
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    performPrivateCommand(parcel.readString(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    setComposingRegion(parcel.readInt(), parcel.readInt());
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    getSelectedText(parcel.readInt(), parcel.readInt(), c.a.J2(parcel.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void beginBatchEdit();

    void clearMetaKeyStates(int i2);

    void commitCompletion(CompletionInfo completionInfo);

    void commitCorrection(CorrectionInfo correctionInfo);

    void commitText(CharSequence charSequence, int i2);

    void deleteSurroundingText(int i2, int i3);

    void endBatchEdit();

    void finishComposingText();

    void getCursorCapsMode(int i2, int i3, c cVar);

    void getExtractedText(ExtractedTextRequest extractedTextRequest, int i2, int i3, c cVar);

    void getSelectedText(int i2, int i3, c cVar);

    void getTextAfterCursor(int i2, int i3, int i4, c cVar);

    void getTextBeforeCursor(int i2, int i3, int i4, c cVar);

    void performContextMenuAction(int i2);

    void performEditorAction(int i2);

    void performPrivateCommand(String str, Bundle bundle);

    void reportFullscreenMode(boolean z2);

    void sendKeyEvent(KeyEvent keyEvent);

    void setComposingRegion(int i2, int i3);

    void setComposingText(CharSequence charSequence, int i2);

    void setSelection(int i2, int i3);
}
