package android.hardware.input;

import android.app.IInputForwarder;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.InputDevice;
import android.view.InputEvent;
import android.view.PointerIcon;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodSubtype;

/* JADX INFO: loaded from: classes.dex */
public interface IInputManager extends IInterface {

    public static abstract class Stub extends Binder implements IInputManager {
        private static final String DESCRIPTOR = "android.hardware.input.IInputManager";
        static final int TRANSACTION_addKeyboardLayoutForInputDevice = 17;
        static final int TRANSACTION_cancelVibrate = 25;
        static final int TRANSACTION_createInputForwarder = 29;
        static final int TRANSACTION_disableInputDevice = 5;
        static final int TRANSACTION_enableInputDevice = 4;
        static final int TRANSACTION_getCurrentKeyboardLayoutForInputDevice = 14;
        static final int TRANSACTION_getEnabledKeyboardLayoutsForInputDevice = 16;
        static final int TRANSACTION_getInputDevice = 1;
        static final int TRANSACTION_getInputDeviceIds = 2;
        static final int TRANSACTION_getKeyboardLayout = 13;
        static final int TRANSACTION_getKeyboardLayoutForInputDevice = 19;
        static final int TRANSACTION_getKeyboardLayouts = 11;
        static final int TRANSACTION_getKeyboardLayoutsForInputDevice = 12;
        static final int TRANSACTION_getTouchCalibrationForInputDevice = 9;
        static final int TRANSACTION_hasKeys = 6;
        static final int TRANSACTION_injectInputEvent = 8;
        static final int TRANSACTION_isInTabletMode = 22;
        static final int TRANSACTION_isInputDeviceEnabled = 3;
        static final int TRANSACTION_registerInputDevicesChangedListener = 21;
        static final int TRANSACTION_registerTabletModeChangedListener = 23;
        static final int TRANSACTION_removeKeyboardLayoutForInputDevice = 18;
        static final int TRANSACTION_requestPointerCapture = 28;
        static final int TRANSACTION_setCurrentKeyboardLayoutForInputDevice = 15;
        static final int TRANSACTION_setCustomPointerIcon = 27;
        static final int TRANSACTION_setKeyboardLayoutForInputDevice = 20;
        static final int TRANSACTION_setPointerIconType = 26;
        static final int TRANSACTION_setTouchCalibrationForInputDevice = 10;
        static final int TRANSACTION_tryPointerSpeed = 7;
        static final int TRANSACTION_vibrate = 24;

