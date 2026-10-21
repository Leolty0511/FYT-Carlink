package com.android.internal.view;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ResultReceiver;
import android.text.style.SuggestionSpan;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodSubtype;
import com.android.internal.inputmethod.IInputContentUriToken;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface IInputMethodManager extends IInterface {

    public static abstract class Stub extends Binder implements IInputMethodManager {
        private static final String DESCRIPTOR = "com.android.internal.view.IInputMethodManager";
        static final int TRANSACTION_addClient = 6;
        static final int TRANSACTION_clearLastInputMethodWindowForTransition = 30;
        static final int TRANSACTION_createInputContentUriToken = 31;
        static final int TRANSACTION_finishInput = 8;
        static final int TRANSACTION_getCurrentInputMethodSubtype = 22;
        static final int TRANSACTION_getEnabledInputMethodList = 2;
        static final int TRANSACTION_getEnabledInputMethodSubtypeList = 3;
        static final int TRANSACTION_getInputMethodList = 1;
        static final int TRANSACTION_getInputMethodWindowVisibleHeight = 29;
        static final int TRANSACTION_getLastInputMethodSubtype = 4;
        static final int TRANSACTION_getShortcutInputMethodsAndSubtypes = 5;
        static final int TRANSACTION_hideMySoftInput = 16;
        static final int TRANSACTION_hideSoftInput = 10;
        static final int TRANSACTION_notifySuggestionPicked = 21;
        static final int TRANSACTION_notifyUserAction = 33;
        static final int TRANSACTION_registerSuggestionSpansForNotification = 20;
        static final int TRANSACTION_removeClient = 7;
        static final int TRANSACTION_reportFullscreenMode = 32;
        static final int TRANSACTION_setAdditionalInputMethodSubtypes = 28;
        static final int TRANSACTION_setCurrentInputMethodSubtype = 23;
        static final int TRANSACTION_setImeWindowStatus = 19;
        static final int TRANSACTION_setInputMethod = 14;
        static final int TRANSACTION_setInputMethodAndSubtype = 15;
        static final int TRANSACTION_setInputMethodEnabled = 27;
        static final int TRANSACTION_shouldOfferSwitchingToNextInputMethod = 26;
        static final int TRANSACTION_showInputMethodAndSubtypeEnablerFromClient = 13;
        static final int TRANSACTION_showInputMethodPickerFromClient = 12;
        static final int TRANSACTION_showMySoftInput = 17;
        static final int TRANSACTION_showSoftInput = 9;
        static final int TRANSACTION_startInputOrWindowGainedFocus = 11;
        static final int TRANSACTION_switchToLastInputMethod = 24;
        static final int TRANSACTION_switchToNextInputMethod = 25;
        static final int TRANSACTION_updateStatusIcon = 18;

        public static class Proxy implements IInputMethodManager {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.android.internal.view.IInputMethodManager
            public void addClient(IInputMethodClient iInputMethodClient, IInputContext iInputContext, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iInputMethodClient != null ? iInputMethodClient.asBinder() : null);
                    parcelObtain.writeStrongBinder(iInputContext != null ? iInputContext.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
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

            @Override // com.android.internal.view.IInputMethodManager
            public void clearLastInputMethodWindowForTransition(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public IInputContentUriToken createInputContentUriToken(IBinder iBinder, Uri uri, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IInputContentUriToken.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public void finishInput(IInputMethodClient iInputMethodClient) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iInputMethodClient != null ? iInputMethodClient.asBinder() : null);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public InputMethodSubtype getCurrentInputMethodSubtype() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? InputMethodSubtype.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public List<InputMethodInfo> getEnabledInputMethodList() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(InputMethodInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public List<InputMethodSubtype> getEnabledInputMethodSubtypeList(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(InputMethodSubtype.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public List<InputMethodInfo> getInputMethodList() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(InputMethodInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public int getInputMethodWindowVisibleHeight() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.android.internal.view.IInputMethodManager
            public InputMethodSubtype getLastInputMethodSubtype() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? InputMethodSubtype.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public List getShortcutInputMethodsAndSubtypes() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readArrayList(getClass().getClassLoader());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public void hideMySoftInput(IBinder iBinder, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public boolean hideSoftInput(IInputMethodClient iInputMethodClient, int i2, ResultReceiver resultReceiver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iInputMethodClient != null ? iInputMethodClient.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    if (resultReceiver != null) {
                        parcelObtain.writeInt(1);
                        resultReceiver.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public boolean notifySuggestionPicked(SuggestionSpan suggestionSpan, String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (suggestionSpan != null) {
                        parcelObtain.writeInt(1);
                        suggestionSpan.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public void notifyUserAction(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(33, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public void registerSuggestionSpansForNotification(SuggestionSpan[] suggestionSpanArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedArray(suggestionSpanArr, 0);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public void removeClient(IInputMethodClient iInputMethodClient) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iInputMethodClient != null ? iInputMethodClient.asBinder() : null);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public void reportFullscreenMode(IBinder iBinder, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(32, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public void setAdditionalInputMethodSubtypes(String str, InputMethodSubtype[] inputMethodSubtypeArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedArray(inputMethodSubtypeArr, 0);
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public boolean setCurrentInputMethodSubtype(InputMethodSubtype inputMethodSubtype) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (inputMethodSubtype != null) {
                        parcelObtain.writeInt(1);
                        inputMethodSubtype.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public void setImeWindowStatus(IBinder iBinder, IBinder iBinder2, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeStrongBinder(iBinder2);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public void setInputMethod(IBinder iBinder, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public void setInputMethodAndSubtype(IBinder iBinder, String str, InputMethodSubtype inputMethodSubtype) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str);
                    if (inputMethodSubtype != null) {
                        parcelObtain.writeInt(1);
                        inputMethodSubtype.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public boolean setInputMethodEnabled(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public boolean shouldOfferSwitchingToNextInputMethod(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public void showInputMethodAndSubtypeEnablerFromClient(IInputMethodClient iInputMethodClient, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iInputMethodClient != null ? iInputMethodClient.asBinder() : null);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public void showInputMethodPickerFromClient(IInputMethodClient iInputMethodClient, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iInputMethodClient != null ? iInputMethodClient.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public void showMySoftInput(IBinder iBinder, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public boolean showSoftInput(IInputMethodClient iInputMethodClient, int i2, ResultReceiver resultReceiver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iInputMethodClient != null ? iInputMethodClient.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    if (resultReceiver != null) {
                        parcelObtain.writeInt(1);
                        resultReceiver.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public InputBindResult startInputOrWindowGainedFocus(int i2, IInputMethodClient iInputMethodClient, IBinder iBinder, int i3, int i4, int i5, EditorInfo editorInfo, IInputContext iInputContext, int i6) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iInputMethodClient != null ? iInputMethodClient.asBinder() : null);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    if (editorInfo != null) {
                        parcelObtain.writeInt(1);
                        editorInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iInputContext != null ? iInputContext.asBinder() : null);
                    parcelObtain.writeInt(i6);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? InputBindResult.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public boolean switchToLastInputMethod(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public boolean switchToNextInputMethod(IBinder iBinder, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.view.IInputMethodManager
            public void updateStatusIcon(IBinder iBinder, String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
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

        public static IInputMethodManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IInputMethodManager)) ? new Proxy(iBinder) : (IInputMethodManager) iInterfaceQueryLocalInterface;
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
                    List<InputMethodInfo> inputMethodList = getInputMethodList();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(inputMethodList);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<InputMethodInfo> enabledInputMethodList = getEnabledInputMethodList();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(enabledInputMethodList);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<InputMethodSubtype> enabledInputMethodSubtypeList = getEnabledInputMethodSubtypeList(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeTypedList(enabledInputMethodSubtypeList);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    InputMethodSubtype lastInputMethodSubtype = getLastInputMethodSubtype();
                    parcel2.writeNoException();
                    if (lastInputMethodSubtype != null) {
                        parcel2.writeInt(1);
                        lastInputMethodSubtype.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    List shortcutInputMethodsAndSubtypes = getShortcutInputMethodsAndSubtypes();
                    parcel2.writeNoException();
                    parcel2.writeList(shortcutInputMethodsAndSubtypes);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    addClient(IInputMethodClient.Stub.asInterface(parcel.readStrongBinder()), IInputContext.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeClient(IInputMethodClient.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    finishInput(IInputMethodClient.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zShowSoftInput = showSoftInput(IInputMethodClient.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0 ? ResultReceiver.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zShowSoftInput ? 1 : 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zHideSoftInput = hideSoftInput(IInputMethodClient.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0 ? ResultReceiver.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zHideSoftInput ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    InputBindResult inputBindResultStartInputOrWindowGainedFocus = startInputOrWindowGainedFocus(parcel.readInt(), IInputMethodClient.Stub.asInterface(parcel.readStrongBinder()), parcel.readStrongBinder(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? EditorInfo.CREATOR.createFromParcel(parcel) : null, IInputContext.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    if (inputBindResultStartInputOrWindowGainedFocus != null) {
                        parcel2.writeInt(1);
                        inputBindResultStartInputOrWindowGainedFocus.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    showInputMethodPickerFromClient(IInputMethodClient.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    showInputMethodAndSubtypeEnablerFromClient(IInputMethodClient.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    setInputMethod(parcel.readStrongBinder(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    setInputMethodAndSubtype(parcel.readStrongBinder(), parcel.readString(), parcel.readInt() != 0 ? InputMethodSubtype.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    hideMySoftInput(parcel.readStrongBinder(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    showMySoftInput(parcel.readStrongBinder(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateStatusIcon(parcel.readStrongBinder(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    setImeWindowStatus(parcel.readStrongBinder(), parcel.readStrongBinder(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSuggestionSpansForNotification((SuggestionSpan[]) parcel.createTypedArray(SuggestionSpan.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNotifySuggestionPicked = notifySuggestionPicked(parcel.readInt() != 0 ? SuggestionSpan.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zNotifySuggestionPicked ? 1 : 0);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    InputMethodSubtype currentInputMethodSubtype = getCurrentInputMethodSubtype();
                    parcel2.writeNoException();
                    if (currentInputMethodSubtype != null) {
                        parcel2.writeInt(1);
                        currentInputMethodSubtype.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean currentInputMethodSubtype2 = setCurrentInputMethodSubtype(parcel.readInt() != 0 ? InputMethodSubtype.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(currentInputMethodSubtype2 ? 1 : 0);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSwitchToLastInputMethod = switchToLastInputMethod(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(zSwitchToLastInputMethod ? 1 : 0);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSwitchToNextInputMethod = switchToNextInputMethod(parcel.readStrongBinder(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zSwitchToNextInputMethod ? 1 : 0);
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zShouldOfferSwitchingToNextInputMethod = shouldOfferSwitchingToNextInputMethod(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(zShouldOfferSwitchingToNextInputMethod ? 1 : 0);
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean inputMethodEnabled = setInputMethodEnabled(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(inputMethodEnabled ? 1 : 0);
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAdditionalInputMethodSubtypes(parcel.readString(), (InputMethodSubtype[]) parcel.createTypedArray(InputMethodSubtype.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    int inputMethodWindowVisibleHeight = getInputMethodWindowVisibleHeight();
                    parcel2.writeNoException();
                    parcel2.writeInt(inputMethodWindowVisibleHeight);
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearLastInputMethodWindowForTransition(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    IInputContentUriToken iInputContentUriTokenCreateInputContentUriToken = createInputContentUriToken(parcel.readStrongBinder(), parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(iInputContentUriTokenCreateInputContentUriToken != null ? iInputContentUriTokenCreateInputContentUriToken.asBinder() : null);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    reportFullscreenMode(parcel.readStrongBinder(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyUserAction(parcel.readInt());
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void addClient(IInputMethodClient iInputMethodClient, IInputContext iInputContext, int i2, int i3);

    void clearLastInputMethodWindowForTransition(IBinder iBinder);

    IInputContentUriToken createInputContentUriToken(IBinder iBinder, Uri uri, String str);

    void finishInput(IInputMethodClient iInputMethodClient);

    InputMethodSubtype getCurrentInputMethodSubtype();

    List<InputMethodInfo> getEnabledInputMethodList();

    List<InputMethodSubtype> getEnabledInputMethodSubtypeList(String str, boolean z2);

    List<InputMethodInfo> getInputMethodList();

    int getInputMethodWindowVisibleHeight();

    InputMethodSubtype getLastInputMethodSubtype();

    List getShortcutInputMethodsAndSubtypes();

    void hideMySoftInput(IBinder iBinder, int i2);

    boolean hideSoftInput(IInputMethodClient iInputMethodClient, int i2, ResultReceiver resultReceiver);

    boolean notifySuggestionPicked(SuggestionSpan suggestionSpan, String str, int i2);

    void notifyUserAction(int i2);

    void registerSuggestionSpansForNotification(SuggestionSpan[] suggestionSpanArr);

    void removeClient(IInputMethodClient iInputMethodClient);

    void reportFullscreenMode(IBinder iBinder, boolean z2);

    void setAdditionalInputMethodSubtypes(String str, InputMethodSubtype[] inputMethodSubtypeArr);

    boolean setCurrentInputMethodSubtype(InputMethodSubtype inputMethodSubtype);

    void setImeWindowStatus(IBinder iBinder, IBinder iBinder2, int i2, int i3);

    void setInputMethod(IBinder iBinder, String str);

    void setInputMethodAndSubtype(IBinder iBinder, String str, InputMethodSubtype inputMethodSubtype);

    boolean setInputMethodEnabled(String str, boolean z2);

    boolean shouldOfferSwitchingToNextInputMethod(IBinder iBinder);

    void showInputMethodAndSubtypeEnablerFromClient(IInputMethodClient iInputMethodClient, String str);

    void showInputMethodPickerFromClient(IInputMethodClient iInputMethodClient, int i2);

    void showMySoftInput(IBinder iBinder, int i2);

    boolean showSoftInput(IInputMethodClient iInputMethodClient, int i2, ResultReceiver resultReceiver);

    InputBindResult startInputOrWindowGainedFocus(int i2, IInputMethodClient iInputMethodClient, IBinder iBinder, int i3, int i4, int i5, EditorInfo editorInfo, IInputContext iInputContext, int i6);

    boolean switchToLastInputMethod(IBinder iBinder);

    boolean switchToNextInputMethod(IBinder iBinder, boolean z2);

    void updateStatusIcon(IBinder iBinder, String str, int i2);
}
