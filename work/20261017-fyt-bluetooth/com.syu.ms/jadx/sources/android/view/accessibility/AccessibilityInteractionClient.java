package android.view.accessibility;

import android.accessibilityservice.IAccessibilityServiceConnection;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.util.SparseLongArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class AccessibilityInteractionClient extends IAccessibilityInteractionConnectionCallback.Stub {
    private static final boolean CHECK_INTEGRITY = true;
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = "AccessibilityInteractionClient";
    public static final int NO_ID = -1;
    private static final long TIMEOUT_INTERACTION_MILLIS = 5000;
    private AccessibilityNodeInfo mFindAccessibilityNodeInfoResult;
    private List<AccessibilityNodeInfo> mFindAccessibilityNodeInfosResult;
    private boolean mPerformAccessibilityActionResult;
    private Message mSameThreadMessage;
    private static final Object sStaticLock = new Object();
    private static final LongSparseArray<AccessibilityInteractionClient> sClients = new LongSparseArray<>();
    private static final SparseArray<IAccessibilityServiceConnection> sConnectionCache = new SparseArray<>();
    private static final AccessibilityNodeInfoCache sAccessibilityNodeInfoCache = new AccessibilityNodeInfoCache();
    private final AtomicInteger mInteractionIdCounter = new AtomicInteger();
    private final Object mInstanceLock = new Object();
    private volatile int mInteractionId = -1;

    private AccessibilityInteractionClient() {
    }

    private void checkFindAccessibilityNodeInfoResultIntegrity(List<AccessibilityNodeInfo> list) {
        if (list.size() == 0) {
            return;
        }
        AccessibilityNodeInfo accessibilityNodeInfo = list.get(0);
        int size = list.size();
        for (int i2 = 1; i2 < size; i2++) {
            for (int i3 = i2; i3 < size; i3++) {
                AccessibilityNodeInfo accessibilityNodeInfo2 = list.get(i3);
                if (accessibilityNodeInfo.getParentNodeId() == accessibilityNodeInfo2.getSourceNodeId()) {
                    accessibilityNodeInfo = accessibilityNodeInfo2;
                    break;
                }
            }
        }
        if (accessibilityNodeInfo == null) {
            Log.e(LOG_TAG, "No root.");
        }
        HashSet hashSet = new HashSet();
        LinkedList linkedList = new LinkedList();
        linkedList.add(accessibilityNodeInfo);
        while (!linkedList.isEmpty()) {
            AccessibilityNodeInfo accessibilityNodeInfo3 = (AccessibilityNodeInfo) linkedList.poll();
            if (!hashSet.add(accessibilityNodeInfo3)) {
                Log.e(LOG_TAG, "Duplicate node.");
                return;
            }
            SparseLongArray childNodeIds = accessibilityNodeInfo3.getChildNodeIds();
            int size2 = childNodeIds.size();
            for (int i4 = 0; i4 < size2; i4++) {
                long jValueAt = childNodeIds.valueAt(i4);
                for (int i5 = 0; i5 < size; i5++) {
                    AccessibilityNodeInfo accessibilityNodeInfo4 = list.get(i5);
                    if (accessibilityNodeInfo4.getSourceNodeId() == jValueAt) {
                        linkedList.add(accessibilityNodeInfo4);
                    }
                }
            }
        }
        int size3 = list.size() - hashSet.size();
        if (size3 > 0) {
            Log.e(LOG_TAG, size3 + " Disconnected nodes.");
        }
    }

    private void clearResultLocked() {
        this.mInteractionId = -1;
        this.mFindAccessibilityNodeInfoResult = null;
        this.mFindAccessibilityNodeInfosResult = null;
        this.mPerformAccessibilityActionResult = false;
    }

    private void finalizeAndCacheAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo, int i2) {
        if (accessibilityNodeInfo != null) {
            accessibilityNodeInfo.setConnectionId(i2);
            accessibilityNodeInfo.setSealed(true);
            sAccessibilityNodeInfoCache.add(accessibilityNodeInfo);
        }
    }

    private void finalizeAndCacheAccessibilityNodeInfos(List<AccessibilityNodeInfo> list, int i2) {
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                finalizeAndCacheAccessibilityNodeInfo(list.get(i3), i2);
            }
        }
    }

    private AccessibilityNodeInfo getFindAccessibilityNodeInfoResultAndClear(int i2) {
        AccessibilityNodeInfo accessibilityNodeInfo;
        synchronized (this.mInstanceLock) {
            accessibilityNodeInfo = waitForResultTimedLocked(i2) ? this.mFindAccessibilityNodeInfoResult : null;
            clearResultLocked();
        }
        return accessibilityNodeInfo;
    }

    private List<AccessibilityNodeInfo> getFindAccessibilityNodeInfosResultAndClear(int i2) {
        List<AccessibilityNodeInfo> listEmptyList;
        synchronized (this.mInstanceLock) {
            listEmptyList = waitForResultTimedLocked(i2) ? this.mFindAccessibilityNodeInfosResult : Collections.emptyList();
            clearResultLocked();
            if (Build.IS_DEBUGGABLE) {
                checkFindAccessibilityNodeInfoResultIntegrity(listEmptyList);
            }
        }
        return listEmptyList;
    }

    public static AccessibilityInteractionClient getInstance() {
        return getInstanceForThread(Thread.currentThread().getId());
    }

    public static AccessibilityInteractionClient getInstanceForThread(long j2) {
        AccessibilityInteractionClient accessibilityInteractionClient;
        synchronized (sStaticLock) {
            LongSparseArray<AccessibilityInteractionClient> longSparseArray = sClients;
            accessibilityInteractionClient = longSparseArray.get(j2);
            if (accessibilityInteractionClient == null) {
                accessibilityInteractionClient = new AccessibilityInteractionClient();
                longSparseArray.put(j2, accessibilityInteractionClient);
            }
        }
        return accessibilityInteractionClient;
    }

    private boolean getPerformAccessibilityActionResultAndClear(int i2) {
        boolean z2;
        synchronized (this.mInstanceLock) {
            z2 = waitForResultTimedLocked(i2) ? this.mPerformAccessibilityActionResult : false;
            clearResultLocked();
        }
        return z2;
    }

    private Message getSameProcessMessageAndClear() {
        Message message;
        synchronized (this.mInstanceLock) {
            message = this.mSameThreadMessage;
            this.mSameThreadMessage = null;
        }
        return message;
    }

    private boolean waitForResultTimedLocked(int i2) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        while (true) {
            try {
                Message sameProcessMessageAndClear = getSameProcessMessageAndClear();
                if (sameProcessMessageAndClear != null) {
                    sameProcessMessageAndClear.getTarget().handleMessage(sameProcessMessageAndClear);
                }
                if (this.mInteractionId == i2) {
                    return true;
                }
                if (this.mInteractionId > i2) {
                    return false;
                }
                long jUptimeMillis2 = 5000 - (SystemClock.uptimeMillis() - jUptimeMillis);
                if (jUptimeMillis2 <= 0) {
                    return false;
                }
                this.mInstanceLock.wait(jUptimeMillis2);
            } catch (InterruptedException unused) {
            }
        }
    }

    public void addConnection(int i2, IAccessibilityServiceConnection iAccessibilityServiceConnection) {
        SparseArray<IAccessibilityServiceConnection> sparseArray = sConnectionCache;
        synchronized (sparseArray) {
            sparseArray.put(i2, iAccessibilityServiceConnection);
        }
    }

    public void clearCache() {
        sAccessibilityNodeInfoCache.clear();
    }

    public AccessibilityNodeInfo findAccessibilityNodeInfoByAccessibilityId(int i2, int i3, long j2, boolean z2, int i4) {
        AccessibilityNodeInfo accessibilityNodeInfo;
        try {
            IAccessibilityServiceConnection connection = getConnection(i2);
            if (connection == null) {
                return null;
            }
            if (!z2 && (accessibilityNodeInfo = sAccessibilityNodeInfoCache.get(j2)) != null) {
                return accessibilityNodeInfo;
            }
            int andIncrement = this.mInteractionIdCounter.getAndIncrement();
            if (!connection.findAccessibilityNodeInfoByAccessibilityId(i3, j2, andIncrement, this, i4, Thread.currentThread().getId())) {
                return null;
            }
            List<AccessibilityNodeInfo> findAccessibilityNodeInfosResultAndClear = getFindAccessibilityNodeInfosResultAndClear(andIncrement);
            finalizeAndCacheAccessibilityNodeInfos(findAccessibilityNodeInfosResultAndClear, i2);
            if (findAccessibilityNodeInfosResultAndClear == null || findAccessibilityNodeInfosResultAndClear.isEmpty()) {
                return null;
            }
            return findAccessibilityNodeInfosResultAndClear.get(0);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(int i2, int i3, long j2, String str) {
        List<AccessibilityNodeInfo> findAccessibilityNodeInfosResultAndClear;
        try {
            IAccessibilityServiceConnection connection = getConnection(i2);
            if (connection != null) {
                int andIncrement = this.mInteractionIdCounter.getAndIncrement();
                if (connection.findAccessibilityNodeInfosByText(i3, j2, str, andIncrement, this, Thread.currentThread().getId()) && (findAccessibilityNodeInfosResultAndClear = getFindAccessibilityNodeInfosResultAndClear(andIncrement)) != null) {
                    finalizeAndCacheAccessibilityNodeInfos(findAccessibilityNodeInfosResultAndClear, i2);
                    return findAccessibilityNodeInfosResultAndClear;
                }
            }
        } catch (RemoteException unused) {
        }
        return Collections.emptyList();
    }

    public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByViewId(int i2, int i3, long j2, String str) {
        List<AccessibilityNodeInfo> findAccessibilityNodeInfosResultAndClear;
        try {
            IAccessibilityServiceConnection connection = getConnection(i2);
            if (connection != null) {
                int andIncrement = this.mInteractionIdCounter.getAndIncrement();
                if (connection.findAccessibilityNodeInfosByViewId(i3, j2, str, andIncrement, this, Thread.currentThread().getId()) && (findAccessibilityNodeInfosResultAndClear = getFindAccessibilityNodeInfosResultAndClear(andIncrement)) != null) {
                    finalizeAndCacheAccessibilityNodeInfos(findAccessibilityNodeInfosResultAndClear, i2);
                    return findAccessibilityNodeInfosResultAndClear;
                }
            }
        } catch (RemoteException unused) {
        }
        return Collections.emptyList();
    }

    public AccessibilityNodeInfo findFocus(int i2, int i3, long j2, int i4) {
        try {
            IAccessibilityServiceConnection connection = getConnection(i2);
            if (connection == null) {
                return null;
            }
            int andIncrement = this.mInteractionIdCounter.getAndIncrement();
            if (!connection.findFocus(i3, j2, i4, andIncrement, this, Thread.currentThread().getId())) {
                return null;
            }
            AccessibilityNodeInfo findAccessibilityNodeInfoResultAndClear = getFindAccessibilityNodeInfoResultAndClear(andIncrement);
            finalizeAndCacheAccessibilityNodeInfo(findAccessibilityNodeInfoResultAndClear, i2);
            return findAccessibilityNodeInfoResultAndClear;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public AccessibilityNodeInfo focusSearch(int i2, int i3, long j2, int i4) {
        try {
            IAccessibilityServiceConnection connection = getConnection(i2);
            if (connection == null) {
                return null;
            }
            int andIncrement = this.mInteractionIdCounter.getAndIncrement();
            if (!connection.focusSearch(i3, j2, i4, andIncrement, this, Thread.currentThread().getId())) {
                return null;
            }
            AccessibilityNodeInfo findAccessibilityNodeInfoResultAndClear = getFindAccessibilityNodeInfoResultAndClear(andIncrement);
            finalizeAndCacheAccessibilityNodeInfo(findAccessibilityNodeInfoResultAndClear, i2);
            return findAccessibilityNodeInfoResultAndClear;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public IAccessibilityServiceConnection getConnection(int i2) {
        IAccessibilityServiceConnection iAccessibilityServiceConnection;
        SparseArray<IAccessibilityServiceConnection> sparseArray = sConnectionCache;
        synchronized (sparseArray) {
            iAccessibilityServiceConnection = sparseArray.get(i2);
        }
        return iAccessibilityServiceConnection;
    }

    public AccessibilityNodeInfo getRootInActiveWindow(int i2) {
        return findAccessibilityNodeInfoByAccessibilityId(i2, -1, AccessibilityNodeInfo.ROOT_NODE_ID, false, 4);
    }

    public void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        sAccessibilityNodeInfoCache.onAccessibilityEvent(accessibilityEvent);
    }

    public boolean performAccessibilityAction(int i2, int i3, long j2, int i4, Bundle bundle) {
        try {
            IAccessibilityServiceConnection connection = getConnection(i2);
            if (connection == null) {
                return false;
            }
            int andIncrement = this.mInteractionIdCounter.getAndIncrement();
            if (connection.performAccessibilityAction(i3, j2, i4, bundle, andIncrement, this, Thread.currentThread().getId())) {
                return getPerformAccessibilityActionResultAndClear(andIncrement);
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void removeConnection(int i2) {
        SparseArray<IAccessibilityServiceConnection> sparseArray = sConnectionCache;
        synchronized (sparseArray) {
            sparseArray.remove(i2);
        }
    }

    @Override // android.view.accessibility.IAccessibilityInteractionConnectionCallback
    public void setFindAccessibilityNodeInfoResult(AccessibilityNodeInfo accessibilityNodeInfo, int i2) {
        synchronized (this.mInstanceLock) {
            if (i2 > this.mInteractionId) {
                this.mFindAccessibilityNodeInfoResult = accessibilityNodeInfo;
                this.mInteractionId = i2;
            }
            this.mInstanceLock.notifyAll();
        }
    }

    @Override // android.view.accessibility.IAccessibilityInteractionConnectionCallback
    public void setFindAccessibilityNodeInfosResult(List<AccessibilityNodeInfo> list, int i2) {
        synchronized (this.mInstanceLock) {
            if (i2 > this.mInteractionId) {
                if (list != null) {
                    if (Binder.getCallingPid() != Process.myPid()) {
                        this.mFindAccessibilityNodeInfosResult = list;
                    } else {
                        this.mFindAccessibilityNodeInfosResult = new ArrayList(list);
                    }
                } else {
                    this.mFindAccessibilityNodeInfosResult = Collections.emptyList();
                }
                this.mInteractionId = i2;
            }
            this.mInstanceLock.notifyAll();
        }
    }

    @Override // android.view.accessibility.IAccessibilityInteractionConnectionCallback
    public void setPerformAccessibilityActionResult(boolean z2, int i2) {
        synchronized (this.mInstanceLock) {
            if (i2 > this.mInteractionId) {
                this.mPerformAccessibilityActionResult = z2;
                this.mInteractionId = i2;
            }
            this.mInstanceLock.notifyAll();
        }
    }

    public void setSameThreadMessage(Message message) {
        synchronized (this.mInstanceLock) {
            this.mSameThreadMessage = message;
            this.mInstanceLock.notifyAll();
        }
    }
}