        public static class Proxy implements IInputManager {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.hardware.input.IInputManager
            public void addKeyboardLayoutForInputDevice(InputDeviceIdentifier inputDeviceIdentifier, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (inputDeviceIdentifier != null) {
                        parcelObtain.writeInt(1);
                        inputDeviceIdentifier.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public IInputForwarder createInputForwarder(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IInputForwarder.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public void disableInputDevice(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public void enableInputDevice(int i2) {
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
            public String getCurrentKeyboardLayoutForInputDevice(InputDeviceIdentifier inputDeviceIdentifier) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (inputDeviceIdentifier != null) {
                        parcelObtain.writeInt(1);
                        inputDeviceIdentifier.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public String[] getEnabledKeyboardLayoutsForInputDevice(InputDeviceIdentifier inputDeviceIdentifier) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (inputDeviceIdentifier != null) {
                        parcelObtain.writeInt(1);
                        inputDeviceIdentifier.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
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
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? KeyboardLayout.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public KeyboardLayout getKeyboardLayoutForInputDevice(InputDeviceIdentifier inputDeviceIdentifier, InputMethodInfo inputMethodInfo, InputMethodSubtype inputMethodSubtype) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (inputDeviceIdentifier != null) {
                        parcelObtain.writeInt(1);
                        inputDeviceIdentifier.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (inputMethodInfo != null) {
                        parcelObtain.writeInt(1);
                        inputMethodInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (inputMethodSubtype != null) {
                        parcelObtain.writeInt(1);
                        inputMethodSubtype.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (KeyboardLayout[]) parcelObtain2.createTypedArray(KeyboardLayout.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public KeyboardLayout[] getKeyboardLayoutsForInputDevice(InputDeviceIdentifier inputDeviceIdentifier) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (inputDeviceIdentifier != null) {
                        parcelObtain.writeInt(1);
                        inputDeviceIdentifier.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (KeyboardLayout[]) parcelObtain2.createTypedArray(KeyboardLayout.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public TouchCalibration getTouchCalibrationForInputDevice(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? TouchCalibration.CREATOR.createFromParcel(parcelObtain2) : null;
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
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public int isInTabletMode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public boolean isInputDeviceEnabled(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public void registerTabletModeChangedListener(ITabletModeChangedListener iTabletModeChangedListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iTabletModeChangedListener != null ? iTabletModeChangedListener.asBinder() : null);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public void removeKeyboardLayoutForInputDevice(InputDeviceIdentifier inputDeviceIdentifier, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (inputDeviceIdentifier != null) {
                        parcelObtain.writeInt(1);
                        inputDeviceIdentifier.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public void requestPointerCapture(IBinder iBinder, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public void setCurrentKeyboardLayoutForInputDevice(InputDeviceIdentifier inputDeviceIdentifier, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (inputDeviceIdentifier != null) {
                        parcelObtain.writeInt(1);
                        inputDeviceIdentifier.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public void setCustomPointerIcon(PointerIcon pointerIcon) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (pointerIcon != null) {
                        parcelObtain.writeInt(1);
                        pointerIcon.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public void setKeyboardLayoutForInputDevice(InputDeviceIdentifier inputDeviceIdentifier, InputMethodInfo inputMethodInfo, InputMethodSubtype inputMethodSubtype, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (inputDeviceIdentifier != null) {
                        parcelObtain.writeInt(1);
                        inputDeviceIdentifier.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (inputMethodInfo != null) {
                        parcelObtain.writeInt(1);
                        inputMethodInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (inputMethodSubtype != null) {
                        parcelObtain.writeInt(1);
                        inputMethodSubtype.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public void setPointerIconType(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.input.IInputManager
            public void setTouchCalibrationForInputDevice(String str, int i2, TouchCalibration touchCalibration) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    if (touchCalibration != null) {
                        parcelObtain.writeInt(1);
                        touchCalibration.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
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
                    boolean zIsInputDeviceEnabled = isInputDeviceEnabled(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsInputDeviceEnabled ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    enableInputDevice(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    disableInputDevice(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 6:
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
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    tryPointerSpeed(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zInjectInputEvent = injectInputEvent(parcel.readInt() != 0 ? InputEvent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zInjectInputEvent ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    TouchCalibration touchCalibrationForInputDevice = getTouchCalibrationForInputDevice(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (touchCalibrationForInputDevice != null) {
                        parcel2.writeInt(1);
                        touchCalibrationForInputDevice.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTouchCalibrationForInputDevice(parcel.readString(), parcel.readInt(), parcel.readInt() != 0 ? TouchCalibration.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    KeyboardLayout[] keyboardLayouts = getKeyboardLayouts();
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(keyboardLayouts, 1);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    KeyboardLayout[] keyboardLayoutsForInputDevice = getKeyboardLayoutsForInputDevice(parcel.readInt() != 0 ? InputDeviceIdentifier.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(keyboardLayoutsForInputDevice, 1);
                    return true;
                case 13:
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
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    String currentKeyboardLayoutForInputDevice = getCurrentKeyboardLayoutForInputDevice(parcel.readInt() != 0 ? InputDeviceIdentifier.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeString(currentKeyboardLayoutForInputDevice);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCurrentKeyboardLayoutForInputDevice(parcel.readInt() != 0 ? InputDeviceIdentifier.CREATOR.createFromParcel(parcel) : null, parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] enabledKeyboardLayoutsForInputDevice = getEnabledKeyboardLayoutsForInputDevice(parcel.readInt() != 0 ? InputDeviceIdentifier.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeStringArray(enabledKeyboardLayoutsForInputDevice);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    addKeyboardLayoutForInputDevice(parcel.readInt() != 0 ? InputDeviceIdentifier.CREATOR.createFromParcel(parcel) : null, parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeKeyboardLayoutForInputDevice(parcel.readInt() != 0 ? InputDeviceIdentifier.CREATOR.createFromParcel(parcel) : null, parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    KeyboardLayout keyboardLayoutForInputDevice = getKeyboardLayoutForInputDevice(parcel.readInt() != 0 ? InputDeviceIdentifier.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? InputMethodInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? InputMethodSubtype.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (keyboardLayoutForInputDevice != null) {
                        parcel2.writeInt(1);
                        keyboardLayoutForInputDevice.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    setKeyboardLayoutForInputDevice(parcel.readInt() != 0 ? InputDeviceIdentifier.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? InputMethodInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? InputMethodSubtype.CREATOR.createFromParcel(parcel) : null, parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerInputDevicesChangedListener(IInputDevicesChangedListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iIsInTabletMode = isInTabletMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(iIsInTabletMode);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerTabletModeChangedListener(ITabletModeChangedListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    vibrate(parcel.readInt(), parcel.createLongArray(), parcel.readInt(), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancelVibrate(parcel.readInt(), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPointerIconType(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCustomPointerIcon(parcel.readInt() != 0 ? PointerIcon.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestPointerCapture(parcel.readStrongBinder(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    IInputForwarder iInputForwarderCreateInputForwarder = createInputForwarder(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(iInputForwarderCreateInputForwarder != null ? iInputForwarderCreateInputForwarder.asBinder() : null);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void addKeyboardLayoutForInputDevice(InputDeviceIdentifier inputDeviceIdentifier, String str);

    void cancelVibrate(int i2, IBinder iBinder);

    IInputForwarder createInputForwarder(int i2);

    void disableInputDevice(int i2);

    void enableInputDevice(int i2);

    String getCurrentKeyboardLayoutForInputDevice(InputDeviceIdentifier inputDeviceIdentifier);

    String[] getEnabledKeyboardLayoutsForInputDevice(InputDeviceIdentifier inputDeviceIdentifier);

    InputDevice getInputDevice(int i2);

    int[] getInputDeviceIds();

    KeyboardLayout getKeyboardLayout(String str);

    KeyboardLayout getKeyboardLayoutForInputDevice(InputDeviceIdentifier inputDeviceIdentifier, InputMethodInfo inputMethodInfo, InputMethodSubtype inputMethodSubtype);

    KeyboardLayout[] getKeyboardLayouts();

    KeyboardLayout[] getKeyboardLayoutsForInputDevice(InputDeviceIdentifier inputDeviceIdentifier);

    TouchCalibration getTouchCalibrationForInputDevice(String str, int i2);

    boolean hasKeys(int i2, int i3, int[] iArr, boolean[] zArr);

    boolean injectInputEvent(InputEvent inputEvent, int i2);

    int isInTabletMode();

    boolean isInputDeviceEnabled(int i2);

    void registerInputDevicesChangedListener(IInputDevicesChangedListener iInputDevicesChangedListener);

    void registerTabletModeChangedListener(ITabletModeChangedListener iTabletModeChangedListener);

    void removeKeyboardLayoutForInputDevice(InputDeviceIdentifier inputDeviceIdentifier, String str);

    void requestPointerCapture(IBinder iBinder, boolean z2);

    void setCurrentKeyboardLayoutForInputDevice(InputDeviceIdentifier inputDeviceIdentifier, String str);

    void setCustomPointerIcon(PointerIcon pointerIcon);

    void setKeyboardLayoutForInputDevice(InputDeviceIdentifier inputDeviceIdentifier, InputMethodInfo inputMethodInfo, InputMethodSubtype inputMethodSubtype, String str);

    void setPointerIconType(int i2);

    void setTouchCalibrationForInputDevice(String str, int i2, TouchCalibration touchCalibration);

    void tryPointerSpeed(int i2);

    void vibrate(int i2, long[] jArr, int i3, IBinder iBinder);
}
