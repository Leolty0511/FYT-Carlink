package android.view;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.widget.FrameLayout;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class GhostView extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f206b = 0;
    private boolean mBeingMoved;
    private int mReferences;
    private final View mView;

    private GhostView(View view) {
        super(view.getContext());
        this.mView = view;
        view.mGhostView = this;
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        view.setTransitionVisibility(4);
        viewGroup.invalidate();
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0028  */
    public static GhostView addGhost(View view, ViewGroup viewGroup, Matrix matrix) {
        int i2;
        if (!(view.getParent() instanceof ViewGroup)) {
            throw new IllegalArgumentException("Ghosted views must be parented by a ViewGroup");
        }
        ViewGroupOverlay overlay = viewGroup.getOverlay();
        ViewOverlay.OverlayViewGroup overlayViewGroup = overlay.mOverlayViewGroup;
        GhostView ghostView = view.mGhostView;
        if (ghostView != null) {
            View view2 = (View) ghostView.getParent();
            ViewGroup viewGroup2 = (ViewGroup) view2.getParent();
            if (viewGroup2 != overlayViewGroup) {
                i2 = ghostView.mReferences;
                viewGroup2.removeView(view2);
                ghostView = null;
            } else {
                i2 = 0;
            }
        } else {
            i2 = 0;
        }
        if (ghostView == null) {
            if (matrix == null) {
                matrix = new Matrix();
                calculateMatrix(view, viewGroup, matrix);
            }
            ghostView = new GhostView(view);
            ghostView.setMatrix(matrix);
            FrameLayout frameLayout = new FrameLayout(view.getContext());
            frameLayout.setClipChildren(false);
            copySize(viewGroup, frameLayout);
            copySize(viewGroup, ghostView);
            frameLayout.addView(ghostView);
            ArrayList arrayList = new ArrayList();
            insertIntoOverlay(overlay.mOverlayViewGroup, frameLayout, ghostView, arrayList, moveGhostViewsToTop(overlay.mOverlayViewGroup, arrayList));
            ghostView.mReferences = i2;
        } else if (matrix != null) {
            ghostView.setMatrix(matrix);
        }
        ghostView.mReferences++;
        return ghostView;
    }

    public static void calculateMatrix(View view, ViewGroup viewGroup, Matrix matrix) {
        ViewGroup viewGroup2 = (ViewGroup) view.getParent();
        matrix.reset();
        viewGroup2.transformMatrixToGlobal(matrix);
        matrix.preTranslate(-viewGroup2.getScrollX(), -viewGroup2.getScrollY());
        viewGroup.transformMatrixToLocal(matrix);
    }

    private static void copySize(View view, View view2) {
        view2.setLeft(0);
        view2.setTop(0);
        view2.setRight(view.getWidth());
        view2.setBottom(view.getHeight());
    }

    public static GhostView getGhost(View view) {
        return view.mGhostView;
    }

    private static int getInsertIndex(ViewGroup viewGroup, ArrayList<View> arrayList, ArrayList<View> arrayList2, int i2) {
        int childCount = viewGroup.getChildCount() - 1;
        while (i2 <= childCount) {
            int i3 = (i2 + childCount) / 2;
            getParents(((GhostView) ((ViewGroup) viewGroup.getChildAt(i3)).getChildAt(0)).mView, arrayList2);
            if (isOnTop(arrayList, arrayList2)) {
                i2 = i3 + 1;
            } else {
                childCount = i3 - 1;
            }
            arrayList2.clear();
        }
        return i2;
    }

    private static void getParents(View view, ArrayList<View> arrayList) {
        Object parent = view.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            getParents((View) parent, arrayList);
        }
        arrayList.add(view);
    }

    private static void insertIntoOverlay(ViewGroup viewGroup, ViewGroup viewGroup2, GhostView ghostView, ArrayList<View> arrayList, int i2) {
        if (i2 == -1) {
            viewGroup.addView(viewGroup2);
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        getParents(ghostView.mView, arrayList2);
        int insertIndex = getInsertIndex(viewGroup, arrayList2, arrayList, i2);
        if (insertIndex < 0 || insertIndex >= viewGroup.getChildCount()) {
            viewGroup.addView(viewGroup2);
        } else {
            viewGroup.addView(viewGroup2, insertIndex);
        }
    }

    private static boolean isGhostWrapper(View view) {
        if (view instanceof FrameLayout) {
            FrameLayout frameLayout = (FrameLayout) view;
            if (frameLayout.getChildCount() == 1) {
                return frameLayout.getChildAt(0) instanceof GhostView;
            }
        }
        return false;
    }

    private static boolean isOnTop(ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        if (arrayList.isEmpty() || arrayList2.isEmpty() || arrayList.get(0) != arrayList2.get(0)) {
            return true;
        }
        int iMin = Math.min(arrayList.size(), arrayList2.size());
        for (int i2 = 1; i2 < iMin; i2++) {
            View view = arrayList.get(i2);
            View view2 = arrayList2.get(i2);
            if (view != view2) {
                return isOnTop(view, view2);
            }
        }
        return arrayList2.size() == iMin;
    }

    private static int moveGhostViewsToTop(ViewGroup viewGroup, ArrayList<View> arrayList) {
        int childCount = viewGroup.getChildCount();
        int childCount2 = -1;
        if (childCount == 0) {
            return -1;
        }
        int i2 = childCount - 1;
        if (isGhostWrapper(viewGroup.getChildAt(i2))) {
            int i3 = i2;
            int i4 = childCount - 2;
            while (i4 >= 0 && isGhostWrapper(viewGroup.getChildAt(i4))) {
                int i5 = i4;
                i4--;
                i3 = i5;
            }
            return i3;
        }
        for (int i6 = childCount - 2; i6 >= 0; i6--) {
            View childAt = viewGroup.getChildAt(i6);
            if (isGhostWrapper(childAt)) {
                arrayList.add(childAt);
                GhostView ghostView = (GhostView) ((ViewGroup) childAt).getChildAt(0);
                ghostView.mBeingMoved = true;
                viewGroup.removeViewAt(i6);
                ghostView.mBeingMoved = false;
            }
        }
        if (!arrayList.isEmpty()) {
            childCount2 = viewGroup.getChildCount();
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                viewGroup.addView(arrayList.get(size));
            }
            arrayList.clear();
        }
        return childCount2;
    }

    public static void removeGhost(View view) {
        GhostView ghostView = view.mGhostView;
        if (ghostView != null) {
            int i2 = ghostView.mReferences - 1;
            ghostView.mReferences = i2;
            if (i2 == 0) {
                ViewGroup viewGroup = (ViewGroup) ghostView.getParent();
                ((ViewGroup) viewGroup.getParent()).removeView(viewGroup);
            }
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mBeingMoved) {
            return;
        }
        this.mView.setTransitionVisibility(0);
        View view = this.mView;
        view.mGhostView = null;
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.invalidate();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (canvas instanceof DisplayListCanvas) {
            DisplayListCanvas displayListCanvas = (DisplayListCanvas) canvas;
            View view = this.mView;
            view.mRecreateDisplayList = true;
            RenderNode renderNodeUpdateDisplayListIfDirty = view.updateDisplayListIfDirty();
            if (renderNodeUpdateDisplayListIfDirty.isValid()) {
                displayListCanvas.insertReorderBarrier();
                displayListCanvas.drawRenderNode(renderNodeUpdateDisplayListIfDirty);
                displayListCanvas.insertInorderBarrier();
            }
        }
    }

    public void setMatrix(Matrix matrix) {
        this.mRenderNode.setAnimationMatrix(matrix);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        View view = this.mView;
        if (view.mGhostView == this) {
            view.setTransitionVisibility(i2 == 0 ? 4 : 0);
        }
    }

    private static boolean isOnTop(View view, View view2) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int childCount = viewGroup.getChildCount();
        ArrayList<View> arrayListBuildOrderedChildList = viewGroup.buildOrderedChildList();
        boolean z2 = false;
        boolean z3 = arrayListBuildOrderedChildList == null && viewGroup.isChildrenDrawingOrderEnabled();
        int i2 = 0;
        while (true) {
            if (i2 < childCount) {
                int childDrawingOrder = z3 ? viewGroup.getChildDrawingOrder(childCount, i2) : i2;
                View childAt = arrayListBuildOrderedChildList == null ? viewGroup.getChildAt(childDrawingOrder) : arrayListBuildOrderedChildList.get(childDrawingOrder);
                if (childAt == view) {
                    break;
                }
                if (childAt != view2) {
                    i2++;
                }
            }
            z2 = true;
            break;
        }
        if (arrayListBuildOrderedChildList != null) {
            arrayListBuildOrderedChildList.clear();
        }
        return z2;
    }

    public static GhostView addGhost(View view, ViewGroup viewGroup) {
        return addGhost(view, viewGroup, null);
    }
}
