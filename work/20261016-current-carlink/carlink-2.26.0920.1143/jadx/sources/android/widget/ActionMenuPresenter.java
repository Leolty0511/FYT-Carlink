package android.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.internal.R;
import com.android.internal.view.ActionBarPolicy;
import com.android.internal.view.menu.ActionMenuItemView;
import com.android.internal.view.menu.BaseMenuPresenter;
import com.android.internal.view.menu.MenuBuilder;
import com.android.internal.view.menu.MenuItemImpl;
import com.android.internal.view.menu.MenuPopupHelper;
import com.android.internal.view.menu.MenuPresenter;
import com.android.internal.view.menu.MenuView;
import com.android.internal.view.menu.ShowableListMenu;
import com.android.internal.view.menu.SubMenuBuilder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ActionMenuPresenter extends BaseMenuPresenter implements ActionProvider.SubUiVisibilityListener {
    private static final boolean ACTIONBAR_ANIMATIONS_ENABLED = false;
    private static final int ITEM_ANIMATION_DURATION = 150;
    private final SparseBooleanArray mActionButtonGroups;
    private ActionButtonSubmenu mActionButtonPopup;
    private int mActionItemWidthLimit;
    private View.OnAttachStateChangeListener mAttachStateChangeListener;
    private boolean mExpandedActionViewsExclusive;
    private ViewTreeObserver.OnPreDrawListener mItemAnimationPreDrawListener;
    private int mMaxItems;
    private boolean mMaxItemsSet;
    private int mMinCellSize;
    int mOpenSubMenuId;
    private OverflowMenuButton mOverflowButton;
    private OverflowPopup mOverflowPopup;
    private Drawable mPendingOverflowIcon;
    private boolean mPendingOverflowIconSet;
    private ActionMenuPopupCallback mPopupCallback;
    final PopupPresenterCallback mPopupPresenterCallback;
    private SparseArray<MenuItemLayoutInfo> mPostLayoutItems;
    private OpenOverflowRunnable mPostedOpenRunnable;
    private SparseArray<MenuItemLayoutInfo> mPreLayoutItems;
    private boolean mReserveOverflow;
    private boolean mReserveOverflowSet;
    private List<ItemAnimationInfo> mRunningItemAnimations;
    private boolean mStrictWidthLimit;
    private int mWidthLimit;
    private boolean mWidthLimitSet;

    public class ActionButtonSubmenu extends MenuPopupHelper {
        public ActionButtonSubmenu(Context context, SubMenuBuilder subMenuBuilder, View view) {
            super(context, subMenuBuilder, view, false, 16843844);
            if (!((MenuItemImpl) subMenuBuilder.getItem()).isActionButton()) {
                setAnchorView(ActionMenuPresenter.this.mOverflowButton == null ? (View) ((BaseMenuPresenter) ActionMenuPresenter.this).mMenuView : ActionMenuPresenter.this.mOverflowButton);
            }
            setPresenterCallback(ActionMenuPresenter.this.mPopupPresenterCallback);
        }

        @Override // com.android.internal.view.menu.MenuPopupHelper
        public void onDismiss() {
            ActionMenuPresenter.this.mActionButtonPopup = null;
            ActionMenuPresenter.this.mOpenSubMenuId = 0;
            super.onDismiss();
        }
    }

    public class ActionMenuPopupCallback extends ActionMenuItemView.PopupCallback {
        private ActionMenuPopupCallback() {
        }

        @Override // com.android.internal.view.menu.ActionMenuItemView.PopupCallback
        public ShowableListMenu getPopup() {
            if (ActionMenuPresenter.this.mActionButtonPopup != null) {
                return ActionMenuPresenter.this.mActionButtonPopup.getPopup();
            }
            return null;
        }
    }

    public static class ItemAnimationInfo {
        static final int FADE_IN = 1;
        static final int FADE_OUT = 2;
        static final int MOVE = 0;
        int animType;
        Animator animator;
        int id;
        MenuItemLayoutInfo menuItemLayoutInfo;

        public ItemAnimationInfo(int i2, MenuItemLayoutInfo menuItemLayoutInfo, Animator animator, int i3) {
            this.id = i2;
            this.menuItemLayoutInfo = menuItemLayoutInfo;
            this.animator = animator;
            this.animType = i3;
        }
    }

    public static class MenuItemLayoutInfo {
        int left;
        int top;
        View view;

        public MenuItemLayoutInfo(View view, boolean z2) {
            this.left = view.getLeft();
            this.top = view.getTop();
            if (z2) {
                this.left = (int) (view.getTranslationX() + this.left);
                this.top = (int) (view.getTranslationY() + this.top);
            }
            this.view = view;
        }
    }

    public class OpenOverflowRunnable implements Runnable {
        private OverflowPopup mPopup;

        public OpenOverflowRunnable(OverflowPopup overflowPopup) {
            this.mPopup = overflowPopup;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((BaseMenuPresenter) ActionMenuPresenter.this).mMenu != null) {
                ((BaseMenuPresenter) ActionMenuPresenter.this).mMenu.changeMenuMode();
            }
            View view = (View) ((BaseMenuPresenter) ActionMenuPresenter.this).mMenuView;
            if (view != null && view.getWindowToken() != null && this.mPopup.tryShow()) {
                ActionMenuPresenter.this.mOverflowPopup = this.mPopup;
            }
            ActionMenuPresenter.this.mPostedOpenRunnable = null;
        }
    }

    public class OverflowMenuButton extends ImageButton implements ActionMenuView.ActionMenuChildView {
        public OverflowMenuButton(Context context) {
            super(context, null, 16843510);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            setOnTouchListener(new ForwardingListener(this) { // from class: android.widget.ActionMenuPresenter.OverflowMenuButton.1
                @Override // android.widget.ForwardingListener
                public ShowableListMenu getPopup() {
                    if (ActionMenuPresenter.this.mOverflowPopup == null) {
                        return null;
                    }
                    return ActionMenuPresenter.this.mOverflowPopup.getPopup();
                }

                @Override // android.widget.ForwardingListener
                public boolean onForwardingStarted() {
                    ActionMenuPresenter.this.showOverflowMenu();
                    return true;
                }

                @Override // android.widget.ForwardingListener
                public boolean onForwardingStopped() {
                    if (ActionMenuPresenter.this.mPostedOpenRunnable != null) {
                        return false;
                    }
                    ActionMenuPresenter.this.hideOverflowMenu();
                    return true;
                }
            });
        }

        @Override // android.widget.ActionMenuView.ActionMenuChildView
        public boolean needsDividerAfter() {
            return false;
        }

        @Override // android.widget.ActionMenuView.ActionMenuChildView
        public boolean needsDividerBefore() {
            return false;
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
            accessibilityNodeInfo.setCanOpenPopup(true);
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.showOverflowMenu();
            return true;
        }

        @Override // android.widget.ImageView, android.view.View
        public boolean setFrame(int i2, int i3, int i4, int i5) {
            boolean frame = super.setFrame(i2, i3, i4, i5);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int iMax = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                background.setHotspotBounds(paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
            }
            return frame;
        }
    }

    public class OverflowPopup extends MenuPopupHelper {
        public OverflowPopup(Context context, MenuBuilder menuBuilder, View view, boolean z2) {
            super(context, menuBuilder, view, z2, 16843844);
            setGravity(8388613);
            setPresenterCallback(ActionMenuPresenter.this.mPopupPresenterCallback);
        }

        @Override // com.android.internal.view.menu.MenuPopupHelper
        public void onDismiss() {
            if (((BaseMenuPresenter) ActionMenuPresenter.this).mMenu != null) {
                ((BaseMenuPresenter) ActionMenuPresenter.this).mMenu.close();
            }
            ActionMenuPresenter.this.mOverflowPopup = null;
            super.onDismiss();
        }
    }

    public class PopupPresenterCallback implements MenuPresenter.Callback {
        private PopupPresenterCallback() {
        }

        @Override // com.android.internal.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z2) {
            if (menuBuilder instanceof SubMenuBuilder) {
                menuBuilder.getRootMenu().close(false);
            }
            MenuPresenter.Callback callback = ActionMenuPresenter.this.getCallback();
            if (callback != null) {
                callback.onCloseMenu(menuBuilder, z2);
            }
        }

        @Override // com.android.internal.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            if (menuBuilder == null) {
                return false;
            }
            ActionMenuPresenter.this.mOpenSubMenuId = ((SubMenuBuilder) menuBuilder).getItem().getItemId();
            MenuPresenter.Callback callback = ActionMenuPresenter.this.getCallback();
            if (callback != null) {
                return callback.onOpenSubMenu(menuBuilder);
            }
            return false;
        }
    }

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.widget.ActionMenuPresenter.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };
        public int openSubMenuId;

        public SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.openSubMenuId);
        }

        public SavedState(Parcel parcel) {
            this.openSubMenuId = parcel.readInt();
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, R.layout.action_menu_layout, R.layout.action_menu_item_layout);
        this.mActionButtonGroups = new SparseBooleanArray();
        this.mPopupPresenterCallback = new PopupPresenterCallback();
        this.mPreLayoutItems = new SparseArray<>();
        this.mPostLayoutItems = new SparseArray<>();
        this.mRunningItemAnimations = new ArrayList();
        this.mItemAnimationPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: android.widget.ActionMenuPresenter.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                ActionMenuPresenter.this.computeMenuItemAnimationInfo(false);
                ((View) ((BaseMenuPresenter) ActionMenuPresenter.this).mMenuView).getViewTreeObserver().removeOnPreDrawListener(this);
                ActionMenuPresenter.this.runItemAnimations();
                return true;
            }
        };
        this.mAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: android.widget.ActionMenuPresenter.2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                ((View) ((BaseMenuPresenter) ActionMenuPresenter.this).mMenuView).getViewTreeObserver().removeOnPreDrawListener(ActionMenuPresenter.this.mItemAnimationPreDrawListener);
                ActionMenuPresenter.this.mPreLayoutItems.clear();
                ActionMenuPresenter.this.mPostLayoutItems.clear();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void computeMenuItemAnimationInfo(boolean z2) {
        ViewGroup viewGroup = (ViewGroup) this.mMenuView;
        int childCount = viewGroup.getChildCount();
        SparseArray<MenuItemLayoutInfo> sparseArray = z2 ? this.mPreLayoutItems : this.mPostLayoutItems;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            int id = childAt.getId();
            if (id > 0 && childAt.getWidth() != 0 && childAt.getHeight() != 0) {
                sparseArray.put(id, new MenuItemLayoutInfo(childAt, z2));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private View findViewForItem(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.mMenuView;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if ((childAt instanceof MenuView.ItemView) && ((MenuView.ItemView) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runItemAnimations() {
        int i2 = 0;
        while (true) {
            float alpha = 1.0f;
            if (i2 >= this.mPreLayoutItems.size()) {
                break;
            }
            int iKeyAt = this.mPreLayoutItems.keyAt(i2);
            final MenuItemLayoutInfo menuItemLayoutInfo = this.mPreLayoutItems.get(iKeyAt);
            int iIndexOfKey = this.mPostLayoutItems.indexOfKey(iKeyAt);
            if (iIndexOfKey >= 0) {
                MenuItemLayoutInfo menuItemLayoutInfoValueAt = this.mPostLayoutItems.valueAt(iIndexOfKey);
                int i3 = menuItemLayoutInfo.left;
                int i4 = menuItemLayoutInfoValueAt.left;
                PropertyValuesHolder propertyValuesHolderOfFloat = i3 != i4 ? PropertyValuesHolder.ofFloat(View.TRANSLATION_X, i3 - i4, 0.0f) : null;
                int i5 = menuItemLayoutInfo.top;
                int i6 = menuItemLayoutInfoValueAt.top;
                PropertyValuesHolder propertyValuesHolderOfFloat2 = i5 != i6 ? PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, i5 - i6, 0.0f) : null;
                if (propertyValuesHolderOfFloat != null || propertyValuesHolderOfFloat2 != null) {
                    for (int i7 = 0; i7 < this.mRunningItemAnimations.size(); i7++) {
                        ItemAnimationInfo itemAnimationInfo = this.mRunningItemAnimations.get(i7);
                        if (itemAnimationInfo.id == iKeyAt && itemAnimationInfo.animType == 0) {
                            itemAnimationInfo.animator.cancel();
                        }
                    }
                    ObjectAnimator objectAnimatorOfPropertyValuesHolder = propertyValuesHolderOfFloat != null ? propertyValuesHolderOfFloat2 != null ? ObjectAnimator.ofPropertyValuesHolder(menuItemLayoutInfoValueAt.view, propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2) : ObjectAnimator.ofPropertyValuesHolder(menuItemLayoutInfoValueAt.view, propertyValuesHolderOfFloat) : ObjectAnimator.ofPropertyValuesHolder(menuItemLayoutInfoValueAt.view, propertyValuesHolderOfFloat2);
                    objectAnimatorOfPropertyValuesHolder.setDuration(150L);
                    objectAnimatorOfPropertyValuesHolder.start();
                    this.mRunningItemAnimations.add(new ItemAnimationInfo(iKeyAt, menuItemLayoutInfoValueAt, objectAnimatorOfPropertyValuesHolder, 0));
                    objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: android.widget.ActionMenuPresenter.3
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            for (int i8 = 0; i8 < ActionMenuPresenter.this.mRunningItemAnimations.size(); i8++) {
                                if (((ItemAnimationInfo) ActionMenuPresenter.this.mRunningItemAnimations.get(i8)).animator == animator) {
                                    ActionMenuPresenter.this.mRunningItemAnimations.remove(i8);
                                    return;
                                }
                            }
                        }
                    });
                }
                this.mPostLayoutItems.remove(iKeyAt);
            } else {
                for (int i8 = 0; i8 < this.mRunningItemAnimations.size(); i8++) {
                    ItemAnimationInfo itemAnimationInfo2 = this.mRunningItemAnimations.get(i8);
                    if (itemAnimationInfo2.id == iKeyAt && itemAnimationInfo2.animType == 1) {
                        alpha = itemAnimationInfo2.menuItemLayoutInfo.view.getAlpha();
                        itemAnimationInfo2.animator.cancel();
                    }
                }
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(menuItemLayoutInfo.view, View.ALPHA, alpha, 0.0f);
                ((ViewGroup) this.mMenuView).getOverlay().add(menuItemLayoutInfo.view);
                objectAnimatorOfFloat.setDuration(150L);
                objectAnimatorOfFloat.start();
                this.mRunningItemAnimations.add(new ItemAnimationInfo(iKeyAt, menuItemLayoutInfo, objectAnimatorOfFloat, 2));
                objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: android.widget.ActionMenuPresenter.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        for (int i9 = 0; i9 < ActionMenuPresenter.this.mRunningItemAnimations.size(); i9++) {
                            if (((ItemAnimationInfo) ActionMenuPresenter.this.mRunningItemAnimations.get(i9)).animator == animator) {
                                ActionMenuPresenter.this.mRunningItemAnimations.remove(i9);
                                break;
                            }
                        }
                        ((ViewGroup) ((BaseMenuPresenter) ActionMenuPresenter.this).mMenuView).getOverlay().remove(menuItemLayoutInfo.view);
                    }
                });
            }
            i2++;
        }
        for (int i9 = 0; i9 < this.mPostLayoutItems.size(); i9++) {
            int iKeyAt2 = this.mPostLayoutItems.keyAt(i9);
            int iIndexOfKey2 = this.mPostLayoutItems.indexOfKey(iKeyAt2);
            if (iIndexOfKey2 >= 0) {
                MenuItemLayoutInfo menuItemLayoutInfoValueAt2 = this.mPostLayoutItems.valueAt(iIndexOfKey2);
                float alpha2 = 0.0f;
                for (int i10 = 0; i10 < this.mRunningItemAnimations.size(); i10++) {
                    ItemAnimationInfo itemAnimationInfo3 = this.mRunningItemAnimations.get(i10);
                    if (itemAnimationInfo3.id == iKeyAt2 && itemAnimationInfo3.animType == 2) {
                        alpha2 = itemAnimationInfo3.menuItemLayoutInfo.view.getAlpha();
                        itemAnimationInfo3.animator.cancel();
                    }
                }
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(menuItemLayoutInfoValueAt2.view, View.ALPHA, alpha2, 1.0f);
                objectAnimatorOfFloat2.start();
                objectAnimatorOfFloat2.setDuration(150L);
                this.mRunningItemAnimations.add(new ItemAnimationInfo(iKeyAt2, menuItemLayoutInfoValueAt2, objectAnimatorOfFloat2, 1));
                objectAnimatorOfFloat2.addListener(new AnimatorListenerAdapter() { // from class: android.widget.ActionMenuPresenter.5
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        for (int i11 = 0; i11 < ActionMenuPresenter.this.mRunningItemAnimations.size(); i11++) {
                            if (((ItemAnimationInfo) ActionMenuPresenter.this.mRunningItemAnimations.get(i11)).animator == animator) {
                                ActionMenuPresenter.this.mRunningItemAnimations.remove(i11);
                                return;
                            }
                        }
                    }
                });
            }
        }
        this.mPreLayoutItems.clear();
        this.mPostLayoutItems.clear();
    }

    private void setupItemAnimations() {
        computeMenuItemAnimationInfo(true);
        ((View) this.mMenuView).getViewTreeObserver().addOnPreDrawListener(this.mItemAnimationPreDrawListener);
    }

    @Override // com.android.internal.view.menu.BaseMenuPresenter
    public void bindItemView(MenuItemImpl menuItemImpl, MenuView.ItemView itemView) {
        itemView.initialize(menuItemImpl, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) itemView;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.mMenuView);
        if (this.mPopupCallback == null) {
            this.mPopupCallback = new ActionMenuPopupCallback();
        }
        actionMenuItemView.setPopupCallback(this.mPopupCallback);
    }

    public boolean dismissPopupMenus() {
        return hideOverflowMenu() | hideSubMenus();
    }

    @Override // com.android.internal.view.menu.BaseMenuPresenter
    public boolean filterLeftoverView(ViewGroup viewGroup, int i2) {
        if (viewGroup.getChildAt(i2) == this.mOverflowButton) {
            return false;
        }
        return super.filterLeftoverView(viewGroup, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.widget.ActionMenuPresenter] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r15v1, types: [com.android.internal.view.menu.MenuItemImpl] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v12 */
    @Override // com.android.internal.view.menu.BaseMenuPresenter, com.android.internal.view.menu.MenuPresenter
    public boolean flagActionItems() {
        ArrayList<MenuItemImpl> visibleItems;
        int size;
        int iMeasureChildForCells;
        int i2;
        ?? r0;
        ActionMenuPresenter actionMenuPresenter = this;
        MenuBuilder menuBuilder = actionMenuPresenter.mMenu;
        View view = null;
        ?? r3 = 0;
        if (menuBuilder != null) {
            visibleItems = menuBuilder.getVisibleItems();
            size = visibleItems.size();
        } else {
            visibleItems = null;
            size = 0;
        }
        int i3 = actionMenuPresenter.mMaxItems;
        int i4 = actionMenuPresenter.mActionItemWidthLimit;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) actionMenuPresenter.mMenuView;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            MenuItemImpl menuItemImpl = visibleItems.get(i7);
            if (menuItemImpl.requiresActionButton()) {
                i5++;
            } else if (menuItemImpl.requestsActionButton()) {
                i6++;
            } else {
                z2 = true;
            }
            if (actionMenuPresenter.mExpandedActionViewsExclusive && menuItemImpl.isActionViewExpanded()) {
                i3 = 0;
            }
        }
        if (actionMenuPresenter.mReserveOverflow && (z2 || i6 + i5 > i3)) {
            i3--;
        }
        int i8 = i3 - i5;
        SparseBooleanArray sparseBooleanArray = actionMenuPresenter.mActionButtonGroups;
        sparseBooleanArray.clear();
        if (actionMenuPresenter.mStrictWidthLimit) {
            int i9 = actionMenuPresenter.mMinCellSize;
            iMeasureChildForCells = i4 / i9;
            i2 = ((i4 % i9) / iMeasureChildForCells) + i9;
        } else {
            iMeasureChildForCells = 0;
            i2 = 0;
        }
        int i10 = 0;
        int i11 = 0;
        ?? r1 = actionMenuPresenter;
        while (i10 < size) {
            MenuItemImpl menuItemImpl2 = visibleItems.get(i10);
            if (menuItemImpl2.requiresActionButton()) {
                View itemView = r1.getItemView(menuItemImpl2, view, viewGroup);
                if (r1.mStrictWidthLimit) {
                    iMeasureChildForCells -= ActionMenuView.measureChildForCells(itemView, i2, iMeasureChildForCells, iMakeMeasureSpec, r3);
                } else {
                    itemView.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                }
                int measuredWidth = itemView.getMeasuredWidth();
                i4 -= measuredWidth;
                if (i11 == 0) {
                    i11 = measuredWidth;
                }
                int groupId = menuItemImpl2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                menuItemImpl2.setIsActionButton(true);
                r0 = r3;
            } else if (menuItemImpl2.requestsActionButton()) {
                int groupId2 = menuItemImpl2.getGroupId();
                boolean z3 = sparseBooleanArray.get(groupId2);
                boolean z4 = (i8 > 0 || z3) && i4 > 0 && (!r1.mStrictWidthLimit || iMeasureChildForCells > 0);
                boolean z5 = z4;
                if (z4) {
                    View itemView2 = r1.getItemView(menuItemImpl2, null, viewGroup);
                    if (r1.mStrictWidthLimit) {
                        int iMeasureChildForCells2 = ActionMenuView.measureChildForCells(itemView2, i2, iMeasureChildForCells, iMakeMeasureSpec, 0);
                        iMeasureChildForCells -= iMeasureChildForCells2;
                        if (iMeasureChildForCells2 == 0) {
                            z5 = false;
                        }
                    } else {
                        itemView2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    }
                    boolean z6 = z5;
                    int measuredWidth2 = itemView2.getMeasuredWidth();
                    i4 -= measuredWidth2;
                    if (i11 == 0) {
                        i11 = measuredWidth2;
                    }
                    z4 = z6 & (!r1.mStrictWidthLimit ? i4 + i11 <= 0 : i4 < 0);
                }
                if (z4 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z3) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i12 = 0; i12 < i10; i12++) {
                        MenuItemImpl menuItemImpl3 = visibleItems.get(i12);
                        if (menuItemImpl3.getGroupId() == groupId2) {
                            if (menuItemImpl3.isActionButton()) {
                                i8++;
                            }
                            menuItemImpl3.setIsActionButton(false);
                        }
                    }
                }
                if (z4) {
                    i8--;
                }
                menuItemImpl2.setIsActionButton(z4);
                r0 = 0;
            } else {
                r0 = r3;
                menuItemImpl2.setIsActionButton(r0);
            }
            i10++;
            r3 = r0;
            size = size;
            view = null;
            r1 = this;
        }
        return true;
    }

    @Override // com.android.internal.view.menu.BaseMenuPresenter
    public View getItemView(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        View actionView = menuItemImpl.getActionView();
        if (actionView == null || menuItemImpl.hasCollapsibleActionView()) {
            actionView = super.getItemView(menuItemImpl, view, viewGroup);
        }
        actionView.setVisibility(menuItemImpl.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.internal.view.menu.BaseMenuPresenter, com.android.internal.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        Object obj = this.mMenuView;
        MenuView menuView = super.getMenuView(viewGroup);
        if (obj != menuView) {
            ((ActionMenuView) menuView).setPresenter(this);
            if (obj != null) {
                ((View) obj).removeOnAttachStateChangeListener(this.mAttachStateChangeListener);
            }
            ((View) menuView).addOnAttachStateChangeListener(this.mAttachStateChangeListener);
        }
        return menuView;
    }

    public Drawable getOverflowIcon() {
        OverflowMenuButton overflowMenuButton = this.mOverflowButton;
        if (overflowMenuButton != null) {
            return overflowMenuButton.getDrawable();
        }
        if (this.mPendingOverflowIconSet) {
            return this.mPendingOverflowIcon;
        }
        return null;
    }

    public boolean hideOverflowMenu() {
        Object obj;
        OpenOverflowRunnable openOverflowRunnable = this.mPostedOpenRunnable;
        if (openOverflowRunnable != null && (obj = this.mMenuView) != null) {
            ((View) obj).removeCallbacks(openOverflowRunnable);
            this.mPostedOpenRunnable = null;
            return true;
        }
        OverflowPopup overflowPopup = this.mOverflowPopup;
        if (overflowPopup == null) {
            return false;
        }
        overflowPopup.dismiss();
        return true;
    }

    public boolean hideSubMenus() {
        ActionButtonSubmenu actionButtonSubmenu = this.mActionButtonPopup;
        if (actionButtonSubmenu == null) {
            return false;
        }
        actionButtonSubmenu.dismiss();
        return true;
    }

    @Override // com.android.internal.view.menu.BaseMenuPresenter, com.android.internal.view.menu.MenuPresenter
    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        super.initForMenu(context, menuBuilder);
        Resources resources = context.getResources();
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(context);
        if (!this.mReserveOverflowSet) {
            this.mReserveOverflow = actionBarPolicy.showsOverflowMenuButton();
        }
        if (!this.mWidthLimitSet) {
            this.mWidthLimit = actionBarPolicy.getEmbeddedMenuWidthLimit();
        }
        if (!this.mMaxItemsSet) {
            this.mMaxItems = actionBarPolicy.getMaxActionButtons();
        }
        int measuredWidth = this.mWidthLimit;
        if (this.mReserveOverflow) {
            if (this.mOverflowButton == null) {
                OverflowMenuButton overflowMenuButton = new OverflowMenuButton(this.mSystemContext);
                this.mOverflowButton = overflowMenuButton;
                if (this.mPendingOverflowIconSet) {
                    overflowMenuButton.setImageDrawable(this.mPendingOverflowIcon);
                    this.mPendingOverflowIcon = null;
                    this.mPendingOverflowIconSet = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.mOverflowButton.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.mOverflowButton.getMeasuredWidth();
        } else {
            this.mOverflowButton = null;
        }
        this.mActionItemWidthLimit = measuredWidth;
        this.mMinCellSize = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    public boolean isOverflowMenuShowPending() {
        return this.mPostedOpenRunnable != null || isOverflowMenuShowing();
    }

    public boolean isOverflowMenuShowing() {
        OverflowPopup overflowPopup = this.mOverflowPopup;
        return overflowPopup != null && overflowPopup.isShowing();
    }

    public boolean isOverflowReserved() {
        return this.mReserveOverflow;
    }

    @Override // com.android.internal.view.menu.BaseMenuPresenter, com.android.internal.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z2) {
        dismissPopupMenus();
        super.onCloseMenu(menuBuilder, z2);
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (!this.mMaxItemsSet) {
            this.mMaxItems = ActionBarPolicy.get(this.mContext).getMaxActionButtons();
        }
        MenuBuilder menuBuilder = this.mMenu;
        if (menuBuilder != null) {
            menuBuilder.onItemsChanged(true);
        }
    }

    @Override // com.android.internal.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        int i2 = ((SavedState) parcelable).openSubMenuId;
        if (i2 <= 0 || (menuItemFindItem = this.mMenu.findItem(i2)) == null) {
            return;
        }
        onSubMenuSelected((SubMenuBuilder) menuItemFindItem.getSubMenu());
    }

    @Override // com.android.internal.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.openSubMenuId = this.mOpenSubMenuId;
        return savedState;
    }

    @Override // com.android.internal.view.menu.BaseMenuPresenter, com.android.internal.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        boolean z2 = false;
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        SubMenuBuilder subMenuBuilder2 = subMenuBuilder;
        while (subMenuBuilder2.getParentMenu() != this.mMenu) {
            subMenuBuilder2 = (SubMenuBuilder) subMenuBuilder2.getParentMenu();
        }
        View viewFindViewForItem = findViewForItem(subMenuBuilder2.getItem());
        if (viewFindViewForItem == null) {
            return false;
        }
        this.mOpenSubMenuId = subMenuBuilder.getItem().getItemId();
        int size = subMenuBuilder.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = subMenuBuilder.getItem(i2);
            if (item.isVisible() && item.getIcon() != null) {
                z2 = true;
                break;
            }
        }
        ActionButtonSubmenu actionButtonSubmenu = new ActionButtonSubmenu(this.mContext, subMenuBuilder, viewFindViewForItem);
        this.mActionButtonPopup = actionButtonSubmenu;
        actionButtonSubmenu.setForceShowIcon(z2);
        this.mActionButtonPopup.show();
        super.onSubMenuSelected(subMenuBuilder);
        return true;
    }

    @Override // android.view.ActionProvider.SubUiVisibilityListener
    public void onSubUiVisibilityChanged(boolean z2) {
        if (z2) {
            super.onSubMenuSelected(null);
            return;
        }
        MenuBuilder menuBuilder = this.mMenu;
        if (menuBuilder != null) {
            menuBuilder.close(false);
        }
    }

    public void setExpandedActionViewsExclusive(boolean z2) {
        this.mExpandedActionViewsExclusive = z2;
    }

    public void setItemLimit(int i2) {
        this.mMaxItems = i2;
        this.mMaxItemsSet = true;
    }

    public void setMenuView(ActionMenuView actionMenuView) {
        Object obj = this.mMenuView;
        if (actionMenuView != obj) {
            if (obj != null) {
                ((View) obj).removeOnAttachStateChangeListener(this.mAttachStateChangeListener);
            }
            this.mMenuView = actionMenuView;
            actionMenuView.initialize(this.mMenu);
            actionMenuView.addOnAttachStateChangeListener(this.mAttachStateChangeListener);
        }
    }

    public void setOverflowIcon(Drawable drawable) {
        OverflowMenuButton overflowMenuButton = this.mOverflowButton;
        if (overflowMenuButton != null) {
            overflowMenuButton.setImageDrawable(drawable);
        } else {
            this.mPendingOverflowIconSet = true;
            this.mPendingOverflowIcon = drawable;
        }
    }

    public void setReserveOverflow(boolean z2) {
        this.mReserveOverflow = z2;
        this.mReserveOverflowSet = true;
    }

    public void setWidthLimit(int i2, boolean z2) {
        this.mWidthLimit = i2;
        this.mStrictWidthLimit = z2;
        this.mWidthLimitSet = true;
    }

    @Override // com.android.internal.view.menu.BaseMenuPresenter
    public boolean shouldIncludeItem(int i2, MenuItemImpl menuItemImpl) {
        return menuItemImpl.isActionButton();
    }

    public boolean showOverflowMenu() {
        MenuBuilder menuBuilder;
        if (!this.mReserveOverflow || isOverflowMenuShowing() || (menuBuilder = this.mMenu) == null || this.mMenuView == null || this.mPostedOpenRunnable != null || menuBuilder.getNonActionItems().isEmpty()) {
            return false;
        }
        OpenOverflowRunnable openOverflowRunnable = new OpenOverflowRunnable(new OverflowPopup(this.mContext, this.mMenu, this.mOverflowButton, true));
        this.mPostedOpenRunnable = openOverflowRunnable;
        ((View) this.mMenuView).post(openOverflowRunnable);
        super.onSubMenuSelected(null);
        return true;
    }

    @Override // com.android.internal.view.menu.BaseMenuPresenter, com.android.internal.view.menu.MenuPresenter
    public void updateMenuView(boolean z2) {
        super.updateMenuView(z2);
        ((View) this.mMenuView).requestLayout();
        MenuBuilder menuBuilder = this.mMenu;
        boolean z3 = false;
        if (menuBuilder != null) {
            ArrayList<MenuItemImpl> actionItems = menuBuilder.getActionItems();
            int size = actionItems.size();
            for (int i2 = 0; i2 < size; i2++) {
                ActionProvider actionProvider = actionItems.get(i2).getActionProvider();
                if (actionProvider != null) {
                    actionProvider.setSubUiVisibilityListener(this);
                }
            }
        }
        MenuBuilder menuBuilder2 = this.mMenu;
        ArrayList<MenuItemImpl> nonActionItems = menuBuilder2 != null ? menuBuilder2.getNonActionItems() : null;
        if (this.mReserveOverflow && nonActionItems != null) {
            int size2 = nonActionItems.size();
            if (size2 == 1) {
                z3 = !nonActionItems.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z3 = true;
            }
        }
        if (z3) {
            if (this.mOverflowButton == null) {
                this.mOverflowButton = new OverflowMenuButton(this.mSystemContext);
            }
            ViewGroup viewGroup = (ViewGroup) this.mOverflowButton.getParent();
            if (viewGroup != this.mMenuView) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.mOverflowButton);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.mMenuView;
                actionMenuView.addView(this.mOverflowButton, actionMenuView.generateOverflowButtonLayoutParams());
            }
        } else {
            OverflowMenuButton overflowMenuButton = this.mOverflowButton;
            if (overflowMenuButton != null) {
                Object parent = overflowMenuButton.getParent();
                Object obj = this.mMenuView;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.mOverflowButton);
                }
            }
        }
        ((ActionMenuView) this.mMenuView).setOverflowReserved(this.mReserveOverflow);
    }
}
