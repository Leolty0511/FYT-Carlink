package android.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.IntProperty;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.android.internal.widget.a;

/* JADX INFO: loaded from: classes.dex */
public class ListPopupWindow {
    private static final boolean DEBUG = false;
    private static final int EXPAND_LIST_TIMEOUT = 250;
    public static final int INPUT_METHOD_FROM_FOCUSABLE = 0;
    public static final int INPUT_METHOD_NEEDED = 1;
    public static final int INPUT_METHOD_NOT_NEEDED = 2;
    public static final int MATCH_PARENT = -1;
    public static final int POSITION_PROMPT_ABOVE = 0;
    public static final int POSITION_PROMPT_BELOW = 1;
    private static final String TAG = "ListPopupWindow";
    public static final int WRAP_CONTENT = -2;
    private ListAdapter mAdapter;
    private Context mContext;
    private boolean mDropDownAlwaysVisible;
    private View mDropDownAnchorView;
    private int mDropDownGravity;
    private int mDropDownHeight;
    private int mDropDownHorizontalOffset;
    private DropDownListView mDropDownList;
    private Drawable mDropDownListHighlight;
    private int mDropDownVerticalOffset;
    private boolean mDropDownVerticalOffsetSet;
    private int mDropDownWidth;
    private boolean mForceIgnoreOutsideTouch;
    private Handler mHandler;
    private final ListSelectorHider mHideSelector;
    private AdapterView.OnItemClickListener mItemClickListener;
    private AdapterView.OnItemSelectedListener mItemSelectedListener;
    private int mLayoutDirection;
    public int mListItemExpandMaximum;
    private boolean mModal;
    private DataSetObserver mObserver;
    private PopupWindow mPopup;
    private int mPromptPosition;
    private View mPromptView;
    private final ResizePopupRunnable mResizePopupRunnable;
    private final PopupScrollListener mScrollListener;
    private Runnable mShowDropDownRunnable;
    private Rect mTempRect;
    private final PopupTouchInterceptor mTouchInterceptor;

    public static class DropDownListView extends ListView {
        private static final int CLICK_ANIM_ALPHA = 128;
        private static final long CLICK_ANIM_DURATION = 150;
        private static final IntProperty<Drawable> DRAWABLE_ALPHA = new IntProperty<Drawable>("alpha") { // from class: android.widget.ListPopupWindow.DropDownListView.1
            @Override // android.util.Property
            public Integer get(Drawable drawable) {
                return Integer.valueOf(drawable.getAlpha());
            }

            @Override // android.util.IntProperty
            public void setValue(Drawable drawable, int i2) {
                drawable.setAlpha(i2);
            }
        };
        private Animator mClickAnimation;
        private boolean mDrawsInPressedState;
        private boolean mHijackFocus;
        private boolean mListSelectionHidden;
        private a.b mScrollHelper;

        public DropDownListView(Context context, boolean z2) {
            super(context, null, R.attr.dropDownListViewStyle);
            this.mHijackFocus = z2;
            setCacheColorHint(0);
        }

        private void clearPressedItem() {
            this.mDrawsInPressedState = false;
            setPressed(false);
            updateSelectorState();
            Animator animator = this.mClickAnimation;
            if (animator != null) {
                animator.cancel();
                this.mClickAnimation = null;
            }
        }

