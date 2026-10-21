package android.view.accessibility;

import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.SparseLongArray;
import java.util.HashSet;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public class AccessibilityNodeInfoCache {
    private static final boolean CHECK_INTEGRITY_IF_DEBUGGABLE_BUILD = true;
    private static final boolean DEBUG = false;
    private static final boolean ENABLED = true;
    private static final String LOG_TAG = "AccessibilityNodeInfoCache";
    private int mWindowId;
    private final Object mLock = new Object();
    private final LongSparseArray<AccessibilityNodeInfo> mCacheImpl = new LongSparseArray<>();

    private void checkIntegrity() {
        synchronized (this.mLock) {
            if (this.mCacheImpl.size() <= 0) {
                return;
            }
            AccessibilityNodeInfo accessibilityNodeInfoValueAt = this.mCacheImpl.valueAt(0);
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoValueAt;
            while (accessibilityNodeInfoValueAt != null) {
                accessibilityNodeInfo = accessibilityNodeInfoValueAt;
                accessibilityNodeInfoValueAt = this.mCacheImpl.get(accessibilityNodeInfoValueAt.getParentNodeId());
            }
            int windowId = accessibilityNodeInfo.getWindowId();
            HashSet hashSet = new HashSet();
            LinkedList linkedList = new LinkedList();
            linkedList.add(accessibilityNodeInfo);
            AccessibilityNodeInfo accessibilityNodeInfo2 = null;
            AccessibilityNodeInfo accessibilityNodeInfo3 = null;
            while (!linkedList.isEmpty()) {
                AccessibilityNodeInfo accessibilityNodeInfo4 = (AccessibilityNodeInfo) linkedList.poll();
                if (!hashSet.add(accessibilityNodeInfo4)) {
                    Log.e(LOG_TAG, "Duplicate node: " + accessibilityNodeInfo4);
                    return;
                }
                if (accessibilityNodeInfo4.isAccessibilityFocused()) {
                    if (accessibilityNodeInfo2 != null) {
                        Log.e(LOG_TAG, "Duplicate accessibility focus:" + accessibilityNodeInfo4);
                    } else {
                        accessibilityNodeInfo2 = accessibilityNodeInfo4;
                    }
                }
                if (accessibilityNodeInfo4.isFocused()) {
                    if (accessibilityNodeInfo3 != null) {
                        Log.e(LOG_TAG, "Duplicate input focus: " + accessibilityNodeInfo4);
                    } else {
                        accessibilityNodeInfo3 = accessibilityNodeInfo4;
                    }
                }
                SparseLongArray childNodeIds = accessibilityNodeInfo4.getChildNodeIds();
                int size = childNodeIds.size();
                for (int i2 = 0; i2 < size; i2++) {
                    AccessibilityNodeInfo accessibilityNodeInfo5 = this.mCacheImpl.get(childNodeIds.valueAt(i2));
                    if (accessibilityNodeInfo5 != null) {
                        linkedList.add(accessibilityNodeInfo5);
                    }
                }
            }
            for (int i3 = 0; i3 < this.mCacheImpl.size(); i3++) {
                AccessibilityNodeInfo accessibilityNodeInfoValueAt2 = this.mCacheImpl.valueAt(i3);
                if (!hashSet.contains(accessibilityNodeInfoValueAt2)) {
                    if (accessibilityNodeInfoValueAt2.getWindowId() == windowId) {
                        Log.e(LOG_TAG, "Disconneced node: " + accessibilityNodeInfoValueAt2);
                    } else {
                        Log.e(LOG_TAG, "Node from: " + accessibilityNodeInfoValueAt2.getWindowId() + " not from:" + windowId + " " + accessibilityNodeInfoValueAt2);
                    }
                }
            }
        }
    }

    private void clearSubTreeLocked(long j2) {
        clearSubTreeRecursiveLocked(j2);
    }

    private void clearSubTreeRecursiveLocked(long j2) {
        AccessibilityNodeInfo accessibilityNodeInfo = this.mCacheImpl.get(j2);
        if (accessibilityNodeInfo == null) {
            return;
        }
        this.mCacheImpl.remove(j2);
        SparseLongArray childNodeIds = accessibilityNodeInfo.getChildNodeIds();
        int size = childNodeIds.size();
        for (int i2 = 0; i2 < size; i2++) {
            clearSubTreeRecursiveLocked(childNodeIds.valueAt(i2));
        }
    }

    private void refreshCachedNode(long j2) {
        synchronized (this.mLock) {
            AccessibilityNodeInfo accessibilityNodeInfo = this.mCacheImpl.get(j2);
            if (accessibilityNodeInfo == null) {
                return;
            }
            if (accessibilityNodeInfo.refresh(true)) {
                return;
            }
            clearSubTreeLocked(j2);
        }
    }

    public void add(AccessibilityNodeInfo accessibilityNodeInfo) {
        synchronized (this.mLock) {
            long sourceNodeId = accessibilityNodeInfo.getSourceNodeId();
            AccessibilityNodeInfo accessibilityNodeInfo2 = this.mCacheImpl.get(sourceNodeId);
            if (accessibilityNodeInfo2 != null) {
                SparseLongArray childNodeIds = accessibilityNodeInfo2.getChildNodeIds();
                SparseLongArray childNodeIds2 = accessibilityNodeInfo.getChildNodeIds();
                int size = childNodeIds.size();
                for (int i2 = 0; i2 < size; i2++) {
                    long jValueAt = childNodeIds.valueAt(i2);
                    if (childNodeIds2.indexOfValue(jValueAt) < 0) {
                        clearSubTreeLocked(jValueAt);
                    }
                }
                long parentNodeId = accessibilityNodeInfo2.getParentNodeId();
                if (accessibilityNodeInfo.getParentNodeId() != parentNodeId) {
                    clearSubTreeLocked(parentNodeId);
                }
            }
            this.mCacheImpl.put(sourceNodeId, AccessibilityNodeInfo.obtain(accessibilityNodeInfo));
        }
    }

    public void clear() {
        synchronized (this.mLock) {
            int size = this.mCacheImpl.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mCacheImpl.valueAt(i2).recycle();
            }
            this.mCacheImpl.clear();
        }
    }

    public AccessibilityNodeInfo get(long j2) {
        AccessibilityNodeInfo accessibilityNodeInfoObtain;
        synchronized (this.mLock) {
            accessibilityNodeInfoObtain = this.mCacheImpl.get(j2);
            if (accessibilityNodeInfoObtain != null) {
                accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain(accessibilityNodeInfoObtain);
            }
        }
        return accessibilityNodeInfoObtain;
    }

    public void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        switch (accessibilityEvent.getEventType()) {
            case 4:
            case 8:
            case 16:
            case 8192:
            case 32768:
            case 65536:
                refreshCachedNode(accessibilityEvent.getSourceNodeId());
                break;
            case 32:
            case 128:
            case 256:
            case 1024:
                int windowId = accessibilityEvent.getWindowId();
                if (this.mWindowId != windowId) {
                    this.mWindowId = windowId;
                    clear();
                }
                break;
            case 2048:
                synchronized (this.mLock) {
                    long sourceNodeId = accessibilityEvent.getSourceNodeId();
                    if ((accessibilityEvent.getContentChangeTypes() & 1) != 0) {
                        clearSubTreeLocked(sourceNodeId);
                    } else {
                        refreshCachedNode(sourceNodeId);
                    }
                    break;
                }
                break;
            case 4096:
                synchronized (this.mLock) {
                    clearSubTreeLocked(accessibilityEvent.getSourceNodeId());
                    break;
                }
                break;
        }
        if (Build.IS_DEBUGGABLE) {
            checkIntegrity();
        }
    }
}
