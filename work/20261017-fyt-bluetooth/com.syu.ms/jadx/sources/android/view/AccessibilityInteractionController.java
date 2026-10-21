package android.view;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.util.SparseLongArray;
import android.view.accessibility.AccessibilityInteractionClient;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.accessibility.IAccessibilityInteractionConnectionCallback;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import o.f;
import u.k;

/* JADX INFO: loaded from: classes.dex */
final class AccessibilityInteractionController {
    private AddNodeInfosForViewId mAddNodeInfosForViewId;
    private final Handler mHandler;
    private final long mMyLooperThreadId;
    private final int mMyProcessId;
    private final AccessibilityNodePrefetcher mPrefetcher;
    private final ArrayList<AccessibilityNodeInfo> mTempAccessibilityNodeInfoList = new ArrayList<>();
    private final ArrayList<View> mTempArrayList = new ArrayList<>();
    private final Point mTempPoint = new Point();
    private final Rect mTempRect = new Rect();
    private final Rect mTempRect1 = new Rect();
    private final Rect mTempRect2 = new Rect();
    private final ViewRootImpl mViewRootImpl;

    public class AccessibilityNodePrefetcher {
        private static final int MAX_ACCESSIBILITY_NODE_INFO_BATCH_SIZE = 50;
        private final ArrayList<View> mTempViewList;

