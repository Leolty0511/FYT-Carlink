package android.accessibilityservice;

import android.graphics.Region;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.KeyEvent;
import android.view.accessibility.AccessibilityEvent;

/* JADX INFO: loaded from: classes.dex */
public interface IAccessibilityServiceClient extends IInterface {

    public static abstract class Stub extends Binder implements IAccessibilityServiceClient {
        private static final String DESCRIPTOR = "android.accessibilityservice.IAccessibilityServiceClient";
        static final int TRANSACTION_clearAccessibilityCache = 5;
        static final int TRANSACTION_init = 1;
        static final int TRANSACTION_onAccessibilityButtonAvailabilityChanged = 13;
        static final int TRANSACTION_onAccessibilityButtonClicked = 12;
        static final int TRANSACTION_onAccessibilityEvent = 2;
        static final int TRANSACTION_onFingerprintCapturingGesturesChanged = 10;
        static final int TRANSACTION_onFingerprintGesture = 11;
        static final int TRANSACTION_onGesture = 4;
        static final int TRANSACTION_onInterrupt = 3;
        static final int TRANSACTION_onKeyEvent = 6;
        static final int TRANSACTION_onMagnificationChanged = 7;
        static final int TRANSACTION_onPerformGestureResult = 9;
        static final int TRANSACTION_onSoftKeyboardShowModeChanged = 8;

        public static class Proxy implements IAccessibilityServiceClient {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.accessibilityservice.IAccessibilityServiceClient
            public void clearAccessibilityCache() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.accessibilityservice.IAccessibilityServiceClient
            public void init(IAccessibilityServiceConnection iAccessibilityServiceConnection, int i2, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAccessibilityServiceConnection != null ? iAccessibilityServiceConnection.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceClient
            public void onAccessibilityButtonAvailabilityChanged(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(13, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceClient
            public void onAccessibilityButtonClicked() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(12, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceClient
            public void onAccessibilityEvent(AccessibilityEvent accessibilityEvent, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (accessibilityEvent != null) {
                        parcelObtain.writeInt(1);
                        accessibilityEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceClient
            public void onFingerprintCapturingGesturesChanged(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(10, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceClient
            public void onFingerprintGesture(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(11, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceClient
            public void onGesture(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceClient
            public void onInterrupt() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceClient
            public void onKeyEvent(KeyEvent keyEvent, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (keyEvent != null) {
                        parcelObtain.writeInt(1);
                        keyEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceClient
            public void onMagnificationChanged(Region region, float f2, float f3, float f4) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (region != null) {
                        parcelObtain.writeInt(1);
                        region.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeFloat(f2);
                    parcelObtain.writeFloat(f3);
                    parcelObtain.writeFloat(f4);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.accessibilityservice.IAccessibilityServiceClient
            public void onPerformGestureResult(int i2, boolean z2) {
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

            @Override // android.accessibilityservice.IAccessibilityServiceClient
            public void onSoftKeyboardShowModeChanged(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAccessibilityServiceClient asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAccessibilityServiceClient)) ? new Proxy(iBinder) : (IAccessibilityServiceClient) iInterfaceQueryLocalInterface;
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
                    init(IAccessibilityServiceConnection.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readStrongBinder());
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAccessibilityEvent(parcel.readInt() != 0 ? AccessibilityEvent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onInterrupt();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onGesture(parcel.readInt());
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearAccessibilityCache();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onKeyEvent(parcel.readInt() != 0 ? KeyEvent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onMagnificationChanged(parcel.readInt() != 0 ? Region.CREATOR.createFromParcel(parcel) : null, parcel.readFloat(), parcel.readFloat(), parcel.readFloat());
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSoftKeyboardShowModeChanged(parcel.readInt());
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    onPerformGestureResult(parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    onFingerprintCapturingGesturesChanged(parcel.readInt() != 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    onFingerprintGesture(parcel.readInt());
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAccessibilityButtonClicked();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAccessibilityButtonAvailabilityChanged(parcel.readInt() != 0);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void clearAccessibilityCache();

    void init(IAccessibilityServiceConnection iAccessibilityServiceConnection, int i2, IBinder iBinder);

    void onAccessibilityButtonAvailabilityChanged(boolean z2);

    void onAccessibilityButtonClicked();

    void onAccessibilityEvent(AccessibilityEvent accessibilityEvent, boolean z2);

    void onFingerprintCapturingGesturesChanged(boolean z2);

    void onFingerprintGesture(int i2);

    void onGesture(int i2);

    void onInterrupt();

    void onKeyEvent(KeyEvent keyEvent, int i2);

    void onMagnificationChanged(Region region, float f2, float f3, float f4);

    void onPerformGestureResult(int i2, boolean z2);

    void onSoftKeyboardShowModeChanged(int i2);
}
