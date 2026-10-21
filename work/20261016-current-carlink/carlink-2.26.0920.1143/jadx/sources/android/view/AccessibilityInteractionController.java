package android.view;

import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.text.style.AccessibilityClickableSpan;
import android.text.style.ClickableSpan;
import android.util.LongSparseArray;
import android.util.Slog;
import android.view.accessibility.AccessibilityInteractionClient;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.accessibility.AccessibilityRequestPreparer;
import android.view.accessibility.IAccessibilityInteractionConnectionCallback;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.os.SomeArgs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
final class AccessibilityInteractionController {
    private static final boolean CONSIDER_REQUEST_PREPARERS = false;
    private static final boolean ENFORCE_NODE_TREE_CONSISTENT = false;
    private static final boolean IGNORE_REQUEST_PREPARERS = true;
    private static final String LOG_TAG = "AccessibilityInteractionController";
    private static final long REQUEST_PREPARER_TIMEOUT_MS = 500;
    private final AccessibilityManager mA11yManager;

    @GuardedBy("mLock")
    private int mActiveRequestPreparerId;
    private AddNodeInfosForViewId mAddNodeInfosForViewId;
    private final Handler mHandler;

    @GuardedBy("mLock")
    private List<MessageHolder> mMessagesWaitingForRequestPreparer;
    private final long mMyLooperThreadId;
    private final int mMyProcessId;

    @GuardedBy("mLock")
    private int mNumActiveRequestPreparers;
    private final AccessibilityNodePrefetcher mPrefetcher;
    private final ViewRootImpl mViewRootImpl;
    private final ArrayList<AccessibilityNodeInfo> mTempAccessibilityNodeInfoList = new ArrayList<>();
    private final Object mLock = new Object();
    private final ArrayList<View> mTempArrayList = new ArrayList<>();
    private final Point mTempPoint = new Point();
    private final Rect mTempRect = new Rect();
    private final Rect mTempRect1 = new Rect();
    private final Rect mTempRect2 = new Rect();

    public class AccessibilityNodePrefetcher {
        private static final int MAX_ACCESSIBILITY_NODE_INFO_BATCH_SIZE = 50;
        private final ArrayList<View> mTempViewList;

        private AccessibilityNodePrefetcher() {
            this.mTempViewList = new ArrayList<>();
        }