        private void clickPressedItem(final View view, final int i2) {
            final long itemIdAtPosition = getItemIdAtPosition(i2);
            ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this.mSelector, DRAWABLE_ALPHA, 255, 128, 255);
            objectAnimatorOfInt.setDuration(150L);
            objectAnimatorOfInt.setInterpolator(new AccelerateDecelerateInterpolator());
            objectAnimatorOfInt.addListener(new AnimatorListenerAdapter() { // from class: android.widget.ListPopupWindow.DropDownListView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    DropDownListView.this.performItemClick(view, i2, itemIdAtPosition);
                }
            });
            objectAnimatorOfInt.start();
            Animator animator = this.mClickAnimation;
            if (animator != null) {
                animator.cancel();
            }
            this.mClickAnimation = objectAnimatorOfInt;
        }

        private void setPressedItem(View view, int i2) throws Throwable {
            this.mDrawsInPressedState = true;
            setPressed(true);
            layoutChildren();
            setSelectedPositionInt(i2);
            positionSelector(i2, view);
            refreshDrawableState();
            Animator animator = this.mClickAnimation;
            if (animator != null) {
                animator.cancel();
                this.mClickAnimation = null;
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean hasFocus() {
            return this.mHijackFocus || super.hasFocus();
        }

        @Override // android.view.View
        public boolean hasWindowFocus() {
            return this.mHijackFocus || super.hasWindowFocus();
        }

        @Override // android.view.View
        public boolean isFocused() {
            return this.mHijackFocus || super.isFocused();
        }

        @Override // android.view.View
        public boolean isInTouchMode() {
            return (this.mHijackFocus && this.mListSelectionHidden) || super.isInTouchMode();
        }

        @Override // android.widget.AbsListView
        public View obtainView(int i2, boolean[] zArr) {
            View viewObtainView = super.obtainView(i2, zArr);
            if (viewObtainView instanceof TextView) {
                ((TextView) viewObtainView).setHorizontallyScrolling(true);
            }
            return viewObtainView;
        }

        /* JADX WARN: Code duplicated, block: B:23:0x0048  */
        /* JADX WARN: Code duplicated, block: B:25:0x004d  */
        /* JADX WARN: Code duplicated, block: B:27:0x0051  */
        /* JADX WARN: Code duplicated, block: B:29:0x0063  */
        /* JADX WARN: Code duplicated, block: B:31:0x0067  */
        /* JADX WARN: Code duplicated, block: B:9:0x0011  */
        public boolean onForwardedEvent(MotionEvent motionEvent, int i2) throws Throwable {
            boolean z2;
            boolean z3;
            a.b bVar;
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 1) {
                z2 = false;
            } else {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        z3 = false;
                        z2 = true;
                    } else {
                        z3 = false;
                        z2 = false;
                    }
                    if (z2 || z3) {
                        clearPressedItem();
                    }
                    if (z2) {
                        if (this.mScrollHelper == null) {
                            this.mScrollHelper = new a.b(this);
                        }
                        this.mScrollHelper.y(true);
                        this.mScrollHelper.onTouch(this, motionEvent);
                    } else {
                        bVar = this.mScrollHelper;
                        if (bVar != null) {
                            bVar.y(false);
                        }
                    }
                    return z2;
                }
                z2 = true;
            }
            int iFindPointerIndex = motionEvent.findPointerIndex(i2);
            if (iFindPointerIndex < 0) {
                z3 = false;
                z2 = false;
            } else {
                int iPointToPosition = pointToPosition((int) motionEvent.getX(iFindPointerIndex), (int) motionEvent.getY(iFindPointerIndex));
                if (iPointToPosition == -1) {
                    z3 = true;
                } else {
                    View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                    setPressedItem(childAt, iPointToPosition);
                    if (actionMasked == 1) {
                        clickPressedItem(childAt, iPointToPosition);
                    }
                    z3 = false;
                    z2 = true;
                }
            }
            if (z2) {
                clearPressedItem();
            } else {
                clearPressedItem();
            }
            if (z2) {
                if (this.mScrollHelper == null) {
                    this.mScrollHelper = new a.b(this);
                }
                this.mScrollHelper.y(true);
                this.mScrollHelper.onTouch(this, motionEvent);
            } else {
                bVar = this.mScrollHelper;
                if (bVar != null) {
                    bVar.y(false);
                }
            }
            return z2;
        }

        @Override // android.widget.AbsListView
        public boolean touchModeDrawsInPressedState() {
            return this.mDrawsInPressedState || super.touchModeDrawsInPressedState();
        }
    }

    public static abstract class ForwardingListener implements View.OnTouchListener, View.OnAttachStateChangeListener {
        private int mActivePointerId;
        private Runnable mDisallowIntercept;
        private boolean mForwarding;
        private final float mScaledTouchSlop;
        private final View mSrc;
        private final int mTapTimeout = ViewConfiguration.getTapTimeout();

        public class DisallowIntercept implements Runnable {
            private DisallowIntercept() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ForwardingListener.this.mSrc.getParent().requestDisallowInterceptTouchEvent(true);
            }
        }

        public ForwardingListener(View view) {
            this.mSrc = view;
            this.mScaledTouchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            view.addOnAttachStateChangeListener(this);
        }

        private boolean onTouchForwarded(MotionEvent motionEvent) throws Throwable {
            DropDownListView dropDownListView;
            View view = this.mSrc;
            ListPopupWindow popup = getPopup();
            if (popup == null || !popup.isShowing() || (dropDownListView = popup.mDropDownList) == null || !dropDownListView.isShown()) {
                return false;
            }
            MotionEvent motionEventObtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
            view.toGlobalMotionEvent(motionEventObtainNoHistory);
            dropDownListView.toLocalMotionEvent(motionEventObtainNoHistory);
            boolean zOnForwardedEvent = dropDownListView.onForwardedEvent(motionEventObtainNoHistory, this.mActivePointerId);
            motionEventObtainNoHistory.recycle();
            return zOnForwardedEvent;
        }

        /* JADX WARN: Code duplicated, block: B:23:0x0041  */
        /* JADX WARN: Code duplicated, block: B:25:0x0045  */
        private boolean onTouchObserved(MotionEvent motionEvent) {
            Runnable runnable;
            View view = this.mSrc;
            if (!view.isEnabled()) {
                return false;
            }
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.mActivePointerId = motionEvent.getPointerId(0);
                if (this.mDisallowIntercept == null) {
                    this.mDisallowIntercept = new DisallowIntercept();
                }
                view.postDelayed(this.mDisallowIntercept, this.mTapTimeout);
            } else if (actionMasked == 1) {
                runnable = this.mDisallowIntercept;
                if (runnable != null) {
                    view.removeCallbacks(runnable);
                }
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                if (iFindPointerIndex >= 0 && !view.pointInView(motionEvent.getX(iFindPointerIndex), motionEvent.getY(iFindPointerIndex), this.mScaledTouchSlop)) {
                    Runnable runnable2 = this.mDisallowIntercept;
                    if (runnable2 != null) {
                        view.removeCallbacks(runnable2);
                    }
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    return true;
                }
            } else if (actionMasked == 3) {
                runnable = this.mDisallowIntercept;
                if (runnable != null) {
                    view.removeCallbacks(runnable);
                }
            }
            return false;
        }

        public abstract ListPopupWindow getPopup();

        public boolean onForwardingStarted() {
            ListPopupWindow popup = getPopup();
            if (popup == null || popup.isShowing()) {
                return true;
            }
            popup.show();
            return true;
        }

        public boolean onForwardingStopped() {
            ListPopupWindow popup = getPopup();
            if (popup == null || !popup.isShowing()) {
                return true;
            }
            popup.dismiss();
            return true;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            boolean z2 = this.mForwarding;
            boolean z3 = !z2 ? !(onTouchObserved(motionEvent) && onForwardingStarted()) : !onTouchForwarded(motionEvent) && onForwardingStopped();
            this.mForwarding = z3;
            return z3 || z2;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            this.mForwarding = false;
            this.mActivePointerId = -1;
            Runnable runnable = this.mDisallowIntercept;
            if (runnable != null) {
                this.mSrc.removeCallbacks(runnable);
            }
        }
    }

    public class ListSelectorHider implements Runnable {
        private ListSelectorHider() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ListPopupWindow.this.clearListSelection();
        }
    }

    public class PopupDataSetObserver extends DataSetObserver {
        private PopupDataSetObserver() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (ListPopupWindow.this.isShowing()) {
                ListPopupWindow.this.show();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    public class PopupScrollListener implements AbsListView.OnScrollListener {
        private PopupScrollListener() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i2, int i3, int i4) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i2) {
            if (i2 != 1 || ListPopupWindow.this.isInputMethodNotNeeded() || ListPopupWindow.this.mPopup.getContentView() == null) {
                return;
            }
            ListPopupWindow.this.mHandler.removeCallbacks(ListPopupWindow.this.mResizePopupRunnable);
            ListPopupWindow.this.mResizePopupRunnable.run();
        }
    }

    public class PopupTouchInterceptor implements View.OnTouchListener {
        private PopupTouchInterceptor() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            int x2 = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            if (action == 0 && ListPopupWindow.this.mPopup != null && ListPopupWindow.this.mPopup.isShowing() && x2 >= 0 && x2 < ListPopupWindow.this.mPopup.getWidth() && y2 >= 0 && y2 < ListPopupWindow.this.mPopup.getHeight()) {
                ListPopupWindow.this.mHandler.postDelayed(ListPopupWindow.this.mResizePopupRunnable, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            ListPopupWindow.this.mHandler.removeCallbacks(ListPopupWindow.this.mResizePopupRunnable);
            return false;
        }
    }

    public class ResizePopupRunnable implements Runnable {
        private ResizePopupRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ListPopupWindow.this.mDropDownList == null || ListPopupWindow.this.mDropDownList.getCount() <= ListPopupWindow.this.mDropDownList.getChildCount()) {
                return;
            }
            int childCount = ListPopupWindow.this.mDropDownList.getChildCount();
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (childCount <= listPopupWindow.mListItemExpandMaximum) {
                listPopupWindow.mPopup.setInputMethodMode(2);
                ListPopupWindow.this.show();
            }
        }
    }

    public ListPopupWindow(Context context) {
        this(context, null, R.attr.listPopupWindowStyle, 0);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private int buildDropDown() {
        int measuredHeight;
        int i2;
        int iMakeMeasureSpec;
        View view;
        if (this.mDropDownList == null) {
            Context context = this.mContext;
            this.mShowDropDownRunnable = new Runnable() { // from class: android.widget.ListPopupWindow.2
                @Override // java.lang.Runnable
                public void run() {
                    View anchorView = ListPopupWindow.this.getAnchorView();
                    if (anchorView == null || anchorView.getWindowToken() == null) {
                        return;
                    }
                    ListPopupWindow.this.show();
                }
            };
            DropDownListView dropDownListView = new DropDownListView(context, !this.mModal);
            this.mDropDownList = dropDownListView;
            Drawable drawable = this.mDropDownListHighlight;
            if (drawable != null) {
                dropDownListView.setSelector(drawable);
            }
            this.mDropDownList.setAdapter(this.mAdapter);
            this.mDropDownList.setOnItemClickListener(this.mItemClickListener);
            this.mDropDownList.setFocusable(true);
            this.mDropDownList.setFocusableInTouchMode(true);
            this.mDropDownList.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: android.widget.ListPopupWindow.3
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view2, int i3, long j2) {
                    DropDownListView dropDownListView2;
                    if (i3 == -1 || (dropDownListView2 = ListPopupWindow.this.mDropDownList) == null) {
                        return;
                    }
                    dropDownListView2.mListSelectionHidden = false;
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            this.mDropDownList.setOnScrollListener(this.mScrollListener);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.mItemSelectedListener;
            if (onItemSelectedListener != null) {
                this.mDropDownList.setOnItemSelectedListener(onItemSelectedListener);
            }
            DropDownListView dropDownListView2 = this.mDropDownList;
            View view2 = this.mPromptView;
            if (view2 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i3 = this.mPromptPosition;
                if (i3 == 0) {
                    linearLayout.addView(view2);
                    linearLayout.addView(dropDownListView2, layoutParams);
                } else if (i3 != 1) {
                    Log.e(TAG, "Invalid hint position " + this.mPromptPosition);
                } else {
                    linearLayout.addView(dropDownListView2, layoutParams);
                    linearLayout.addView(view2);
                }
                view2.measure(View.MeasureSpec.makeMeasureSpec(this.mDropDownWidth, Integer.MIN_VALUE), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                measuredHeight = view2.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                view = linearLayout;
            } else {
                measuredHeight = 0;
                view = dropDownListView2;
            }
            this.mPopup.setContentView(view);
        } else {
            View view3 = this.mPromptView;
            if (view3 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                measuredHeight = view3.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                measuredHeight = 0;
            }
        }
        Drawable background = this.mPopup.getBackground();
        if (background != null) {
            background.getPadding(this.mTempRect);
            Rect rect = this.mTempRect;
            int i4 = rect.top;
            i2 = rect.bottom + i4;
            if (!this.mDropDownVerticalOffsetSet) {
                this.mDropDownVerticalOffset = -i4;
            }
        } else {
            this.mTempRect.setEmpty();
            i2 = 0;
        }
        int maxAvailableHeight = this.mPopup.getMaxAvailableHeight(getAnchorView(), this.mDropDownVerticalOffset, this.mPopup.getInputMethodMode() == 2);
        if (this.mDropDownAlwaysVisible || this.mDropDownHeight == -1) {
            return maxAvailableHeight + i2;
        }
        int i5 = this.mDropDownWidth;
        if (i5 == -2) {
            int i6 = this.mContext.getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = this.mTempRect;
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6 - (rect2.left + rect2.right), Integer.MIN_VALUE);
        } else if (i5 != -1) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        } else {
            int i7 = this.mContext.getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = this.mTempRect;
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i7 - (rect3.left + rect3.right), 1073741824);
        }
        int iMeasureHeightOfChildren = this.mDropDownList.measureHeightOfChildren(iMakeMeasureSpec, 0, -1, maxAvailableHeight - measuredHeight, -1);
        if (iMeasureHeightOfChildren > 0) {
            measuredHeight += i2;
        }
        return iMeasureHeightOfChildren + measuredHeight;
    }

    private void removePromptView() {
        View view = this.mPromptView;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.mPromptView);
            }
        }
    }

    public void clearListSelection() {
        DropDownListView dropDownListView = this.mDropDownList;
        if (dropDownListView != null) {
            dropDownListView.mListSelectionHidden = true;
            dropDownListView.hideSelector();
            dropDownListView.requestLayout();
        }
    }

    public View.OnTouchListener createDragToOpenListener(View view) {
        return new ForwardingListener(view) { // from class: android.widget.ListPopupWindow.1
            @Override // android.widget.ListPopupWindow.ForwardingListener
            public ListPopupWindow getPopup() {
                return ListPopupWindow.this;
            }
        };
    }

    public void dismiss() {
        this.mPopup.dismiss();
        removePromptView();
        this.mPopup.setContentView(null);
        this.mDropDownList = null;
        this.mHandler.removeCallbacks(this.mResizePopupRunnable);
    }

    public View getAnchorView() {
        return this.mDropDownAnchorView;
    }

    public int getAnimationStyle() {
        return this.mPopup.getAnimationStyle();
    }

    public Drawable getBackground() {
        return this.mPopup.getBackground();
    }

    public int getHeight() {
        return this.mDropDownHeight;
    }

    public int getHorizontalOffset() {
        return this.mDropDownHorizontalOffset;
    }

    public int getInputMethodMode() {
        return this.mPopup.getInputMethodMode();
    }

    public ListView getListView() {
        return this.mDropDownList;
    }

    public int getPromptPosition() {
        return this.mPromptPosition;
    }

    public Object getSelectedItem() {
        if (isShowing()) {
            return this.mDropDownList.getSelectedItem();
        }
        return null;
    }

    public long getSelectedItemId() {
        if (isShowing()) {
            return this.mDropDownList.getSelectedItemId();
        }
        return Long.MIN_VALUE;
    }

    public int getSelectedItemPosition() {
        if (isShowing()) {
            return this.mDropDownList.getSelectedItemPosition();
        }
        return -1;
    }

    public View getSelectedView() {
        if (isShowing()) {
            return this.mDropDownList.getSelectedView();
        }
        return null;
    }

    public int getSoftInputMode() {
        return this.mPopup.getSoftInputMode();
    }

    public int getVerticalOffset() {
        if (this.mDropDownVerticalOffsetSet) {
            return this.mDropDownVerticalOffset;
        }
        return 0;
    }

    public int getWidth() {
        return this.mDropDownWidth;
    }

    public boolean isDropDownAlwaysVisible() {
        return this.mDropDownAlwaysVisible;
    }

    public boolean isInputMethodNotNeeded() {
        return this.mPopup.getInputMethodMode() == 2;
    }

    public boolean isModal() {
        return this.mModal;
    }

    public boolean isShowing() {
        return this.mPopup.isShowing();
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (isShowing() && i2 != 62 && (this.mDropDownList.getSelectedItemPosition() >= 0 || !KeyEvent.isConfirmKey(i2))) {
            int selectedItemPosition = this.mDropDownList.getSelectedItemPosition();
            boolean z2 = !this.mPopup.isAboveAnchor();
            ListAdapter listAdapter = this.mAdapter;
            int i3 = Integer.MAX_VALUE;
            int i4 = Integer.MIN_VALUE;
            if (listAdapter != null) {
                boolean zAreAllItemsEnabled = listAdapter.areAllItemsEnabled();
                int iLookForSelectablePosition = zAreAllItemsEnabled ? 0 : this.mDropDownList.lookForSelectablePosition(0, true);
                int count = zAreAllItemsEnabled ? listAdapter.getCount() - 1 : this.mDropDownList.lookForSelectablePosition(listAdapter.getCount() - 1, false);
                i3 = iLookForSelectablePosition;
                i4 = count;
            }
            if ((z2 && i2 == 19 && selectedItemPosition <= i3) || (!z2 && i2 == 20 && selectedItemPosition >= i4)) {
                clearListSelection();
                this.mPopup.setInputMethodMode(1);
                show();
                return true;
            }
            this.mDropDownList.mListSelectionHidden = false;
            if (this.mDropDownList.onKeyDown(i2, keyEvent)) {
                this.mPopup.setInputMethodMode(2);
                this.mDropDownList.requestFocusFromTouch();
                show();
                if (i2 == 19 || i2 == 20 || i2 == 23 || i2 == 66) {
                    return true;
                }
            } else if (z2 && i2 == 20) {
                if (selectedItemPosition == i4) {
                    return true;
                }
            } else if (!z2 && i2 == 19 && selectedItemPosition == i3) {
                return true;
            }
        }
        return false;
    }

    public boolean onKeyPreIme(int i2, KeyEvent keyEvent) {
        if (i2 != 4 || !isShowing()) {
            return false;
        }
        View view = this.mDropDownAnchorView;
        if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
            KeyEvent.DispatcherState keyDispatcherState = view.getKeyDispatcherState();
            if (keyDispatcherState != null) {
                keyDispatcherState.startTracking(keyEvent, this);
            }
            return true;
        }
        if (keyEvent.getAction() != 1) {
            return false;
        }
        KeyEvent.DispatcherState keyDispatcherState2 = view.getKeyDispatcherState();
        if (keyDispatcherState2 != null) {
            keyDispatcherState2.handleUpEvent(keyEvent);
        }
        if (!keyEvent.isTracking() || keyEvent.isCanceled()) {
            return false;
        }
        dismiss();
        return true;
    }

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (!isShowing() || this.mDropDownList.getSelectedItemPosition() < 0) {
            return false;
        }
        boolean zOnKeyUp = this.mDropDownList.onKeyUp(i2, keyEvent);
        if (zOnKeyUp && KeyEvent.isConfirmKey(i2)) {
            dismiss();
        }
        return zOnKeyUp;
    }

    public boolean performItemClick(int i2) {
        if (!isShowing()) {
            return false;
        }
        if (this.mItemClickListener == null) {
            return true;
        }
        DropDownListView dropDownListView = this.mDropDownList;
        this.mItemClickListener.onItemClick(dropDownListView, dropDownListView.getChildAt(i2 - dropDownListView.getFirstVisiblePosition()), i2, dropDownListView.getAdapter().getItemId(i2));
        return true;
    }

    public void postShow() {
        this.mHandler.post(this.mShowDropDownRunnable);
    }

    public void setAdapter(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.mObserver;
        if (dataSetObserver == null) {
            this.mObserver = new PopupDataSetObserver();
        } else {
            ListAdapter listAdapter2 = this.mAdapter;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.mAdapter = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.mObserver);
        }
        DropDownListView dropDownListView = this.mDropDownList;
        if (dropDownListView != null) {
            dropDownListView.setAdapter(this.mAdapter);
        }
    }

    public void setAnchorView(View view) {
        this.mDropDownAnchorView = view;
    }

    public void setAnimationStyle(int i2) {
        this.mPopup.setAnimationStyle(i2);
    }

    public void setBackgroundDrawable(Drawable drawable) {
        this.mPopup.setBackgroundDrawable(drawable);
    }

    public void setContentWidth(int i2) {
        Drawable background = this.mPopup.getBackground();
        if (background == null) {
            setWidth(i2);
            return;
        }
        background.getPadding(this.mTempRect);
        Rect rect = this.mTempRect;
        this.mDropDownWidth = rect.left + rect.right + i2;
    }

    public void setDropDownAlwaysVisible(boolean z2) {
        this.mDropDownAlwaysVisible = z2;
    }

    public void setDropDownGravity(int i2) {
        this.mDropDownGravity = i2;
    }

    public void setForceIgnoreOutsideTouch(boolean z2) {
        this.mForceIgnoreOutsideTouch = z2;
    }

    public void setHeight(int i2) {
        this.mDropDownHeight = i2;
    }

    public void setHorizontalOffset(int i2) {
        this.mDropDownHorizontalOffset = i2;
    }

    public void setInputMethodMode(int i2) {
        this.mPopup.setInputMethodMode(i2);
    }

    public void setListItemExpandMax(int i2) {
        this.mListItemExpandMaximum = i2;
    }

    public void setListSelector(Drawable drawable) {
        this.mDropDownListHighlight = drawable;
    }

    public void setModal(boolean z2) {
        this.mModal = true;
        this.mPopup.setFocusable(z2);
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.mPopup.setOnDismissListener(onDismissListener);
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.mItemClickListener = onItemClickListener;
    }

    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.mItemSelectedListener = onItemSelectedListener;
    }

    public void setPromptPosition(int i2) {
        this.mPromptPosition = i2;
    }

    public void setPromptView(View view) {
        boolean zIsShowing = isShowing();
        if (zIsShowing) {
            removePromptView();
        }
        this.mPromptView = view;
        if (zIsShowing) {
            show();
        }
    }

    public void setSelection(int i2) {
        DropDownListView dropDownListView = this.mDropDownList;
        if (!isShowing() || dropDownListView == null) {
            return;
        }
        dropDownListView.mListSelectionHidden = false;
        dropDownListView.setSelection(i2);
        if (dropDownListView.getChoiceMode() != 0) {
            dropDownListView.setItemChecked(i2, true);
        }
    }

    public void setSoftInputMode(int i2) {
        this.mPopup.setSoftInputMode(i2);
    }

    public void setVerticalOffset(int i2) {
        this.mDropDownVerticalOffset = i2;
        this.mDropDownVerticalOffsetSet = true;
    }

    public void setWidth(int i2) {
        this.mDropDownWidth = i2;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x005f  */
    public void show() {
        int i2;
        int i3;
        int i4;
        int i5;
        int iBuildDropDown = buildDropDown();
        boolean zIsInputMethodNotNeeded = isInputMethodNotNeeded();
        this.mPopup.setAllowScrollingAnchorParent(!zIsInputMethodNotNeeded);
        if (this.mPopup.isShowing()) {
            int width = this.mDropDownWidth;
            if (width == -1) {
                i4 = -1;
            } else {
                if (width == -2) {
                    width = getAnchorView().getWidth();
                }
                i4 = width;
            }
            int i6 = this.mDropDownHeight;
            if (i6 != -1) {
                if (i6 != -2) {
                    i5 = i6;
                }
                this.mPopup.setOutsideTouchable(this.mForceIgnoreOutsideTouch && !this.mDropDownAlwaysVisible);
                this.mPopup.update(getAnchorView(), this.mDropDownHorizontalOffset, this.mDropDownVerticalOffset, i4, i5);
                return;
            }
            if (!zIsInputMethodNotNeeded) {
                iBuildDropDown = -1;
            }
            if (zIsInputMethodNotNeeded) {
                this.mPopup.setWindowLayoutMode(this.mDropDownWidth != -1 ? 0 : -1, 0);
            } else {
                this.mPopup.setWindowLayoutMode(this.mDropDownWidth == -1 ? -1 : 0, -1);
            }
            i5 = iBuildDropDown;
            this.mPopup.setOutsideTouchable(this.mForceIgnoreOutsideTouch && !this.mDropDownAlwaysVisible);
            this.mPopup.update(getAnchorView(), this.mDropDownHorizontalOffset, this.mDropDownVerticalOffset, i4, i5);
            return;
        }
        int i7 = this.mDropDownWidth;
        if (i7 == -1) {
            i2 = -1;
        } else {
            if (i7 == -2) {
                this.mPopup.setWidth(getAnchorView().getWidth());
            } else {
                this.mPopup.setWidth(i7);
            }
            i2 = 0;
        }
        int i8 = this.mDropDownHeight;
        if (i8 == -1) {
            i3 = -1;
        } else {
            if (i8 == -2) {
                this.mPopup.setHeight(iBuildDropDown);
            } else {
                this.mPopup.setHeight(i8);
            }
            i3 = 0;
        }
        this.mPopup.setWindowLayoutMode(i2, i3);
        this.mPopup.setClipToScreenEnabled(true);
        this.mPopup.setOutsideTouchable((this.mForceIgnoreOutsideTouch || this.mDropDownAlwaysVisible) ? false : true);
        this.mPopup.setTouchInterceptor(this.mTouchInterceptor);
        this.mPopup.showAsDropDown(getAnchorView(), this.mDropDownHorizontalOffset, this.mDropDownVerticalOffset, this.mDropDownGravity);
        this.mDropDownList.setSelection(-1);
        if (!this.mModal || this.mDropDownList.isInTouchMode()) {
            clearListSelection();
        }
        if (this.mModal) {
            return;
        }
        this.mHandler.post(this.mHideSelector);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listPopupWindowStyle, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.mDropDownHeight = -2;
        this.mDropDownWidth = -2;
        this.mDropDownGravity = 0;
        this.mDropDownAlwaysVisible = false;
        this.mForceIgnoreOutsideTouch = false;
        this.mListItemExpandMaximum = Integer.MAX_VALUE;
        this.mPromptPosition = 0;
        this.mResizePopupRunnable = new ResizePopupRunnable();
        this.mTouchInterceptor = new PopupTouchInterceptor();
        this.mScrollListener = new PopupScrollListener();
        this.mHideSelector = new ListSelectorHider();
        this.mHandler = new Handler();
        this.mTempRect = new Rect();
        this.mContext = context;
        PopupWindow popupWindow = new PopupWindow(context, attributeSet, i2, i3);
        this.mPopup = popupWindow;
        popupWindow.setInputMethodMode(1);
        this.mLayoutDirection = TextUtils.getLayoutDirectionFromLocale(this.mContext.getResources().getConfiguration().locale);
    }
}
