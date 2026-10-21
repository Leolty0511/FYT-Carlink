package android.view.accessibility;

import android.os.Build;
import android.util.ArraySet;
import android.util.Log;
import android.util.LongArray;
import android.util.LongSparseArray;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class AccessibilityCache {
    public static final int CACHE_CRITICAL_EVENTS_MASK = 4307005;
    private static final boolean CHECK_INTEGRITY = Build.IS_ENG;
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = "AccessibilityCache";
    private final AccessibilityNodeRefresher mAccessibilityNodeRefresher;
    private boolean mIsAllWindowsCached;
    private final Object mLock = new Object();
    private long mAccessibilityFocus = 2147483647L;
    private long mInputFocus = 2147483647L;
    private final SparseArray<AccessibilityWindowInfo> mWindowCache = new SparseArray<>();
    private final SparseArray<LongSparseArray<AccessibilityNodeInfo>> mNodeCache = new SparseArray<>();
    private final SparseArray<AccessibilityWindowInfo> mTempWindowArray = new SparseArray<>();

    public static class AccessibilityNodeRefresher {
        public boolean refreshNode(AccessibilityNodeInfo accessibilityNodeInfo, boolean z2) {
            return accessibilityNodeInfo.refresh(null, z2);
        }
    }

    public AccessibilityCache(AccessibilityNodeRefresher accessibilityNodeRefresher) {
        this.mAccessibilityNodeRefresher = accessibilityNodeRefresher;
    }

    private void clearNodesForWindowLocked(int i2) {
        LongSparseArray<AccessibilityNodeInfo> longSparseArray = this.mNodeCache.get(i2);
        if (longSparseArray == null) {
            return;
        }
        for (int size = longSparseArray.size() - 1; size >= 0; size--) {
            AccessibilityNodeInfo accessibilityNodeInfoValueAt = longSparseArray.valueAt(size);
            longSparseArray.removeAt(size);
            accessibilityNodeInfoValueAt.recycle();
        }
        this.mNodeCache.remove(i2);
    }

    private void clearSubTreeLocked(int i2, long j2) {
        LongSparseArray<AccessibilityNodeInfo> longSparseArray = this.mNodeCache.get(i2);
        if (longSparseArray != null) {
            clearSubTreeRecursiveLocked(longSparseArray, j2);
        }
    }

    private void clearSubTreeRecursiveLocked(LongSparseArray<AccessibilityNodeInfo> longSparseArray, long j2) {
        AccessibilityNodeInfo accessibilityNodeInfo = longSparseArray.get(j2);
        if (accessibilityNodeInfo == null) {
            return;
        }
        longSparseArray.remove(j2);
        int childCount = accessibilityNodeInfo.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            clearSubTreeRecursiveLocked(longSparseArray, accessibilityNodeInfo.getChildId(i2));
        }
        accessibilityNodeInfo.recycle();
    }

    private void clearWindowCache() {
        for (int size = this.mWindowCache.size() - 1; size >= 0; size--) {
            this.mWindowCache.valueAt(size).recycle();
            this.mWindowCache.removeAt(size);
        }
        this.mIsAllWindowsCached = false;
    }

    private void refreshCachedNodeLocked(int i2, long j2) {
        AccessibilityNodeInfo accessibilityNodeInfo;
        LongSparseArray<AccessibilityNodeInfo> longSparseArray = this.mNodeCache.get(i2);
        if (longSparseArray == null || (accessibilityNodeInfo = longSparseArray.get(j2)) == null || this.mAccessibilityNodeRefresher.refreshNode(accessibilityNodeInfo, true)) {
            return;
        }
        clearSubTreeLocked(i2, j2);
    }

    public void add(AccessibilityNodeInfo accessibilityNodeInfo) {
        synchronized (this.mLock) {
            int windowId = accessibilityNodeInfo.getWindowId();
            LongSparseArray<AccessibilityNodeInfo> longSparseArray = this.mNodeCache.get(windowId);
            if (longSparseArray == null) {
                longSparseArray = new LongSparseArray<>();
                this.mNodeCache.put(windowId, longSparseArray);
            }
            long sourceNodeId = accessibilityNodeInfo.getSourceNodeId();
            AccessibilityNodeInfo accessibilityNodeInfo2 = longSparseArray.get(sourceNodeId);
            if (accessibilityNodeInfo2 != null) {
                LongArray childNodeIds = accessibilityNodeInfo.getChildNodeIds();
                int childCount = accessibilityNodeInfo2.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    if (longSparseArray.get(sourceNodeId) == null) {
                        clearNodesForWindowLocked(windowId);
                        return;
                    }
                    long childId = accessibilityNodeInfo2.getChildId(i2);
                    if (childNodeIds == null || childNodeIds.indexOf(childId) < 0) {
                        clearSubTreeLocked(windowId, childId);
                    }
                }
                long parentNodeId = accessibilityNodeInfo2.getParentNodeId();
                if (accessibilityNodeInfo.getParentNodeId() != parentNodeId) {
                    clearSubTreeLocked(windowId, parentNodeId);
                }
            }
            AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain(accessibilityNodeInfo);
            longSparseArray.put(sourceNodeId, accessibilityNodeInfoObtain);
            if (accessibilityNodeInfoObtain.isAccessibilityFocused()) {
                this.mAccessibilityFocus = sourceNodeId;
            }
            if (accessibilityNodeInfoObtain.isFocused()) {
                this.mInputFocus = sourceNodeId;
            }
        }
    }

    public void addWindow(AccessibilityWindowInfo accessibilityWindowInfo) {
        synchronized (this.mLock) {
            int id = accessibilityWindowInfo.getId();
            AccessibilityWindowInfo accessibilityWindowInfo2 = this.mWindowCache.get(id);
            if (accessibilityWindowInfo2 != null) {
                accessibilityWindowInfo2.recycle();
            }
            this.mWindowCache.put(id, AccessibilityWindowInfo.obtain(accessibilityWindowInfo));
        }
    }

    public void checkIntegrity() {
        AccessibilityNodeInfo accessibilityNodeInfo;
        int i2;
        boolean z2;
        synchronized (this.mLock) {
            if (this.mWindowCache.size() > 0 || this.mNodeCache.size() != 0) {
                int size = this.mWindowCache.size();
                AccessibilityNodeInfo accessibilityNodeInfo2 = null;
                AccessibilityWindowInfo accessibilityWindowInfo = null;
                AccessibilityWindowInfo accessibilityWindowInfo2 = null;
                for (int i3 = 0; i3 < size; i3++) {
                    AccessibilityWindowInfo accessibilityWindowInfoValueAt = this.mWindowCache.valueAt(i3);
                    if (accessibilityWindowInfoValueAt.isActive()) {
                        if (accessibilityWindowInfo != null) {
                            Log.e(LOG_TAG, "Duplicate active window:" + accessibilityWindowInfoValueAt);
                        } else {
                            accessibilityWindowInfo = accessibilityWindowInfoValueAt;
                        }
                    }
                    if (accessibilityWindowInfoValueAt.isFocused()) {
                        if (accessibilityWindowInfo2 != null) {
                            Log.e(LOG_TAG, "Duplicate focused window:" + accessibilityWindowInfoValueAt);
                        } else {
                            accessibilityWindowInfo2 = accessibilityWindowInfoValueAt;
                        }
                    }
                }
                int size2 = this.mNodeCache.size();
                AccessibilityNodeInfo accessibilityNodeInfo3 = null;
                int i4 = 0;
                while (i4 < size2) {
                    LongSparseArray<AccessibilityNodeInfo> longSparseArrayValueAt = this.mNodeCache.valueAt(i4);
                    if (longSparseArrayValueAt.size() > 0) {
                        ArraySet arraySet = new ArraySet();
                        int iKeyAt = this.mNodeCache.keyAt(i4);
                        int size3 = longSparseArrayValueAt.size();
                        int i5 = 0;
                        while (i5 < size3) {
                            AccessibilityNodeInfo accessibilityNodeInfoValueAt = longSparseArrayValueAt.valueAt(i5);
                            if (arraySet.add(accessibilityNodeInfoValueAt)) {
                                if (accessibilityNodeInfoValueAt.isAccessibilityFocused()) {
                                    if (accessibilityNodeInfo2 != null) {
                                        Log.e(LOG_TAG, "Duplicate accessibility focus:" + accessibilityNodeInfoValueAt + " in window:" + iKeyAt);
                                    } else {
                                        accessibilityNodeInfo2 = accessibilityNodeInfoValueAt;
                                    }
                                }
                                if (accessibilityNodeInfoValueAt.isFocused()) {
                                    if (accessibilityNodeInfo3 != null) {
                                        Log.e(LOG_TAG, "Duplicate input focus: " + accessibilityNodeInfoValueAt + " in window:" + iKeyAt);
                                    } else {
                                        accessibilityNodeInfo3 = accessibilityNodeInfoValueAt;
                                    }
                                }
                                AccessibilityNodeInfo accessibilityNodeInfo4 = longSparseArrayValueAt.get(accessibilityNodeInfoValueAt.getParentNodeId());
                                if (accessibilityNodeInfo4 != null) {
                                    int childCount = accessibilityNodeInfo4.getChildCount();
                                    int i6 = 0;
                                    while (true) {
                                        if (i6 >= childCount) {
                                            accessibilityNodeInfo = accessibilityNodeInfo3;
                                            z2 = false;
                                            break;
                                        }
                                        accessibilityNodeInfo = accessibilityNodeInfo3;
                                        if (longSparseArrayValueAt.get(accessibilityNodeInfo4.getChildId(i6)) == accessibilityNodeInfoValueAt) {
                                            z2 = true;
                                            break;
                                        } else {
                                            i6++;
                                            accessibilityNodeInfo3 = accessibilityNodeInfo;
                                        }
                                    }
                                    if (!z2) {
                                        Log.e(LOG_TAG, "Invalid parent-child relation between parent: " + accessibilityNodeInfo4 + " and child: " + accessibilityNodeInfoValueAt);
                                    }
                                } else {
                                    accessibilityNodeInfo = accessibilityNodeInfo3;
                                }
                                int childCount2 = accessibilityNodeInfoValueAt.getChildCount();
                                int i7 = 0;
                                while (i7 < childCount2) {
                                    AccessibilityNodeInfo accessibilityNodeInfo5 = longSparseArrayValueAt.get(accessibilityNodeInfoValueAt.getChildId(i7));
                                    if (accessibilityNodeInfo5 != null && longSparseArrayValueAt.get(accessibilityNodeInfo5.getParentNodeId()) != accessibilityNodeInfoValueAt) {
                                        Log.e(LOG_TAG, "Invalid child-parent relation between child: " + accessibilityNodeInfoValueAt + " and parent: " + accessibilityNodeInfo4);
                                    }
                                    i7++;
                                    size2 = size2;
                                }
                                i2 = size2;
                                accessibilityNodeInfo3 = accessibilityNodeInfo;
                            } else {
                                Log.e(LOG_TAG, "Duplicate node: " + accessibilityNodeInfoValueAt + " in window:" + iKeyAt);
                                i2 = size2;
                            }
                            i5++;
                            size2 = i2;
                        }
                    }
                    i4++;
                    size2 = size2;
                }
            }
        }
    }

    public void clear() {
        synchronized (this.mLock) {
            clearWindowCache();
            int size = this.mNodeCache.size();
            for (int i2 = 0; i2 < size; i2++) {
                clearNodesForWindowLocked(this.mNodeCache.keyAt(i2));
            }
            this.mAccessibilityFocus = 2147483647L;
            this.mInputFocus = 2147483647L;
        }
    }

    public AccessibilityNodeInfo getNode(int i2, long j2) {
        synchronized (this.mLock) {
            LongSparseArray<AccessibilityNodeInfo> longSparseArray = this.mNodeCache.get(i2);
            if (longSparseArray == null) {
                return null;
            }
            AccessibilityNodeInfo accessibilityNodeInfoObtain = longSparseArray.get(j2);
            if (accessibilityNodeInfoObtain != null) {
                accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain(accessibilityNodeInfoObtain);
            }
            return accessibilityNodeInfoObtain;
        }
    }

    public AccessibilityWindowInfo getWindow(int i2) {
        synchronized (this.mLock) {
            AccessibilityWindowInfo accessibilityWindowInfo = this.mWindowCache.get(i2);
            if (accessibilityWindowInfo == null) {
                return null;
            }
            return AccessibilityWindowInfo.obtain(accessibilityWindowInfo);
        }
    }

    public List<AccessibilityWindowInfo> getWindows() {
        synchronized (this.mLock) {
            if (!this.mIsAllWindowsCached) {
                return null;
            }
            int size = this.mWindowCache.size();
            if (size <= 0) {
                return null;
            }
            SparseArray<AccessibilityWindowInfo> sparseArray = this.mTempWindowArray;
            sparseArray.clear();
            for (int i2 = 0; i2 < size; i2++) {
                AccessibilityWindowInfo accessibilityWindowInfoValueAt = this.mWindowCache.valueAt(i2);
                sparseArray.put(accessibilityWindowInfoValueAt.getLayer(), accessibilityWindowInfoValueAt);
            }
            int size2 = sparseArray.size();
            ArrayList arrayList = new ArrayList(size2);
            for (int i3 = size2 - 1; i3 >= 0; i3--) {
                arrayList.add(AccessibilityWindowInfo.obtain(sparseArray.valueAt(i3)));
                sparseArray.removeAt(i3);
            }
            return arrayList;
        }
    }

    public void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        synchronized (this.mLock) {
            switch (accessibilityEvent.getEventType()) {
                case 1:
                case 4:
                case 16:
                case 8192:
                    refreshCachedNodeLocked(accessibilityEvent.getWindowId(), accessibilityEvent.getSourceNodeId());
                    break;
                case 8:
                    if (this.mInputFocus != 2147483647L) {
                        refreshCachedNodeLocked(accessibilityEvent.getWindowId(), this.mInputFocus);
                    }
                    this.mInputFocus = accessibilityEvent.getSourceNodeId();
                    refreshCachedNodeLocked(accessibilityEvent.getWindowId(), this.mInputFocus);
                    break;
                case 32:
                case 4194304:
                    clear();
                    break;
                case 2048:
                    synchronized (this.mLock) {
                        int windowId = accessibilityEvent.getWindowId();
                        long sourceNodeId = accessibilityEvent.getSourceNodeId();
                        if ((accessibilityEvent.getContentChangeTypes() & 1) != 0) {
                            clearSubTreeLocked(windowId, sourceNodeId);
                        } else {
                            refreshCachedNodeLocked(windowId, sourceNodeId);
                        }
                        break;
                    }
                    break;
                case 4096:
                    clearSubTreeLocked(accessibilityEvent.getWindowId(), accessibilityEvent.getSourceNodeId());
                    break;
                case 32768:
                    if (this.mAccessibilityFocus != 2147483647L) {
                        refreshCachedNodeLocked(accessibilityEvent.getWindowId(), this.mAccessibilityFocus);
                    }
                    this.mAccessibilityFocus = accessibilityEvent.getSourceNodeId();
                    refreshCachedNodeLocked(accessibilityEvent.getWindowId(), this.mAccessibilityFocus);
                    break;
                case 65536:
                    if (this.mAccessibilityFocus == accessibilityEvent.getSourceNodeId()) {
                        refreshCachedNodeLocked(accessibilityEvent.getWindowId(), this.mAccessibilityFocus);
                        this.mAccessibilityFocus = 2147483647L;
                    }
                    break;
                default:
                    break;
            }
        }
        if (CHECK_INTEGRITY) {
            checkIntegrity();
        }
    }

    public void setWindows(List<AccessibilityWindowInfo> list) {
        synchronized (this.mLock) {
            clearWindowCache();
            if (list == null) {
                return;
            }
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                addWindow(list.get(i2));
            }
            this.mIsAllWindowsCached = true;
        }
    }
}
