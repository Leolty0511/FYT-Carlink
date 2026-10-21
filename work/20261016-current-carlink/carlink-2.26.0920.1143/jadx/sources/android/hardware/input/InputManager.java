package android.hardware.input;

import android.app.IInputForwarder;
import android.content.Context;
import android.media.AudioAttributes;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.Settings;
import android.util.Log;
import android.util.SparseArray;
import android.view.InputDevice;
import android.view.InputEvent;
import android.view.PointerIcon;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodSubtype;
import com.android.internal.os.SomeArgs;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class InputManager {
    public static final String ACTION_QUERY_KEYBOARD_LAYOUTS = "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS";
    private static final boolean DEBUG = false;
    public static final int DEFAULT_POINTER_SPEED = 0;
    public static final int INJECT_INPUT_EVENT_MODE_ASYNC = 0;
    public static final int INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH = 2;
    public static final int INJECT_INPUT_EVENT_MODE_WAIT_FOR_RESULT = 1;
    public static final int MAX_POINTER_SPEED = 7;
    public static final String META_DATA_KEYBOARD_LAYOUTS = "android.hardware.input.metadata.KEYBOARD_LAYOUTS";
    public static final int MIN_POINTER_SPEED = -7;
    private static final int MSG_DEVICE_ADDED = 1;
    private static final int MSG_DEVICE_CHANGED = 3;
    private static final int MSG_DEVICE_REMOVED = 2;
    public static final int SWITCH_STATE_OFF = 0;
    public static final int SWITCH_STATE_ON = 1;
    public static final int SWITCH_STATE_UNKNOWN = -1;
    private static final String TAG = "InputManager";
    private static InputManager sInstance;
    private final IInputManager mIm;
    private SparseArray<InputDevice> mInputDevices;
    private InputDevicesChangedListener mInputDevicesChangedListener;
    private List<OnTabletModeChangedListenerDelegate> mOnTabletModeChangedListeners;
    private TabletModeChangedListener mTabletModeChangedListener;
    private final Object mInputDevicesLock = new Object();
    private final ArrayList<InputDeviceListenerDelegate> mInputDeviceListeners = new ArrayList<>();
    private final Object mTabletModeLock = new Object();

    public interface InputDeviceListener {
        void onInputDeviceAdded(int i2);

        void onInputDeviceChanged(int i2);

        void onInputDeviceRemoved(int i2);
    }

    public static final class InputDeviceListenerDelegate extends Handler {
        public final InputDeviceListener mListener;

        public InputDeviceListenerDelegate(InputDeviceListener inputDeviceListener, Handler handler) {
            super(handler != null ? handler.getLooper() : Looper.myLooper());
            this.mListener = inputDeviceListener;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                this.mListener.onInputDeviceAdded(message.arg1);
            } else if (i2 == 2) {
                this.mListener.onInputDeviceRemoved(message.arg1);
            } else {
                if (i2 != 3) {
                    return;
                }
                this.mListener.onInputDeviceChanged(message.arg1);
            }
        }
    }

    public final class InputDeviceVibrator extends Vibrator {
        private final int mDeviceId;
        private final Binder mToken = new Binder();

        public InputDeviceVibrator(int i2) {
            this.mDeviceId = i2;
        }

        @Override // android.os.Vibrator
        public void cancel() {
            try {
                InputManager.this.mIm.cancelVibrate(this.mDeviceId, this.mToken);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }

        @Override // android.os.Vibrator
        public boolean hasAmplitudeControl() {
            return false;
        }

        @Override // android.os.Vibrator
        public boolean hasVibrator() {
            return true;
        }

        @Override // android.os.Vibrator
        public void vibrate(int i2, String str, VibrationEffect vibrationEffect, AudioAttributes audioAttributes) {
            long[] timings;
            int repeatIndex;
            if (vibrationEffect instanceof VibrationEffect.OneShot) {
                timings = new long[]{0, ((VibrationEffect.OneShot) vibrationEffect).getTiming()};
                repeatIndex = -1;
            } else if (!(vibrationEffect instanceof VibrationEffect.Waveform)) {
                Log.w(InputManager.TAG, "Pre-baked effects aren't supported on input devices");
                return;
            } else {
                VibrationEffect.Waveform waveform = (VibrationEffect.Waveform) vibrationEffect;
                timings = waveform.getTimings();
                repeatIndex = waveform.getRepeatIndex();
            }
            try {
                InputManager.this.mIm.vibrate(this.mDeviceId, timings, repeatIndex, this.mToken);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public final class InputDevicesChangedListener extends IInputDevicesChangedListener.Stub {
        private InputDevicesChangedListener() {
        }

        @Override // android.hardware.input.IInputDevicesChangedListener
        public void onInputDevicesChanged(int[] iArr) {
            InputManager.this.onInputDevicesChanged(iArr);
        }
    }

    public interface OnTabletModeChangedListener {
        void onTabletModeChanged(long j2, boolean z2);
    }

    public static final class OnTabletModeChangedListenerDelegate extends Handler {
        private static final int MSG_TABLET_MODE_CHANGED = 0;
        public final OnTabletModeChangedListener mListener;

        public OnTabletModeChangedListenerDelegate(OnTabletModeChangedListener onTabletModeChangedListener, Handler handler) {
            super(handler != null ? handler.getLooper() : Looper.myLooper());
            this.mListener = onTabletModeChangedListener;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 0) {
                return;
            }
            SomeArgs someArgs = (SomeArgs) message.obj;
            this.mListener.onTabletModeChanged((((long) someArgs.argi1) & 4294967295L) | (((long) someArgs.argi2) << 32), ((Boolean) someArgs.arg1).booleanValue());
        }

        public void sendTabletModeChanged(long j2, boolean z2) {
            SomeArgs someArgsObtain = SomeArgs.obtain();
            someArgsObtain.argi1 = (int) ((-1) & j2);
            someArgsObtain.argi2 = (int) (j2 >> 32);
            someArgsObtain.arg1 = Boolean.valueOf(z2);
            obtainMessage(0, someArgsObtain).sendToTarget();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SwitchState {
    }

    public final class TabletModeChangedListener extends ITabletModeChangedListener.Stub {
        private TabletModeChangedListener() {
        }

        @Override // android.hardware.input.ITabletModeChangedListener
        public void onTabletModeChanged(long j2, boolean z2) {
            InputManager.this.onTabletModeChanged(j2, z2);
        }
    }

    private InputManager(IInputManager iInputManager) {
        this.mIm = iInputManager;
    }

    private static boolean containsDeviceId(int[] iArr, int i2) {
        for (int i3 = 0; i3 < iArr.length; i3 += 2) {
            if (iArr[i3] == i2) {
                return true;
            }
        }
        return false;
    }

    private int findInputDeviceListenerLocked(InputDeviceListener inputDeviceListener) {
        int size = this.mInputDeviceListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.mInputDeviceListeners.get(i2).mListener == inputDeviceListener) {
                return i2;
            }
        }
        return -1;
    }

    private int findOnTabletModeChangedListenerLocked(OnTabletModeChangedListener onTabletModeChangedListener) {
        int size = this.mOnTabletModeChangedListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.mOnTabletModeChangedListeners.get(i2).mListener == onTabletModeChangedListener) {
                return i2;
            }
        }
        return -1;
    }

    public static InputManager getInstance() {
        InputManager inputManager;
        synchronized (InputManager.class) {
            if (sInstance == null) {
                try {
                    sInstance = new InputManager(IInputManager.Stub.asInterface(ServiceManager.getServiceOrThrow("input")));
                } catch (ServiceManager.ServiceNotFoundException e2) {
                    throw new IllegalStateException(e2);
                }
            }
            inputManager = sInstance;
        }
        return inputManager;
    }

    private void initializeTabletModeListenerLocked() {
        TabletModeChangedListener tabletModeChangedListener = new TabletModeChangedListener();
        try {
            this.mIm.registerTabletModeChangedListener(tabletModeChangedListener);
            this.mTabletModeChangedListener = tabletModeChangedListener;
            this.mOnTabletModeChangedListeners = new ArrayList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onInputDevicesChanged(int[] iArr) {
        synchronized (this.mInputDevicesLock) {
            int size = this.mInputDevices.size();
            while (true) {
                size--;
                if (size <= 0) {
                    break;
                }
                int iKeyAt = this.mInputDevices.keyAt(size);
                if (!containsDeviceId(iArr, iKeyAt)) {
                    this.mInputDevices.removeAt(size);
                    sendMessageToInputDeviceListenersLocked(2, iKeyAt);
                }
            }
            for (int i2 = 0; i2 < iArr.length; i2 += 2) {
                int i3 = iArr[i2];
                int iIndexOfKey = this.mInputDevices.indexOfKey(i3);
                if (iIndexOfKey >= 0) {
                    InputDevice inputDeviceValueAt = this.mInputDevices.valueAt(iIndexOfKey);
                    if (inputDeviceValueAt != null) {
                        if (inputDeviceValueAt.getGeneration() != iArr[i2 + 1]) {
                            this.mInputDevices.setValueAt(iIndexOfKey, null);
                            sendMessageToInputDeviceListenersLocked(3, i3);
                        }
                    }
                } else {
                    this.mInputDevices.put(i3, null);
                    sendMessageToInputDeviceListenersLocked(1, i3);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTabletModeChanged(long j2, boolean z2) {
        synchronized (this.mTabletModeLock) {
            int size = this.mOnTabletModeChangedListeners.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mOnTabletModeChangedListeners.get(i2).sendTabletModeChanged(j2, z2);
            }
        }
    }

    private void populateInputDevicesLocked() {
        if (this.mInputDevicesChangedListener == null) {
            InputDevicesChangedListener inputDevicesChangedListener = new InputDevicesChangedListener();
            try {
                this.mIm.registerInputDevicesChangedListener(inputDevicesChangedListener);
                this.mInputDevicesChangedListener = inputDevicesChangedListener;
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
        if (this.mInputDevices == null) {
            try {
                int[] inputDeviceIds = this.mIm.getInputDeviceIds();
                this.mInputDevices = new SparseArray<>();
                for (int i2 : inputDeviceIds) {
                    this.mInputDevices.put(i2, null);
                }
            } catch (RemoteException e3) {
                throw e3.rethrowFromSystemServer();
            }
        }
    }

    private void sendMessageToInputDeviceListenersLocked(int i2, int i3) {
        int size = this.mInputDeviceListeners.size();
        for (int i4 = 0; i4 < size; i4++) {
            InputDeviceListenerDelegate inputDeviceListenerDelegate = this.mInputDeviceListeners.get(i4);
            inputDeviceListenerDelegate.sendMessage(inputDeviceListenerDelegate.obtainMessage(i2, i3, 0));
        }
    }

    public void addKeyboardLayoutForInputDevice(InputDeviceIdentifier inputDeviceIdentifier, String str) {
        if (inputDeviceIdentifier == null) {
            throw new IllegalArgumentException("inputDeviceDescriptor must not be null");
        }
        if (str == null) {
            throw new IllegalArgumentException("keyboardLayoutDescriptor must not be null");
        }
        try {
            this.mIm.addKeyboardLayoutForInputDevice(inputDeviceIdentifier, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public IInputForwarder createInputForwarder(int i2) {
        try {
            return this.mIm.createInputForwarder(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean[] deviceHasKeys(int[] iArr) {
        return deviceHasKeys(-1, iArr);
    }

    public void disableInputDevice(int i2) {
        try {
            this.mIm.disableInputDevice(i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Could not disable input device with id = " + i2);
            throw e2.rethrowFromSystemServer();
        }
    }

    public void enableInputDevice(int i2) {
        try {
            this.mIm.enableInputDevice(i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Could not enable input device with id = " + i2);
            throw e2.rethrowFromSystemServer();
        }
    }

    public String getCurrentKeyboardLayoutForInputDevice(InputDeviceIdentifier inputDeviceIdentifier) {
        try {
            return this.mIm.getCurrentKeyboardLayoutForInputDevice(inputDeviceIdentifier);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String[] getEnabledKeyboardLayoutsForInputDevice(InputDeviceIdentifier inputDeviceIdentifier) {
        if (inputDeviceIdentifier == null) {
            throw new IllegalArgumentException("inputDeviceDescriptor must not be null");
        }
        try {
            return this.mIm.getEnabledKeyboardLayoutsForInputDevice(inputDeviceIdentifier);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public InputDevice getInputDevice(int i2) {
        synchronized (this.mInputDevicesLock) {
            populateInputDevicesLocked();
            int iIndexOfKey = this.mInputDevices.indexOfKey(i2);
            if (iIndexOfKey < 0) {
                return null;
            }
            InputDevice inputDeviceValueAt = this.mInputDevices.valueAt(iIndexOfKey);
            if (inputDeviceValueAt == null) {
                try {
                    inputDeviceValueAt = this.mIm.getInputDevice(i2);
                    if (inputDeviceValueAt != null) {
                        this.mInputDevices.setValueAt(iIndexOfKey, inputDeviceValueAt);
                    }
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            }
            return inputDeviceValueAt;
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:0x0042 A[SYNTHETIC] */
    public InputDevice getInputDeviceByDescriptor(String str) {
        if (str == null) {
            throw new IllegalArgumentException("descriptor must not be null.");
        }
        synchronized (this.mInputDevicesLock) {
            populateInputDevicesLocked();
            int size = this.mInputDevices.size();
            for (int i2 = 0; i2 < size; i2++) {
                InputDevice inputDeviceValueAt = this.mInputDevices.valueAt(i2);
                if (inputDeviceValueAt == null) {
                    try {
                        inputDeviceValueAt = this.mIm.getInputDevice(this.mInputDevices.keyAt(i2));
                        if (inputDeviceValueAt == null) {
                            continue;
                        } else {
                            this.mInputDevices.setValueAt(i2, inputDeviceValueAt);
                            if (str.equals(inputDeviceValueAt.getDescriptor())) {
                                return inputDeviceValueAt;
                            }
                        }
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
                } else if (str.equals(inputDeviceValueAt.getDescriptor())) {
                    return inputDeviceValueAt;
                }
            }
            return null;
        }
    }

    public int[] getInputDeviceIds() {
        int[] iArr;
        synchronized (this.mInputDevicesLock) {
            populateInputDevicesLocked();
            int size = this.mInputDevices.size();
            iArr = new int[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.mInputDevices.keyAt(i2);
            }
        }
        return iArr;
    }

    public Vibrator getInputDeviceVibrator(int i2) {
        return new InputDeviceVibrator(i2);
    }

    public KeyboardLayout getKeyboardLayout(String str) {
        if (str == null) {
            throw new IllegalArgumentException("keyboardLayoutDescriptor must not be null");
        }
        try {
            return this.mIm.getKeyboardLayout(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public KeyboardLayout getKeyboardLayoutForInputDevice(InputDeviceIdentifier inputDeviceIdentifier, InputMethodInfo inputMethodInfo, InputMethodSubtype inputMethodSubtype) {
        try {
            return this.mIm.getKeyboardLayoutForInputDevice(inputDeviceIdentifier, inputMethodInfo, inputMethodSubtype);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public KeyboardLayout[] getKeyboardLayouts() {
        try {
            return this.mIm.getKeyboardLayouts();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public KeyboardLayout[] getKeyboardLayoutsForInputDevice(InputDeviceIdentifier inputDeviceIdentifier) {
        try {
            return this.mIm.getKeyboardLayoutsForInputDevice(inputDeviceIdentifier);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getPointerSpeed(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), Settings.System.POINTER_SPEED);
        } catch (Settings.SettingNotFoundException unused) {
            return 0;
        }
    }

    public TouchCalibration getTouchCalibration(String str, int i2) {
        try {
            return this.mIm.getTouchCalibrationForInputDevice(str, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean injectInputEvent(InputEvent inputEvent, int i2) {
        if (inputEvent == null) {
            throw new IllegalArgumentException("event must not be null");
        }
        if (i2 != 0 && i2 != 2 && i2 != 1) {
            throw new IllegalArgumentException("mode is invalid");
        }
        try {
            return this.mIm.injectInputEvent(inputEvent, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int isInTabletMode() {
        try {
            return this.mIm.isInTabletMode();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isInputDeviceEnabled(int i2) {
        try {
            return this.mIm.isInputDeviceEnabled(i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Could not check enabled status of input device with id = " + i2);
            throw e2.rethrowFromSystemServer();
        }
    }

    public void registerInputDeviceListener(InputDeviceListener inputDeviceListener, Handler handler) {
        if (inputDeviceListener == null) {
            throw new IllegalArgumentException("listener must not be null");
        }
        synchronized (this.mInputDevicesLock) {
            populateInputDevicesLocked();
            if (findInputDeviceListenerLocked(inputDeviceListener) < 0) {
                this.mInputDeviceListeners.add(new InputDeviceListenerDelegate(inputDeviceListener, handler));
            }
        }
    }

    public void registerOnTabletModeChangedListener(OnTabletModeChangedListener onTabletModeChangedListener, Handler handler) {
        if (onTabletModeChangedListener == null) {
            throw new IllegalArgumentException("listener must not be null");
        }
        synchronized (this.mTabletModeLock) {
            if (this.mOnTabletModeChangedListeners == null) {
                initializeTabletModeListenerLocked();
            }
            if (findOnTabletModeChangedListenerLocked(onTabletModeChangedListener) < 0) {
                this.mOnTabletModeChangedListeners.add(new OnTabletModeChangedListenerDelegate(onTabletModeChangedListener, handler));
            }
        }
    }

    public void removeKeyboardLayoutForInputDevice(InputDeviceIdentifier inputDeviceIdentifier, String str) {
        if (inputDeviceIdentifier == null) {
            throw new IllegalArgumentException("inputDeviceDescriptor must not be null");
        }
        if (str == null) {
            throw new IllegalArgumentException("keyboardLayoutDescriptor must not be null");
        }
        try {
            this.mIm.removeKeyboardLayoutForInputDevice(inputDeviceIdentifier, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void requestPointerCapture(IBinder iBinder, boolean z2) {
        try {
            this.mIm.requestPointerCapture(iBinder, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setCurrentKeyboardLayoutForInputDevice(InputDeviceIdentifier inputDeviceIdentifier, String str) {
        if (inputDeviceIdentifier == null) {
            throw new IllegalArgumentException("identifier must not be null");
        }
        if (str == null) {
            throw new IllegalArgumentException("keyboardLayoutDescriptor must not be null");
        }
        try {
            this.mIm.setCurrentKeyboardLayoutForInputDevice(inputDeviceIdentifier, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setCustomPointerIcon(PointerIcon pointerIcon) {
        try {
            this.mIm.setCustomPointerIcon(pointerIcon);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setKeyboardLayoutForInputDevice(InputDeviceIdentifier inputDeviceIdentifier, InputMethodInfo inputMethodInfo, InputMethodSubtype inputMethodSubtype, String str) {
        try {
            this.mIm.setKeyboardLayoutForInputDevice(inputDeviceIdentifier, inputMethodInfo, inputMethodSubtype, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setPointerIconType(int i2) {
        try {
            this.mIm.setPointerIconType(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setPointerSpeed(Context context, int i2) {
        if (i2 < -7 || i2 > 7) {
            throw new IllegalArgumentException("speed out of range");
        }
        Settings.System.putInt(context.getContentResolver(), Settings.System.POINTER_SPEED, i2);
    }

    public void setTouchCalibration(String str, int i2, TouchCalibration touchCalibration) {
        try {
            this.mIm.setTouchCalibrationForInputDevice(str, i2, touchCalibration);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void tryPointerSpeed(int i2) {
        if (i2 < -7 || i2 > 7) {
            throw new IllegalArgumentException("speed out of range");
        }
        try {
            this.mIm.tryPointerSpeed(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void unregisterInputDeviceListener(InputDeviceListener inputDeviceListener) {
        if (inputDeviceListener == null) {
            throw new IllegalArgumentException("listener must not be null");
        }
        synchronized (this.mInputDevicesLock) {
            int iFindInputDeviceListenerLocked = findInputDeviceListenerLocked(inputDeviceListener);
            if (iFindInputDeviceListenerLocked >= 0) {
                this.mInputDeviceListeners.get(iFindInputDeviceListenerLocked).removeCallbacksAndMessages(null);
                this.mInputDeviceListeners.remove(iFindInputDeviceListenerLocked);
            }
        }
    }

    public void unregisterOnTabletModeChangedListener(OnTabletModeChangedListener onTabletModeChangedListener) {
        if (onTabletModeChangedListener == null) {
            throw new IllegalArgumentException("listener must not be null");
        }
        synchronized (this.mTabletModeLock) {
            int iFindOnTabletModeChangedListenerLocked = findOnTabletModeChangedListenerLocked(onTabletModeChangedListener);
            if (iFindOnTabletModeChangedListenerLocked >= 0) {
                this.mOnTabletModeChangedListeners.remove(iFindOnTabletModeChangedListenerLocked).removeCallbacksAndMessages(null);
            }
        }
    }

    public boolean[] deviceHasKeys(int i2, int[] iArr) {
        boolean[] zArr = new boolean[iArr.length];
        try {
            this.mIm.hasKeys(i2, -256, iArr, zArr);
            return zArr;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }
}
