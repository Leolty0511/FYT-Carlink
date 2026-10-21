package android.view.autofill;

import android.content.Intent;
import android.content.IntentSender;
import android.graphics.Rect;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IAutoFillManagerClient extends IInterface {

    public static abstract class Stub extends Binder implements IAutoFillManagerClient {
        private static final String DESCRIPTOR = "android.view.autofill.IAutoFillManagerClient";
        static final int TRANSACTION_authenticate = 3;
        static final int TRANSACTION_autofill = 2;
        static final int TRANSACTION_notifyNoFillUi = 7;
        static final int TRANSACTION_requestHideFillUi = 6;
        static final int TRANSACTION_requestShowFillUi = 5;
        static final int TRANSACTION_setSaveUiState = 9;
        static final int TRANSACTION_setSessionFinished = 10;
        static final int TRANSACTION_setState = 1;
        static final int TRANSACTION_setTrackedViews = 4;
        static final int TRANSACTION_startIntentSender = 8;

        public static class Proxy implements IAutoFillManagerClient {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.view.autofill.IAutoFillManagerClient
            public void authenticate(int i2, int i3, IntentSender intentSender, Intent intent) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (intentSender != null) {
                        parcelObtain.writeInt(1);
                        intentSender.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.autofill.IAutoFillManagerClient
            public void autofill(int i2, List<AutofillId> list, List<AutofillValue> list2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeTypedList(list);
                    parcelObtain.writeTypedList(list2);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.view.autofill.IAutoFillManagerClient
            public void notifyNoFillUi(int i2, AutofillId autofillId, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    if (autofillId != null) {
                        parcelObtain.writeInt(1);
                        autofillId.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.autofill.IAutoFillManagerClient
            public void requestHideFillUi(int i2, AutofillId autofillId) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    if (autofillId != null) {
                        parcelObtain.writeInt(1);
                        autofillId.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.autofill.IAutoFillManagerClient
            public void requestShowFillUi(int i2, AutofillId autofillId, int i3, int i4, Rect rect, IAutofillWindowPresenter iAutofillWindowPresenter) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    if (autofillId != null) {
                        parcelObtain.writeInt(1);
                        autofillId.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    if (rect != null) {
                        parcelObtain.writeInt(1);
                        rect.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iAutofillWindowPresenter != null ? iAutofillWindowPresenter.asBinder() : null);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.autofill.IAutoFillManagerClient
            public void setSaveUiState(int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(9, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.autofill.IAutoFillManagerClient
            public void setSessionFinished(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(10, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.autofill.IAutoFillManagerClient
            public void setState(boolean z2, boolean z3, boolean z4) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(z3 ? 1 : 0);
                    parcelObtain.writeInt(z4 ? 1 : 0);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.autofill.IAutoFillManagerClient
            public void setTrackedViews(int i2, AutofillId[] autofillIdArr, boolean z2, AutofillId[] autofillIdArr2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeTypedArray(autofillIdArr, 0);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeTypedArray(autofillIdArr2, 0);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.autofill.IAutoFillManagerClient
            public void startIntentSender(IntentSender intentSender, Intent intent) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intentSender != null) {
                        parcelObtain.writeInt(1);
                        intentSender.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAutoFillManagerClient asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAutoFillManagerClient)) ? new Proxy(iBinder) : (IAutoFillManagerClient) iInterfaceQueryLocalInterface;
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
                    setState(parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    autofill(parcel.readInt(), parcel.createTypedArrayList(AutofillId.CREATOR), parcel.createTypedArrayList(AutofillValue.CREATOR));
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    authenticate(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? IntentSender.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int i4 = parcel.readInt();
                    Parcelable.Creator<AutofillId> creator = AutofillId.CREATOR;
                    setTrackedViews(i4, (AutofillId[]) parcel.createTypedArray(creator), parcel.readInt() != 0, (AutofillId[]) parcel.createTypedArray(creator));
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestShowFillUi(parcel.readInt(), parcel.readInt() != 0 ? AutofillId.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcel) : null, IAutofillWindowPresenter.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestHideFillUi(parcel.readInt(), parcel.readInt() != 0 ? AutofillId.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyNoFillUi(parcel.readInt(), parcel.readInt() != 0 ? AutofillId.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    startIntentSender(parcel.readInt() != 0 ? IntentSender.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSaveUiState(parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSessionFinished(parcel.readInt());
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void authenticate(int i2, int i3, IntentSender intentSender, Intent intent);

    void autofill(int i2, List<AutofillId> list, List<AutofillValue> list2);

    void notifyNoFillUi(int i2, AutofillId autofillId, boolean z2);

    void requestHideFillUi(int i2, AutofillId autofillId);

    void requestShowFillUi(int i2, AutofillId autofillId, int i3, int i4, Rect rect, IAutofillWindowPresenter iAutofillWindowPresenter);

    void setSaveUiState(int i2, boolean z2);

    void setSessionFinished(int i2);

    void setState(boolean z2, boolean z3, boolean z4);

    void setTrackedViews(int i2, AutofillId[] autofillIdArr, boolean z2, AutofillId[] autofillIdArr2);

    void startIntentSender(IntentSender intentSender, Intent intent);
}