        private AccessibilityNodePrefetcher() {
            this.mTempViewList = new ArrayList<>();
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
            SparseLongArray childNodeIds = accessibilityNodeInfo.getChildNodeIds();
            int size = list.size();
            int size2 = childNodeIds.size();
            for (int i2 = 0; i2 < size2; i2++) {
                if (list.size() >= 50) {
                    return;
                }
                AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo = accessibilityNodeProvider.createAccessibilityNodeInfo(AccessibilityNodeInfo.getVirtualDescendantId(childNodeIds.get(i2)));
                if (accessibilityNodeInfoCreateAccessibilityNodeInfo != null) {
                    list.add(accessibilityNodeInfoCreateAccessibilityNodeInfo);
                }
            }
            if (list.size() < 50) {
                int size3 = list.size() - size;
                for (int i3 = 0; i3 < size3; i3++) {
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
            long parentNodeId = accessibilityNodeInfo.getParentNodeId();
            int accessibilityViewId = AccessibilityNodeInfo.getAccessibilityViewId(parentNodeId);
            while (accessibilityViewId != -1 && list.size() < 50) {
                int virtualDescendantId = AccessibilityNodeInfo.getVirtualDescendantId(parentNodeId);
                if (virtualDescendantId == -1 && accessibilityViewId != view.getAccessibilityViewId()) {
                    prefetchPredecessorsOfRealNode(view, list);
                    return;
                }
                AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo = accessibilityNodeProvider.createAccessibilityNodeInfo(virtualDescendantId);
                if (accessibilityNodeInfoCreateAccessibilityNodeInfo != null) {
                    list.add(accessibilityNodeInfoCreateAccessibilityNodeInfo);
                }
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
                SparseLongArray childNodeIds = accessibilityNodeInfoCreateAccessibilityNodeInfo2.getChildNodeIds();
                int size = childNodeIds.size();
                for (int i2 = 0; i2 < size && list.size() < 50; i2++) {
                    long j2 = childNodeIds.get(i2);
                    if (j2 != accessibilityNodeInfo.getSourceNodeId() && (accessibilityNodeInfoCreateAccessibilityNodeInfo = accessibilityNodeProvider.createAccessibilityNodeInfo(AccessibilityNodeInfo.getVirtualDescendantId(j2))) != null) {
                        list.add(accessibilityNodeInfoCreateAccessibilityNodeInfo);
                    }
                }
            }
        }

        public void prefetchAccessibilityNodeInfos(View view, int i2, int i3, List<AccessibilityNodeInfo> list) {
            AccessibilityNodeProvider accessibilityNodeProvider = view.getAccessibilityNodeProvider();
            if (accessibilityNodeProvider == null) {
                AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo = view.createAccessibilityNodeInfo();
                if (accessibilityNodeInfoCreateAccessibilityNodeInfo != null) {
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

    public final class AddNodeInfosForViewId implements k<View> {
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

        @Override // u.k
        public boolean apply(View view) {
            if (view.getId() != this.mViewId || !AccessibilityInteractionController.this.isShown(view)) {
                return false;
            }
            this.mInfos.add(view.createAccessibilityNodeInfo());
            return false;
        }
    }

    public class PrivateHandler extends Handler {
        private static final int MSG_FIND_ACCESSIBLITY_NODE_INFOS_BY_VIEW_ID = 3;
        private static final int MSG_FIND_ACCESSIBLITY_NODE_INFO_BY_ACCESSIBILITY_ID = 2;
        private static final int MSG_FIND_ACCESSIBLITY_NODE_INFO_BY_TEXT = 4;
        private static final int MSG_FIND_FOCUS = 5;
        private static final int MSG_FOCUS_SEARCH = 6;
        private static final int MSG_PERFORM_ACCESSIBILITY_ACTION = 1;

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
                    return "MSG_FIND_ACCESSIBLITY_NODE_INFO_BY_ACCESSIBILITY_ID";
                case 3:
                    return "MSG_FIND_ACCESSIBLITY_NODE_INFOS_BY_VIEW_ID";
                case 4:
                    return "MSG_FIND_ACCESSIBLITY_NODE_INFO_BY_TEXT";
                case 5:
                    return "MSG_FIND_FOCUS";
                case 6:
                    return "MSG_FOCUS_SEARCH";
                default:
                    throw new IllegalArgumentException("Unknown message type: " + i2);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            switch (i2) {
                case 1:
                    AccessibilityInteractionController.this.perfromAccessibilityActionUiThread(message);
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
                default:
                    throw new IllegalArgumentException("Unknown message type: " + i2);
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
        f fVar = (f) message.obj;
        int i3 = fVar.f16714h;
        int i4 = fVar.f16715i;
        int i5 = fVar.f16716j;
        IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback = (IAccessibilityInteractionConnectionCallback) fVar.f16709c;
        MagnificationSpec magnificationSpec = (MagnificationSpec) fVar.f16710d;
        fVar.c();
        ArrayList<AccessibilityNodeInfo> arrayList = this.mTempAccessibilityNodeInfoList;
        arrayList.clear();
        try {
            ViewRootImpl viewRootImpl = this.mViewRootImpl;
            View viewFindViewByAccessibilityId = viewRootImpl.mView;
            if (viewFindViewByAccessibilityId != null && (attachInfo = viewRootImpl.mAttachInfo) != null) {
                attachInfo.mAccessibilityFetchFlags = i2;
                if (i3 != -1) {
                    viewFindViewByAccessibilityId = findViewByAccessibilityId(i3);
                }
                if (viewFindViewByAccessibilityId != null && isShown(viewFindViewByAccessibilityId)) {
                    this.mPrefetcher.prefetchAccessibilityNodeInfos(viewFindViewByAccessibilityId, i4, i2, arrayList);
                }
                try {
                    this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                    applyAppScaleAndMagnificationSpecIfNeeded(arrayList, magnificationSpec);
                    if (magnificationSpec != null) {
                        magnificationSpec.recycle();
                    }
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfosResult(arrayList, i5);
                    arrayList.clear();
                    return;
                } catch (RemoteException unused) {
                    return;
                }
            }
            try {
                viewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                applyAppScaleAndMagnificationSpecIfNeeded(arrayList, magnificationSpec);
                if (magnificationSpec != null) {
                    magnificationSpec.recycle();
                }
                iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfosResult(arrayList, i5);
                arrayList.clear();
            } catch (RemoteException unused2) {
            }
        } catch (Throwable th) {
            try {
                this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                applyAppScaleAndMagnificationSpecIfNeeded(arrayList, magnificationSpec);
                if (magnificationSpec != null) {
                    magnificationSpec.recycle();
                }
                iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfosResult(arrayList, i5);
                arrayList.clear();
            } catch (RemoteException unused3) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findAccessibilityNodeInfosByTextUiThread(Message message) {
        View.AttachInfo attachInfo;
        int i2 = message.arg1;
        f fVar = (f) message.obj;
        String str = (String) fVar.f16709c;
        IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback = (IAccessibilityInteractionConnectionCallback) fVar.f16710d;
        MagnificationSpec magnificationSpec = (MagnificationSpec) fVar.f16711e;
        int i3 = fVar.f16714h;
        int i4 = fVar.f16715i;
        int i5 = fVar.f16716j;
        fVar.c();
        List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByText = null;
        try {
            ViewRootImpl viewRootImpl = this.mViewRootImpl;
            View viewFindViewByAccessibilityId = viewRootImpl.mView;
            if (viewFindViewByAccessibilityId != null && (attachInfo = viewRootImpl.mAttachInfo) != null) {
                attachInfo.mAccessibilityFetchFlags = i2;
                if (i3 != -1) {
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
                            listFindAccessibilityNodeInfosByText = this.mTempAccessibilityNodeInfoList;
                            listFindAccessibilityNodeInfosByText.clear();
                            int size = arrayList.size();
                            for (int i6 = 0; i6 < size; i6++) {
                                View view = arrayList.get(i6);
                                if (isShown(view)) {
                                    AccessibilityNodeProvider accessibilityNodeProvider2 = view.getAccessibilityNodeProvider();
                                    if (accessibilityNodeProvider2 != null) {
                                        List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByText2 = accessibilityNodeProvider2.findAccessibilityNodeInfosByText(str, -1);
                                        if (listFindAccessibilityNodeInfosByText2 != null) {
                                            listFindAccessibilityNodeInfosByText.addAll(listFindAccessibilityNodeInfosByText2);
                                        }
                                    } else {
                                        listFindAccessibilityNodeInfosByText.add(view.createAccessibilityNodeInfo());
                                    }
                                }
                            }
                        }
                    }
                }
                try {
                    this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                    applyAppScaleAndMagnificationSpecIfNeeded(listFindAccessibilityNodeInfosByText, magnificationSpec);
                    if (magnificationSpec != null) {
                        magnificationSpec.recycle();
                    }
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfosResult(listFindAccessibilityNodeInfosByText, i5);
                    return;
                } catch (RemoteException unused) {
                    return;
                }
            }
            try {
                viewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                applyAppScaleAndMagnificationSpecIfNeeded((List<AccessibilityNodeInfo>) null, magnificationSpec);
                if (magnificationSpec != null) {
                    magnificationSpec.recycle();
                }
                iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfosResult(null, i5);
            } catch (RemoteException unused2) {
            }
        } catch (Throwable th) {
            try {
                this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                applyAppScaleAndMagnificationSpecIfNeeded((List<AccessibilityNodeInfo>) null, magnificationSpec);
                if (magnificationSpec != null) {
                    magnificationSpec.recycle();
                }
                iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfosResult(null, i5);
            } catch (RemoteException unused3) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findAccessibilityNodeInfosByViewIdUiThread(Message message) {
        View.AttachInfo attachInfo;
        int i2 = message.arg1;
        int i3 = message.arg2;
        f fVar = (f) message.obj;
        int i4 = fVar.f16714h;
        IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback = (IAccessibilityInteractionConnectionCallback) fVar.f16709c;
        MagnificationSpec magnificationSpec = (MagnificationSpec) fVar.f16710d;
        String str = (String) fVar.f16711e;
        fVar.c();
        ArrayList<AccessibilityNodeInfo> arrayList = this.mTempAccessibilityNodeInfoList;
        arrayList.clear();
        try {
            ViewRootImpl viewRootImpl = this.mViewRootImpl;
            View viewFindViewByAccessibilityId = viewRootImpl.mView;
            if (viewFindViewByAccessibilityId != null && (attachInfo = viewRootImpl.mAttachInfo) != null) {
                attachInfo.mAccessibilityFetchFlags = i2;
                if (i3 != -1) {
                    viewFindViewByAccessibilityId = findViewByAccessibilityId(i3);
                }
                if (viewFindViewByAccessibilityId != null) {
                    int identifier = viewFindViewByAccessibilityId.getContext().getResources().getIdentifier(str, null, null);
                    if (identifier <= 0) {
                        try {
                            this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                            applyAppScaleAndMagnificationSpecIfNeeded(arrayList, magnificationSpec);
                            if (magnificationSpec != null) {
                                magnificationSpec.recycle();
                            }
                            iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfosResult(arrayList, i4);
                            return;
                        } catch (RemoteException unused) {
                            return;
                        }
                    }
                    if (this.mAddNodeInfosForViewId == null) {
                        this.mAddNodeInfosForViewId = new AddNodeInfosForViewId();
                    }
                    this.mAddNodeInfosForViewId.init(identifier, arrayList);
                    viewFindViewByAccessibilityId.findViewByPredicate(this.mAddNodeInfosForViewId);
                    this.mAddNodeInfosForViewId.reset();
                }
                try {
                    this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                    applyAppScaleAndMagnificationSpecIfNeeded(arrayList, magnificationSpec);
                    if (magnificationSpec != null) {
                        magnificationSpec.recycle();
                    }
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfosResult(arrayList, i4);
                    return;
                } catch (RemoteException unused2) {
                    return;
                }
            }
            try {
                viewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                applyAppScaleAndMagnificationSpecIfNeeded(arrayList, magnificationSpec);
                if (magnificationSpec != null) {
                    magnificationSpec.recycle();
                }
                iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfosResult(arrayList, i4);
            } catch (RemoteException unused3) {
            }
        } catch (Throwable th) {
            try {
                this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                applyAppScaleAndMagnificationSpecIfNeeded(arrayList, magnificationSpec);
                if (magnificationSpec != null) {
                    magnificationSpec.recycle();
                }
                iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfosResult(arrayList, i4);
            } catch (RemoteException unused4) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findFocusUiThread(Message message) {
        View.AttachInfo attachInfo;
        AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo;
        int i2 = message.arg1;
        int i3 = message.arg2;
        f fVar = (f) message.obj;
        int i4 = fVar.f16714h;
        int i5 = fVar.f16715i;
        int i6 = fVar.f16716j;
        IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback = (IAccessibilityInteractionConnectionCallback) fVar.f16709c;
        MagnificationSpec magnificationSpec = (MagnificationSpec) fVar.f16710d;
        fVar.c();
        AccessibilityNodeInfo accessibilityNodeInfoFindFocus = null;
        try {
            ViewRootImpl viewRootImpl = this.mViewRootImpl;
            View viewFindViewByAccessibilityId = viewRootImpl.mView;
            if (viewFindViewByAccessibilityId != null && (attachInfo = viewRootImpl.mAttachInfo) != null) {
                attachInfo.mAccessibilityFetchFlags = i2;
                if (i5 != -1) {
                    viewFindViewByAccessibilityId = findViewByAccessibilityId(i5);
                }
                if (viewFindViewByAccessibilityId != null && isShown(viewFindViewByAccessibilityId)) {
                    if (i3 == 1) {
                        View viewFindFocus = viewFindViewByAccessibilityId.findFocus();
                        if (viewFindFocus != null && isShown(viewFindFocus)) {
                            AccessibilityNodeProvider accessibilityNodeProvider = viewFindFocus.getAccessibilityNodeProvider();
                            accessibilityNodeInfoFindFocus = accessibilityNodeProvider != null ? accessibilityNodeProvider.findFocus(i3) : null;
                            if (accessibilityNodeInfoFindFocus == null) {
                                accessibilityNodeInfoCreateAccessibilityNodeInfo = viewFindFocus.createAccessibilityNodeInfo();
                                accessibilityNodeInfoFindFocus = accessibilityNodeInfoCreateAccessibilityNodeInfo;
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
                                    accessibilityNodeInfoCreateAccessibilityNodeInfo = AccessibilityNodeInfo.obtain(accessibilityNodeInfo);
                                    accessibilityNodeInfoFindFocus = accessibilityNodeInfoCreateAccessibilityNodeInfo;
                                }
                            } else if (i6 == -1) {
                                accessibilityNodeInfoCreateAccessibilityNodeInfo = view.createAccessibilityNodeInfo();
                                accessibilityNodeInfoFindFocus = accessibilityNodeInfoCreateAccessibilityNodeInfo;
                            }
                        }
                    }
                }
                try {
                    this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                    applyAppScaleAndMagnificationSpecIfNeeded(accessibilityNodeInfoFindFocus, magnificationSpec);
                    if (magnificationSpec != null) {
                        magnificationSpec.recycle();
                    }
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfoResult(accessibilityNodeInfoFindFocus, i4);
                    return;
                } catch (RemoteException unused) {
                    return;
                }
            }
            try {
                viewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                applyAppScaleAndMagnificationSpecIfNeeded((AccessibilityNodeInfo) null, magnificationSpec);
                if (magnificationSpec != null) {
                    magnificationSpec.recycle();
                }
                iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfoResult(null, i4);
            } catch (RemoteException unused2) {
            }
        } catch (Throwable th) {
            try {
                this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                applyAppScaleAndMagnificationSpecIfNeeded((AccessibilityNodeInfo) null, magnificationSpec);
                if (magnificationSpec != null) {
                    magnificationSpec.recycle();
                }
                iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfoResult(null, i4);
            } catch (RemoteException unused3) {
            }
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
        f fVar = (f) message.obj;
        int i4 = fVar.f16715i;
        int i5 = fVar.f16716j;
        IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback = (IAccessibilityInteractionConnectionCallback) fVar.f16709c;
        MagnificationSpec magnificationSpec = (MagnificationSpec) fVar.f16710d;
        fVar.c();
        AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo = null;
        try {
            ViewRootImpl viewRootImpl = this.mViewRootImpl;
            View viewFindViewByAccessibilityId = viewRootImpl.mView;
            if (viewFindViewByAccessibilityId != null && (attachInfo = viewRootImpl.mAttachInfo) != null) {
                attachInfo.mAccessibilityFetchFlags = i2;
                if (i3 != -1) {
                    viewFindViewByAccessibilityId = findViewByAccessibilityId(i3);
                }
                if (viewFindViewByAccessibilityId != null && isShown(viewFindViewByAccessibilityId) && (viewFocusSearch = viewFindViewByAccessibilityId.focusSearch(i4)) != null) {
                    accessibilityNodeInfoCreateAccessibilityNodeInfo = viewFocusSearch.createAccessibilityNodeInfo();
                }
                try {
                    this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                    applyAppScaleAndMagnificationSpecIfNeeded(accessibilityNodeInfoCreateAccessibilityNodeInfo, magnificationSpec);
                    if (magnificationSpec != null) {
                        magnificationSpec.recycle();
                    }
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfoResult(accessibilityNodeInfoCreateAccessibilityNodeInfo, i5);
                    return;
                } catch (RemoteException unused) {
                    return;
                }
            }
            try {
                viewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                applyAppScaleAndMagnificationSpecIfNeeded((AccessibilityNodeInfo) null, magnificationSpec);
                if (magnificationSpec != null) {
                    magnificationSpec.recycle();
                }
                iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfoResult(null, i5);
            } catch (RemoteException unused2) {
            }
        } catch (Throwable th) {
            try {
                this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                applyAppScaleAndMagnificationSpecIfNeeded((AccessibilityNodeInfo) null, magnificationSpec);
                if (magnificationSpec != null) {
                    magnificationSpec.recycle();
                }
                iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfoResult(null, i5);
            } catch (RemoteException unused3) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isShown(View view) {
        View.AttachInfo attachInfo = view.mAttachInfo;
        return attachInfo != null && attachInfo.mWindowVisibility == 0 && view.isShown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x0048  */
    public void perfromAccessibilityActionUiThread(Message message) {
        View.AttachInfo attachInfo;
        boolean zPerformAccessibilityAction;
        int i2 = message.arg1;
        int i3 = message.arg2;
        f fVar = (f) message.obj;
        int i4 = fVar.f16714h;
        int i5 = fVar.f16715i;
        int i6 = fVar.f16716j;
        IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback = (IAccessibilityInteractionConnectionCallback) fVar.f16709c;
        Bundle bundle = (Bundle) fVar.f16710d;
        fVar.c();
        try {
            ViewRootImpl viewRootImpl = this.mViewRootImpl;
            View viewFindViewByAccessibilityId = viewRootImpl.mView;
            if (viewFindViewByAccessibilityId != null && (attachInfo = viewRootImpl.mAttachInfo) != null) {
                attachInfo.mAccessibilityFetchFlags = i2;
                if (i3 != -1) {
                    viewFindViewByAccessibilityId = findViewByAccessibilityId(i3);
                }
                if (viewFindViewByAccessibilityId == null || !isShown(viewFindViewByAccessibilityId)) {
                    zPerformAccessibilityAction = false;
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

    private boolean shouldApplyAppScaleAndMagnificationSpec(float f2, MagnificationSpec magnificationSpec) {
        return (f2 == 1.0f && (magnificationSpec == null || magnificationSpec.isNop())) ? false : true;
    }

    public void findAccessibilityNodeInfoByAccessibilityIdClientThread(long j2, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j3, MagnificationSpec magnificationSpec) {
        Message messageObtainMessage = this.mHandler.obtainMessage();
        messageObtainMessage.what = 2;
        messageObtainMessage.arg1 = i3;
        f fVarB = f.b();
        fVarB.f16714h = AccessibilityNodeInfo.getAccessibilityViewId(j2);
        fVarB.f16715i = AccessibilityNodeInfo.getVirtualDescendantId(j2);
        fVarB.f16716j = i2;
        fVarB.f16709c = iAccessibilityInteractionConnectionCallback;
        fVarB.f16710d = magnificationSpec;
        messageObtainMessage.obj = fVarB;
        if (i4 == this.mMyProcessId && j3 == this.mMyLooperThreadId) {
            AccessibilityInteractionClient.getInstanceForThread(j3).setSameThreadMessage(messageObtainMessage);
        } else {
            this.mHandler.sendMessage(messageObtainMessage);
        }
    }

    public void findAccessibilityNodeInfosByTextClientThread(long j2, String str, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j3, MagnificationSpec magnificationSpec) {
        Message messageObtainMessage = this.mHandler.obtainMessage();
        messageObtainMessage.what = 4;
        messageObtainMessage.arg1 = i3;
        f fVarB = f.b();
        fVarB.f16709c = str;
        fVarB.f16710d = iAccessibilityInteractionConnectionCallback;
        fVarB.f16711e = magnificationSpec;
        fVarB.f16714h = AccessibilityNodeInfo.getAccessibilityViewId(j2);
        fVarB.f16715i = AccessibilityNodeInfo.getVirtualDescendantId(j2);
        fVarB.f16716j = i2;
        messageObtainMessage.obj = fVarB;
        if (i4 == this.mMyProcessId && j3 == this.mMyLooperThreadId) {
            AccessibilityInteractionClient.getInstanceForThread(j3).setSameThreadMessage(messageObtainMessage);
        } else {
            this.mHandler.sendMessage(messageObtainMessage);
        }
    }

    public void findAccessibilityNodeInfosByViewIdClientThread(long j2, String str, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j3, MagnificationSpec magnificationSpec) {
        Message messageObtainMessage = this.mHandler.obtainMessage();
        messageObtainMessage.what = 3;
        messageObtainMessage.arg1 = i3;
        messageObtainMessage.arg2 = AccessibilityNodeInfo.getAccessibilityViewId(j2);
        f fVarB = f.b();
        fVarB.f16714h = i2;
        fVarB.f16709c = iAccessibilityInteractionConnectionCallback;
        fVarB.f16710d = magnificationSpec;
        fVarB.f16711e = str;
        messageObtainMessage.obj = fVarB;
        if (i4 == this.mMyProcessId && j3 == this.mMyLooperThreadId) {
            AccessibilityInteractionClient.getInstanceForThread(j3).setSameThreadMessage(messageObtainMessage);
        } else {
            this.mHandler.sendMessage(messageObtainMessage);
        }
    }

    public void findFocusClientThread(long j2, int i2, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, int i5, long j3, MagnificationSpec magnificationSpec) {
        Message messageObtainMessage = this.mHandler.obtainMessage();
        messageObtainMessage.what = 5;
        messageObtainMessage.arg1 = i4;
        messageObtainMessage.arg2 = i2;
        f fVarB = f.b();
        fVarB.f16714h = i3;
        fVarB.f16715i = AccessibilityNodeInfo.getAccessibilityViewId(j2);
        fVarB.f16716j = AccessibilityNodeInfo.getVirtualDescendantId(j2);
        fVarB.f16709c = iAccessibilityInteractionConnectionCallback;
        fVarB.f16710d = magnificationSpec;
        messageObtainMessage.obj = fVarB;
        if (i5 == this.mMyProcessId && j3 == this.mMyLooperThreadId) {
            AccessibilityInteractionClient.getInstanceForThread(j3).setSameThreadMessage(messageObtainMessage);
        } else {
            this.mHandler.sendMessage(messageObtainMessage);
        }
    }

    public void focusSearchClientThread(long j2, int i2, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, int i5, long j3, MagnificationSpec magnificationSpec) {
        Message messageObtainMessage = this.mHandler.obtainMessage();
        messageObtainMessage.what = 6;
        messageObtainMessage.arg1 = i4;
        messageObtainMessage.arg2 = AccessibilityNodeInfo.getAccessibilityViewId(j2);
        f fVarB = f.b();
        fVarB.f16715i = i2;
        fVarB.f16716j = i3;
        fVarB.f16709c = iAccessibilityInteractionConnectionCallback;
        fVarB.f16710d = magnificationSpec;
        messageObtainMessage.obj = fVarB;
        if (i5 == this.mMyProcessId && j3 == this.mMyLooperThreadId) {
            AccessibilityInteractionClient.getInstanceForThread(j3).setSameThreadMessage(messageObtainMessage);
        } else {
            this.mHandler.sendMessage(messageObtainMessage);
        }
    }

    public void performAccessibilityActionClientThread(long j2, int i2, Bundle bundle, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, int i5, long j3) {
        Message messageObtainMessage = this.mHandler.obtainMessage();
        messageObtainMessage.what = 1;
        messageObtainMessage.arg1 = i4;
        messageObtainMessage.arg2 = AccessibilityNodeInfo.getAccessibilityViewId(j2);
        f fVarB = f.b();
        fVarB.f16714h = AccessibilityNodeInfo.getVirtualDescendantId(j2);
        fVarB.f16715i = i2;
        fVarB.f16716j = i3;
        fVarB.f16709c = iAccessibilityInteractionConnectionCallback;
        fVarB.f16710d = bundle;
        messageObtainMessage.obj = fVarB;
        if (i5 == this.mMyProcessId && j3 == this.mMyLooperThreadId) {
            AccessibilityInteractionClient.getInstanceForThread(j3).setSameThreadMessage(messageObtainMessage);
        } else {
            this.mHandler.sendMessage(messageObtainMessage);
        }
    }

    private void applyAppScaleAndMagnificationSpecIfNeeded(AccessibilityNodeInfo accessibilityNodeInfo, MagnificationSpec magnificationSpec) {
        ViewRootImpl viewRootImpl;
        View.AttachInfo attachInfo;
        Display display;
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
            if (magnificationSpec == null || (display = (attachInfo = (viewRootImpl = this.mViewRootImpl).mAttachInfo).mDisplay) == null) {
                return;
            }
            float f3 = attachInfo.mApplicationScale * magnificationSpec.scale;
            Rect rect3 = this.mTempRect1;
            int i2 = (int) ((attachInfo.mWindowLeft * f3) + magnificationSpec.offsetX);
            rect3.left = i2;
            int i3 = (int) ((attachInfo.mWindowTop * f3) + magnificationSpec.offsetY);
            rect3.top = i3;
            rect3.right = (int) (i2 + (viewRootImpl.mWidth * f3));
            rect3.bottom = (int) (i3 + (viewRootImpl.mHeight * f3));
            display.getRealSize(this.mTempPoint);
            Point point = this.mTempPoint;
            int i4 = point.f137x;
            int i5 = point.f138y;
            Rect rect4 = this.mTempRect2;
            rect4.set(0, 0, i4, i5);
            rect3.intersect(rect4);
            if (rect3.intersects(rect2.left, rect2.top, rect2.right, rect2.bottom)) {
                return;
            }
            accessibilityNodeInfo.setVisibleToUser(false);
        }
    }
}
