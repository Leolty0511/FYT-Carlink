package android.hardware.input;

import android.content.Context;
import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.Vibrator;
import android.provider.Settings;
import android.util.Log;
import android.util.SparseArray;
import android.view.InputDevice;
import android.view.InputEvent;
import java.util.ArrayList;
import u.a;

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
    private static final String TAG = "InputManager";
    private static InputManager sInstance;
    private final IInputManager mIm;
    private SparseArray<InputDevice> mInputDevices;
    private InputDevicesChangedListener mInputDevicesChangedListener;
    private final Object mInputDevicesLock = new Object();
    private final ArrayList<InputDeviceListenerDelegate> mInputDeviceListeners = new ArrayList<>();

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
                Log.w(InputManager.TAG, "Failed to cancel vibration.", e2);
            }
        }

        @Override // android.os.Vibrator
        public boolean hasVibrator() {
            return true;
        }

        @Override // android.os.Vibrator
        public void vibrate(long j2) {
            vibrate(new long[]{0, j2}, -1);
        }

        @Override // android.os.Vibrator
        public void vibrate(long[] jArr, int i2) {
            if (i2 >= jArr.length) {
                throw new ArrayIndexOutOfBoundsException();
            }
            try {
                InputManager.this.mIm.vibrate(this.mDeviceId, jArr, i2, this.mToken);
            } catch (RemoteException e2) {
                Log.w(InputManager.TAG, "Failed to vibrate.", e2);
            }
        }

        @Override // android.os.Vibrator
        public void vibrate(int i2, String str, long j2) {
            vibrate(j2);
        }

        @Override // android.os.Vibrator
        public void vibrate(int i2, String str, long[] jArr, int i3) {
            vibrate(jArr, i3);
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

    public static InputManager getInstance() {
        InputManager inputManager;
        synchronized (InputManager.class) {
            if (sInstance == null) {
                sInstance = new InputManager(IInputManager.Stub.asInterface(ServiceManager.getService(Context.INPUT_SERVICE)));
            }
            inputManager = sInstance;
        }
        return inputManager;
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

    private void populateInputDevicesLocked() {
        if (this.mInputDevicesChangedListener == null) {
            InputDevicesChangedListener inputDevicesChangedListener = new InputDevicesChangedListener();
            try {
                this.mIm.registerInputDevicesChangedListener(inputDevicesChangedListener);
                this.mInputDevicesChangedListener = inputDevicesChangedListener;
            } catch (RemoteException e2) {
                throw new RuntimeException("Could not get register input device changed listener", e2);
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
                throw new RuntimeException("Could not get input device ids.", e3);
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

    public void addKeyboardLayoutForInputDevice(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("inputDeviceDescriptor must not be null");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("keyboardLayoutDescriptor must not be null");
        }
        try {
            this.mIm.addKeyboardLayoutForInputDevice(str, str2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Could not add keyboard layout for input device.", e2);
        }
    }

    public boolean[] deviceHasKeys(int[] iArr) {
        return deviceHasKeys(-1, iArr);
    }

    public String getCurrentKeyboardLayoutForInputDevice(String str) {
        if (str == null) {
            throw new IllegalArgumentException("inputDeviceDescriptor must not be null");
        }
        try {
            return this.mIm.getCurrentKeyboardLayoutForInputDevice(str);
        } catch (RemoteException e2) {
            Log.w(TAG, "Could not get current keyboard layout for input device.", e2);
            return null;
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
                    throw new RuntimeException("Could not get input device information.", e2);
                }
            }
            return inputDeviceValueAt;
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0039 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x003b A[SYNTHETIC] */
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
                    } catch (RemoteException unused) {
                    }
                    if (inputDeviceValueAt == null) {
                        continue;
                    } else {
                        this.mInputDevices.setValueAt(i2, inputDeviceValueAt);
                        if (str.equals(inputDeviceValueAt.getDescriptor())) {
                            return inputDeviceValueAt;
                        }
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
            Log.w(TAG, "Could not get keyboard layout information.", e2);
            return null;
        }
    }

    public KeyboardLayout[] getKeyboardLayouts() {
        try {
            return this.mIm.getKeyboardLayouts();
        } catch (RemoteException e2) {
            Log.w(TAG, "Could not get list of keyboard layout informations.", e2);
            return new KeyboardLayout[0];
        }
    }

    public String[] getKeyboardLayoutsForInputDevice(String str) {
        if (str == null) {
            throw new IllegalArgumentException("inputDeviceDescriptor must not be null");
        }
        try {
            return this.mIm.getKeyboardLayoutsForInputDevice(str);
        } catch (RemoteException e2) {
            Log.w(TAG, "Could not get keyboard layouts for input device.", e2);
            return (String[]) a.d(String.class);
        }
    }

    public int getPointerSpeed(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), Settings.System.POINTER_SPEED);
        } catch (Settings.SettingNotFoundException unused) {
            return 0;
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
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void registerInputDeviceListener(InputDeviceListener inputDeviceListener, Handler handler) {
        if (inputDeviceListener == null) {
            throw new IllegalArgumentException("listener must not be null");
        }
        synchronized (this.mInputDevicesLock) {
            if (findInputDeviceListenerLocked(inputDeviceListener) < 0) {
                this.mInputDeviceListeners.add(new InputDeviceListenerDelegate(inputDeviceListener, handler));
            }
        }
    }

    public void removeKeyboardLayoutForInputDevice(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("inputDeviceDescriptor must not be null");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("keyboardLayoutDescriptor must not be null");
        }
        try {
            this.mIm.removeKeyboardLayoutForInputDevice(str, str2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Could not remove keyboard layout for input device.", e2);
        }
    }

    public void setCurrentKeyboardLayoutForInputDevice(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("inputDeviceDescriptor must not be null");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("keyboardLayoutDescriptor must not be null");
        }
        try {
            this.mIm.setCurrentKeyboardLayoutForInputDevice(str, str2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Could not set current keyboard layout for input device.", e2);
        }
    }

    public void setPointerSpeed(Context context, int i2) {
        if (i2 < -7 || i2 > 7) {
            throw new IllegalArgumentException("speed out of range");
        }
        Settings.System.putInt(context.getContentResolver(), Settings.System.POINTER_SPEED, i2);
    }

    public void tryPointerSpeed(int i2) {
        if (i2 < -7 || i2 > 7) {
            throw new IllegalArgumentException("speed out of range");
        }
        try {
            this.mIm.tryPointerSpeed(i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Could not set temporary pointer speed.", e2);
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

    public boolean[] deviceHasKeys(int i2, int[] iArr) {
        boolean[] zArr = new boolean[iArr.length];
        try {
            this.mIm.hasKeys(i2, -256, iArr, zArr);
        } catch (RemoteException unused) {
        }
        return zArr;
    }
}
