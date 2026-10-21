package android.hardware.display;

import android.content.Context;
import android.os.Handler;
import android.util.SparseArray;
import android.view.Display;
import android.view.Surface;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class DisplayManager {
    public static final String ACTION_WIFI_DISPLAY_STATUS_CHANGED = "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED";
    private static final boolean DEBUG = false;
    public static final String DISPLAY_CATEGORY_PRESENTATION = "android.hardware.display.category.PRESENTATION";
    public static final String EXTRA_WIFI_DISPLAY_STATUS = "android.hardware.display.extra.WIFI_DISPLAY_STATUS";
    private static final String TAG = "DisplayManager";
    public static final int VIRTUAL_DISPLAY_FLAG_PRESENTATION = 2;
    public static final int VIRTUAL_DISPLAY_FLAG_PUBLIC = 1;
    public static final int VIRTUAL_DISPLAY_FLAG_SECURE = 4;
    private final Context mContext;
    private final Object mLock = new Object();
    private final SparseArray<Display> mDisplays = new SparseArray<>();
    private final ArrayList<Display> mTempDisplays = new ArrayList<>();
    private final DisplayManagerGlobal mGlobal = DisplayManagerGlobal.getInstance();

    public interface DisplayListener {
        void onDisplayAdded(int i2);

        void onDisplayChanged(int i2);

        void onDisplayRemoved(int i2);
    }

    public DisplayManager(Context context) {
        this.mContext = context;
    }

    private void addAllDisplaysLocked(ArrayList<Display> arrayList, int[] iArr) {
        for (int i2 : iArr) {
            Display orCreateDisplayLocked = getOrCreateDisplayLocked(i2, true);
            if (orCreateDisplayLocked != null) {
                arrayList.add(orCreateDisplayLocked);
            }
        }
    }

    private void addPresentationDisplaysLocked(ArrayList<Display> arrayList, int[] iArr, int i2) {
        for (int i3 : iArr) {
            Display orCreateDisplayLocked = getOrCreateDisplayLocked(i3, true);
            if (orCreateDisplayLocked != null && (orCreateDisplayLocked.getFlags() & 8) != 0 && orCreateDisplayLocked.getType() == i2) {
                arrayList.add(orCreateDisplayLocked);
            }
        }
    }

    private Display getOrCreateDisplayLocked(int i2, boolean z2) {
        Display display = this.mDisplays.get(i2);
        if (display != null) {
            if (z2 || display.isValid()) {
                return display;
            }
            return null;
        }
        Display compatibleDisplay = this.mGlobal.getCompatibleDisplay(i2, this.mContext.getDisplayAdjustments(i2));
        if (compatibleDisplay == null) {
            return compatibleDisplay;
        }
        this.mDisplays.put(i2, compatibleDisplay);
        return compatibleDisplay;
    }

    public void connectWifiDisplay(String str) {
        this.mGlobal.connectWifiDisplay(str);
    }

    public VirtualDisplay createVirtualDisplay(String str, int i2, int i3, int i4, Surface surface, int i5) {
        return this.mGlobal.createVirtualDisplay(this.mContext, str, i2, i3, i4, surface, i5);
    }

    public void disconnectWifiDisplay() {
        this.mGlobal.disconnectWifiDisplay();
    }

    public void forgetWifiDisplay(String str) {
        this.mGlobal.forgetWifiDisplay(str);
    }

    public Display getDisplay(int i2) {
        Display orCreateDisplayLocked;
        synchronized (this.mLock) {
            orCreateDisplayLocked = getOrCreateDisplayLocked(i2, false);
        }
        return orCreateDisplayLocked;
    }

    public Display[] getDisplays() {
        return getDisplays(null);
    }

    public WifiDisplayStatus getWifiDisplayStatus() {
        return this.mGlobal.getWifiDisplayStatus();
    }

    public void pauseWifiDisplay() {
        this.mGlobal.pauseWifiDisplay();
    }

    public void registerDisplayListener(DisplayListener displayListener, Handler handler) {
        this.mGlobal.registerDisplayListener(displayListener, handler);
    }

    public void renameWifiDisplay(String str, String str2) {
        this.mGlobal.renameWifiDisplay(str, str2);
    }

    public void resumeWifiDisplay() {
        this.mGlobal.resumeWifiDisplay();
    }

    public void startWifiDisplayScan() {
        this.mGlobal.startWifiDisplayScan();
    }

    public void stopWifiDisplayScan() {
        this.mGlobal.stopWifiDisplayScan();
    }

    public void unregisterDisplayListener(DisplayListener displayListener) {
        this.mGlobal.unregisterDisplayListener(displayListener);
    }

    public Display[] getDisplays(String str) {
        Display[] displayArr;
        int[] displayIds = this.mGlobal.getDisplayIds();
        synchronized (this.mLock) {
            try {
                if (str == null) {
                    addAllDisplaysLocked(this.mTempDisplays, displayIds);
                } else if (str.equals(DISPLAY_CATEGORY_PRESENTATION)) {
                    addPresentationDisplaysLocked(this.mTempDisplays, displayIds, 3);
                    addPresentationDisplaysLocked(this.mTempDisplays, displayIds, 2);
                    addPresentationDisplaysLocked(this.mTempDisplays, displayIds, 4);
                    addPresentationDisplaysLocked(this.mTempDisplays, displayIds, 5);
                }
                ArrayList<Display> arrayList = this.mTempDisplays;
                displayArr = (Display[]) arrayList.toArray(new Display[arrayList.size()]);
                this.mTempDisplays.clear();
            } catch (Throwable th) {
                this.mTempDisplays.clear();
                throw th;
            }
        }
        return displayArr;
    }
}
