package com.android.internal.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Size;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.android.internal.R;
import com.android.internal.util.Preconditions;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class FloatingToolbar {
    public static final String FLOATING_TOOLBAR_TAG = "floating_toolbar";
    private static final MenuItem.OnMenuItemClickListener NO_OP_MENUITEM_CLICK_LISTENER = new android.os.a(13);
    private final Context mContext;
    private Menu mMenu;
    private final FloatingToolbarPopup mPopup;
    private int mSuggestedWidth;
    private final Window mWindow;
    private final Rect mContentRect = new Rect();
    private final Rect mPreviousContentRect = new Rect();
    private List<MenuItem> mShowingMenuItems = new ArrayList();
    private MenuItem.OnMenuItemClickListener mMenuItemClickListener = NO_OP_MENUITEM_CLICK_LISTENER;
    private boolean mWidthChanged = true;
    private final View.OnLayoutChangeListener mOrientationChangeHandler = new View.OnLayoutChangeListener() { // from class: com.android.internal.widget.FloatingToolbar.1
        private final Rect mNewRect = new Rect();
        private final Rect mOldRect = new Rect();

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            this.mNewRect.set(i2, i3, i4, i5);
            this.mOldRect.set(i6, i7, i8, i9);
            if (!FloatingToolbar.this.mPopup.isShowing() || this.mNewRect.equals(this.mOldRect)) {
                return;
            }
            FloatingToolbar.this.mWidthChanged = true;
            FloatingToolbar.this.updateLayout();
        }
    };

    public FloatingToolbar(Window window) {
        Context contextApplyDefaultTheme = applyDefaultTheme(window.getContext());
        this.mContext = contextApplyDefaultTheme;
        this.mWindow = (Window) Preconditions.checkNotNull(window);
        this.mPopup = new FloatingToolbarPopup(contextApplyDefaultTheme, window.getDecorView());
    }

    private static Context applyDefaultTheme(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.isLightTheme});
        int i2 = typedArrayObtainStyledAttributes.getBoolean(0, true) ? 16974391 : 16974372;
        typedArrayObtainStyledAttributes.recycle();
        return new ContextThemeWrapper(context, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ViewGroup createContentContainer(Context context) {
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(R.layout.floating_popup_container, (ViewGroup) null);
        viewGroup.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        viewGroup.setTag(FLOATING_TOOLBAR_TAG);
        return viewGroup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static View createDivider(Context context) {
        View view = new View(context);
        int iApplyDimension = (int) TypedValue.applyDimension(1, 1.0f, context.getResources().getDisplayMetrics());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iApplyDimension, -1);
        int i2 = iApplyDimension * 10;
        layoutParams.setMarginsRelative(0, i2, 0, i2);
        view.setLayoutParams(layoutParams);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new TypedValue().data, new int[]{R.attr.floatingToolbarDividerColor});
        view.setBackgroundColor(typedArrayObtainStyledAttributes.getColor(0, 0));
        typedArrayObtainStyledAttributes.recycle();
        view.setImportantForAccessibility(2);
        view.setEnabled(false);
        view.setFocusable(false);
        view.setContentDescription(null);
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AnimatorSet createEnterAnimation(View view) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, View.ALPHA, 0.0f, 1.0f).setDuration(150L));
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AnimatorSet createExitAnimation(View view, int i2, Animator.AnimatorListener animatorListener) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, View.ALPHA, 1.0f, 0.0f).setDuration(100L));
        animatorSet.setStartDelay(i2);
        animatorSet.addListener(animatorListener);
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static View createMenuItemButton(Context context, MenuItem menuItem, int i2) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.floating_popup_menu_button, (ViewGroup) null);
        if (menuItem != null) {
            updateMenuItemButton(viewInflate, menuItem, i2);
        }
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static PopupWindow createPopupWindow(ViewGroup viewGroup) {
        LinearLayout linearLayout = new LinearLayout(viewGroup.getContext());
        PopupWindow popupWindow = new PopupWindow(linearLayout);
        popupWindow.setClippingEnabled(false);
        popupWindow.setWindowLayoutType(1005);
        popupWindow.setAnimationStyle(0);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        viewGroup.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        linearLayout.addView(viewGroup);
        return popupWindow;
    }

    private void doShow() {
        List<MenuItem> visibleAndEnabledMenuItems = getVisibleAndEnabledMenuItems(this.mMenu);
        tidy(visibleAndEnabledMenuItems);
        if (!isCurrentlyShowing(visibleAndEnabledMenuItems) || this.mWidthChanged) {
            this.mPopup.dismiss();
            this.mPopup.layoutMenuItems(visibleAndEnabledMenuItems, this.mMenuItemClickListener, this.mSuggestedWidth);
            this.mShowingMenuItems = visibleAndEnabledMenuItems;
        }
        if (!this.mPopup.isShowing()) {
            this.mPopup.show(this.mContentRect);
        } else if (!this.mPreviousContentRect.equals(this.mContentRect)) {
            this.mPopup.updateCoordinates(this.mContentRect);
        }
        this.mWidthChanged = false;
        this.mPreviousContentRect.set(this.mContentRect);
    }

    private List<MenuItem> getVisibleAndEnabledMenuItems(Menu menu) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; menu != null && i2 < menu.size(); i2++) {
            MenuItem item = menu.getItem(i2);
            if (item.isVisible() && item.isEnabled()) {
                SubMenu subMenu = item.getSubMenu();
                if (subMenu != null) {
                    arrayList.addAll(getVisibleAndEnabledMenuItems(subMenu));
                } else {
                    arrayList.add(item);
                }
            }
        }
        return arrayList;
    }

    private boolean isCurrentlyShowing(List<MenuItem> list) {
        if (this.mShowingMenuItems == null || list.size() != this.mShowingMenuItems.size()) {
            return false;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem menuItem = list.get(i2);
            MenuItem menuItem2 = this.mShowingMenuItems.get(i2);
            if (menuItem.getItemId() != menuItem2.getItemId() || !TextUtils.equals(menuItem.getTitle(), menuItem2.getTitle()) || !Objects.equals(menuItem.getIcon(), menuItem2.getIcon()) || menuItem.getGroupId() != menuItem2.getGroupId()) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$static$0(MenuItem menuItem) {
        return false;
    }

    private void registerOrientationHandler() {
        unregisterOrientationHandler();
        this.mWindow.getDecorView().addOnLayoutChangeListener(this.mOrientationChangeHandler);
    }

    private void tidy(List<MenuItem> list) {
        int size = list.size();
        int i2 = -1;
        Drawable icon = null;
        for (int i3 = 0; i3 < size; i3++) {
            MenuItem menuItem = list.get(i3);
            if (menuItem.getItemId() == 16908353) {
                icon = menuItem.getIcon();
                i2 = i3;
            }
            if (!TextUtils.isEmpty(menuItem.getTitle())) {
                menuItem.setIcon((Drawable) null);
            }
        }
        if (i2 > -1) {
            MenuItem menuItemRemove = list.remove(i2);
            menuItemRemove.setIcon(icon);
            list.add(0, menuItemRemove);
        }
    }

    private void unregisterOrientationHandler() {
        this.mWindow.getDecorView().removeOnLayoutChangeListener(this.mOrientationChangeHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateMenuItemButton(View view, MenuItem menuItem, int i2) {
        TextView textView = (TextView) view.findViewById(R.id.floating_toolbar_menu_item_text);
        if (TextUtils.isEmpty(menuItem.getTitle())) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(menuItem.getTitle());
        }
        ImageView imageView = (ImageView) view.findViewById(R.id.floating_toolbar_menu_item_image);
        if (menuItem.getIcon() == null) {
            imageView.setVisibility(8);
            if (textView != null) {
                textView.setPaddingRelative(0, 0, 0, 0);
            }
        } else {
            imageView.setVisibility(0);
            imageView.setImageDrawable(menuItem.getIcon());
            if (textView != null) {
                textView.setPaddingRelative(i2, 0, 0, 0);
            }
        }
        CharSequence contentDescription = menuItem.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            view.setContentDescription(menuItem.getTitle());
        } else {
            view.setContentDescription(contentDescription);
        }
    }

    public void dismiss() {
        unregisterOrientationHandler();
        this.mPopup.dismiss();
    }

    public void hide() {
        this.mPopup.hide();
    }

    public boolean isHidden() {
        return this.mPopup.isHidden();
    }

    public boolean isShowing() {
        return this.mPopup.isShowing();
    }

    public FloatingToolbar setContentRect(Rect rect) {
        this.mContentRect.set((Rect) Preconditions.checkNotNull(rect));
        return this;
    }

    public FloatingToolbar setMenu(Menu menu) {
        this.mMenu = (Menu) Preconditions.checkNotNull(menu);
        return this;
    }

    public FloatingToolbar setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        if (onMenuItemClickListener != null) {
            this.mMenuItemClickListener = onMenuItemClickListener;
        } else {
            this.mMenuItemClickListener = NO_OP_MENUITEM_CLICK_LISTENER;
        }
        return this;
    }

    public FloatingToolbar setSuggestedWidth(int i2) {
        this.mWidthChanged = ((double) Math.abs(i2 - this.mSuggestedWidth)) > ((double) this.mSuggestedWidth) * 0.2d;
        this.mSuggestedWidth = i2;
        return this;
    }

    public FloatingToolbar show() {
        registerOrientationHandler();
        doShow();
        return this;
    }

    public FloatingToolbar updateLayout() {
        if (this.mPopup.isShowing()) {
            doShow();
        }
        return this;
    }

    public static final class FloatingToolbarPopup {
        private static final int MAX_OVERFLOW_SIZE = 4;
        private static final int MIN_OVERFLOW_SIZE = 2;
        private final Drawable mArrow;
        private final AnimationSet mCloseOverflowAnimation;
        private final ViewGroup mContentContainer;
        private final Context mContext;
        private final AnimatorSet mDismissAnimation;
        private final Interpolator mFastOutLinearInInterpolator;
        private final Interpolator mFastOutSlowInInterpolator;
        private boolean mHidden;
        private final AnimatorSet mHideAnimation;
        private final int mIconTextSpacing;
        private boolean mIsOverflowOpen;
        private final int mLineHeight;
        private final Interpolator mLinearOutSlowInInterpolator;
        private final Interpolator mLogAccelerateInterpolator;
        private final ViewGroup mMainPanel;
        private Size mMainPanelSize;
        private final int mMarginHorizontal;
        private final int mMarginVertical;
        private MenuItem.OnMenuItemClickListener mOnMenuItemClickListener;
        private final AnimationSet mOpenOverflowAnimation;
        private boolean mOpenOverflowUpwards;
        private final Drawable mOverflow;
        private final Animation.AnimationListener mOverflowAnimationListener;
        private final ImageButton mOverflowButton;
        private final Size mOverflowButtonSize;
        private final OverflowPanel mOverflowPanel;
        private Size mOverflowPanelSize;
        private final OverflowPanelViewHelper mOverflowPanelViewHelper;
        private final View mParent;
        private final PopupWindow mPopupWindow;
        private final AnimatorSet mShowAnimation;
        private final AnimatedVectorDrawable mToArrow;
        private final AnimatedVectorDrawable mToOverflow;
        private int mTransitionDurationScale;
        private final Rect mViewPortOnScreen = new Rect();
        private final Point mCoordsOnWindow = new Point();
        private final int[] mTmpCoords = new int[2];
        private final Region mTouchableRegion = new Region();
        private final ViewTreeObserver.OnComputeInternalInsetsListener mInsetsComputer = new ViewTreeObserver.OnComputeInternalInsetsListener() { // from class: com.android.internal.widget.b
            @Override // android.view.ViewTreeObserver.OnComputeInternalInsetsListener
            public final void onComputeInternalInsets(ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
                this.f376a.lambda$new$0(internalInsetsInfo);
            }
        };
        private final Runnable mPreparePopupContentRTLHelper = new Runnable() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.1
            @Override // java.lang.Runnable
            public void run() {
                FloatingToolbarPopup.this.setPanelsStatesAtRestingPosition();
                FloatingToolbarPopup.this.setContentAreaAsTouchableSurface();
                FloatingToolbarPopup.this.mContentContainer.setAlpha(1.0f);
            }
        };
        private boolean mDismissed = true;
        private final View.OnClickListener mMenuItemButtonOnClickListener = new View.OnClickListener() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!(view.getTag() instanceof MenuItem) || FloatingToolbarPopup.this.mOnMenuItemClickListener == null) {
                    return;
                }
                FloatingToolbarPopup.this.mOnMenuItemClickListener.onMenuItemClick((MenuItem) view.getTag());
            }
        };

        /* JADX INFO: renamed from: com.android.internal.widget.FloatingToolbar$FloatingToolbarPopup$13, reason: invalid class name */
        public class AnonymousClass13 implements Animation.AnimationListener {
            public AnonymousClass13() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onAnimationEnd$0() {
                FloatingToolbarPopup.this.setPanelsStatesAtRestingPosition();
                FloatingToolbarPopup.this.setContentAreaAsTouchableSurface();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                FloatingToolbarPopup.this.mContentContainer.post(new d(this, 0));
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                FloatingToolbarPopup.this.mOverflowButton.setEnabled(false);
                FloatingToolbarPopup.this.mMainPanel.setVisibility(0);
                FloatingToolbarPopup.this.mOverflowPanel.setVisibility(0);
            }
        }

        public static final class LogAccelerateInterpolator implements Interpolator {
            private static final int BASE = 100;
            private static final float LOGS_SCALE = 1.0f / computeLog(1.0f, 100);

            private LogAccelerateInterpolator() {
            }

            private static float computeLog(float f2, int i2) {
                return (float) (1.0d - Math.pow(i2, -f2));
            }

            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f2) {
                return 1.0f - (computeLog(1.0f - f2, 100) * LOGS_SCALE);
            }
        }

        public static final class OverflowPanel extends ListView {
            private final FloatingToolbarPopup mPopup;

            public OverflowPanel(FloatingToolbarPopup floatingToolbarPopup) {
                super(((FloatingToolbarPopup) Preconditions.checkNotNull(floatingToolbarPopup)).mContext);
                this.mPopup = floatingToolbarPopup;
                setScrollBarDefaultDelayBeforeFade(ViewConfiguration.getScrollDefaultDelay() * 3);
                setScrollIndicators(3);
            }

            @Override // android.view.View
            public boolean awakenScrollBars() {
                return super.awakenScrollBars();
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (this.mPopup.isOverflowAnimating()) {
                    return true;
                }
                return super.dispatchTouchEvent(motionEvent);
            }

            @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
            public void onMeasure(int i2, int i3) {
                super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(this.mPopup.mOverflowPanelSize.getHeight() - this.mPopup.mOverflowButtonSize.getHeight(), 1073741824));
            }
        }

        public static final class OverflowPanelViewHelper {
            private final View mCalculator = createMenuButton(null);
            private final Context mContext;
            private final int mIconTextSpacing;
            private final int mSidePadding;

            public OverflowPanelViewHelper(Context context) {
                this.mContext = (Context) Preconditions.checkNotNull(context);
                this.mIconTextSpacing = context.getResources().getDimensionPixelSize(R.dimen.floating_toolbar_menu_button_side_padding);
                this.mSidePadding = context.getResources().getDimensionPixelSize(R.dimen.floating_toolbar_overflow_side_padding);
            }

            private View createMenuButton(MenuItem menuItem) {
                View viewCreateMenuItemButton = FloatingToolbar.createMenuItemButton(this.mContext, menuItem, this.mIconTextSpacing);
                int i2 = this.mSidePadding;
                viewCreateMenuItemButton.setPadding(i2, 0, i2, 0);
                return viewCreateMenuItemButton;
            }

            public int calculateWidth(MenuItem menuItem) {
                FloatingToolbar.updateMenuItemButton(this.mCalculator, menuItem, this.mIconTextSpacing);
                this.mCalculator.measure(0, 0);
                return this.mCalculator.getMeasuredWidth();
            }

            public View getView(MenuItem menuItem, int i2, View view) {
                Preconditions.checkNotNull(menuItem);
                if (view != null) {
                    FloatingToolbar.updateMenuItemButton(view, menuItem, this.mIconTextSpacing);
                } else {
                    view = createMenuButton(menuItem);
                }
                view.setMinimumWidth(i2);
                return view;
            }
        }

        public FloatingToolbarPopup(Context context, View view) {
            this.mParent = (View) Preconditions.checkNotNull(view);
            Context context2 = (Context) Preconditions.checkNotNull(context);
            this.mContext = context2;
            ViewGroup viewGroupCreateContentContainer = FloatingToolbar.createContentContainer(context);
            this.mContentContainer = viewGroupCreateContentContainer;
            this.mPopupWindow = FloatingToolbar.createPopupWindow(viewGroupCreateContentContainer);
            this.mMarginHorizontal = view.getResources().getDimensionPixelSize(R.dimen.floating_toolbar_horizontal_margin);
            this.mMarginVertical = view.getResources().getDimensionPixelSize(R.dimen.floating_toolbar_vertical_margin);
            this.mLineHeight = context.getResources().getDimensionPixelSize(R.dimen.floating_toolbar_height);
            this.mIconTextSpacing = context.getResources().getDimensionPixelSize(R.dimen.floating_toolbar_menu_button_side_padding);
            this.mLogAccelerateInterpolator = new LogAccelerateInterpolator();
            this.mFastOutSlowInInterpolator = AnimationUtils.loadInterpolator(context2, 17563661);
            this.mLinearOutSlowInInterpolator = AnimationUtils.loadInterpolator(context2, 17563662);
            this.mFastOutLinearInInterpolator = AnimationUtils.loadInterpolator(context2, 17563663);
            Drawable drawable = context2.getResources().getDrawable(R.drawable.ft_avd_tooverflow, context2.getTheme());
            this.mArrow = drawable;
            drawable.setAutoMirrored(true);
            Drawable drawable2 = context2.getResources().getDrawable(R.drawable.ft_avd_toarrow, context2.getTheme());
            this.mOverflow = drawable2;
            drawable2.setAutoMirrored(true);
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) context2.getResources().getDrawable(R.drawable.ft_avd_toarrow_animation, context2.getTheme());
            this.mToArrow = animatedVectorDrawable;
            animatedVectorDrawable.setAutoMirrored(true);
            AnimatedVectorDrawable animatedVectorDrawable2 = (AnimatedVectorDrawable) context2.getResources().getDrawable(R.drawable.ft_avd_tooverflow_animation, context2.getTheme());
            this.mToOverflow = animatedVectorDrawable2;
            animatedVectorDrawable2.setAutoMirrored(true);
            ImageButton imageButtonCreateOverflowButton = createOverflowButton();
            this.mOverflowButton = imageButtonCreateOverflowButton;
            this.mOverflowButtonSize = measure(imageButtonCreateOverflowButton);
            this.mMainPanel = createMainPanel();
            this.mOverflowPanelViewHelper = new OverflowPanelViewHelper(context2);
            this.mOverflowPanel = createOverflowPanel();
            Animation.AnimationListener animationListenerCreateOverflowAnimationListener = createOverflowAnimationListener();
            this.mOverflowAnimationListener = animationListenerCreateOverflowAnimationListener;
            AnimationSet animationSet = new AnimationSet(true);
            this.mOpenOverflowAnimation = animationSet;
            animationSet.setAnimationListener(animationListenerCreateOverflowAnimationListener);
            AnimationSet animationSet2 = new AnimationSet(true);
            this.mCloseOverflowAnimation = animationSet2;
            animationSet2.setAnimationListener(animationListenerCreateOverflowAnimationListener);
            this.mShowAnimation = FloatingToolbar.createEnterAnimation(viewGroupCreateContentContainer);
            this.mDismissAnimation = FloatingToolbar.createExitAnimation(viewGroupCreateContentContainer, 0, new AnimatorListenerAdapter() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    FloatingToolbarPopup.this.mPopupWindow.dismiss();
                    FloatingToolbarPopup.this.mContentContainer.removeAllViews();
                }
            });
            this.mHideAnimation = FloatingToolbar.createExitAnimation(viewGroupCreateContentContainer, 0, new AnimatorListenerAdapter() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    FloatingToolbarPopup.this.mPopupWindow.dismiss();
                }
            });
        }

        private int calculateOverflowHeight(int i2) {
            int iMin = Math.min(4, Math.min(Math.max(2, i2), this.mOverflowPanel.getCount()));
            return this.mOverflowButtonSize.getHeight() + (iMin * this.mLineHeight) + (iMin < this.mOverflowPanel.getCount() ? (int) (this.mLineHeight * 0.5f) : 0);
        }

        private void cancelDismissAndHideAnimations() {
            this.mDismissAnimation.cancel();
            this.mHideAnimation.cancel();
        }

        private void cancelOverflowAnimations() {
            this.mContentContainer.clearAnimation();
            this.mMainPanel.animate().cancel();
            this.mOverflowPanel.animate().cancel();
            this.mToArrow.stop();
            this.mToOverflow.stop();
        }

        private void clearPanels() {
            this.mOverflowPanelSize = null;
            this.mMainPanelSize = null;
            this.mIsOverflowOpen = false;
            this.mMainPanel.removeAllViews();
            ArrayAdapter arrayAdapter = (ArrayAdapter) this.mOverflowPanel.getAdapter();
            arrayAdapter.clear();
            this.mOverflowPanel.setAdapter((ListAdapter) arrayAdapter);
            this.mContentContainer.removeAllViews();
        }

        private void closeOverflow() {
            final int width = this.mMainPanelSize.getWidth();
            final int width2 = this.mContentContainer.getWidth();
            final float x2 = this.mContentContainer.getX();
            final float width3 = x2 + this.mContentContainer.getWidth();
            Animation animation = new Animation() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.8
                @Override // android.view.animation.Animation
                public void applyTransformation(float f2, Transformation transformation) {
                    FloatingToolbarPopup.setWidth(FloatingToolbarPopup.this.mContentContainer, width2 + ((int) (f2 * (width - width2))));
                    if (FloatingToolbarPopup.this.isInRTLMode()) {
                        FloatingToolbarPopup.this.mContentContainer.setX(x2);
                        FloatingToolbarPopup.this.mMainPanel.setX(0.0f);
                        FloatingToolbarPopup.this.mOverflowPanel.setX(0.0f);
                    } else {
                        FloatingToolbarPopup.this.mContentContainer.setX(width3 - FloatingToolbarPopup.this.mContentContainer.getWidth());
                        FloatingToolbarPopup.this.mMainPanel.setX(FloatingToolbarPopup.this.mContentContainer.getWidth() - width);
                        FloatingToolbarPopup.this.mOverflowPanel.setX(FloatingToolbarPopup.this.mContentContainer.getWidth() - width2);
                    }
                }
            };
            final int height = this.mMainPanelSize.getHeight();
            final int height2 = this.mContentContainer.getHeight();
            final float y2 = this.mContentContainer.getY() + this.mContentContainer.getHeight();
            Animation animation2 = new Animation() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.9
                @Override // android.view.animation.Animation
                public void applyTransformation(float f2, Transformation transformation) {
                    FloatingToolbarPopup.setHeight(FloatingToolbarPopup.this.mContentContainer, height2 + ((int) (f2 * (height - height2))));
                    if (FloatingToolbarPopup.this.mOpenOverflowUpwards) {
                        FloatingToolbarPopup.this.mContentContainer.setY(y2 - FloatingToolbarPopup.this.mContentContainer.getHeight());
                        FloatingToolbarPopup.this.positionContentYCoordinatesIfOpeningOverflowUpwards();
                    }
                }
            };
            final float x3 = this.mOverflowButton.getX();
            final float width4 = isInRTLMode() ? (x3 - width2) + this.mOverflowButton.getWidth() : (width2 + x3) - this.mOverflowButton.getWidth();
            Animation animation3 = new Animation() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.10
                @Override // android.view.animation.Animation
                public void applyTransformation(float f2, Transformation transformation) {
                    float f3 = x3;
                    FloatingToolbarPopup.this.mOverflowButton.setX(android.accessibilityservice.c.a(width4, f3, f2, f3) + (FloatingToolbarPopup.this.isInRTLMode() ? 0.0f : FloatingToolbarPopup.this.mContentContainer.getWidth() - width2));
                }
            };
            animation.setInterpolator(this.mFastOutSlowInInterpolator);
            animation.setDuration(getAdjustedDuration(250));
            animation2.setInterpolator(this.mLogAccelerateInterpolator);
            animation2.setDuration(getAdjustedDuration(250));
            animation3.setInterpolator(this.mFastOutSlowInInterpolator);
            animation3.setDuration(getAdjustedDuration(250));
            this.mCloseOverflowAnimation.getAnimations().clear();
            this.mCloseOverflowAnimation.addAnimation(animation);
            this.mCloseOverflowAnimation.addAnimation(animation2);
            this.mCloseOverflowAnimation.addAnimation(animation3);
            this.mContentContainer.startAnimation(this.mCloseOverflowAnimation);
            this.mIsOverflowOpen = false;
            this.mMainPanel.animate().alpha(1.0f).withLayer().setInterpolator(this.mFastOutLinearInInterpolator).setDuration(100L).start();
            this.mOverflowPanel.animate().alpha(0.0f).withLayer().setInterpolator(this.mLinearOutSlowInInterpolator).setDuration(150L).start();
        }

        private ViewGroup createMainPanel() {
            return new LinearLayout(this.mContext) { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.11
                @Override // android.view.ViewGroup
                public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                    return FloatingToolbarPopup.this.isOverflowAnimating();
                }

                @Override // android.widget.LinearLayout, android.view.View
                public void onMeasure(int i2, int i3) {
                    if (FloatingToolbarPopup.this.isOverflowAnimating()) {
                        i2 = View.MeasureSpec.makeMeasureSpec(FloatingToolbarPopup.this.mMainPanelSize.getWidth(), 1073741824);
                    }
                    super.onMeasure(i2, i3);
                }
            };
        }

        private Animation.AnimationListener createOverflowAnimationListener() {
            return new AnonymousClass13();
        }

        private ImageButton createOverflowButton() {
            final ImageButton imageButton = (ImageButton) LayoutInflater.from(this.mContext).inflate(R.layout.floating_popup_overflow_button, (ViewGroup) null);
            imageButton.setImageDrawable(this.mOverflow);
            imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.internal.widget.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f375b.lambda$createOverflowButton$1(imageButton, view);
                }
            });
            return imageButton;
        }

        private OverflowPanel createOverflowPanel() {
            final OverflowPanel overflowPanel = new OverflowPanel(this);
            overflowPanel.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            overflowPanel.setDivider(null);
            overflowPanel.setDividerHeight(0);
            overflowPanel.setAdapter((ListAdapter) new ArrayAdapter<MenuItem>(this.mContext, 0) { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.12
                @Override // android.widget.ArrayAdapter, android.widget.Adapter
                public View getView(int i2, View view, ViewGroup viewGroup) {
                    return FloatingToolbarPopup.this.mOverflowPanelViewHelper.getView(getItem(i2), FloatingToolbarPopup.this.mOverflowPanelSize.getWidth(), view);
                }
            });
            overflowPanel.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.android.internal.widget.c
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i2, long j2) {
                    this.f377b.lambda$createOverflowPanel$2(overflowPanel, adapterView, view, i2, j2);
                }
            });
            return overflowPanel;
        }

        private int getAdjustedDuration(int i2) {
            int i3 = this.mTransitionDurationScale;
            if (i3 < 150) {
                return Math.max(i2 - 50, 0);
            }
            if (i3 > 300) {
                return i2 + 50;
            }
            return (int) (ValueAnimator.getDurationScale() * i2);
        }

        private int getAdjustedToolbarWidth(int i2) {
            refreshViewPort();
            int iWidth = this.mViewPortOnScreen.width() - (this.mParent.getResources().getDimensionPixelSize(R.dimen.floating_toolbar_horizontal_margin) * 2);
            if (i2 <= 0) {
                i2 = this.mParent.getResources().getDimensionPixelSize(R.dimen.floating_toolbar_preferred_width);
            }
            return Math.min(i2, iWidth);
        }

        private int getOverflowWidth() {
            int count = this.mOverflowPanel.getAdapter().getCount();
            int iMax = 0;
            for (int i2 = 0; i2 < count; i2++) {
                iMax = Math.max(this.mOverflowPanelViewHelper.calculateWidth((MenuItem) this.mOverflowPanel.getAdapter().getItem(i2)), iMax);
            }
            return iMax;
        }

        private boolean hasOverflow() {
            return this.mOverflowPanelSize != null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isInRTLMode() {
            return this.mContext.getApplicationInfo().hasRtlSupport() && this.mContext.getResources().getConfiguration().getLayoutDirection() == 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isOverflowAnimating() {
            return (this.mOpenOverflowAnimation.hasStarted() && !this.mOpenOverflowAnimation.hasEnded()) || (this.mCloseOverflowAnimation.hasStarted() && !this.mCloseOverflowAnimation.hasEnded());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createOverflowButton$1(ImageButton imageButton, View view) {
            if (this.mIsOverflowOpen) {
                imageButton.setImageDrawable(this.mToOverflow);
                this.mToOverflow.start();
                closeOverflow();
            } else {
                imageButton.setImageDrawable(this.mToArrow);
                this.mToArrow.start();
                openOverflow();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createOverflowPanel$2(OverflowPanel overflowPanel, AdapterView adapterView, View view, int i2, long j2) {
            MenuItem menuItem = (MenuItem) overflowPanel.getAdapter().getItem(i2);
            MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.mOnMenuItemClickListener;
            if (onMenuItemClickListener != null) {
                onMenuItemClickListener.onMenuItemClick(menuItem);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
            internalInsetsInfo.contentInsets.setEmpty();
            internalInsetsInfo.visibleInsets.setEmpty();
            internalInsetsInfo.touchableRegion.set(this.mTouchableRegion);
            internalInsetsInfo.setTouchableInsets(3);
        }

        private void layoutOverflowPanelItems(List<MenuItem> list) {
            ArrayAdapter arrayAdapter = (ArrayAdapter) this.mOverflowPanel.getAdapter();
            arrayAdapter.clear();
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayAdapter.add(list.get(i2));
            }
            this.mOverflowPanel.setAdapter((ListAdapter) arrayAdapter);
            if (this.mOpenOverflowUpwards) {
                this.mOverflowPanel.setY(0.0f);
            } else {
                this.mOverflowPanel.setY(this.mOverflowButtonSize.getHeight());
            }
            Size size2 = new Size(Math.max(getOverflowWidth(), this.mOverflowButtonSize.getWidth()), calculateOverflowHeight(4));
            this.mOverflowPanelSize = size2;
            setSize(this.mOverflowPanel, size2);
        }

        private void maybeComputeTransitionDurationScale() {
            Size size = this.mMainPanelSize;
            if (size == null || this.mOverflowPanelSize == null) {
                return;
            }
            int width = size.getWidth() - this.mOverflowPanelSize.getWidth();
            int height = this.mOverflowPanelSize.getHeight() - this.mMainPanelSize.getHeight();
            this.mTransitionDurationScale = (int) (Math.sqrt((height * height) + (width * width)) / ((double) this.mContentContainer.getContext().getResources().getDisplayMetrics().density));
        }

        private static Size measure(View view) {
            Preconditions.checkState(view.getParent() == null);
            view.measure(0, 0);
            return new Size(view.getMeasuredWidth(), view.getMeasuredHeight());
        }

        private void openOverflow() {
            final int width = this.mOverflowPanelSize.getWidth();
            final int height = this.mOverflowPanelSize.getHeight();
            final int width2 = this.mContentContainer.getWidth();
            final int height2 = this.mContentContainer.getHeight();
            final float y2 = this.mContentContainer.getY();
            final float x2 = this.mContentContainer.getX();
            final float width3 = x2 + this.mContentContainer.getWidth();
            Animation animation = new Animation() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.5
                @Override // android.view.animation.Animation
                public void applyTransformation(float f2, Transformation transformation) {
                    FloatingToolbarPopup.setWidth(FloatingToolbarPopup.this.mContentContainer, width2 + ((int) (f2 * (width - width2))));
                    if (FloatingToolbarPopup.this.isInRTLMode()) {
                        FloatingToolbarPopup.this.mContentContainer.setX(x2);
                        FloatingToolbarPopup.this.mMainPanel.setX(0.0f);
                        FloatingToolbarPopup.this.mOverflowPanel.setX(0.0f);
                    } else {
                        FloatingToolbarPopup.this.mContentContainer.setX(width3 - FloatingToolbarPopup.this.mContentContainer.getWidth());
                        FloatingToolbarPopup.this.mMainPanel.setX(FloatingToolbarPopup.this.mContentContainer.getWidth() - width2);
                        FloatingToolbarPopup.this.mOverflowPanel.setX(FloatingToolbarPopup.this.mContentContainer.getWidth() - width);
                    }
                }
            };
            Animation animation2 = new Animation() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.6
                @Override // android.view.animation.Animation
                public void applyTransformation(float f2, Transformation transformation) {
                    FloatingToolbarPopup.setHeight(FloatingToolbarPopup.this.mContentContainer, height2 + ((int) (f2 * (height - height2))));
                    if (FloatingToolbarPopup.this.mOpenOverflowUpwards) {
                        FloatingToolbarPopup.this.mContentContainer.setY(y2 - (FloatingToolbarPopup.this.mContentContainer.getHeight() - height2));
                        FloatingToolbarPopup.this.positionContentYCoordinatesIfOpeningOverflowUpwards();
                    }
                }
            };
            final float x3 = this.mOverflowButton.getX();
            final float width4 = isInRTLMode() ? (width + x3) - this.mOverflowButton.getWidth() : (x3 - width) + this.mOverflowButton.getWidth();
            Animation animation3 = new Animation() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.7
                @Override // android.view.animation.Animation
                public void applyTransformation(float f2, Transformation transformation) {
                    float f3 = x3;
                    FloatingToolbarPopup.this.mOverflowButton.setX(android.accessibilityservice.c.a(width4, f3, f2, f3) + (FloatingToolbarPopup.this.isInRTLMode() ? 0.0f : FloatingToolbarPopup.this.mContentContainer.getWidth() - width2));
                }
            };
            animation.setInterpolator(this.mLogAccelerateInterpolator);
            animation.setDuration(getAdjustedDuration(250));
            animation2.setInterpolator(this.mFastOutSlowInInterpolator);
            animation2.setDuration(getAdjustedDuration(250));
            animation3.setInterpolator(this.mFastOutSlowInInterpolator);
            animation3.setDuration(getAdjustedDuration(250));
            this.mOpenOverflowAnimation.getAnimations().clear();
            this.mOpenOverflowAnimation.getAnimations().clear();
            this.mOpenOverflowAnimation.addAnimation(animation);
            this.mOpenOverflowAnimation.addAnimation(animation2);
            this.mOpenOverflowAnimation.addAnimation(animation3);
            this.mContentContainer.startAnimation(this.mOpenOverflowAnimation);
            this.mIsOverflowOpen = true;
            this.mMainPanel.animate().alpha(0.0f).withLayer().setInterpolator(this.mLinearOutSlowInInterpolator).setDuration(250L).start();
            this.mOverflowPanel.setAlpha(1.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void positionContentYCoordinatesIfOpeningOverflowUpwards() {
            if (this.mOpenOverflowUpwards) {
                this.mMainPanel.setY(this.mContentContainer.getHeight() - this.mMainPanelSize.getHeight());
                this.mOverflowButton.setY(this.mContentContainer.getHeight() - this.mOverflowButton.getHeight());
                this.mOverflowPanel.setY(this.mContentContainer.getHeight() - this.mOverflowPanelSize.getHeight());
            }
        }

        private void preparePopupContent() {
            this.mContentContainer.removeAllViews();
            if (hasOverflow()) {
                this.mContentContainer.addView(this.mOverflowPanel);
            }
            this.mContentContainer.addView(this.mMainPanel);
            if (hasOverflow()) {
                this.mContentContainer.addView(this.mOverflowButton);
            }
            setPanelsStatesAtRestingPosition();
            setContentAreaAsTouchableSurface();
            if (isInRTLMode()) {
                this.mContentContainer.setAlpha(0.0f);
                this.mContentContainer.post(this.mPreparePopupContentRTLHelper);
            }
        }

        private void refreshCoordinatesAndOverflowDirection(Rect rect) {
            int height;
            refreshViewPort();
            int iMin = Math.min(rect.centerX() - (this.mPopupWindow.getWidth() / 2), this.mViewPortOnScreen.right - this.mPopupWindow.getWidth());
            int i2 = rect.top;
            Rect rect2 = this.mViewPortOnScreen;
            int i3 = i2 - rect2.top;
            int i4 = rect2.bottom - rect.bottom;
            int i5 = this.mMarginVertical * 2;
            int i6 = this.mLineHeight + i5;
            if (hasOverflow()) {
                int iCalculateOverflowHeight = calculateOverflowHeight(2) + i5;
                Rect rect3 = this.mViewPortOnScreen;
                int i7 = (rect3.bottom - rect.top) + i6;
                int i8 = (rect.bottom - rect3.top) + i6;
                if (i3 >= iCalculateOverflowHeight) {
                    updateOverflowHeight(i3 - i5);
                    height = rect.top - this.mPopupWindow.getHeight();
                    this.mOpenOverflowUpwards = true;
                } else if (i3 >= i6 && i7 >= iCalculateOverflowHeight) {
                    updateOverflowHeight(i7 - i5);
                    height = rect.top - i6;
                    this.mOpenOverflowUpwards = false;
                } else if (i4 >= iCalculateOverflowHeight) {
                    updateOverflowHeight(i4 - i5);
                    height = rect.bottom;
                    this.mOpenOverflowUpwards = false;
                } else if (i4 < i6 || rect3.height() < iCalculateOverflowHeight) {
                    updateOverflowHeight(this.mViewPortOnScreen.height() - i5);
                    height = this.mViewPortOnScreen.top;
                    this.mOpenOverflowUpwards = false;
                } else {
                    updateOverflowHeight(i8 - i5);
                    height = (rect.bottom + i6) - this.mPopupWindow.getHeight();
                    this.mOpenOverflowUpwards = true;
                }
            } else if (i3 >= i6) {
                height = rect.top - i6;
            } else if (i4 >= i6) {
                height = rect.bottom;
            } else {
                height = i4 >= this.mLineHeight ? rect.bottom - this.mMarginVertical : Math.max(this.mViewPortOnScreen.top, rect.top - i6);
            }
            this.mParent.getRootView().getLocationOnScreen(this.mTmpCoords);
            int[] iArr = this.mTmpCoords;
            int i9 = iArr[0];
            int i10 = iArr[1];
            this.mParent.getRootView().getLocationInWindow(this.mTmpCoords);
            int[] iArr2 = this.mTmpCoords;
            this.mCoordsOnWindow.set(Math.max(0, iMin - (i9 - iArr2[0])), Math.max(0, height - (i10 - iArr2[1])));
        }

        private void refreshViewPort() {
            this.mParent.getWindowVisibleDisplayFrame(this.mViewPortOnScreen);
        }

        private void runDismissAnimation() {
            this.mDismissAnimation.start();
        }

        private void runHideAnimation() {
            this.mHideAnimation.start();
        }

        private void runShowAnimation() {
            this.mShowAnimation.start();
        }

        private void setButtonTagAndClickListener(View view, MenuItem menuItem) {
            view.setTag(menuItem);
            view.setOnClickListener(this.mMenuItemButtonOnClickListener);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setContentAreaAsTouchableSurface() {
            int width;
            int height;
            Preconditions.checkNotNull(this.mMainPanelSize);
            if (this.mIsOverflowOpen) {
                Preconditions.checkNotNull(this.mOverflowPanelSize);
                width = this.mOverflowPanelSize.getWidth();
                height = this.mOverflowPanelSize.getHeight();
            } else {
                width = this.mMainPanelSize.getWidth();
                height = this.mMainPanelSize.getHeight();
            }
            this.mTouchableRegion.set((int) this.mContentContainer.getX(), (int) this.mContentContainer.getY(), ((int) this.mContentContainer.getX()) + width, ((int) this.mContentContainer.getY()) + height);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void setHeight(View view, int i2) {
            setSize(view, view.getLayoutParams().width, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPanelsStatesAtRestingPosition() {
            this.mOverflowButton.setEnabled(true);
            this.mOverflowPanel.awakenScrollBars();
            if (this.mIsOverflowOpen) {
                Size size = this.mOverflowPanelSize;
                setSize(this.mContentContainer, size);
                this.mMainPanel.setAlpha(0.0f);
                this.mMainPanel.setVisibility(4);
                this.mOverflowPanel.setAlpha(1.0f);
                this.mOverflowPanel.setVisibility(0);
                this.mOverflowButton.setImageDrawable(this.mArrow);
                this.mOverflowButton.setContentDescription(this.mContext.getString(R.string.floating_toolbar_close_overflow_description));
                if (isInRTLMode()) {
                    this.mContentContainer.setX(this.mMarginHorizontal);
                    this.mMainPanel.setX(0.0f);
                    this.mOverflowButton.setX(size.getWidth() - this.mOverflowButtonSize.getWidth());
                    this.mOverflowPanel.setX(0.0f);
                } else {
                    this.mContentContainer.setX((this.mPopupWindow.getWidth() - size.getWidth()) - this.mMarginHorizontal);
                    this.mMainPanel.setX(-this.mContentContainer.getX());
                    this.mOverflowButton.setX(0.0f);
                    this.mOverflowPanel.setX(0.0f);
                }
                if (this.mOpenOverflowUpwards) {
                    this.mContentContainer.setY(this.mMarginVertical);
                    this.mMainPanel.setY(size.getHeight() - this.mContentContainer.getHeight());
                    this.mOverflowButton.setY(size.getHeight() - this.mOverflowButtonSize.getHeight());
                    this.mOverflowPanel.setY(0.0f);
                    return;
                }
                this.mContentContainer.setY(this.mMarginVertical);
                this.mMainPanel.setY(0.0f);
                this.mOverflowButton.setY(0.0f);
                this.mOverflowPanel.setY(this.mOverflowButtonSize.getHeight());
                return;
            }
            Size size2 = this.mMainPanelSize;
            setSize(this.mContentContainer, size2);
            this.mMainPanel.setAlpha(1.0f);
            this.mMainPanel.setVisibility(0);
            this.mOverflowPanel.setAlpha(0.0f);
            this.mOverflowPanel.setVisibility(4);
            this.mOverflowButton.setImageDrawable(this.mOverflow);
            this.mOverflowButton.setContentDescription(this.mContext.getString(R.string.floating_toolbar_open_overflow_description));
            if (!hasOverflow()) {
                this.mContentContainer.setX(this.mMarginHorizontal);
                this.mContentContainer.setY(this.mMarginVertical);
                this.mMainPanel.setX(0.0f);
                this.mMainPanel.setY(0.0f);
                return;
            }
            if (isInRTLMode()) {
                this.mContentContainer.setX(this.mMarginHorizontal);
                this.mMainPanel.setX(0.0f);
                this.mOverflowButton.setX(0.0f);
                this.mOverflowPanel.setX(0.0f);
            } else {
                this.mContentContainer.setX((this.mPopupWindow.getWidth() - size2.getWidth()) - this.mMarginHorizontal);
                this.mMainPanel.setX(0.0f);
                this.mOverflowButton.setX(size2.getWidth() - this.mOverflowButtonSize.getWidth());
                this.mOverflowPanel.setX(size2.getWidth() - this.mOverflowPanelSize.getWidth());
            }
            if (!this.mOpenOverflowUpwards) {
                this.mContentContainer.setY(this.mMarginVertical);
                this.mMainPanel.setY(0.0f);
                this.mOverflowButton.setY(0.0f);
                this.mOverflowPanel.setY(this.mOverflowButtonSize.getHeight());
                return;
            }
            this.mContentContainer.setY((this.mOverflowPanelSize.getHeight() + this.mMarginVertical) - size2.getHeight());
            this.mMainPanel.setY(0.0f);
            this.mOverflowButton.setY(0.0f);
            this.mOverflowPanel.setY(size2.getHeight() - this.mOverflowPanelSize.getHeight());
        }

        private static void setSize(View view, int i2, int i3) {
            view.setMinimumWidth(i2);
            view.setMinimumHeight(i3);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new ViewGroup.LayoutParams(0, 0);
            }
            layoutParams.width = i2;
            layoutParams.height = i3;
            view.setLayoutParams(layoutParams);
        }

        private void setTouchableSurfaceInsetsComputer() {
            ViewTreeObserver viewTreeObserver = this.mPopupWindow.getContentView().getRootView().getViewTreeObserver();
            viewTreeObserver.removeOnComputeInternalInsetsListener(this.mInsetsComputer);
            viewTreeObserver.addOnComputeInternalInsetsListener(this.mInsetsComputer);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void setWidth(View view, int i2) {
            setSize(view, i2, view.getLayoutParams().height);
        }

        private void setZeroTouchableSurface() {
            this.mTouchableRegion.setEmpty();
        }

        private void updateOverflowHeight(int i2) {
            if (hasOverflow()) {
                int iCalculateOverflowHeight = calculateOverflowHeight((i2 - this.mOverflowButtonSize.getHeight()) / this.mLineHeight);
                if (this.mOverflowPanelSize.getHeight() != iCalculateOverflowHeight) {
                    this.mOverflowPanelSize = new Size(this.mOverflowPanelSize.getWidth(), iCalculateOverflowHeight);
                }
                setSize(this.mOverflowPanel, this.mOverflowPanelSize);
                if (this.mIsOverflowOpen) {
                    setSize(this.mContentContainer, this.mOverflowPanelSize);
                    if (this.mOpenOverflowUpwards) {
                        int height = this.mOverflowPanelSize.getHeight() - iCalculateOverflowHeight;
                        ViewGroup viewGroup = this.mContentContainer;
                        float f2 = height;
                        viewGroup.setY(viewGroup.getY() + f2);
                        ImageButton imageButton = this.mOverflowButton;
                        imageButton.setY(imageButton.getY() - f2);
                    }
                } else {
                    setSize(this.mContentContainer, this.mMainPanelSize);
                }
                updatePopupSize();
            }
        }

        private void updatePopupSize() {
            int iMax;
            Size size = this.mMainPanelSize;
            int iMax2 = 0;
            if (size != null) {
                iMax2 = Math.max(0, size.getWidth());
                iMax = Math.max(0, this.mMainPanelSize.getHeight());
            } else {
                iMax = 0;
            }
            Size size2 = this.mOverflowPanelSize;
            if (size2 != null) {
                iMax2 = Math.max(iMax2, size2.getWidth());
                iMax = Math.max(iMax, this.mOverflowPanelSize.getHeight());
            }
            this.mPopupWindow.setWidth((this.mMarginHorizontal * 2) + iMax2);
            this.mPopupWindow.setHeight((this.mMarginVertical * 2) + iMax);
            maybeComputeTransitionDurationScale();
        }

        public void dismiss() {
            if (this.mDismissed) {
                return;
            }
            this.mHidden = false;
            this.mDismissed = true;
            this.mHideAnimation.cancel();
            runDismissAnimation();
            setZeroTouchableSurface();
        }

        public void hide() {
            if (isShowing()) {
                this.mHidden = true;
                runHideAnimation();
                setZeroTouchableSurface();
            }
        }

        public boolean isHidden() {
            return this.mHidden;
        }

        public boolean isShowing() {
            return (this.mDismissed || this.mHidden) ? false : true;
        }

        public List<MenuItem> layoutMainPanelItems(List<MenuItem> list, int i2) {
            Preconditions.checkNotNull(list);
            LinkedList linkedList = new LinkedList();
            LinkedList linkedList2 = new LinkedList();
            for (MenuItem menuItem : list) {
                if (menuItem.requiresOverflow()) {
                    linkedList2.add(menuItem);
                } else {
                    linkedList.add(menuItem);
                }
            }
            linkedList.addAll(linkedList2);
            this.mMainPanel.removeAllViews();
            int i3 = 0;
            this.mMainPanel.setPaddingRelative(0, 0, 0, 0);
            int i4 = 1;
            int groupId = -1;
            int i5 = i2;
            boolean z2 = true;
            while (!linkedList.isEmpty()) {
                MenuItem menuItem2 = (MenuItem) linkedList.peek();
                if (!z2 && menuItem2.requiresOverflow()) {
                    break;
                }
                View viewCreateMenuItemButton = FloatingToolbar.createMenuItemButton(this.mContext, menuItem2, this.mIconTextSpacing);
                if (z2) {
                    viewCreateMenuItemButton.setPaddingRelative((int) (((double) viewCreateMenuItemButton.getPaddingStart()) * 1.5d), viewCreateMenuItemButton.getPaddingTop(), viewCreateMenuItemButton.getPaddingEnd(), viewCreateMenuItemButton.getPaddingBottom());
                }
                int i6 = linkedList.size() == i4 ? i4 : i3;
                if (i6 != 0) {
                    viewCreateMenuItemButton.setPaddingRelative(viewCreateMenuItemButton.getPaddingStart(), viewCreateMenuItemButton.getPaddingTop(), (int) (((double) viewCreateMenuItemButton.getPaddingEnd()) * 1.5d), viewCreateMenuItemButton.getPaddingBottom());
                }
                viewCreateMenuItemButton.measure(i3, i3);
                int iMin = Math.min(viewCreateMenuItemButton.getMeasuredWidth(), i2);
                int i7 = (z2 || groupId == menuItem2.getGroupId()) ? i3 : i4;
                int paddingEnd = i7 != 0 ? viewCreateMenuItemButton.getPaddingEnd() * 2 : i3;
                int i8 = iMin <= (i5 - this.mOverflowButtonSize.getWidth()) - paddingEnd ? i4 : i3;
                int i9 = (i6 == 0 || iMin > i5 - paddingEnd) ? i3 : i4;
                if (i8 == 0 && i9 == 0) {
                    break;
                }
                if (i7 != 0) {
                    View viewCreateDivider = FloatingToolbar.createDivider(this.mContext);
                    int i10 = viewCreateDivider.getLayoutParams().width;
                    ViewGroup viewGroup = this.mMainPanel;
                    View childAt = viewGroup.getChildAt(viewGroup.getChildCount() - i4);
                    int i11 = paddingEnd / 2;
                    childAt.setPaddingRelative(childAt.getPaddingStart(), childAt.getPaddingTop(), (childAt.getPaddingEnd() + i11) - i10, childAt.getPaddingBottom());
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    layoutParams.width = (i11 - i10) + layoutParams.width;
                    childAt.setLayoutParams(layoutParams);
                    viewCreateMenuItemButton.setPaddingRelative(viewCreateMenuItemButton.getPaddingStart() + i11, viewCreateMenuItemButton.getPaddingTop(), viewCreateMenuItemButton.getPaddingEnd(), viewCreateMenuItemButton.getPaddingBottom());
                    this.mMainPanel.addView(viewCreateDivider);
                }
                setButtonTagAndClickListener(viewCreateMenuItemButton, menuItem2);
                viewCreateMenuItemButton.setTooltipText(menuItem2.getTooltipText());
                this.mMainPanel.addView(viewCreateMenuItemButton);
                ViewGroup.LayoutParams layoutParams2 = viewCreateMenuItemButton.getLayoutParams();
                layoutParams2.width = (paddingEnd / 2) + iMin;
                viewCreateMenuItemButton.setLayoutParams(layoutParams2);
                i5 -= iMin + paddingEnd;
                linkedList.pop();
                groupId = menuItem2.getGroupId();
                i4 = 1;
                i3 = 0;
                z2 = false;
            }
            if (!linkedList.isEmpty()) {
                this.mMainPanel.setPaddingRelative(0, 0, this.mOverflowButtonSize.getWidth(), 0);
            }
            this.mMainPanelSize = measure(this.mMainPanel);
            return linkedList;
        }

        public void layoutMenuItems(List<MenuItem> list, MenuItem.OnMenuItemClickListener onMenuItemClickListener, int i2) {
            this.mOnMenuItemClickListener = onMenuItemClickListener;
            cancelOverflowAnimations();
            clearPanels();
            List<MenuItem> listLayoutMainPanelItems = layoutMainPanelItems(list, getAdjustedToolbarWidth(i2));
            if (!listLayoutMainPanelItems.isEmpty()) {
                layoutOverflowPanelItems(listLayoutMainPanelItems);
            }
            updatePopupSize();
        }

        public void show(Rect rect) {
            Preconditions.checkNotNull(rect);
            if (isShowing()) {
                return;
            }
            this.mHidden = false;
            this.mDismissed = false;
            cancelDismissAndHideAnimations();
            cancelOverflowAnimations();
            refreshCoordinatesAndOverflowDirection(rect);
            preparePopupContent();
            PopupWindow popupWindow = this.mPopupWindow;
            View view = this.mParent;
            Point point = this.mCoordsOnWindow;
            popupWindow.showAtLocation(view, 0, point.f71x, point.f72y);
            setTouchableSurfaceInsetsComputer();
            runShowAnimation();
        }

        public void updateCoordinates(Rect rect) {
            Preconditions.checkNotNull(rect);
            if (isShowing() && this.mPopupWindow.isShowing()) {
                cancelOverflowAnimations();
                refreshCoordinatesAndOverflowDirection(rect);
                preparePopupContent();
                PopupWindow popupWindow = this.mPopupWindow;
                Point point = this.mCoordsOnWindow;
                popupWindow.update(point.f71x, point.f72y, popupWindow.getWidth(), this.mPopupWindow.getHeight());
            }
        }

        private static void setSize(View view, Size size) {
            setSize(view, size.getWidth(), size.getHeight());
        }
    }
}
