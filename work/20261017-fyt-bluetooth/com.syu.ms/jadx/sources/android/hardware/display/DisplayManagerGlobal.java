package android.hardware.display;

import android.content.Context;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.DisplayAdjustments;
import android.view.DisplayInfo;
import android.view.Surface;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class DisplayManagerGlobal {
    private static final boolean DEBUG = false;
    public static final int EVENT_DISPLAY_ADDED = 1;
    public static final int EVENT_DISPLAY_CHANGED = 2;
    public static final int EVENT_DISPLAY_REMOVED = 3;
    private static final String TAG = "DisplayManager";
    private static final boolean USE_CACHE = false;
    private static DisplayManagerGlobal sInstance;
    private DisplayManagerCallback mCallback;
    private int[] mDisplayIdCache;
    private final IDisplayManager mDm;
    private int mWifiDisplayScanNestCount;
    private final Object mLock = new Object();
    private final ArrayList<DisplayListenerDelegate> mDisplayListeners = new ArrayList<>();
    private final SparseArray<DisplayInfo> mDisplayInfoCache = new SparseArray<>();

    public static final class DisplayListenerDelegate extends Handler {
        public final DisplayManager.DisplayListener mListener;

        public DisplayListenerDelegate(DisplayManager.DisplayListener displayListener, Handler handler) {
            super(handler != null ? handler.getLooper() : Looper.myLooper(), null, true);
            this.mListener = displayListener;
        }

        public void clearEvents() {
            removeCallbacksAndMessages(null);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                this.mListener.onDisplayAdded(message.arg1);
            } else if (i2 == 2) {
                this.mListener.onDisplayChanged(message.arg1);
            } else {
                if (i2 != 3) {
                    return;
                }
                this.mListener.onDisplayRemoved(message.arg1);
            }
        }

        public void sendDisplayEvent(int i2, int i3) {
            sendMessage(obtainMessage(i3, i2, 0));
        }
    }

    public final class DisplayManagerCallback extends IDisplayManagerCallback.Stub {
        private DisplayManagerCallback() {
        }

        @Override // android.hardware.display.IDisplayManagerCallback
        public void onDisplayEvent(int i2, int i3) {
            DisplayManagerGlobal.this.handleDisplayEvent(i2, i3);
        }
    }

    private DisplayManagerGlobal(IDisplayManager iDisplayManager) {
        this.mDm = iDisplayManager;
    }

    private int findDisplayListenerLocked(DisplayManager.DisplayListener displayListener) {
        int size = this.mDisplayListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.mDisplayListeners.get(i2).mListener == displayListener) {
                return i2;
            }
        }
        return -1;
    }

    public static DisplayManagerGlobal getInstance() {
        DisplayManagerGlobal displayManagerGlobal;
        IBinder service;
        synchronized (DisplayManagerGlobal.class) {
            if (sInstance == null && (service = ServiceManager.getService(Context.DISPLAY_SERVICE)) != null) {
                sInstance = new DisplayManagerGlobal(IDisplayManager.Stub.asInterface(service));
            }
            displayManagerGlobal = sInstance;
        }
        return displayManagerGlobal;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDisplayEvent(int i2, int i3) {
        synchronized (this.mLock) {
            int size = this.mDisplayListeners.size();
            for (int i4 = 0; i4 < size; i4++) {
                this.mDisplayListeners.get(i4).sendDisplayEvent(i2, i3);
            }
        }
    }

    private void registerCallbackIfNeededLocked() {
        if (this.mCallback == null) {
            DisplayManagerCallback displayManagerCallback = new DisplayManagerCallback();
            this.mCallback = displayManagerCallback;
            try {
                this.mDm.registerCallback(displayManagerCallback);
            } catch (RemoteException e2) {
                Log.e(TAG, "Failed to register callback with display manager service.", e2);
                this.mCallback = null;
            }
        }
    }

    public void connectWifiDisplay(String str) {
        if (str == null) {
            throw new IllegalArgumentException("deviceAddress must not be null");
        }
        try {
            this.mDm.connectWifiDisplay(str);
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to connect to Wifi display " + str + ".", e2);
        }
    }

    public VirtualDisplay createVirtualDisplay(Context context, String str, int i2, int i3, int i4, Surface surface, int i5) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("name must be non-null and non-empty");
        }
        if (i2 <= 0 || i3 <= 0 || i4 <= 0) {
            throw new IllegalArgumentException("width, height, and densityDpi must be greater than 0");
        }
        if (surface == null) {
            throw new IllegalArgumentException("surface must not be null");
        }
        Binder binder = new Binder();
        try {
            int iCreateVirtualDisplay = this.mDm.createVirtualDisplay(binder, context.getPackageName(), str, i2, i3, i4, surface, i5);
            if (iCreateVirtualDisplay < 0) {
                Log.e(TAG, "Could not create virtual display: " + str);
                return null;
            }
            Display realDisplay = getRealDisplay(iCreateVirtualDisplay);
            if (realDisplay != null) {
                return new VirtualDisplay(this, realDisplay, binder);
            }
            Log.wtf(TAG, "Could not obtain display info for newly created virtual display: " + str);
            try {
                this.mDm.releaseVirtualDisplay(binder);
            } catch (RemoteException unused) {
            }
            return null;
        } catch (RemoteException e2) {
            Log.e(TAG, "Could not create virtual display: " + str, e2);
            return null;
        }
    }

    public void disconnectWifiDisplay() {
        try {
            this.mDm.disconnectWifiDisplay();
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to disconnect from Wifi display.", e2);
        }
    }

    public void forgetWifiDisplay(String str) {
        if (str == null) {
            throw new IllegalArgumentException("deviceAddress must not be null");
        }
        try {
            this.mDm.forgetWifiDisplay(str);
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to forget Wifi display.", e2);
        }
    }

    public Display getCompatibleDisplay(int i2, DisplayAdjustments displayAdjustments) {
        DisplayInfo displayInfo = getDisplayInfo(i2);
        if (displayInfo == null) {
            return null;
        }
        return new Display(this, i2, displayInfo, displayAdjustments);
    }

    public int[] getDisplayIds() {
        int[] displayIds;
        try {
            synchronized (this.mLock) {
                displayIds = this.mDm.getDisplayIds();
                registerCallbackIfNeededLocked();
            }
            return displayIds;
        } catch (RemoteException e2) {
            Log.e(TAG, "Could not get display ids from display manager.", e2);
            return new int[]{0};
        }
    }

    public DisplayInfo getDisplayInfo(int i2) {
        try {
            synchronized (this.mLock) {
                DisplayInfo displayInfo = this.mDm.getDisplayInfo(i2);
                if (displayInfo == null) {
                    return null;
                }
                registerCallbackIfNeededLocked();
                return displayInfo;
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Could not get display information from display manager.", e2);
            return null;
        }
    }

    public Display getRealDisplay(int i2) {
        return getCompatibleDisplay(i2, DisplayAdjustments.DEFAULT_DISPLAY_ADJUSTMENTS);
    }

    public WifiDisplayStatus getWifiDisplayStatus() {
        try {
            return this.mDm.getWifiDisplayStatus();
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to get Wifi display status.", e2);
            return new WifiDisplayStatus();
        }
    }

    public void pauseWifiDisplay() {
        try {
            this.mDm.pauseWifiDisplay();
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to pause Wifi display.", e2);
        }
    }

    public void registerDisplayListener(DisplayManager.DisplayListener displayListener, Handler handler) {
        if (displayListener == null) {
            throw new IllegalArgumentException("listener must not be null");
        }
        synchronized (this.mLock) {
            if (findDisplayListenerLocked(displayListener) < 0) {
                this.mDisplayListeners.add(new DisplayListenerDelegate(displayListener, handler));
                registerCallbackIfNeededLocked();
            }
        }
    }

    public void releaseVirtualDisplay(IBinder iBinder) {
        try {
            this.mDm.releaseVirtualDisplay(iBinder);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed to release virtual display.", e2);
        }
    }

    public void renameWifiDisplay(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("deviceAddress must not be null");
        }
        try {
            this.mDm.renameWifiDisplay(str, str2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to rename Wifi display " + str + " with alias " + str2 + ".", e2);
        }
    }

    public void resumeWifiDisplay() {
        try {
            this.mDm.resumeWifiDisplay();
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to resume Wifi display.", e2);
        }
    }

    public void startWifiDisplayScan() {
        synchronized (this.mLock) {
            int i2 = this.mWifiDisplayScanNestCount;
            this.mWifiDisplayScanNestCount = i2 + 1;
            if (i2 == 0) {
                registerCallbackIfNeededLocked();
                try {
                    this.mDm.startWifiDisplayScan();
                } catch (RemoteException e2) {
                    Log.e(TAG, "Failed to scan for Wifi displays.", e2);
                }
            }
        }
    }

    public void stopWifiDisplayScan() {
        synchronized (this.mLock) {
            int i2 = this.mWifiDisplayScanNestCount - 1;
            this.mWifiDisplayScanNestCount = i2;
            if (i2 == 0) {
                try {
                    this.mDm.stopWifiDisplayScan();
                } catch (RemoteException e2) {
                    Log.e(TAG, "Failed to scan for Wifi displays.", e2);
                }
            } else if (i2 < 0) {
                Log.wtf(TAG, "Wifi display scan nest count became negative: " + this.mWifiDisplayScanNestCount);
                this.mWifiDisplayScanNestCount = 0;
            }
        }
    }

    public void unregisterDisplayListener(DisplayManager.DisplayListener displayListener) {
        if (displayListener == null) {
            throw new IllegalArgumentException("listener must not be null");
        }
        synchronized (this.mLock) {
            int iFindDisplayListenerLocked = findDisplayListenerLocked(displayListener);
            if (iFindDisplayListenerLocked >= 0) {
                this.mDisplayListeners.get(iFindDisplayListenerLocked).clearEvents();
                this.mDisplayListeners.remove(iFindDisplayListenerLocked);
            }
        }
    }

    public Display getRealDisplay(int i2, IBinder iBinder) {
        return getCompatibleDisplay(i2, new DisplayAdjustments(iBinder));
    }
}
