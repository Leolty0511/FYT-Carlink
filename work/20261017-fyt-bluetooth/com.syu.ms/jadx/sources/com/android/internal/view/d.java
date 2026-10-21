package com.android.internal.view;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ResultReceiver;
import android.view.InputChannel;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputBinding;
import android.view.inputmethod.InputMethodSubtype;

/* JADX INFO: loaded from: classes.dex */
public interface d extends IInterface {

    public static abstract class a extends Binder implements d {
        private static final String DESCRIPTOR = "com.android.internal.view.IInputMethod";
        public static final int TRANSACTION_attachToken = 1;
        public static final int TRANSACTION_bindInput = 2;
        public static final int TRANSACTION_changeInputMethodSubtype = 11;
        public static final int TRANSACTION_createSession = 6;
        public static final int TRANSACTION_hideSoftInput = 10;
        public static final int TRANSACTION_restartInput = 5;
        public static final int TRANSACTION_revokeSession = 8;
        public static final int TRANSACTION_setSessionEnabled = 7;
        public static final int TRANSACTION_showSoftInput = 9;
        public static final int TRANSACTION_startInput = 4;
        public static final int TRANSACTION_unbindInput = 3;

        /* JADX INFO: renamed from: com.android.internal.view.d$a$a, reason: collision with other inner class name */
        public static class C0024a implements d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f1243a;

            public C0024a(IBinder iBinder) {
                this.f1243a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f1243a;
            }
        }

        public a() {
            attachInterface(this, DESCRIPTOR);
        }

        public static d asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof d)) ? new C0024a(iBinder) : (d) iInterfaceQueryLocalInterface;
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
                    attachToken(parcel.readStrongBinder());
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    bindInput(parcel.readInt() != 0 ? InputBinding.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    unbindInput();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    startInput(b.a.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? EditorInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    restartInput(b.a.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? EditorInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    createSession(parcel.readInt() != 0 ? InputChannel.CREATOR.createFromParcel(parcel) : null, h.a.J2(parcel.readStrongBinder()));
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSessionEnabled(g.a.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    revokeSession(g.a.asInterface(parcel.readStrongBinder()));
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    showSoftInput(parcel.readInt(), parcel.readInt() != 0 ? ResultReceiver.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    hideSoftInput(parcel.readInt(), parcel.readInt() != 0 ? ResultReceiver.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    changeInputMethodSubtype(parcel.readInt() != 0 ? InputMethodSubtype.CREATOR.createFromParcel(parcel) : null);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void attachToken(IBinder iBinder);

    void bindInput(InputBinding inputBinding);

    void changeInputMethodSubtype(InputMethodSubtype inputMethodSubtype);

    void createSession(InputChannel inputChannel, h hVar);

    void hideSoftInput(int i2, ResultReceiver resultReceiver);

    void restartInput(b bVar, EditorInfo editorInfo);

    void revokeSession(g gVar);

    void setSessionEnabled(g gVar, boolean z2);

    void showSoftInput(int i2, ResultReceiver resultReceiver);

    void startInput(b bVar, EditorInfo editorInfo);

    void unbindInput();
}
