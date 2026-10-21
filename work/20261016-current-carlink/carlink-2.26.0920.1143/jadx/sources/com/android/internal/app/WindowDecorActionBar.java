package com.android.internal.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.SpinnerAdapter;
import android.widget.Toolbar;
import com.android.internal.R;
import com.android.internal.view.ActionBarPolicy;
import com.android.internal.view.menu.MenuBuilder;
import com.android.internal.view.menu.MenuPopupHelper;
import com.android.internal.view.menu.SubMenuBuilder;
import com.android.internal.widget.ActionBarContainer;
import com.android.internal.widget.ActionBarContextView;
import com.android.internal.widget.ActionBarOverlayLayout;
import com.android.internal.widget.DecorToolbar;
import com.android.internal.widget.ScrollingTabContainerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class WindowDecorActionBar extends ActionBar implements ActionBarOverlayLayout.ActionBarVisibilityCallback {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int CONTEXT_DISPLAY_NORMAL = 0;
    private static final int CONTEXT_DISPLAY_SPLIT = 1;
    private static final long FADE_IN_DURATION_MS = 200;
    private static final long FADE_OUT_DURATION_MS = 100;
    private static final int INVALID_POSITION = -1;
    private static final String TAG = "WindowDecorActionBar";
    ActionMode mActionMode;
    private Activity mActivity;
    private ActionBarContainer mContainerView;
    private View mContentView;
    private Context mContext;
    private int mContextDisplayMode;
    private ActionBarContextView mContextView;
    private Animator mCurrentShowAnim;
    private DecorToolbar mDecorToolbar;
    ActionMode mDeferredDestroyActionMode;
    ActionMode.Callback mDeferredModeDestroyCallback;
    private Dialog mDialog;
    private boolean mDisplayHomeAsUpSet;
    private boolean mHasEmbeddedTabs;
    private boolean mHiddenByApp;
    private boolean mHiddenBySystem;
    boolean mHideOnContentScroll;
    private boolean mLastMenuVisibility;
    private ActionBarOverlayLayout mOverlayLayout;
    private TabImpl mSelectedTab;
    private boolean mShowHideAnimationEnabled;
    private boolean mShowingForMode;
    private ActionBarContainer mSplitView;
    private ScrollingTabContainerView mTabScrollView;
    private Context mThemedContext;
    private ArrayList<TabImpl> mTabs = new ArrayList<>();
    private int mSavedTabPosition = -1;
    private ArrayList<ActionBar.OnMenuVisibilityListener> mMenuVisibilityListeners = new ArrayList<>();
    private int mCurWindowVisibility = 0;
    private boolean mContentAnimations = true;
    private boolean mNowShowing = true;
    final Animator.AnimatorListener mHideListener = new AnimatorListenerAdapter() { // from class: com.android.internal.app.WindowDecorActionBar.1
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (WindowDecorActionBar.this.mContentAnimations && WindowDecorActionBar.this.mContentView != null) {
                WindowDecorActionBar.this.mContentView.setTranslationY(0.0f);
                WindowDecorActionBar.this.mContainerView.setTranslationY(0.0f);
            }
            if (WindowDecorActionBar.this.mSplitView != null && WindowDecorActionBar.this.mContextDisplayMode == 1) {
                WindowDecorActionBar.this.mSplitView.setVisibility(8);
            }
            WindowDecorActionBar.this.mContainerView.setVisibility(8);
            WindowDecorActionBar.this.mContainerView.setTransitioning(false);
            WindowDecorActionBar.this.mCurrentShowAnim = null;
            WindowDecorActionBar.this.completeDeferredDestroyActionMode();
            if (WindowDecorActionBar.this.mOverlayLayout != null) {
                WindowDecorActionBar.this.mOverlayLayout.requestApplyInsets();
            }
        }
    };
    final Animator.AnimatorListener mShowListener = new AnimatorListenerAdapter() { // from class: com.android.internal.app.WindowDecorActionBar.2
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            WindowDecorActionBar.this.mCurrentShowAnim = null;
            WindowDecorActionBar.this.mContainerView.requestLayout();
        }
    };
    final ValueAnimator.AnimatorUpdateListener mUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.internal.app.WindowDecorActionBar.3
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ((View) WindowDecorActionBar.this.mContainerView.getParent()).invalidate();
        }
    };

    public class ActionModeImpl extends ActionMode implements MenuBuilder.Callback {
        private final Context mActionModeContext;
        private ActionMode.Callback mCallback;
        private WeakReference<View> mCustomView;
        private final MenuBuilder mMenu;

        public ActionModeImpl(Context context, ActionMode.Callback callback) {
            this.mActionModeContext = context;
            this.mCallback = callback;
            MenuBuilder defaultShowAsAction = new MenuBuilder(context).setDefaultShowAsAction(1);
            this.mMenu = defaultShowAsAction;
            defaultShowAsAction.setCallback(this);
        }

        public boolean dispatchOnCreate() {
            this.mMenu.stopDispatchingItemsChanged();
            try {
                return this.mCallback.onCreateActionMode(this, this.mMenu);
            } finally {
                this.mMenu.startDispatchingItemsChanged();
            }
        }

        @Override // android.view.ActionMode
        public void finish() {
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            if (windowDecorActionBar.mActionMode != this) {
                return;
            }
            if (WindowDecorActionBar.checkShowingFlags(windowDecorActionBar.mHiddenByApp, WindowDecorActionBar.this.mHiddenBySystem, false)) {
                this.mCallback.onDestroyActionMode(this);
            } else {
                WindowDecorActionBar windowDecorActionBar2 = WindowDecorActionBar.this;
                windowDecorActionBar2.mDeferredDestroyActionMode = this;
                windowDecorActionBar2.mDeferredModeDestroyCallback = this.mCallback;
            }
            this.mCallback = null;
            WindowDecorActionBar.this.animateToMode(false);
            WindowDecorActionBar.this.mContextView.closeMode();
            WindowDecorActionBar.this.mDecorToolbar.getViewGroup().sendAccessibilityEvent(32);
            WindowDecorActionBar.this.mOverlayLayout.setHideOnContentScrollEnabled(WindowDecorActionBar.this.mHideOnContentScroll);
            WindowDecorActionBar.this.mActionMode = null;
        }

        @Override // android.view.ActionMode
        public View getCustomView() {
            WeakReference<View> weakReference = this.mCustomView;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // android.view.ActionMode
        public Menu getMenu() {
            return this.mMenu;
        }

        @Override // android.view.ActionMode
        public MenuInflater getMenuInflater() {
            return new MenuInflater(this.mActionModeContext);
        }

        @Override // android.view.ActionMode
        public CharSequence getSubtitle() {
            return WindowDecorActionBar.this.mContextView.getSubtitle();
        }

        @Override // android.view.ActionMode
        public CharSequence getTitle() {
            return WindowDecorActionBar.this.mContextView.getTitle();
        }

        @Override // android.view.ActionMode
        public void invalidate() {
            if (WindowDecorActionBar.this.mActionMode != this) {
                return;
            }
            this.mMenu.stopDispatchingItemsChanged();
            try {
                this.mCallback.onPrepareActionMode(this, this.mMenu);
            } finally {
                this.mMenu.startDispatchingItemsChanged();
            }
        }

        @Override // android.view.ActionMode
        public boolean isTitleOptional() {
            return WindowDecorActionBar.this.mContextView.isTitleOptional();
        }

        public void onCloseMenu(MenuBuilder menuBuilder, boolean z2) {
        }

        public void onCloseSubMenu(SubMenuBuilder subMenuBuilder) {
        }

        @Override // com.android.internal.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            ActionMode.Callback callback = this.mCallback;
            if (callback != null) {
                return callback.onActionItemClicked(this, menuItem);
            }
            return false;
        }

        @Override // com.android.internal.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
            if (this.mCallback == null) {
                return;
            }
            invalidate();
            WindowDecorActionBar.this.mContextView.showOverflowMenu();
        }

        public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
            if (this.mCallback == null) {
                return false;
            }
            if (!subMenuBuilder.hasVisibleItems()) {
                return true;
            }
            new MenuPopupHelper(WindowDecorActionBar.this.getThemedContext(), subMenuBuilder).show();
            return true;
        }

        @Override // android.view.ActionMode
        public void setCustomView(View view) {
            WindowDecorActionBar.this.mContextView.setCustomView(view);
            this.mCustomView = new WeakReference<>(view);
        }

        @Override // android.view.ActionMode
        public void setSubtitle(CharSequence charSequence) {
            WindowDecorActionBar.this.mContextView.setSubtitle(charSequence);
        }

        @Override // android.view.ActionMode
        public void setTitle(CharSequence charSequence) {
            WindowDecorActionBar.this.mContextView.setTitle(charSequence);
        }

        @Override // android.view.ActionMode
        public void setTitleOptionalHint(boolean z2) {
            super.setTitleOptionalHint(z2);
            WindowDecorActionBar.this.mContextView.setTitleOptional(z2);
        }

        @Override // android.view.ActionMode
        public void setSubtitle(int i2) {
            setSubtitle(WindowDecorActionBar.this.mContext.getResources().getString(i2));
        }

        @Override // android.view.ActionMode
        public void setTitle(int i2) {
            setTitle(WindowDecorActionBar.this.mContext.getResources().getString(i2));
        }
    }

    public class TabImpl extends ActionBar.Tab {
        private ActionBar.TabListener mCallback;
        private CharSequence mContentDesc;
        private View mCustomView;
        private Drawable mIcon;
        private int mPosition = -1;
        private Object mTag;
        private CharSequence mText;

        public TabImpl() {
        }

        public ActionBar.TabListener getCallback() {
            return this.mCallback;
        }

        @Override // android.app.ActionBar.Tab
        public CharSequence getContentDescription() {
            return this.mContentDesc;
        }

        @Override // android.app.ActionBar.Tab
        public View getCustomView() {
            return this.mCustomView;
        }

        @Override // android.app.ActionBar.Tab
        public Drawable getIcon() {
            return this.mIcon;
        }

        @Override // android.app.ActionBar.Tab
        public int getPosition() {
            return this.mPosition;
        }

        @Override // android.app.ActionBar.Tab
        public Object getTag() {
            return this.mTag;
        }

        @Override // android.app.ActionBar.Tab
        public CharSequence getText() {
            return this.mText;
        }

        @Override // android.app.ActionBar.Tab
        public void select() {
            WindowDecorActionBar.this.selectTab(this);
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setContentDescription(int i2) {
            return setContentDescription(WindowDecorActionBar.this.mContext.getResources().getText(i2));
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setCustomView(View view) {
            this.mCustomView = view;
            if (this.mPosition >= 0) {
                WindowDecorActionBar.this.mTabScrollView.updateTab(this.mPosition);
            }
            return this;
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setIcon(Drawable drawable) {
            this.mIcon = drawable;
            if (this.mPosition >= 0) {
                WindowDecorActionBar.this.mTabScrollView.updateTab(this.mPosition);
            }
            return this;
        }

        public void setPosition(int i2) {
            this.mPosition = i2;
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setTabListener(ActionBar.TabListener tabListener) {
            this.mCallback = tabListener;
            return this;
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setTag(Object obj) {
            this.mTag = obj;
            return this;
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setText(CharSequence charSequence) {
            this.mText = charSequence;
            if (this.mPosition >= 0) {
                WindowDecorActionBar.this.mTabScrollView.updateTab(this.mPosition);
            }
            return this;
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setContentDescription(CharSequence charSequence) {
            this.mContentDesc = charSequence;
            if (this.mPosition >= 0) {
                WindowDecorActionBar.this.mTabScrollView.updateTab(this.mPosition);
            }
            return this;
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setCustomView(int i2) {
            return setCustomView(LayoutInflater.from(WindowDecorActionBar.this.getThemedContext()).inflate(i2, (ViewGroup) null));
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setIcon(int i2) {
            return setIcon(WindowDecorActionBar.this.mContext.getDrawable(i2));
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setText(int i2) {
            return setText(WindowDecorActionBar.this.mContext.getResources().getText(i2));
        }
    }

    public WindowDecorActionBar(Activity activity) {
        this.mActivity = activity;
        View decorView = activity.getWindow().getDecorView();
        boolean zHasFeature = this.mActivity.getWindow().hasFeature(9);
        init(decorView);
        if (zHasFeature) {
            return;
        }
        this.mContentView = decorView.findViewById(16908290);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean checkShowingFlags(boolean z2, boolean z3, boolean z4) {
        if (z4) {
            return true;
        }
        return (z2 || z3) ? false : true;
    }

    private void cleanupTabs() {
        if (this.mSelectedTab != null) {
            selectTab(null);
        }
        this.mTabs.clear();
        ScrollingTabContainerView scrollingTabContainerView = this.mTabScrollView;
        if (scrollingTabContainerView != null) {
            scrollingTabContainerView.removeAllTabs();
        }
        this.mSavedTabPosition = -1;
    }

    private void configureTab(ActionBar.Tab tab, int i2) {
        TabImpl tabImpl = (TabImpl) tab;
        if (tabImpl.getCallback() == null) {
            throw new IllegalStateException("Action Bar Tab must have a Callback");
        }
        tabImpl.setPosition(i2);
        this.mTabs.add(i2, tabImpl);
        int size = this.mTabs.size();
        while (true) {
            i2++;
            if (i2 >= size) {
                return;
            } else {
                this.mTabs.get(i2).setPosition(i2);
            }
        }
    }

    private void ensureTabsExist() {
        if (this.mTabScrollView != null) {
            return;
        }
        ScrollingTabContainerView scrollingTabContainerView = new ScrollingTabContainerView(this.mContext);
        if (this.mHasEmbeddedTabs) {
            scrollingTabContainerView.setVisibility(0);
            this.mDecorToolbar.setEmbeddedTabView(scrollingTabContainerView);
        } else {
            if (getNavigationMode() == 2) {
                scrollingTabContainerView.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.mOverlayLayout;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.requestApplyInsets();
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
            this.mContainerView.setTabContainer(scrollingTabContainerView);
        }
        this.mTabScrollView = scrollingTabContainerView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private DecorToolbar getDecorToolbar(View view) {
        if (view instanceof DecorToolbar) {
            return (DecorToolbar) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of ".concat(view.getClass().getSimpleName()));
    }

    private void hideForActionMode() {
        if (this.mShowingForMode) {
            this.mShowingForMode = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.mOverlayLayout;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            updateVisibility(false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void init(View view) {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(R.id.decor_content_parent);
        this.mOverlayLayout = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.mDecorToolbar = getDecorToolbar(view.findViewById(R.id.action_bar));
        this.mContextView = (ActionBarContextView) view.findViewById(R.id.action_context_bar);
        this.mContainerView = (ActionBarContainer) view.findViewById(R.id.action_bar_container);
        this.mSplitView = (ActionBarContainer) view.findViewById(R.id.split_action_bar);
        DecorToolbar decorToolbar = this.mDecorToolbar;
        if (decorToolbar == null || this.mContextView == null || this.mContainerView == null) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with a compatible window decor layout"));
        }
        this.mContext = decorToolbar.getContext();
        this.mContextDisplayMode = this.mDecorToolbar.isSplit() ? 1 : 0;
        Object[] objArr = (this.mDecorToolbar.getDisplayOptions() & 4) != 0;
        if (objArr != false) {
            this.mDisplayHomeAsUpSet = true;
        }
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(this.mContext);
        setHomeButtonEnabled(actionBarPolicy.enableHomeButtonByDefault() || objArr == true);
        setHasEmbeddedTabs(actionBarPolicy.hasEmbeddedTabs());
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(null, R.styleable.ActionBar, 16843470, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(21, false)) {
            setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(20, 0);
        if (dimensionPixelSize != 0) {
            setElevation(dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void setHasEmbeddedTabs(boolean z2) {
        this.mHasEmbeddedTabs = z2;
        if (z2) {
            this.mContainerView.setTabContainer(null);
            this.mDecorToolbar.setEmbeddedTabView(this.mTabScrollView);
        } else {
            this.mDecorToolbar.setEmbeddedTabView(null);
            this.mContainerView.setTabContainer(this.mTabScrollView);
        }
        boolean z3 = getNavigationMode() == 2;
        ScrollingTabContainerView scrollingTabContainerView = this.mTabScrollView;
        if (scrollingTabContainerView != null) {
            if (z3) {
                scrollingTabContainerView.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.mOverlayLayout;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.requestApplyInsets();
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
        }
        this.mDecorToolbar.setCollapsible(!this.mHasEmbeddedTabs && z3);
        this.mOverlayLayout.setHasNonEmbeddedTabs(!this.mHasEmbeddedTabs && z3);
    }

    private boolean shouldAnimateContextView() {
        return this.mContainerView.isLaidOut();
    }

    private void showForActionMode() {
        if (this.mShowingForMode) {
            return;
        }
        this.mShowingForMode = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.mOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setShowingForActionMode(true);
        }
        updateVisibility(false);
    }

    private void updateVisibility(boolean z2) {
        if (checkShowingFlags(this.mHiddenByApp, this.mHiddenBySystem, this.mShowingForMode)) {
            if (this.mNowShowing) {
                return;
            }
            this.mNowShowing = true;
            doShow(z2);
            return;
        }
        if (this.mNowShowing) {
            this.mNowShowing = false;
            doHide(z2);
        }
    }

    @Override // android.app.ActionBar
    public void addOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.mMenuVisibilityListeners.add(onMenuVisibilityListener);
    }

    @Override // android.app.ActionBar
    public void addTab(ActionBar.Tab tab) {
        addTab(tab, this.mTabs.isEmpty());
    }

    public void animateToMode(boolean z2) {
        Animator animator;
        Animator animator2;
        if (z2) {
            showForActionMode();
        } else {
            hideForActionMode();
        }
        if (!shouldAnimateContextView()) {
            if (z2) {
                this.mDecorToolbar.setVisibility(8);
                this.mContextView.setVisibility(0);
                return;
            } else {
                this.mDecorToolbar.setVisibility(0);
                this.mContextView.setVisibility(8);
                return;
            }
        }
        if (z2) {
            animator2 = this.mDecorToolbar.setupAnimatorToVisibility(8, FADE_OUT_DURATION_MS);
            animator = this.mContextView.setupAnimatorToVisibility(0, FADE_IN_DURATION_MS);
        } else {
            animator = this.mDecorToolbar.setupAnimatorToVisibility(0, FADE_IN_DURATION_MS);
            animator2 = this.mContextView.setupAnimatorToVisibility(8, FADE_OUT_DURATION_MS);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(animator2, animator);
        animatorSet.start();
    }

    @Override // android.app.ActionBar
    public boolean collapseActionView() {
        DecorToolbar decorToolbar = this.mDecorToolbar;
        if (decorToolbar == null || !decorToolbar.hasExpandedActionView()) {
            return false;
        }
        this.mDecorToolbar.collapseActionView();
        return true;
    }

    public void completeDeferredDestroyActionMode() {
        ActionMode.Callback callback = this.mDeferredModeDestroyCallback;
        if (callback != null) {
            callback.onDestroyActionMode(this.mDeferredDestroyActionMode);
            this.mDeferredDestroyActionMode = null;
            this.mDeferredModeDestroyCallback = null;
        }
    }

    @Override // android.app.ActionBar
    public void dispatchMenuVisibilityChanged(boolean z2) {
        if (z2 == this.mLastMenuVisibility) {
            return;
        }
        this.mLastMenuVisibility = z2;
        int size = this.mMenuVisibilityListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mMenuVisibilityListeners.get(i2).onMenuVisibilityChanged(z2);
        }
    }

    public void doHide(boolean z2) {
        View view;
        Animator animator = this.mCurrentShowAnim;
        if (animator != null) {
            animator.end();
        }
        if (this.mCurWindowVisibility != 0 || (!this.mShowHideAnimationEnabled && !z2)) {
            this.mHideListener.onAnimationEnd(null);
            return;
        }
        this.mContainerView.setAlpha(1.0f);
        this.mContainerView.setTransitioning(true);
        AnimatorSet animatorSet = new AnimatorSet();
        float f2 = -this.mContainerView.getHeight();
        if (z2) {
            int[] iArr = {0, 0};
            this.mContainerView.getLocationInWindow(iArr);
            f2 -= iArr[1];
        }
        ActionBarContainer actionBarContainer = this.mContainerView;
        Property<View, Float> property = View.TRANSLATION_Y;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionBarContainer, (Property<ActionBarContainer, Float>) property, f2);
        objectAnimatorOfFloat.addUpdateListener(this.mUpdateListener);
        AnimatorSet.Builder builderPlay = animatorSet.play(objectAnimatorOfFloat);
        if (this.mContentAnimations && (view = this.mContentView) != null) {
            builderPlay.with(ObjectAnimator.ofFloat(view, property, 0.0f, f2));
        }
        ActionBarContainer actionBarContainer2 = this.mSplitView;
        if (actionBarContainer2 != null && actionBarContainer2.getVisibility() == 0) {
            this.mSplitView.setAlpha(1.0f);
            ActionBarContainer actionBarContainer3 = this.mSplitView;
            builderPlay.with(ObjectAnimator.ofFloat(actionBarContainer3, (Property<ActionBarContainer, Float>) property, actionBarContainer3.getHeight()));
        }
        animatorSet.setInterpolator(AnimationUtils.loadInterpolator(this.mContext, 17563650));
        animatorSet.setDuration(250L);
        animatorSet.addListener(this.mHideListener);
        this.mCurrentShowAnim = animatorSet;
        animatorSet.start();
    }

    public void doShow(boolean z2) {
        View view;
        View view2;
        Animator animator = this.mCurrentShowAnim;
        if (animator != null) {
            animator.end();
        }
        this.mContainerView.setVisibility(0);
        if (this.mCurWindowVisibility == 0 && (this.mShowHideAnimationEnabled || z2)) {
            this.mContainerView.setTranslationY(0.0f);
            float f2 = -this.mContainerView.getHeight();
            if (z2) {
                int[] iArr = {0, 0};
                this.mContainerView.getLocationInWindow(iArr);
                f2 -= iArr[1];
            }
            this.mContainerView.setTranslationY(f2);
            AnimatorSet animatorSet = new AnimatorSet();
            ActionBarContainer actionBarContainer = this.mContainerView;
            Property<View, Float> property = View.TRANSLATION_Y;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionBarContainer, (Property<ActionBarContainer, Float>) property, 0.0f);
            objectAnimatorOfFloat.addUpdateListener(this.mUpdateListener);
            AnimatorSet.Builder builderPlay = animatorSet.play(objectAnimatorOfFloat);
            if (this.mContentAnimations && (view2 = this.mContentView) != null) {
                builderPlay.with(ObjectAnimator.ofFloat(view2, property, f2, 0.0f));
            }
            ActionBarContainer actionBarContainer2 = this.mSplitView;
            if (actionBarContainer2 != null && this.mContextDisplayMode == 1) {
                actionBarContainer2.setTranslationY(actionBarContainer2.getHeight());
                this.mSplitView.setVisibility(0);
                builderPlay.with(ObjectAnimator.ofFloat(this.mSplitView, (Property<ActionBarContainer, Float>) property, 0.0f));
            }
            animatorSet.setInterpolator(AnimationUtils.loadInterpolator(this.mContext, 17563651));
            animatorSet.setDuration(250L);
            animatorSet.addListener(this.mShowListener);
            this.mCurrentShowAnim = animatorSet;
            animatorSet.start();
        } else {
            this.mContainerView.setAlpha(1.0f);
            this.mContainerView.setTranslationY(0.0f);
            if (this.mContentAnimations && (view = this.mContentView) != null) {
                view.setTranslationY(0.0f);
            }
            ActionBarContainer actionBarContainer3 = this.mSplitView;
            if (actionBarContainer3 != null && this.mContextDisplayMode == 1) {
                actionBarContainer3.setAlpha(1.0f);
                this.mSplitView.setTranslationY(0.0f);
                this.mSplitView.setVisibility(0);
            }
            this.mShowListener.onAnimationEnd(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.mOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.requestApplyInsets();
        }
    }

    @Override // com.android.internal.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void enableContentAnimations(boolean z2) {
        this.mContentAnimations = z2;
    }

    @Override // android.app.ActionBar
    public View getCustomView() {
        return this.mDecorToolbar.getCustomView();
    }

    @Override // android.app.ActionBar
    public int getDisplayOptions() {
        return this.mDecorToolbar.getDisplayOptions();
    }

    @Override // android.app.ActionBar
    public float getElevation() {
        return this.mContainerView.getElevation();
    }

    @Override // android.app.ActionBar
    public int getHeight() {
        return this.mContainerView.getHeight();
    }

    @Override // android.app.ActionBar
    public int getHideOffset() {
        return this.mOverlayLayout.getActionBarHideOffset();
    }

    @Override // android.app.ActionBar
    public int getNavigationItemCount() {
        int navigationMode = this.mDecorToolbar.getNavigationMode();
        if (navigationMode == 1) {
            return this.mDecorToolbar.getDropdownItemCount();
        }
        if (navigationMode != 2) {
            return 0;
        }
        return this.mTabs.size();
    }

    @Override // android.app.ActionBar
    public int getNavigationMode() {
        return this.mDecorToolbar.getNavigationMode();
    }

    @Override // android.app.ActionBar
    public int getSelectedNavigationIndex() {
        TabImpl tabImpl;
        int navigationMode = this.mDecorToolbar.getNavigationMode();
        if (navigationMode == 1) {
            return this.mDecorToolbar.getDropdownSelectedPosition();
        }
        if (navigationMode == 2 && (tabImpl = this.mSelectedTab) != null) {
            return tabImpl.getPosition();
        }
        return -1;
    }

    @Override // android.app.ActionBar
    public ActionBar.Tab getSelectedTab() {
        return this.mSelectedTab;
    }

    @Override // android.app.ActionBar
    public CharSequence getSubtitle() {
        return this.mDecorToolbar.getSubtitle();
    }

    @Override // android.app.ActionBar
    public ActionBar.Tab getTabAt(int i2) {
        return this.mTabs.get(i2);
    }

    @Override // android.app.ActionBar
    public int getTabCount() {
        return this.mTabs.size();
    }

    @Override // android.app.ActionBar
    public Context getThemedContext() {
        if (this.mThemedContext == null) {
            TypedValue typedValue = new TypedValue();
            this.mContext.getTheme().resolveAttribute(16843671, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 == 0 || this.mContext.getThemeResId() == i2) {
                this.mThemedContext = this.mContext;
            } else {
                this.mThemedContext = new ContextThemeWrapper(this.mContext, i2);
            }
        }
        return this.mThemedContext;
    }

    @Override // android.app.ActionBar
    public CharSequence getTitle() {
        return this.mDecorToolbar.getTitle();
    }

    public boolean hasIcon() {
        return this.mDecorToolbar.hasIcon();
    }

    public boolean hasLogo() {
        return this.mDecorToolbar.hasLogo();
    }

    @Override // android.app.ActionBar
    public void hide() {
        if (this.mHiddenByApp) {
            return;
        }
        this.mHiddenByApp = true;
        updateVisibility(false);
    }

    @Override // com.android.internal.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void hideForSystem() {
        if (this.mHiddenBySystem) {
            return;
        }
        this.mHiddenBySystem = true;
        updateVisibility(true);
    }

    @Override // android.app.ActionBar
    public boolean isHideOnContentScrollEnabled() {
        return this.mOverlayLayout.isHideOnContentScrollEnabled();
    }

    @Override // android.app.ActionBar
    public boolean isShowing() {
        int height = getHeight();
        return this.mNowShowing && (height == 0 || getHideOffset() < height);
    }

    @Override // android.app.ActionBar
    public boolean isTitleTruncated() {
        DecorToolbar decorToolbar = this.mDecorToolbar;
        return decorToolbar != null && decorToolbar.isTitleTruncated();
    }

    @Override // android.app.ActionBar
    public ActionBar.Tab newTab() {
        return new TabImpl();
    }

    @Override // android.app.ActionBar
    public void onConfigurationChanged(Configuration configuration) {
        setHasEmbeddedTabs(ActionBarPolicy.get(this.mContext).hasEmbeddedTabs());
    }

    @Override // com.android.internal.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onContentScrollStarted() {
        Animator animator = this.mCurrentShowAnim;
        if (animator != null) {
            animator.cancel();
            this.mCurrentShowAnim = null;
        }
    }

    @Override // com.android.internal.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onContentScrollStopped() {
    }

    @Override // com.android.internal.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onWindowVisibilityChanged(int i2) {
        this.mCurWindowVisibility = i2;
    }

    @Override // android.app.ActionBar
    public void removeAllTabs() {
        cleanupTabs();
    }

    @Override // android.app.ActionBar
    public void removeOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.mMenuVisibilityListeners.remove(onMenuVisibilityListener);
    }

    @Override // android.app.ActionBar
    public void removeTab(ActionBar.Tab tab) {
        removeTabAt(tab.getPosition());
    }

    @Override // android.app.ActionBar
    public void removeTabAt(int i2) {
        if (this.mTabScrollView == null) {
            return;
        }
        TabImpl tabImpl = this.mSelectedTab;
        int position = tabImpl != null ? tabImpl.getPosition() : this.mSavedTabPosition;
        this.mTabScrollView.removeTabAt(i2);
        TabImpl tabImplRemove = this.mTabs.remove(i2);
        if (tabImplRemove != null) {
            tabImplRemove.setPosition(-1);
        }
        int size = this.mTabs.size();
        for (int i3 = i2; i3 < size; i3++) {
            this.mTabs.get(i3).setPosition(i3);
        }
        if (position == i2) {
            selectTab(this.mTabs.isEmpty() ? null : this.mTabs.get(Math.max(0, i2 - 1)));
        }
    }

    @Override // android.app.ActionBar
    public void selectTab(ActionBar.Tab tab) {
        if (getNavigationMode() != 2) {
            this.mSavedTabPosition = tab != null ? tab.getPosition() : -1;
            return;
        }
        FragmentTransaction fragmentTransactionDisallowAddToBackStack = this.mDecorToolbar.getViewGroup().isInEditMode() ? null : this.mActivity.getFragmentManager().beginTransaction().disallowAddToBackStack();
        TabImpl tabImpl = this.mSelectedTab;
        if (tabImpl != tab) {
            this.mTabScrollView.setTabSelected(tab != null ? tab.getPosition() : -1);
            TabImpl tabImpl2 = this.mSelectedTab;
            if (tabImpl2 != null) {
                tabImpl2.getCallback().onTabUnselected(this.mSelectedTab, fragmentTransactionDisallowAddToBackStack);
            }
            TabImpl tabImpl3 = (TabImpl) tab;
            this.mSelectedTab = tabImpl3;
            if (tabImpl3 != null) {
                tabImpl3.getCallback().onTabSelected(this.mSelectedTab, fragmentTransactionDisallowAddToBackStack);
            }
        } else if (tabImpl != null) {
            tabImpl.getCallback().onTabReselected(this.mSelectedTab, fragmentTransactionDisallowAddToBackStack);
            this.mTabScrollView.animateToTab(tab.getPosition());
        }
        if (fragmentTransactionDisallowAddToBackStack == null || fragmentTransactionDisallowAddToBackStack.isEmpty()) {
            return;
        }
        fragmentTransactionDisallowAddToBackStack.commit();
    }

    @Override // android.app.ActionBar
    public void setBackgroundDrawable(Drawable drawable) {
        this.mContainerView.setPrimaryBackground(drawable);
    }

    @Override // android.app.ActionBar
    public void setCustomView(int i2) {
        setCustomView(LayoutInflater.from(getThemedContext()).inflate(i2, this.mDecorToolbar.getViewGroup(), false));
    }

    @Override // android.app.ActionBar
    public void setDefaultDisplayHomeAsUpEnabled(boolean z2) {
        if (this.mDisplayHomeAsUpSet) {
            return;
        }
        setDisplayHomeAsUpEnabled(z2);
    }

    @Override // android.app.ActionBar
    public void setDisplayHomeAsUpEnabled(boolean z2) {
        setDisplayOptions(z2 ? 4 : 0, 4);
    }

    @Override // android.app.ActionBar
    public void setDisplayOptions(int i2) {
        if ((i2 & 4) != 0) {
            this.mDisplayHomeAsUpSet = true;
        }
        this.mDecorToolbar.setDisplayOptions(i2);
    }

    @Override // android.app.ActionBar
    public void setDisplayShowCustomEnabled(boolean z2) {
        setDisplayOptions(z2 ? 16 : 0, 16);
    }

    @Override // android.app.ActionBar
    public void setDisplayShowHomeEnabled(boolean z2) {
        setDisplayOptions(z2 ? 2 : 0, 2);
    }

    @Override // android.app.ActionBar
    public void setDisplayShowTitleEnabled(boolean z2) {
        setDisplayOptions(z2 ? 8 : 0, 8);
    }

    @Override // android.app.ActionBar
    public void setDisplayUseLogoEnabled(boolean z2) {
        setDisplayOptions(z2 ? 1 : 0, 1);
    }

    @Override // android.app.ActionBar
    public void setElevation(float f2) {
        this.mContainerView.setElevation(f2);
        ActionBarContainer actionBarContainer = this.mSplitView;
        if (actionBarContainer != null) {
            actionBarContainer.setElevation(f2);
        }
    }

    @Override // android.app.ActionBar
    public void setHideOffset(int i2) {
        if (i2 != 0 && !this.mOverlayLayout.isInOverlayMode()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset");
        }
        this.mOverlayLayout.setActionBarHideOffset(i2);
    }

    @Override // android.app.ActionBar
    public void setHideOnContentScrollEnabled(boolean z2) {
        if (z2 && !this.mOverlayLayout.isInOverlayMode()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.mHideOnContentScroll = z2;
        this.mOverlayLayout.setHideOnContentScrollEnabled(z2);
    }

    @Override // android.app.ActionBar
    public void setHomeActionContentDescription(CharSequence charSequence) {
        this.mDecorToolbar.setNavigationContentDescription(charSequence);
    }

    @Override // android.app.ActionBar
    public void setHomeAsUpIndicator(Drawable drawable) {
        this.mDecorToolbar.setNavigationIcon(drawable);
    }

    @Override // android.app.ActionBar
    public void setHomeButtonEnabled(boolean z2) {
        this.mDecorToolbar.setHomeButtonEnabled(z2);
    }

    @Override // android.app.ActionBar
    public void setIcon(int i2) {
        this.mDecorToolbar.setIcon(i2);
    }

    @Override // android.app.ActionBar
    public void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, ActionBar.OnNavigationListener onNavigationListener) {
        this.mDecorToolbar.setDropdownParams(spinnerAdapter, new NavItemSelectedListener(onNavigationListener));
    }

    @Override // android.app.ActionBar
    public void setLogo(int i2) {
        this.mDecorToolbar.setLogo(i2);
    }

    @Override // android.app.ActionBar
    public void setNavigationMode(int i2) {
        ActionBarOverlayLayout actionBarOverlayLayout;
        int navigationMode = this.mDecorToolbar.getNavigationMode();
        if (navigationMode == 2) {
            this.mSavedTabPosition = getSelectedNavigationIndex();
            selectTab(null);
            this.mTabScrollView.setVisibility(8);
        }
        if (navigationMode != i2 && !this.mHasEmbeddedTabs && (actionBarOverlayLayout = this.mOverlayLayout) != null) {
            actionBarOverlayLayout.requestFitSystemWindows();
        }
        this.mDecorToolbar.setNavigationMode(i2);
        boolean z2 = false;
        if (i2 == 2) {
            ensureTabsExist();
            this.mTabScrollView.setVisibility(0);
            int i3 = this.mSavedTabPosition;
            if (i3 != -1) {
                setSelectedNavigationItem(i3);
                this.mSavedTabPosition = -1;
            }
        }
        this.mDecorToolbar.setCollapsible(i2 == 2 && !this.mHasEmbeddedTabs);
        ActionBarOverlayLayout actionBarOverlayLayout2 = this.mOverlayLayout;
        if (i2 == 2 && !this.mHasEmbeddedTabs) {
            z2 = true;
        }
        actionBarOverlayLayout2.setHasNonEmbeddedTabs(z2);
    }

    @Override // android.app.ActionBar
    public void setSelectedNavigationItem(int i2) {
        int navigationMode = this.mDecorToolbar.getNavigationMode();
        if (navigationMode == 1) {
            this.mDecorToolbar.setDropdownSelectedPosition(i2);
        } else {
            if (navigationMode != 2) {
                throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
            }
            selectTab(this.mTabs.get(i2));
        }
    }

    @Override // android.app.ActionBar
    public void setShowHideAnimationEnabled(boolean z2) {
        Animator animator;
        this.mShowHideAnimationEnabled = z2;
        if (z2 || (animator = this.mCurrentShowAnim) == null) {
            return;
        }
        animator.end();
    }

    @Override // android.app.ActionBar
    public void setSplitBackgroundDrawable(Drawable drawable) {
        ActionBarContainer actionBarContainer = this.mSplitView;
        if (actionBarContainer != null) {
            actionBarContainer.setSplitBackground(drawable);
        }
    }

    @Override // android.app.ActionBar
    public void setStackedBackgroundDrawable(Drawable drawable) {
        this.mContainerView.setStackedBackground(drawable);
    }

    @Override // android.app.ActionBar
    public void setSubtitle(int i2) {
        setSubtitle(this.mContext.getString(i2));
    }

    @Override // android.app.ActionBar
    public void setTitle(int i2) {
        setTitle(this.mContext.getString(i2));
    }

    @Override // android.app.ActionBar
    public void setWindowTitle(CharSequence charSequence) {
        this.mDecorToolbar.setWindowTitle(charSequence);
    }

    @Override // android.app.ActionBar
    public void show() {
        if (this.mHiddenByApp) {
            this.mHiddenByApp = false;
            updateVisibility(false);
        }
    }

    @Override // com.android.internal.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void showForSystem() {
        if (this.mHiddenBySystem) {
            this.mHiddenBySystem = false;
            updateVisibility(true);
        }
    }

    @Override // android.app.ActionBar
    public ActionMode startActionMode(ActionMode.Callback callback) {
        ActionMode actionMode = this.mActionMode;
        if (actionMode != null) {
            actionMode.finish();
        }
        this.mOverlayLayout.setHideOnContentScrollEnabled(false);
        this.mContextView.killMode();
        ActionModeImpl actionModeImpl = new ActionModeImpl(this.mContextView.getContext(), callback);
        if (!actionModeImpl.dispatchOnCreate()) {
            return null;
        }
        this.mActionMode = actionModeImpl;
        actionModeImpl.invalidate();
        this.mContextView.initForMode(actionModeImpl);
        animateToMode(true);
        ActionBarContainer actionBarContainer = this.mSplitView;
        if (actionBarContainer != null && this.mContextDisplayMode == 1 && actionBarContainer.getVisibility() != 0) {
            this.mSplitView.setVisibility(0);
            ActionBarOverlayLayout actionBarOverlayLayout = this.mOverlayLayout;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.requestApplyInsets();
            }
        }
        this.mContextView.sendAccessibilityEvent(32);
        return actionModeImpl;
    }

    @Override // android.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i2) {
        addTab(tab, i2, this.mTabs.isEmpty());
    }

    @Override // android.app.ActionBar
    public void setHomeActionContentDescription(int i2) {
        this.mDecorToolbar.setNavigationContentDescription(i2);
    }

    @Override // android.app.ActionBar
    public void setHomeAsUpIndicator(int i2) {
        this.mDecorToolbar.setNavigationIcon(i2);
    }

    @Override // android.app.ActionBar
    public void setIcon(Drawable drawable) {
        this.mDecorToolbar.setIcon(drawable);
    }

    @Override // android.app.ActionBar
    public void setLogo(Drawable drawable) {
        this.mDecorToolbar.setLogo(drawable);
    }

    @Override // android.app.ActionBar
    public void setSubtitle(CharSequence charSequence) {
        this.mDecorToolbar.setSubtitle(charSequence);
    }

    @Override // android.app.ActionBar
    public void setTitle(CharSequence charSequence) {
        this.mDecorToolbar.setTitle(charSequence);
    }

    @Override // android.app.ActionBar
    public void addTab(ActionBar.Tab tab, boolean z2) {
        ensureTabsExist();
        this.mTabScrollView.addTab(tab, z2);
        configureTab(tab, this.mTabs.size());
        if (z2) {
            selectTab(tab);
        }
    }

    @Override // android.app.ActionBar
    public void setDisplayOptions(int i2, int i3) {
        int displayOptions = this.mDecorToolbar.getDisplayOptions();
        if ((i3 & 4) != 0) {
            this.mDisplayHomeAsUpSet = true;
        }
        this.mDecorToolbar.setDisplayOptions((i2 & i3) | ((~i3) & displayOptions));
    }

    @Override // android.app.ActionBar
    public void setCustomView(View view) {
        this.mDecorToolbar.setCustomView(view);
    }

    @Override // android.app.ActionBar
    public void setCustomView(View view, ActionBar.LayoutParams layoutParams) {
        view.setLayoutParams(layoutParams);
        this.mDecorToolbar.setCustomView(view);
    }

    @Override // android.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i2, boolean z2) {
        ensureTabsExist();
        this.mTabScrollView.addTab(tab, i2, z2);
        configureTab(tab, i2);
        if (z2) {
            selectTab(tab);
        }
    }

    public WindowDecorActionBar(Dialog dialog) {
        this.mDialog = dialog;
        init(dialog.getWindow().getDecorView());
    }

    public WindowDecorActionBar(View view) {
        init(view);
    }
}
