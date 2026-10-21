package android.hardware.input;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.InputDevice;
import android.view.InputEvent;

/* JADX INFO: loaded from: classes.dex */
public interface IInputManager extends IInterface {

    public static abstract class Stub extends Binder implements IInputManager {
        private static final String DESCRIPTOR = "android.hardware.input.IInputManager";
        public static final int TRANSACTION_addKeyboardLayoutForInputDevice = 11;
        public static final int TRANSACTION_cancelVibrate = 15;
        public static final int TRANSACTION_getCurrentKeyboardLayoutForInputDevice = 8;
        public static final int TRANSACTION_getInputDevice = 1;
        public static final int TRANSACTION_getInputDeviceIds = 2;
        public static final int TRANSACTION_getKeyboardLayout = 7;
        public static final int TRANSACTION_getKeyboardLayouts = 6;
        public static final int TRANSACTION_getKeyboardLayoutsForInputDevice = 10;
        public static final int TRANSACTION_hasKeys = 3;
        public static final int TRANSACTION_injectInputEvent = 5;
        public static final int TRANSACTION_registerInputDevicesChangedListener = 13;
        public static final int TRANSACTION_removeKeyboardLayoutForInputDevice = 12;
        public static final int TRANSACTION_setCurrentKeyboardLayoutForInputDevice = 9;
        public static final int TRANSACTION_tryPointerSpeed = 4;
        public static final int TRANSACTION_vibrate = 14;

        public static class Proxy implements IInputManager {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.hardware.input.IInputManager
            public void addKeyboardLayoutForInputDevice(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
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

            @Override // android.hardware.input.IInputManager
            public void cancelVibrate(int i2, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public String getCurrentKeyboardLayoutForInputDevice(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public InputDevice getInputDevice(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? InputDevice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public int[] getInputDeviceIds() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.hardware.input.IInputManager
            public KeyboardLayout getKeyboardLayout(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? KeyboardLayout.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public KeyboardLayout[] getKeyboardLayouts() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (KeyboardLayout[]) parcelObtain2.createTypedArray(KeyboardLayout.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public String[] getKeyboardLayoutsForInputDevice(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public boolean hasKeys(int i2, int i3, int[] iArr, boolean[] zArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeIntArray(iArr);
                    if (zArr == null) {
                        parcelObtain.writeInt(-1);
                    } else {
                        parcelObtain.writeInt(zArr.length);
                    }
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    boolean z2 = parcelObtain2.readInt() != 0;
                    parcelObtain2.readBooleanArray(zArr);
                    return z2;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public boolean injectInputEvent(InputEvent inputEvent, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (inputEvent != null) {
                        parcelObtain.writeInt(1);
                        inputEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public void registerInputDevicesChangedListener(IInputDevicesChangedListener iInputDevicesChangedListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iInputDevicesChangedListener != null ? iInputDevicesChangedListener.asBinder() : null);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public void removeKeyboardLayoutForInputDevice(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public void setCurrentKeyboardLayoutForInputDevice(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public void tryPointerSpeed(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public void vibrate(int i2, long[] jArr, int i3, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLongArray(jArr);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
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

        public static IInputManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IInputManager)) ? new Proxy(iBinder) : (IInputManager) iInterfaceQueryLocalInterface;
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
                    InputDevice inputDevice = getInputDevice(parcel.readInt());
                    parcel2.writeNoException();
                    if (inputDevice != null) {
                        parcel2.writeInt(1);
                        inputDevice.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] inputDeviceIds = getInputDeviceIds();
                    parcel2.writeNoException();
                    parcel2.writeIntArray(inputDeviceIds);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int i4 = parcel.readInt();
                    int i5 = parcel.readInt();
                    int[] iArrCreateIntArray = parcel.createIntArray();
                    int i6 = parcel.readInt();
                    boolean[] zArr = i6 >= 0 ? new boolean[i6] : null;
                    boolean zHasKeys = hasKeys(i4, i5, iArrCreateIntArray, zArr);
                    parcel2.writeNoException();
                    parcel2.writeInt(zHasKeys ? 1 : 0);
                    parcel2.writeBooleanArray(zArr);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    tryPointerSpeed(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zInjectInputEvent = injectInputEvent(parcel.readInt() != 0 ? InputEvent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zInjectInputEvent ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    KeyboardLayout[] keyboardLayouts = getKeyboardLayouts();
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(keyboardLayouts, 1);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    KeyboardLayout keyboardLayout = getKeyboardLayout(parcel.readString());
                    parcel2.writeNoException();
                    if (keyboardLayout != null) {
                        parcel2.writeInt(1);
                        keyboardLayout.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    String currentKeyboardLayoutForInputDevice = getCurrentKeyboardLayoutForInputDevice(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(currentKeyboardLayoutForInputDevice);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCurrentKeyboardLayoutForInputDevice(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] keyboardLayoutsForInputDevice = getKeyboardLayoutsForInputDevice(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStringArray(keyboardLayoutsForInputDevice);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    addKeyboardLayoutForInputDevice(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeKeyboardLayoutForInputDevice(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerInputDevicesChangedListener(IInputDevicesChangedListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    vibrate(parcel.readInt(), parcel.createLongArray(), parcel.readInt(), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancelVibrate(parcel.readInt(), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void addKeyboardLayoutForInputDevice(String str, String str2);

    void cancelVibrate(int i2, IBinder iBinder);

    String getCurrentKeyboardLayoutForInputDevice(String str);

    InputDevice getInputDevice(int i2);

    int[] getInputDeviceIds();

    KeyboardLayout getKeyboardLayout(String str);

    KeyboardLayout[] getKeyboardLayouts();

    String[] getKeyboardLayoutsForInputDevice(String str);

    boolean hasKeys(int i2, int i3, int[] iArr, boolean[] zArr);

    boolean injectInputEvent(InputEvent inputEvent, int i2);

    void registerInputDevicesChangedListener(IInputDevicesChangedListener iInputDevicesChangedListener);

    void removeKeyboardLayoutForInputDevice(String str, String str2);

    void setCurrentKeyboardLayoutForInputDevice(String str, String str2);

    void tryPointerSpeed(int i2);

    void vibrate(int i2, long[] jArr, int i3, IBinder iBinder);
}