        private void enforceNodeTreeConsistent(List<AccessibilityNodeInfo> list) {
            LongSparseArray longSparseArray = new LongSparseArray();
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AccessibilityNodeInfo accessibilityNodeInfo = list.get(i2);
                longSparseArray.put(accessibilityNodeInfo.getSourceNodeId(), accessibilityNodeInfo);
            }
            AccessibilityNodeInfo accessibilityNodeInfo2 = (AccessibilityNodeInfo) longSparseArray.valueAt(0);
            AccessibilityNodeInfo accessibilityNodeInfo3 = accessibilityNodeInfo2;
            while (accessibilityNodeInfo2 != null) {
                accessibilityNodeInfo3 = accessibilityNodeInfo2;
                accessibilityNodeInfo2 = (AccessibilityNodeInfo) longSparseArray.get(accessibilityNodeInfo2.getParentNodeId());
            }
            HashSet hashSet = new HashSet();
            LinkedList linkedList = new LinkedList();
            linkedList.add(accessibilityNodeInfo3);
            AccessibilityNodeInfo accessibilityNodeInfo4 = null;
            AccessibilityNodeInfo accessibilityNodeInfo5 = null;
            while (!linkedList.isEmpty()) {
                AccessibilityNodeInfo accessibilityNodeInfo6 = (AccessibilityNodeInfo) linkedList.poll();
                if (!hashSet.add(accessibilityNodeInfo6)) {
                    throw new IllegalStateException("Duplicate node: " + accessibilityNodeInfo6 + " in window:" + AccessibilityInteractionController.this.mViewRootImpl.mAttachInfo.mAccessibilityWindowId);
                }
                if (accessibilityNodeInfo6.isAccessibilityFocused()) {
                    if (accessibilityNodeInfo4 != null) {
                        throw new IllegalStateException("Duplicate accessibility focus:" + accessibilityNodeInfo6 + " in window:" + AccessibilityInteractionController.this.mViewRootImpl.mAttachInfo.mAccessibilityWindowId);
                    }
                    accessibilityNodeInfo4 = accessibilityNodeInfo6;
                }
                if (accessibilityNodeInfo6.isFocused()) {
                    if (accessibilityNodeInfo5 != null) {
                        throw new IllegalStateException("Duplicate input focus: " + accessibilityNodeInfo6 + " in window:" + AccessibilityInteractionController.this.mViewRootImpl.mAttachInfo.mAccessibilityWindowId);
                    }
                    accessibilityNodeInfo5 = accessibilityNodeInfo6;
                }
                int childCount = accessibilityNodeInfo6.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    AccessibilityNodeInfo accessibilityNodeInfo7 = (AccessibilityNodeInfo) longSparseArray.get(accessibilityNodeInfo6.getChildId(i3));
                    if (accessibilityNodeInfo7 != null) {
                        linkedList.add(accessibilityNodeInfo7);
                    }
                }
            }
            for (int size2 = longSparseArray.size() - 1; size2 >= 0; size2--) {
                AccessibilityNodeInfo accessibilityNodeInfo8 = (AccessibilityNodeInfo) longSparseArray.valueAt(size2);
                if (!hashSet.contains(accessibilityNodeInfo8)) {
                    throw new IllegalStateException("Disconnected node: " + accessibilityNodeInfo8);
                }
            }
        }

        private void prefetchDescendantsOfRealNode(View view, List<AccessibilityNodeInfo> list) {
            if (view instanceof ViewGroup) {
                HashMap map = new HashMap();
                ArrayList<View> arrayList = this.mTempViewList;
                arrayList.clear();
                try {
                    view.addChildrenForAccessibility(arrayList);
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        if (list.size() >= 50) {
                            arrayList.clear();
                            return;
                        }
                        View view2 = arrayList.get(i2);
                        if (AccessibilityInteractionController.this.isShown(view2)) {
                            AccessibilityNodeProvider accessibilityNodeProvider = view2.getAccessibilityNodeProvider();
                            if (accessibilityNodeProvider == null) {
                                AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo = view2.createAccessibilityNodeInfo();
                                if (accessibilityNodeInfoCreateAccessibilityNodeInfo != null) {
                                    list.add(accessibilityNodeInfoCreateAccessibilityNodeInfo);
                                    map.put(view2, null);
                                }
                            } else {
                                AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo2 = accessibilityNodeProvider.createAccessibilityNodeInfo(-1);
                                if (accessibilityNodeInfoCreateAccessibilityNodeInfo2 != null) {
                                    list.add(accessibilityNodeInfoCreateAccessibilityNodeInfo2);
                                    map.put(view2, accessibilityNodeInfoCreateAccessibilityNodeInfo2);
                                }
                            }
                        }
                    }
                    arrayList.clear();
                    if (list.size() < 50) {
                        for (Map.Entry entry : map.entrySet()) {
                            View view3 = (View) entry.getKey();
                            AccessibilityNodeInfo accessibilityNodeInfo = (AccessibilityNodeInfo) entry.getValue();
                            if (accessibilityNodeInfo == null) {
                                prefetchDescendantsOfRealNode(view3, list);
                            } else {
                                prefetchDescendantsOfVirtualNode(accessibilityNodeInfo, view3.getAccessibilityNodeProvider(), list);
                            }
                        }
                    }
                } catch (Throwable th) {
                    arrayList.clear();
                    throw th;
                }
            }
        }

        private void prefetchDescendantsOfVirtualNode(AccessibilityNodeInfo accessibilityNodeInfo, AccessibilityNodeProvider accessibilityNodeProvider, List<AccessibilityNodeInfo> list) {
            int size = list.size();
            int childCount = accessibilityNodeInfo.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                if (list.size() >= 50) {
                    return;
                }
                AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo = accessibilityNodeProvider.createAccessibilityNodeInfo(AccessibilityNodeInfo.getVirtualDescendantId(accessibilityNodeInfo.getChildId(i2)));
                if (accessibilityNodeInfoCreateAccessibilityNodeInfo != null) {
                    list.add(accessibilityNodeInfoCreateAccessibilityNodeInfo);
                }
            }
            if (list.size() < 50) {
                int size2 = list.size() - size;
                for (int i3 = 0; i3 < size2; i3++) {
                    prefetchDescendantsOfVirtualNode(list.get(size + i3), accessibilityNodeProvider, list);
                }
            }
        }

        private void prefetchPredecessorsOfRealNode(View view, List<AccessibilityNodeInfo> list) {
            for (ViewParent parentForAccessibility = view.getParentForAccessibility(); (parentForAccessibility instanceof View) && list.size() < 50; parentForAccessibility = parentForAccessibility.getParentForAccessibility()) {
                AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo = ((View) parentForAccessibility).createAccessibilityNodeInfo();
                if (accessibilityNodeInfoCreateAccessibilityNodeInfo != null) {
                    list.add(accessibilityNodeInfoCreateAccessibilityNodeInfo);
                }
            }
        }

        private void prefetchPredecessorsOfVirtualNode(AccessibilityNodeInfo accessibilityNodeInfo, View view, AccessibilityNodeProvider accessibilityNodeProvider, List<AccessibilityNodeInfo> list) {
            int size = list.size();
            long parentNodeId = accessibilityNodeInfo.getParentNodeId();
            int accessibilityViewId = AccessibilityNodeInfo.getAccessibilityViewId(parentNodeId);
            while (accessibilityViewId != Integer.MAX_VALUE && list.size() < 50) {
                int virtualDescendantId = AccessibilityNodeInfo.getVirtualDescendantId(parentNodeId);
                if (virtualDescendantId == -1 && accessibilityViewId != view.getAccessibilityViewId()) {
                    prefetchPredecessorsOfRealNode(view, list);
                    return;
                }
                AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo = accessibilityNodeProvider.createAccessibilityNodeInfo(virtualDescendantId);
                if (accessibilityNodeInfoCreateAccessibilityNodeInfo == null) {
                    for (int size2 = list.size() - 1; size2 >= size; size2--) {
                        list.remove(size2);
                    }
                    return;
                }
                list.add(accessibilityNodeInfoCreateAccessibilityNodeInfo);
                parentNodeId = accessibilityNodeInfoCreateAccessibilityNodeInfo.getParentNodeId();
                accessibilityViewId = AccessibilityNodeInfo.getAccessibilityViewId(parentNodeId);
            }
        }

        private void prefetchSiblingsOfRealNode(View view, List<AccessibilityNodeInfo> list) {
            ViewParent parentForAccessibility = view.getParentForAccessibility();
            if (parentForAccessibility instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) parentForAccessibility;
                ArrayList<View> arrayList = this.mTempViewList;
                arrayList.clear();
                try {
                    viewGroup.addChildrenForAccessibility(arrayList);
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        if (list.size() >= 50) {
                            return;
                        }
                        View view2 = arrayList.get(i2);
                        if (view2.getAccessibilityViewId() != view.getAccessibilityViewId() && AccessibilityInteractionController.this.isShown(view2)) {
                            AccessibilityNodeProvider accessibilityNodeProvider = view2.getAccessibilityNodeProvider();
                            AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo = accessibilityNodeProvider == null ? view2.createAccessibilityNodeInfo() : accessibilityNodeProvider.createAccessibilityNodeInfo(-1);
                            if (accessibilityNodeInfoCreateAccessibilityNodeInfo != null) {
                                list.add(accessibilityNodeInfoCreateAccessibilityNodeInfo);
                            }
                        }
                    }
                } finally {
                    arrayList.clear();
                }
            }
        }

        private void prefetchSiblingsOfVirtualNode(AccessibilityNodeInfo accessibilityNodeInfo, View view, AccessibilityNodeProvider accessibilityNodeProvider, List<AccessibilityNodeInfo> list) {
            AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo;
            long parentNodeId = accessibilityNodeInfo.getParentNodeId();
            int accessibilityViewId = AccessibilityNodeInfo.getAccessibilityViewId(parentNodeId);
            int virtualDescendantId = AccessibilityNodeInfo.getVirtualDescendantId(parentNodeId);
            if (virtualDescendantId == -1 && accessibilityViewId != view.getAccessibilityViewId()) {
                prefetchSiblingsOfRealNode(view, list);
                return;
            }
            AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo2 = accessibilityNodeProvider.createAccessibilityNodeInfo(virtualDescendantId);
            if (accessibilityNodeInfoCreateAccessibilityNodeInfo2 != null) {
                int childCount = accessibilityNodeInfoCreateAccessibilityNodeInfo2.getChildCount();
                for (int i2 = 0; i2 < childCount && list.size() < 50; i2++) {
                    long childId = accessibilityNodeInfoCreateAccessibilityNodeInfo2.getChildId(i2);
                    if (childId != accessibilityNodeInfo.getSourceNodeId() && (accessibilityNodeInfoCreateAccessibilityNodeInfo = accessibilityNodeProvider.createAccessibilityNodeInfo(AccessibilityNodeInfo.getVirtualDescendantId(childId))) != null) {
                        list.add(accessibilityNodeInfoCreateAccessibilityNodeInfo);
                    }
                }
            }
        }

        public void prefetchAccessibilityNodeInfos(View view, int i2, int i3, List<AccessibilityNodeInfo> list, Bundle bundle) {
            AccessibilityNodeProvider accessibilityNodeProvider = view.getAccessibilityNodeProvider();
            String string = bundle == null ? null : bundle.getString(AccessibilityNodeInfo.EXTRA_DATA_REQUESTED_KEY);
            if (accessibilityNodeProvider == null) {
                AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo = view.createAccessibilityNodeInfo();
                if (accessibilityNodeInfoCreateAccessibilityNodeInfo != null) {
                    if (string != null) {
                        view.addExtraDataToAccessibilityNodeInfo(accessibilityNodeInfoCreateAccessibilityNodeInfo, string, bundle);
                    }
                    list.add(accessibilityNodeInfoCreateAccessibilityNodeInfo);
                    if ((i3 & 1) != 0) {
                        prefetchPredecessorsOfRealNode(view, list);
                    }
                    if ((i3 & 2) != 0) {
                        prefetchSiblingsOfRealNode(view, list);
                    }
                    if ((i3 & 4) != 0) {
                        prefetchDescendantsOfRealNode(view, list);
                        return;
                    }
                    return;
                }
                return;
            }
            AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo2 = accessibilityNodeProvider.createAccessibilityNodeInfo(i2);
            if (accessibilityNodeInfoCreateAccessibilityNodeInfo2 != null) {
                if (string != null) {
                    accessibilityNodeProvider.addExtraDataToAccessibilityNodeInfo(i2, accessibilityNodeInfoCreateAccessibilityNodeInfo2, string, bundle);
                }
                list.add(accessibilityNodeInfoCreateAccessibilityNodeInfo2);
                if ((i3 & 1) != 0) {
                    prefetchPredecessorsOfVirtualNode(accessibilityNodeInfoCreateAccessibilityNodeInfo2, view, accessibilityNodeProvider, list);
                }
                if ((i3 & 2) != 0) {
                    prefetchSiblingsOfVirtualNode(accessibilityNodeInfoCreateAccessibilityNodeInfo2, view, accessibilityNodeProvider, list);
                }
                if ((i3 & 4) != 0) {
                    prefetchDescendantsOfVirtualNode(accessibilityNodeInfoCreateAccessibilityNodeInfo2, accessibilityNodeProvider, list);
                }
            }
        }
    }

    public final class AddNodeInfosForViewId implements Predicate<View> {
        private List<AccessibilityNodeInfo> mInfos;
        private int mViewId;

        private AddNodeInfosForViewId() {
            this.mViewId = -1;
        }

        public void init(int i2, List<AccessibilityNodeInfo> list) {
            this.mViewId = i2;
            this.mInfos = list;
        }

        public void reset() {
            this.mViewId = -1;
            this.mInfos = null;
        }

        @Override // java.util.function.Predicate
        public boolean test(View view) {
            if (view.getId() != this.mViewId || !AccessibilityInteractionController.this.isShown(view)) {
                return false;
            }
            this.mInfos.add(view.createAccessibilityNodeInfo());
            return false;
        }
    }

    public static final class MessageHolder {
        final int mInterrogatingPid;
        final long mInterrogatingTid;
        final Message mMessage;

        public MessageHolder(Message message, int i2, long j2) {
            this.mMessage = message;
            this.mInterrogatingPid = i2;
            this.mInterrogatingTid = j2;
        }
    }

    public class PrivateHandler extends Handler {
        private static final int MSG_APP_PREPARATION_FINISHED = 8;
        private static final int MSG_APP_PREPARATION_TIMEOUT = 9;
        private static final int MSG_FIND_ACCESSIBILITY_NODE_INFOS_BY_VIEW_ID = 3;
        private static final int MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_ACCESSIBILITY_ID = 2;
        private static final int MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_TEXT = 4;
        private static final int MSG_FIND_FOCUS = 5;
        private static final int MSG_FOCUS_SEARCH = 6;
        private static final int MSG_PERFORM_ACCESSIBILITY_ACTION = 1;
        private static final int MSG_PREPARE_FOR_EXTRA_DATA_REQUEST = 7;

        public PrivateHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public String getMessageName(Message message) {
            int i2 = message.what;
            switch (i2) {
                case 1:
                    return "MSG_PERFORM_ACCESSIBILITY_ACTION";
                case 2:
                    return "MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_ACCESSIBILITY_ID";
                case 3:
                    return "MSG_FIND_ACCESSIBILITY_NODE_INFOS_BY_VIEW_ID";
                case 4:
                    return "MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_TEXT";
                case 5:
                    return "MSG_FIND_FOCUS";
                case 6:
                    return "MSG_FOCUS_SEARCH";
                case 7:
                    return "MSG_PREPARE_FOR_EXTRA_DATA_REQUEST";
                case 8:
                    return "MSG_APP_PREPARATION_FINISHED";
                case 9:
                    return "MSG_APP_PREPARATION_TIMEOUT";
                default:
                    throw new IllegalArgumentException(android.accessibilityservice.c.d("Unknown message type: ", i2));
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws Throwable {
            int i2 = message.what;
            switch (i2) {
                case 1:
                    AccessibilityInteractionController.this.performAccessibilityActionUiThread(message);
                    return;
                case 2:
                    AccessibilityInteractionController.this.findAccessibilityNodeInfoByAccessibilityIdUiThread(message);
                    return;
                case 3:
                    AccessibilityInteractionController.this.findAccessibilityNodeInfosByViewIdUiThread(message);
                    return;
                case 4:
                    AccessibilityInteractionController.this.findAccessibilityNodeInfosByTextUiThread(message);
                    return;
                case 5:
                    AccessibilityInteractionController.this.findFocusUiThread(message);
                    return;
                case 6:
                    AccessibilityInteractionController.this.focusSearchUiThread(message);
                    return;
                case 7:
                    AccessibilityInteractionController.this.prepareForExtraDataRequestUiThread(message);
                    return;
                case 8:
                    AccessibilityInteractionController.this.requestPreparerDoneUiThread(message);
                    return;
                case 9:
                    AccessibilityInteractionController.this.requestPreparerTimeoutUiThread();
                    return;
                default:
                    throw new IllegalArgumentException(android.accessibilityservice.c.d("Unknown message type: ", i2));
            }
        }
    }

    public AccessibilityInteractionController(ViewRootImpl viewRootImpl) {
        Looper looper = viewRootImpl.mHandler.getLooper();
        this.mMyLooperThreadId = looper.getThread().getId();
        this.mMyProcessId = Process.myPid();
        this.mHandler = new PrivateHandler(looper);
        this.mViewRootImpl = viewRootImpl;
        this.mPrefetcher = new AccessibilityNodePrefetcher();
        this.mA11yManager = (AccessibilityManager) viewRootImpl.mContext.getSystemService(AccessibilityManager.class);
    }

    private void adjustIsVisibleToUserIfNeeded(List<AccessibilityNodeInfo> list, Region region) {
        if (region == null || list == null) {
            return;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            adjustIsVisibleToUserIfNeeded(list.get(i2), region);
        }
    }

    private void applyAppScaleAndMagnificationSpecIfNeeded(List<AccessibilityNodeInfo> list, MagnificationSpec magnificationSpec) {
        if (list != null && shouldApplyAppScaleAndMagnificationSpec(this.mViewRootImpl.mAttachInfo.mApplicationScale, magnificationSpec)) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                applyAppScaleAndMagnificationSpecIfNeeded(list.get(i2), magnificationSpec);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findAccessibilityNodeInfoByAccessibilityIdUiThread(Message message) {
        View.AttachInfo attachInfo;
        int i2 = message.arg1;
        SomeArgs someArgs = (SomeArgs) message.obj;
        int i3 = someArgs.argi1;
        int i4 = someArgs.argi2;
        int i5 = someArgs.argi3;
        IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback = (IAccessibilityInteractionConnectionCallback) someArgs.arg1;
        MagnificationSpec magnificationSpec = (MagnificationSpec) someArgs.arg2;
        Region region = (Region) someArgs.arg3;
        Bundle bundle = (Bundle) someArgs.arg4;
        someArgs.recycle();
        ArrayList<AccessibilityNodeInfo> arrayList = this.mTempAccessibilityNodeInfoList;
        arrayList.clear();
        try {
            ViewRootImpl viewRootImpl = this.mViewRootImpl;
            View view = viewRootImpl.mView;
            if (view != null && (attachInfo = viewRootImpl.mAttachInfo) != null) {
                attachInfo.mAccessibilityFetchFlags = i2;
                View viewFindViewByAccessibilityId = i3 == 2147483646 ? view : findViewByAccessibilityId(i3);
                if (viewFindViewByAccessibilityId != null && isShown(viewFindViewByAccessibilityId)) {
                    this.mPrefetcher.prefetchAccessibilityNodeInfos(viewFindViewByAccessibilityId, i4, i2, arrayList, bundle);
                }
            }
        } finally {
            updateInfosForViewportAndReturnFindNodeResult(arrayList, iAccessibilityInteractionConnectionCallback, i5, magnificationSpec, region);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findAccessibilityNodeInfosByTextUiThread(Message message) throws Throwable {
        View.AttachInfo attachInfo;
        int i2 = message.arg1;
        SomeArgs someArgs = (SomeArgs) message.obj;
        String str = (String) someArgs.arg1;
        IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback = (IAccessibilityInteractionConnectionCallback) someArgs.arg2;
        MagnificationSpec magnificationSpec = (MagnificationSpec) someArgs.arg3;
        int i3 = someArgs.argi1;
        int i4 = someArgs.argi2;
        int i5 = someArgs.argi3;
        Region region = (Region) someArgs.arg4;
        someArgs.recycle();
        List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByText = null;
        try {
            ViewRootImpl viewRootImpl = this.mViewRootImpl;
            View viewFindViewByAccessibilityId = viewRootImpl.mView;
            if (viewFindViewByAccessibilityId != null && (attachInfo = viewRootImpl.mAttachInfo) != null) {
                attachInfo.mAccessibilityFetchFlags = i2;
                if (i3 != 2147483646) {
                    viewFindViewByAccessibilityId = findViewByAccessibilityId(i3);
                }
                if (viewFindViewByAccessibilityId != null && isShown(viewFindViewByAccessibilityId)) {
                    AccessibilityNodeProvider accessibilityNodeProvider = viewFindViewByAccessibilityId.getAccessibilityNodeProvider();
                    if (accessibilityNodeProvider != null) {
                        listFindAccessibilityNodeInfosByText = accessibilityNodeProvider.findAccessibilityNodeInfosByText(str, i4);
                    } else if (i4 == -1) {
                        ArrayList<View> arrayList = this.mTempArrayList;
                        arrayList.clear();
                        viewFindViewByAccessibilityId.findViewsWithText(arrayList, str, 7);
                        if (!arrayList.isEmpty()) {
                            ArrayList<AccessibilityNodeInfo> arrayList2 = this.mTempAccessibilityNodeInfoList;
                            try {
                                arrayList2.clear();
                                int size = arrayList.size();
                                for (int i6 = 0; i6 < size; i6++) {
                                    View view = arrayList.get(i6);
                                    if (isShown(view)) {
                                        AccessibilityNodeProvider accessibilityNodeProvider2 = view.getAccessibilityNodeProvider();
                                        if (accessibilityNodeProvider2 != null) {
                                            List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByText2 = accessibilityNodeProvider2.findAccessibilityNodeInfosByText(str, -1);
                                            if (listFindAccessibilityNodeInfosByText2 != null) {
                                                arrayList2.addAll(listFindAccessibilityNodeInfosByText2);
                                            }
                                        } else {
                                            arrayList2.add(view.createAccessibilityNodeInfo());
                                        }
                                    }
                                }
                                listFindAccessibilityNodeInfosByText = arrayList2;
                            } catch (Throwable th) {
                                th = th;
                                listFindAccessibilityNodeInfosByText = arrayList2;
                                updateInfosForViewportAndReturnFindNodeResult(listFindAccessibilityNodeInfosByText, iAccessibilityInteractionConnectionCallback, i5, magnificationSpec, region);
                                throw th;
                            }
                        }
                    }
                }
                updateInfosForViewportAndReturnFindNodeResult(listFindAccessibilityNodeInfosByText, iAccessibilityInteractionConnectionCallback, i5, magnificationSpec, region);
                return;
            }
            updateInfosForViewportAndReturnFindNodeResult(null, iAccessibilityInteractionConnectionCallback, i5, magnificationSpec, region);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findAccessibilityNodeInfosByViewIdUiThread(Message message) {
        View.AttachInfo attachInfo;
        int i2 = message.arg1;
        int i3 = message.arg2;
        SomeArgs someArgs = (SomeArgs) message.obj;
        int i4 = someArgs.argi1;
        IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback = (IAccessibilityInteractionConnectionCallback) someArgs.arg1;
        MagnificationSpec magnificationSpec = (MagnificationSpec) someArgs.arg2;
        String str = (String) someArgs.arg3;
        Region region = (Region) someArgs.arg4;
        someArgs.recycle();
        ArrayList<AccessibilityNodeInfo> arrayList = this.mTempAccessibilityNodeInfoList;
        arrayList.clear();
        try {
            ViewRootImpl viewRootImpl = this.mViewRootImpl;
            View viewFindViewByAccessibilityId = viewRootImpl.mView;
            if (viewFindViewByAccessibilityId != null && (attachInfo = viewRootImpl.mAttachInfo) != null) {
                attachInfo.mAccessibilityFetchFlags = i2;
                if (i3 != 2147483646) {
                    viewFindViewByAccessibilityId = findViewByAccessibilityId(i3);
                }
                if (viewFindViewByAccessibilityId != null) {
                    int identifier = viewFindViewByAccessibilityId.getContext().getResources().getIdentifier(str, null, null);
                    if (identifier > 0) {
                        if (this.mAddNodeInfosForViewId == null) {
                            this.mAddNodeInfosForViewId = new AddNodeInfosForViewId();
                        }
                        this.mAddNodeInfosForViewId.init(identifier, arrayList);
                        viewFindViewByAccessibilityId.findViewByPredicate(this.mAddNodeInfosForViewId);
                        this.mAddNodeInfosForViewId.reset();
                    }
                }
            }
        } finally {
            updateInfosForViewportAndReturnFindNodeResult(arrayList, iAccessibilityInteractionConnectionCallback, i4, magnificationSpec, region);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findFocusUiThread(Message message) {
        View.AttachInfo attachInfo;
        int i2 = message.arg1;
        int i3 = message.arg2;
        SomeArgs someArgs = (SomeArgs) message.obj;
        int i4 = someArgs.argi1;
        int i5 = someArgs.argi2;
        int i6 = someArgs.argi3;
        IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback = (IAccessibilityInteractionConnectionCallback) someArgs.arg1;
        MagnificationSpec magnificationSpec = (MagnificationSpec) someArgs.arg2;
        Region region = (Region) someArgs.arg3;
        someArgs.recycle();
        AccessibilityNodeInfo accessibilityNodeInfoFindFocus = null;
        try {
            ViewRootImpl viewRootImpl = this.mViewRootImpl;
            View viewFindViewByAccessibilityId = viewRootImpl.mView;
            if (viewFindViewByAccessibilityId != null && (attachInfo = viewRootImpl.mAttachInfo) != null) {
                attachInfo.mAccessibilityFetchFlags = i2;
                if (i5 != 2147483646) {
                    viewFindViewByAccessibilityId = findViewByAccessibilityId(i5);
                }
                if (viewFindViewByAccessibilityId != null && isShown(viewFindViewByAccessibilityId)) {
                    if (i3 == 1) {
                        View viewFindFocus = viewFindViewByAccessibilityId.findFocus();
                        if (viewFindFocus != null && isShown(viewFindFocus)) {
                            AccessibilityNodeProvider accessibilityNodeProvider = viewFindFocus.getAccessibilityNodeProvider();
                            accessibilityNodeInfoFindFocus = accessibilityNodeProvider != null ? accessibilityNodeProvider.findFocus(i3) : null;
                            if (accessibilityNodeInfoFindFocus == null) {
                                accessibilityNodeInfoFindFocus = viewFindFocus.createAccessibilityNodeInfo();
                            }
                        }
                    } else {
                        if (i3 != 2) {
                            throw new IllegalArgumentException("Unknown focus type: " + i3);
                        }
                        View view = this.mViewRootImpl.mAccessibilityFocusedHost;
                        if (view != null && ViewRootImpl.isViewDescendantOf(view, viewFindViewByAccessibilityId) && isShown(view)) {
                            if (view.getAccessibilityNodeProvider() != null) {
                                AccessibilityNodeInfo accessibilityNodeInfo = this.mViewRootImpl.mAccessibilityFocusedVirtualView;
                                if (accessibilityNodeInfo != null) {
                                    accessibilityNodeInfoFindFocus = AccessibilityNodeInfo.obtain(accessibilityNodeInfo);
                                }
                            } else if (i6 == -1) {
                                accessibilityNodeInfoFindFocus = view.createAccessibilityNodeInfo();
                            }
                        }
                    }
                }
                updateInfoForViewportAndReturnFindNodeResult(accessibilityNodeInfoFindFocus, iAccessibilityInteractionConnectionCallback, i4, magnificationSpec, region);
                return;
            }
            updateInfoForViewportAndReturnFindNodeResult(null, iAccessibilityInteractionConnectionCallback, i4, magnificationSpec, region);
        } catch (Throwable th) {
            updateInfoForViewportAndReturnFindNodeResult(null, iAccessibilityInteractionConnectionCallback, i4, magnificationSpec, region);
            throw th;
        }
    }

    private View findViewByAccessibilityId(int i2) {
        View view = this.mViewRootImpl.mView;
        if (view == null) {
            return null;
        }
        View viewFindViewByAccessibilityId = view.findViewByAccessibilityId(i2);
        if (viewFindViewByAccessibilityId == null || isShown(viewFindViewByAccessibilityId)) {
            return viewFindViewByAccessibilityId;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void focusSearchUiThread(Message message) {
        View.AttachInfo attachInfo;
        View viewFocusSearch;
        int i2 = message.arg1;
        int i3 = message.arg2;
        SomeArgs someArgs = (SomeArgs) message.obj;
        int i4 = someArgs.argi2;
        int i5 = someArgs.argi3;
        IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback = (IAccessibilityInteractionConnectionCallback) someArgs.arg1;
        MagnificationSpec magnificationSpec = (MagnificationSpec) someArgs.arg2;
        Region region = (Region) someArgs.arg3;
        someArgs.recycle();
        AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo = null;
        try {
            ViewRootImpl viewRootImpl = this.mViewRootImpl;
            View viewFindViewByAccessibilityId = viewRootImpl.mView;
            if (viewFindViewByAccessibilityId != null && (attachInfo = viewRootImpl.mAttachInfo) != null) {
                attachInfo.mAccessibilityFetchFlags = i2;
                if (i3 != 2147483646) {
                    viewFindViewByAccessibilityId = findViewByAccessibilityId(i3);
                }
                if (viewFindViewByAccessibilityId != null && isShown(viewFindViewByAccessibilityId) && (viewFocusSearch = viewFindViewByAccessibilityId.focusSearch(i4)) != null) {
                    accessibilityNodeInfoCreateAccessibilityNodeInfo = viewFocusSearch.createAccessibilityNodeInfo();
                }
                updateInfoForViewportAndReturnFindNodeResult(accessibilityNodeInfoCreateAccessibilityNodeInfo, iAccessibilityInteractionConnectionCallback, i5, magnificationSpec, region);
                return;
            }
            updateInfoForViewportAndReturnFindNodeResult(null, iAccessibilityInteractionConnectionCallback, i5, magnificationSpec, region);
        } catch (Throwable th) {
            updateInfoForViewportAndReturnFindNodeResult(null, iAccessibilityInteractionConnectionCallback, i5, magnificationSpec, region);
            throw th;
        }
    }

    private boolean handleClickableSpanActionUiThread(View view, int i2, Bundle bundle) {
        AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo;
        ClickableSpan clickableSpanFindClickableSpan;
        Parcelable parcelable = bundle.getParcelable(AccessibilityNodeInfo.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN);
        if (!(parcelable instanceof AccessibilityClickableSpan)) {
            return false;
        }
        AccessibilityNodeProvider accessibilityNodeProvider = view.getAccessibilityNodeProvider();
        if (accessibilityNodeProvider != null) {
            accessibilityNodeInfoCreateAccessibilityNodeInfo = accessibilityNodeProvider.createAccessibilityNodeInfo(i2);
        } else {
            accessibilityNodeInfoCreateAccessibilityNodeInfo = i2 == -1 ? view.createAccessibilityNodeInfo() : null;
        }
        if (accessibilityNodeInfoCreateAccessibilityNodeInfo == null || (clickableSpanFindClickableSpan = ((AccessibilityClickableSpan) parcelable).findClickableSpan(accessibilityNodeInfoCreateAccessibilityNodeInfo.getOriginalText())) == null) {
            return false;
        }
        clickableSpanFindClickableSpan.onClick(view);
        return true;
    }

    private boolean holdOffMessageIfNeeded(Message message, int i2, long j2) {
        synchronized (this.mLock) {
            if (this.mNumActiveRequestPreparers != 0) {
                queueMessageToHandleOncePrepared(message, i2, j2);
                return true;
            }
            if (message.what != 2) {
                return false;
            }
            SomeArgs someArgs = (SomeArgs) message.obj;
            Bundle bundle = (Bundle) someArgs.arg4;
            if (bundle == null) {
                return false;
            }
            List<AccessibilityRequestPreparer> requestPreparersForAccessibilityId = this.mA11yManager.getRequestPreparersForAccessibilityId(someArgs.argi1);
            if (requestPreparersForAccessibilityId == null) {
                return false;
            }
            String string = bundle.getString(AccessibilityNodeInfo.EXTRA_DATA_REQUESTED_KEY);
            if (string == null) {
                return false;
            }
            this.mNumActiveRequestPreparers = requestPreparersForAccessibilityId.size();
            for (int i3 = 0; i3 < requestPreparersForAccessibilityId.size(); i3++) {
                Message messageObtainMessage = this.mHandler.obtainMessage(7);
                SomeArgs someArgsObtain = SomeArgs.obtain();
                int i4 = someArgs.argi2;
                if (i4 == Integer.MAX_VALUE) {
                    i4 = -1;
                }
                someArgsObtain.argi1 = i4;
                someArgsObtain.arg1 = requestPreparersForAccessibilityId.get(i3);
                someArgsObtain.arg2 = string;
                someArgsObtain.arg3 = bundle;
                Message messageObtainMessage2 = this.mHandler.obtainMessage(8);
                int i5 = this.mActiveRequestPreparerId + 1;
                this.mActiveRequestPreparerId = i5;
                messageObtainMessage2.arg1 = i5;
                someArgsObtain.arg4 = messageObtainMessage2;
                messageObtainMessage.obj = someArgsObtain;
                scheduleMessage(messageObtainMessage, i2, j2, true);
                this.mHandler.obtainMessage(9);
                this.mHandler.sendEmptyMessageDelayed(9, REQUEST_PREPARER_TIMEOUT_MS);
            }
            queueMessageToHandleOncePrepared(message, i2, j2);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isShown(View view) {
        View.AttachInfo attachInfo = view.mAttachInfo;
        return attachInfo != null && attachInfo.mWindowVisibility == 0 && view.isShown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:28:0x005d  */
    public void performAccessibilityActionUiThread(Message message) {
        View.AttachInfo attachInfo;
        boolean zPerformAccessibilityAction;
        int i2 = message.arg1;
        int i3 = message.arg2;
        SomeArgs someArgs = (SomeArgs) message.obj;
        int i4 = someArgs.argi1;
        int i5 = someArgs.argi2;
        int i6 = someArgs.argi3;
        IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback = (IAccessibilityInteractionConnectionCallback) someArgs.arg1;
        Bundle bundle = (Bundle) someArgs.arg2;
        someArgs.recycle();
        try {
            ViewRootImpl viewRootImpl = this.mViewRootImpl;
            View viewFindViewByAccessibilityId = viewRootImpl.mView;
            if (viewFindViewByAccessibilityId != null && (attachInfo = viewRootImpl.mAttachInfo) != null && !viewRootImpl.mStopped && !viewRootImpl.mPausedForTransition) {
                attachInfo.mAccessibilityFetchFlags = i2;
                if (i3 != 2147483646) {
                    viewFindViewByAccessibilityId = findViewByAccessibilityId(i3);
                }
                if (viewFindViewByAccessibilityId == null || !isShown(viewFindViewByAccessibilityId)) {
                    zPerformAccessibilityAction = false;
                } else if (i5 == 16908649) {
                    zPerformAccessibilityAction = handleClickableSpanActionUiThread(viewFindViewByAccessibilityId, i4, bundle);
                } else {
                    AccessibilityNodeProvider accessibilityNodeProvider = viewFindViewByAccessibilityId.getAccessibilityNodeProvider();
                    if (accessibilityNodeProvider != null) {
                        zPerformAccessibilityAction = accessibilityNodeProvider.performAction(i4, i5, bundle);
                    } else if (i4 == -1) {
                        zPerformAccessibilityAction = viewFindViewByAccessibilityId.performAccessibilityAction(i5, bundle);
                    } else {
                        zPerformAccessibilityAction = false;
                    }
                }
                try {
                    this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                    iAccessibilityInteractionConnectionCallback.setPerformAccessibilityActionResult(zPerformAccessibilityAction, i6);
                    return;
                } catch (RemoteException unused) {
                    return;
                }
            }
            try {
                viewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                iAccessibilityInteractionConnectionCallback.setPerformAccessibilityActionResult(false, i6);
            } catch (RemoteException unused2) {
            }
        } catch (Throwable th) {
            try {
                this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                iAccessibilityInteractionConnectionCallback.setPerformAccessibilityActionResult(false, i6);
            } catch (RemoteException unused3) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareForExtraDataRequestUiThread(Message message) {
        SomeArgs someArgs = (SomeArgs) message.obj;
        ((AccessibilityRequestPreparer) someArgs.arg1).onPrepareExtraData(someArgs.argi1, (String) someArgs.arg2, (Bundle) someArgs.arg3, (Message) someArgs.arg4);
    }

    private void queueMessageToHandleOncePrepared(Message message, int i2, long j2) {
        if (this.mMessagesWaitingForRequestPreparer == null) {
            this.mMessagesWaitingForRequestPreparer = new ArrayList(1);
        }
        this.mMessagesWaitingForRequestPreparer.add(new MessageHolder(message, i2, j2));
    }

    private void recycleMagnificationSpecAndRegionIfNeeded(MagnificationSpec magnificationSpec, Region region) {
        if (Process.myPid() != Binder.getCallingPid()) {
            if (magnificationSpec != null) {
                magnificationSpec.recycle();
            }
        } else if (region != null) {
            region.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestPreparerDoneUiThread(Message message) {
        synchronized (this.mLock) {
            if (message.arg1 != this.mActiveRequestPreparerId) {
                Slog.e(LOG_TAG, "Surprising AccessibilityRequestPreparer callback (likely late)");
                return;
            }
            int i2 = this.mNumActiveRequestPreparers - 1;
            this.mNumActiveRequestPreparers = i2;
            if (i2 <= 0) {
                this.mHandler.removeMessages(9);
                scheduleAllMessagesWaitingForRequestPreparerLocked();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestPreparerTimeoutUiThread() {
        synchronized (this.mLock) {
            Slog.e(LOG_TAG, "AccessibilityRequestPreparer timed out");
            scheduleAllMessagesWaitingForRequestPreparerLocked();
        }
    }

    @GuardedBy("mLock")
    private void scheduleAllMessagesWaitingForRequestPreparerLocked() {
        int size = this.mMessagesWaitingForRequestPreparer.size();
        int i2 = 0;
        while (i2 < size) {
            MessageHolder messageHolder = this.mMessagesWaitingForRequestPreparer.get(i2);
            scheduleMessage(messageHolder.mMessage, messageHolder.mInterrogatingPid, messageHolder.mInterrogatingTid, i2 == 0);
            i2++;
        }
        this.mMessagesWaitingForRequestPreparer.clear();
        this.mNumActiveRequestPreparers = 0;
        this.mActiveRequestPreparerId = -1;
    }

    private void scheduleMessage(Message message, int i2, long j2, boolean z2) {
        if (z2 || !holdOffMessageIfNeeded(message, i2, j2)) {
            if (i2 == this.mMyProcessId && j2 == this.mMyLooperThreadId) {
                AccessibilityInteractionClient.getInstanceForThread(j2).setSameThreadMessage(message);
            } else {
                this.mHandler.sendMessage(message);
            }
        }
    }

    private boolean shouldApplyAppScaleAndMagnificationSpec(float f2, MagnificationSpec magnificationSpec) {
        return (f2 == 1.0f && (magnificationSpec == null || magnificationSpec.isNop())) ? false : true;
    }

    private void updateInfoForViewportAndReturnFindNodeResult(AccessibilityNodeInfo accessibilityNodeInfo, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i2, MagnificationSpec magnificationSpec, Region region) {
        try {
            this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
            applyAppScaleAndMagnificationSpecIfNeeded(accessibilityNodeInfo, magnificationSpec);
            adjustIsVisibleToUserIfNeeded(accessibilityNodeInfo, region);
            iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfoResult(accessibilityNodeInfo, i2);
        } catch (RemoteException unused) {
        } finally {
            recycleMagnificationSpecAndRegionIfNeeded(magnificationSpec, region);
        }
    }

    private void updateInfosForViewportAndReturnFindNodeResult(List<AccessibilityNodeInfo> list, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i2, MagnificationSpec magnificationSpec, Region region) {
        try {
            this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
            applyAppScaleAndMagnificationSpecIfNeeded(list, magnificationSpec);
            adjustIsVisibleToUserIfNeeded(list, region);
            iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfosResult(list, i2);
            if (list != null) {
                list.clear();
            }
        } catch (RemoteException unused) {
        } finally {
            recycleMagnificationSpecAndRegionIfNeeded(magnificationSpec, region);
        }
    }

    public void findAccessibilityNodeInfoByAccessibilityIdClientThread(long j2, Region region, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j3, MagnificationSpec magnificationSpec, Bundle bundle) {
        Message messageObtainMessage = this.mHandler.obtainMessage();
        messageObtainMessage.what = 2;
        messageObtainMessage.arg1 = i3;
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.argi1 = AccessibilityNodeInfo.getAccessibilityViewId(j2);
        someArgsObtain.argi2 = AccessibilityNodeInfo.getVirtualDescendantId(j2);
        someArgsObtain.argi3 = i2;
        someArgsObtain.arg1 = iAccessibilityInteractionConnectionCallback;
        someArgsObtain.arg2 = magnificationSpec;
        someArgsObtain.arg3 = region;
        someArgsObtain.arg4 = bundle;
        messageObtainMessage.obj = someArgsObtain;
        scheduleMessage(messageObtainMessage, i4, j3, false);
    }

    public void findAccessibilityNodeInfosByTextClientThread(long j2, String str, Region region, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j3, MagnificationSpec magnificationSpec) {
        Message messageObtainMessage = this.mHandler.obtainMessage();
        messageObtainMessage.what = 4;
        messageObtainMessage.arg1 = i3;
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = str;
        someArgsObtain.arg2 = iAccessibilityInteractionConnectionCallback;
        someArgsObtain.arg3 = magnificationSpec;
        someArgsObtain.argi1 = AccessibilityNodeInfo.getAccessibilityViewId(j2);
        someArgsObtain.argi2 = AccessibilityNodeInfo.getVirtualDescendantId(j2);
        someArgsObtain.argi3 = i2;
        someArgsObtain.arg4 = region;
        messageObtainMessage.obj = someArgsObtain;
        scheduleMessage(messageObtainMessage, i4, j3, false);
    }

    public void findAccessibilityNodeInfosByViewIdClientThread(long j2, String str, Region region, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j3, MagnificationSpec magnificationSpec) {
        Message messageObtainMessage = this.mHandler.obtainMessage();
        messageObtainMessage.what = 3;
        messageObtainMessage.arg1 = i3;
        messageObtainMessage.arg2 = AccessibilityNodeInfo.getAccessibilityViewId(j2);
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.argi1 = i2;
        someArgsObtain.arg1 = iAccessibilityInteractionConnectionCallback;
        someArgsObtain.arg2 = magnificationSpec;
        someArgsObtain.arg3 = str;
        someArgsObtain.arg4 = region;
        messageObtainMessage.obj = someArgsObtain;
        scheduleMessage(messageObtainMessage, i4, j3, false);
    }

    public void findFocusClientThread(long j2, int i2, Region region, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, int i5, long j3, MagnificationSpec magnificationSpec) {
        Message messageObtainMessage = this.mHandler.obtainMessage();
        messageObtainMessage.what = 5;
        messageObtainMessage.arg1 = i4;
        messageObtainMessage.arg2 = i2;
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.argi1 = i3;
        someArgsObtain.argi2 = AccessibilityNodeInfo.getAccessibilityViewId(j2);
        someArgsObtain.argi3 = AccessibilityNodeInfo.getVirtualDescendantId(j2);
        someArgsObtain.arg1 = iAccessibilityInteractionConnectionCallback;
        someArgsObtain.arg2 = magnificationSpec;
        someArgsObtain.arg3 = region;
        messageObtainMessage.obj = someArgsObtain;
        scheduleMessage(messageObtainMessage, i5, j3, false);
    }

    public void focusSearchClientThread(long j2, int i2, Region region, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, int i5, long j3, MagnificationSpec magnificationSpec) {
        Message messageObtainMessage = this.mHandler.obtainMessage();
        messageObtainMessage.what = 6;
        messageObtainMessage.arg1 = i4;
        messageObtainMessage.arg2 = AccessibilityNodeInfo.getAccessibilityViewId(j2);
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.argi2 = i2;
        someArgsObtain.argi3 = i3;
        someArgsObtain.arg1 = iAccessibilityInteractionConnectionCallback;
        someArgsObtain.arg2 = magnificationSpec;
        someArgsObtain.arg3 = region;
        messageObtainMessage.obj = someArgsObtain;
        scheduleMessage(messageObtainMessage, i5, j3, false);
    }

    public void performAccessibilityActionClientThread(long j2, int i2, Bundle bundle, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, int i5, long j3) {
        Message messageObtainMessage = this.mHandler.obtainMessage();
        messageObtainMessage.what = 1;
        messageObtainMessage.arg1 = i4;
        messageObtainMessage.arg2 = AccessibilityNodeInfo.getAccessibilityViewId(j2);
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.argi1 = AccessibilityNodeInfo.getVirtualDescendantId(j2);
        someArgsObtain.argi2 = i2;
        someArgsObtain.argi3 = i3;
        someArgsObtain.arg1 = iAccessibilityInteractionConnectionCallback;
        someArgsObtain.arg2 = bundle;
        messageObtainMessage.obj = someArgsObtain;
        scheduleMessage(messageObtainMessage, i5, j3, false);
    }

    private void adjustIsVisibleToUserIfNeeded(AccessibilityNodeInfo accessibilityNodeInfo, Region region) {
        if (region == null || accessibilityNodeInfo == null) {
            return;
        }
        Rect rect = this.mTempRect;
        accessibilityNodeInfo.getBoundsInScreen(rect);
        if (region.quickReject(rect)) {
            accessibilityNodeInfo.setVisibleToUser(false);
        }
    }

    private void applyAppScaleAndMagnificationSpecIfNeeded(AccessibilityNodeInfo accessibilityNodeInfo, MagnificationSpec magnificationSpec) {
        ViewRootImpl viewRootImpl;
        View.AttachInfo attachInfo;
        Display display;
        Parcelable[] parcelableArray;
        if (accessibilityNodeInfo == null) {
            return;
        }
        float f2 = this.mViewRootImpl.mAttachInfo.mApplicationScale;
        if (shouldApplyAppScaleAndMagnificationSpec(f2, magnificationSpec)) {
            Rect rect = this.mTempRect;
            Rect rect2 = this.mTempRect1;
            accessibilityNodeInfo.getBoundsInParent(rect);
            accessibilityNodeInfo.getBoundsInScreen(rect2);
            if (f2 != 1.0f) {
                rect.scale(f2);
                rect2.scale(f2);
            }
            if (magnificationSpec != null) {
                rect.scale(magnificationSpec.scale);
                rect2.scale(magnificationSpec.scale);
                rect2.offset((int) magnificationSpec.offsetX, (int) magnificationSpec.offsetY);
            }
            accessibilityNodeInfo.setBoundsInParent(rect);
            accessibilityNodeInfo.setBoundsInScreen(rect2);
            if (accessibilityNodeInfo.hasExtras() && (parcelableArray = accessibilityNodeInfo.getExtras().getParcelableArray(AccessibilityNodeInfo.EXTRA_DATA_TEXT_CHARACTER_LOCATION_KEY)) != null) {
                for (Parcelable parcelable : parcelableArray) {
                    RectF rectF = (RectF) parcelable;
                    rectF.scale(f2);
                    if (magnificationSpec != null) {
                        rectF.scale(magnificationSpec.scale);
                        rectF.offset(magnificationSpec.offsetX, magnificationSpec.offsetY);
                    }
                }
            }
            if (magnificationSpec == null || (display = (attachInfo = (viewRootImpl = this.mViewRootImpl).mAttachInfo).mDisplay) == null) {
                return;
            }
            float f3 = attachInfo.mApplicationScale * magnificationSpec.scale;
            Rect rect3 = this.mTempRect1;
            int i2 = (int) ((attachInfo.mWindowLeft * f3) + magnificationSpec.offsetX);
            rect3.left = i2;
            int i3 = (int) ((attachInfo.mWindowTop * f3) + magnificationSpec.offsetY);
            rect3.top = i3;
            rect3.right = (int) ((viewRootImpl.mWidth * f3) + i2);
            rect3.bottom = (int) ((viewRootImpl.mHeight * f3) + i3);
            display.getRealSize(this.mTempPoint);
            Point point = this.mTempPoint;
            int i4 = point.f71x;
            int i5 = point.f72y;
            Rect rect4 = this.mTempRect2;
            rect4.set(0, 0, i4, i5);
            if (!rect3.intersect(rect4)) {
                rect4.setEmpty();
            }
            if (rect3.intersects(rect2.left, rect2.top, rect2.right, rect2.bottom)) {
                return;
            }
            accessibilityNodeInfo.setVisibleToUser(false);
        }
    }
}
