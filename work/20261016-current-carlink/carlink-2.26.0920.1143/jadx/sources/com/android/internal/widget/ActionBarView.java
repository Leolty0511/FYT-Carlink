package com.android.internal.widget;

import android.animation.LayoutTransition;
import android.app.ActionBar;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.CollapsibleActionView;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.accessibility.AccessibilityEvent;
import android.widget.ActionMenuPresenter;
import android.widget.ActionMenuView;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.android.internal.R;
import com.android.internal.view.menu.ActionMenuItem;
import com.android.internal.view.menu.MenuBuilder;
import com.android.internal.view.menu.MenuItemImpl;
import com.android.internal.view.menu.MenuPresenter;
import com.android.internal.view.menu.MenuView;
import com.android.internal.view.menu.SubMenuBuilder;

/* JADX INFO: loaded from: classes3.dex */
public class ActionBarView extends AbsActionBarView implements DecorToolbar {
    private static final int DEFAULT_CUSTOM_GRAVITY = 8388627;
    public static final int DISPLAY_DEFAULT = 0;
    private static final int DISPLAY_RELAYOUT_MASK = 63;
    private static final String TAG = "ActionBarView";
    private ActionBarContextView mContextView;
    private View mCustomNavView;
    private int mDefaultUpDescription;
    private int mDisplayOptions;
    View mExpandedActionView;
    private final View.OnClickListener mExpandedActionViewUpListener;
    private HomeView mExpandedHomeLayout;
    private ExpandedActionViewMenuPresenter mExpandedMenuPresenter;
    private CharSequence mHomeDescription;
    private int mHomeDescriptionRes;
    private HomeView mHomeLayout;
    private Drawable mIcon;
    private boolean mIncludeTabs;
    private final int mIndeterminateProgressStyle;
    private ProgressBar mIndeterminateProgressView;
    private boolean mIsCollapsible;
    private int mItemPadding;
    private LinearLayout mListNavLayout;
    private Drawable mLogo;
    private ActionMenuItem mLogoNavItem;
    private boolean mMenuPrepared;
    private AdapterView.OnItemSelectedListener mNavItemSelectedListener;
    private int mNavigationMode;
    private MenuBuilder mOptionsMenu;
    private int mProgressBarPadding;
    private final int mProgressStyle;
    private ProgressBar mProgressView;
    private Spinner mSpinner;
    private SpinnerAdapter mSpinnerAdapter;
    private CharSequence mSubtitle;
    private final int mSubtitleStyleRes;
    private TextView mSubtitleView;
    private ScrollingTabContainerView mTabScrollView;
    private Runnable mTabSelector;
    private CharSequence mTitle;
    private LinearLayout mTitleLayout;
    private final int mTitleStyleRes;
    private TextView mTitleView;
    private final View.OnClickListener mUpClickListener;
    private ViewGroup mUpGoerFive;
    private boolean mUserTitle;
    private boolean mWasHomeEnabled;
    Window.Callback mWindowCallback;

    public class ExpandedActionViewMenuPresenter implements MenuPresenter {
        MenuItemImpl mCurrentExpandedItem;
        MenuBuilder mMenu;

        private ExpandedActionViewMenuPresenter() {
        }

        @Override // com.android.internal.view.menu.MenuPresenter
        public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            KeyEvent.Callback callback = ActionBarView.this.mExpandedActionView;
            if (callback instanceof CollapsibleActionView) {
                ((CollapsibleActionView) callback).onActionViewCollapsed();
            }
            ActionBarView actionBarView = ActionBarView.this;
            actionBarView.removeView(actionBarView.mExpandedActionView);
            ActionBarView.this.mUpGoerFive.removeView(ActionBarView.this.mExpandedHomeLayout);
            ActionBarView actionBarView2 = ActionBarView.this;
            actionBarView2.mExpandedActionView = null;
            if ((actionBarView2.mDisplayOptions & 2) != 0) {
                ActionBarView.this.mHomeLayout.setVisibility(0);
            }
            if ((ActionBarView.this.mDisplayOptions & 8) != 0) {
                if (ActionBarView.this.mTitleLayout == null) {
                    ActionBarView.this.initTitle();
                } else {
                    ActionBarView.this.mTitleLayout.setVisibility(0);
                }
            }
            if (ActionBarView.this.mTabScrollView != null) {
                ActionBarView.this.mTabScrollView.setVisibility(0);
            }
            if (ActionBarView.this.mSpinner != null) {
                ActionBarView.this.mSpinner.setVisibility(0);
            }
            if (ActionBarView.this.mCustomNavView != null) {
                ActionBarView.this.mCustomNavView.setVisibility(0);
            }
            ActionBarView.this.mExpandedHomeLayout.setIcon(null);
            this.mCurrentExpandedItem = null;
            ActionBarView actionBarView3 = ActionBarView.this;
            actionBarView3.setHomeButtonEnabled(actionBarView3.mWasHomeEnabled);
            ActionBarView.this.requestLayout();
            menuItemImpl.setActionViewExpanded(false);
            return true;
        }

        @Override // com.android.internal.view.menu.MenuPresenter
        public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            ActionBarView.this.mExpandedActionView = menuItemImpl.getActionView();
            ActionBarView.this.mExpandedHomeLayout.setIcon(ActionBarView.this.mIcon.getConstantState().newDrawable(ActionBarView.this.getResources()));
            this.mCurrentExpandedItem = menuItemImpl;
            ViewParent parent = ActionBarView.this.mExpandedActionView.getParent();
            ActionBarView actionBarView = ActionBarView.this;
            if (parent != actionBarView) {
                actionBarView.addView(actionBarView.mExpandedActionView);
            }
            if (ActionBarView.this.mExpandedHomeLayout.getParent() != ActionBarView.this.mUpGoerFive) {
                ActionBarView.this.mUpGoerFive.addView(ActionBarView.this.mExpandedHomeLayout);
            }
            ActionBarView.this.mHomeLayout.setVisibility(8);
            if (ActionBarView.this.mTitleLayout != null) {
                ActionBarView.this.mTitleLayout.setVisibility(8);
            }
            if (ActionBarView.this.mTabScrollView != null) {
                ActionBarView.this.mTabScrollView.setVisibility(8);
            }
            if (ActionBarView.this.mSpinner != null) {
                ActionBarView.this.mSpinner.setVisibility(8);
            }
            if (ActionBarView.this.mCustomNavView != null) {
                ActionBarView.this.mCustomNavView.setVisibility(8);
            }
            ActionBarView.this.setHomeButtonEnabled(false, false);
            ActionBarView.this.requestLayout();
            menuItemImpl.setActionViewExpanded(true);
            KeyEvent.Callback callback = ActionBarView.this.mExpandedActionView;
            if (callback instanceof CollapsibleActionView) {
                ((CollapsibleActionView) callback).onActionViewExpanded();
            }
            return true;
        }

        @Override // com.android.internal.view.menu.MenuPresenter
        public boolean flagActionItems() {
            return false;
        }

        @Override // com.android.internal.view.menu.MenuPresenter
        public int getId() {
            return 0;
        }

        @Override // com.android.internal.view.menu.MenuPresenter
        public MenuView getMenuView(ViewGroup viewGroup) {
            return null;
        }

        @Override // com.android.internal.view.menu.MenuPresenter
        public void initForMenu(Context context, MenuBuilder menuBuilder) {
            MenuItemImpl menuItemImpl;
            MenuBuilder menuBuilder2 = this.mMenu;
            if (menuBuilder2 != null && (menuItemImpl = this.mCurrentExpandedItem) != null) {
                menuBuilder2.collapseItemActionView(menuItemImpl);
            }
            this.mMenu = menuBuilder;
        }

        @Override // com.android.internal.view.menu.MenuPresenter
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z2) {
        }

        @Override // com.android.internal.view.menu.MenuPresenter
        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        @Override // com.android.internal.view.menu.MenuPresenter
        public Parcelable onSaveInstanceState() {
            return null;
        }

        @Override // com.android.internal.view.menu.MenuPresenter
        public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
            return false;
        }

        @Override // com.android.internal.view.menu.MenuPresenter
        public void setCallback(MenuPresenter.Callback callback) {
        }

        @Override // com.android.internal.view.menu.MenuPresenter
        public void updateMenuView(boolean z2) {
            if (this.mCurrentExpandedItem != null) {
                MenuBuilder menuBuilder = this.mMenu;
                boolean z3 = false;
                if (menuBuilder != null) {
                    int size = menuBuilder.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        if (this.mMenu.getItem(i2) == this.mCurrentExpandedItem) {
                            z3 = true;
                            break;
                        }
                    }
                }
                if (z3) {
                    return;
                }
                collapseItemActionView(this.mMenu, this.mCurrentExpandedItem);
            }
        }
    }

    public static class HomeView extends FrameLayout {
        private static final long DEFAULT_TRANSITION_DURATION = 150;
        private Drawable mDefaultUpIndicator;
        private ImageView mIconView;
        private int mStartOffset;
        private Drawable mUpIndicator;
        private int mUpIndicatorRes;
        private ImageView mUpView;
        private int mUpWidth;

        public HomeView(Context context) {
            this(context, null);
        }

        private void updateUpIndicator() {
            Drawable drawable = this.mUpIndicator;
            if (drawable != null) {
                this.mUpView.setImageDrawable(drawable);
            } else if (this.mUpIndicatorRes != 0) {
                this.mUpView.setImageDrawable(getContext().getDrawable(this.mUpIndicatorRes));
            } else {
                this.mUpView.setImageDrawable(this.mDefaultUpIndicator);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchHoverEvent(MotionEvent motionEvent) {
            return onHoverEvent(motionEvent);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchPopulateAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
            onPopulateAccessibilityEvent(accessibilityEvent);
            return true;
        }

        public int getStartOffset() {
            if (this.mUpView.getVisibility() == 8) {
                return this.mStartOffset;
            }
            return 0;
        }

        public int getUpWidth() {
            return this.mUpWidth;
        }

        @Override // android.view.View
        public void onConfigurationChanged(Configuration configuration) {
            super.onConfigurationChanged(configuration);
            if (this.mUpIndicatorRes != 0) {
                updateUpIndicator();
            }
        }

        @Override // android.view.View
        public void onFinishInflate() {
            this.mUpView = (ImageView) findViewById(R.id.up);
            this.mIconView = (ImageView) findViewById(16908332);
            this.mDefaultUpIndicator = this.mUpView.getDrawable();
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
            int i6;
            int i7;
            int i8 = (i5 - i3) / 2;
            boolean zIsLayoutRtl = isLayoutRtl();
            int width = getWidth();
            int i9 = 0;
            if (this.mUpView.getVisibility() != 8) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mUpView.getLayoutParams();
                int measuredHeight = this.mUpView.getMeasuredHeight();
                int measuredWidth = this.mUpView.getMeasuredWidth();
                int i10 = layoutParams.leftMargin + measuredWidth + layoutParams.rightMargin;
                int i11 = i8 - (measuredHeight / 2);
                int i12 = measuredHeight + i11;
                if (zIsLayoutRtl) {
                    i9 = width - measuredWidth;
                    i4 -= i10;
                    measuredWidth = width;
                } else {
                    i2 += i10;
                }
                this.mUpView.layout(i9, i11, measuredWidth, i12);
                i9 = i10;
            }
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.mIconView.getLayoutParams();
            int measuredHeight2 = this.mIconView.getMeasuredHeight();
            int measuredWidth2 = this.mIconView.getMeasuredWidth();
            int i13 = (i4 - i2) / 2;
            int iMax = Math.max(layoutParams2.topMargin, i8 - (measuredHeight2 / 2));
            int i14 = measuredHeight2 + iMax;
            int iMax2 = Math.max(layoutParams2.getMarginStart(), i13 - (measuredWidth2 / 2));
            if (zIsLayoutRtl) {
                i7 = (width - i9) - iMax2;
                i6 = i7 - measuredWidth2;
            } else {
                i6 = i9 + iMax2;
                i7 = i6 + measuredWidth2;
            }
            this.mIconView.layout(i6, iMax, i7, i14);
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i2, int i3) {
            measureChildWithMargins(this.mUpView, i2, 0, i3, 0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mUpView.getLayoutParams();
            int i4 = layoutParams.leftMargin + layoutParams.rightMargin;
            int measuredWidth = this.mUpView.getMeasuredWidth();
            this.mUpWidth = measuredWidth;
            this.mStartOffset = measuredWidth + i4;
            int iMin = this.mUpView.getVisibility() == 8 ? 0 : this.mStartOffset;
            int measuredHeight = layoutParams.bottomMargin + this.mUpView.getMeasuredHeight() + layoutParams.topMargin;
            if (this.mIconView.getVisibility() != 8) {
                measureChildWithMargins(this.mIconView, i2, iMin, i3, 0);
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.mIconView.getLayoutParams();
                iMin += this.mIconView.getMeasuredWidth() + layoutParams2.leftMargin + layoutParams2.rightMargin;
                measuredHeight = Math.max(measuredHeight, this.mIconView.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin);
            } else if (i4 < 0) {
                iMin -= i4;
            }
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            int size = View.MeasureSpec.getSize(i2);
            int size2 = View.MeasureSpec.getSize(i3);
            if (mode == Integer.MIN_VALUE) {
                iMin = Math.min(iMin, size);
            } else if (mode == 1073741824) {
                iMin = size;
            }
            if (mode2 == Integer.MIN_VALUE) {
                measuredHeight = Math.min(measuredHeight, size2);
            } else if (mode2 == 1073741824) {
                measuredHeight = size2;
            }
            setMeasuredDimension(iMin, measuredHeight);
        }

        @Override // android.view.View
        public void onPopulateAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEventInternal(accessibilityEvent);
            CharSequence contentDescription = getContentDescription();
            if (TextUtils.isEmpty(contentDescription)) {
                return;
            }
            accessibilityEvent.getText().add(contentDescription);
        }

        public void setDefaultUpIndicator(Drawable drawable) {
            this.mDefaultUpIndicator = drawable;
            updateUpIndicator();
        }

        public void setIcon(Drawable drawable) {
            this.mIconView.setImageDrawable(drawable);
        }

        public void setShowIcon(boolean z2) {
            this.mIconView.setVisibility(z2 ? 0 : 8);
        }

        public void setShowUp(boolean z2) {
            this.mUpView.setVisibility(z2 ? 0 : 8);
        }

        public void setUpIndicator(Drawable drawable) {
            this.mUpIndicator = drawable;
            this.mUpIndicatorRes = 0;
            updateUpIndicator();
        }

        public HomeView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            LayoutTransition layoutTransition = getLayoutTransition();
            if (layoutTransition != null) {
                layoutTransition.setDuration(150L);
            }
        }

        public void setUpIndicator(int i2) {
            this.mUpIndicatorRes = i2;
            this.mUpIndicator = null;
            updateUpIndicator();
        }
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.android.internal.widget.ActionBarView.SavedState.1
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
        int expandedMenuItemId;
        boolean isOverflowOpen;

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.expandedMenuItemId);
            parcel.writeInt(this.isOverflowOpen ? 1 : 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.expandedMenuItemId = parcel.readInt();
            this.isOverflowOpen = parcel.readInt() != 0;
        }
    }

    public ActionBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDisplayOptions = -1;
        this.mDefaultUpDescription = R.string.action_bar_up_description;
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.android.internal.widget.ActionBarView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MenuItemImpl menuItemImpl = ActionBarView.this.mExpandedMenuPresenter.mCurrentExpandedItem;
                if (menuItemImpl != null) {
                    menuItemImpl.collapseActionView();
                }
            }
        };
        this.mExpandedActionViewUpListener = onClickListener;
        View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: com.android.internal.widget.ActionBarView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ActionBarView.this.mMenuPrepared) {
                    ActionBarView actionBarView = ActionBarView.this;
                    actionBarView.mWindowCallback.onMenuItemSelected(0, actionBarView.mLogoNavItem);
                }
            }
        };
        this.mUpClickListener = onClickListener2;
        setBackgroundResource(0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBar, 16843470, 0);
        this.mNavigationMode = typedArrayObtainStyledAttributes.getInt(7, 0);
        this.mTitle = typedArrayObtainStyledAttributes.getText(5);
        this.mSubtitle = typedArrayObtainStyledAttributes.getText(9);
        this.mLogo = typedArrayObtainStyledAttributes.getDrawable(6);
        this.mIcon = typedArrayObtainStyledAttributes.getDrawable(0);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(16, R.layout.action_bar_home);
        ViewGroup viewGroup = (ViewGroup) layoutInflaterFrom.inflate(R.layout.action_bar_up_container, (ViewGroup) this, false);
        this.mUpGoerFive = viewGroup;
        this.mHomeLayout = (HomeView) layoutInflaterFrom.inflate(resourceId, viewGroup, false);
        HomeView homeView = (HomeView) layoutInflaterFrom.inflate(resourceId, this.mUpGoerFive, false);
        this.mExpandedHomeLayout = homeView;
        homeView.setShowUp(true);
        this.mExpandedHomeLayout.setOnClickListener(onClickListener);
        this.mExpandedHomeLayout.setContentDescription(getResources().getText(this.mDefaultUpDescription));
        Drawable background = this.mUpGoerFive.getBackground();
        if (background != null) {
            this.mExpandedHomeLayout.setBackground(background.getConstantState().newDrawable());
        }
        this.mExpandedHomeLayout.setEnabled(true);
        this.mExpandedHomeLayout.setFocusable(true);
        this.mTitleStyleRes = typedArrayObtainStyledAttributes.getResourceId(11, 0);
        this.mSubtitleStyleRes = typedArrayObtainStyledAttributes.getResourceId(12, 0);
        this.mProgressStyle = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        this.mIndeterminateProgressStyle = typedArrayObtainStyledAttributes.getResourceId(14, 0);
        this.mProgressBarPadding = typedArrayObtainStyledAttributes.getDimensionPixelOffset(15, 0);
        this.mItemPadding = typedArrayObtainStyledAttributes.getDimensionPixelOffset(17, 0);
        setDisplayOptions(typedArrayObtainStyledAttributes.getInt(8, 0));
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(10, 0);
        if (resourceId2 != 0) {
            this.mCustomNavView = layoutInflaterFrom.inflate(resourceId2, (ViewGroup) this, false);
            this.mNavigationMode = 0;
            setDisplayOptions(this.mDisplayOptions | 16);
        }
        this.mContentHeight = typedArrayObtainStyledAttributes.getLayoutDimension(4, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.mLogoNavItem = new ActionMenuItem(context, 0, 16908332, 0, 0, this.mTitle);
        this.mUpGoerFive.setOnClickListener(onClickListener2);
        this.mUpGoerFive.setClickable(true);
        this.mUpGoerFive.setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    private CharSequence buildHomeContentDescription() {
        CharSequence text = this.mHomeDescription;
        if (text == null) {
            text = (this.mDisplayOptions & 4) != 0 ? this.mContext.getResources().getText(this.mDefaultUpDescription) : this.mContext.getResources().getText(R.string.action_bar_home_description);
        }
        CharSequence title = getTitle();
        CharSequence subtitle = getSubtitle();
        if (TextUtils.isEmpty(title)) {
            return text;
        }
        return !TextUtils.isEmpty(subtitle) ? getResources().getString(R.string.action_bar_home_subtitle_description_format, title, subtitle, text) : getResources().getString(R.string.action_bar_home_description_format, title, text);
    }

    private void configPresenters(MenuBuilder menuBuilder) {
        if (menuBuilder != null) {
            menuBuilder.addMenuPresenter(this.mActionMenuPresenter, this.mPopupContext);
            menuBuilder.addMenuPresenter(this.mExpandedMenuPresenter, this.mPopupContext);
        } else {
            this.mActionMenuPresenter.initForMenu(this.mPopupContext, null);
            this.mExpandedMenuPresenter.initForMenu(this.mPopupContext, null);
            this.mActionMenuPresenter.updateMenuView(true);
            this.mExpandedMenuPresenter.updateMenuView(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initTitle() {
        if (this.mTitleLayout == null) {
            LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(getContext()).inflate(R.layout.action_bar_title_item, (ViewGroup) this, false);
            this.mTitleLayout = linearLayout;
            this.mTitleView = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.mSubtitleView = (TextView) this.mTitleLayout.findViewById(R.id.action_bar_subtitle);
            int i2 = this.mTitleStyleRes;
            if (i2 != 0) {
                this.mTitleView.setTextAppearance(i2);
            }
            CharSequence charSequence = this.mTitle;
            if (charSequence != null) {
                this.mTitleView.setText(charSequence);
            }
            int i3 = this.mSubtitleStyleRes;
            if (i3 != 0) {
                this.mSubtitleView.setTextAppearance(i3);
            }
            CharSequence charSequence2 = this.mSubtitle;
            if (charSequence2 != null) {
                this.mSubtitleView.setText(charSequence2);
                this.mSubtitleView.setVisibility(0);
            }
        }
        this.mUpGoerFive.addView(this.mTitleLayout);
        if (this.mExpandedActionView != null || (TextUtils.isEmpty(this.mTitle) && TextUtils.isEmpty(this.mSubtitle))) {
            this.mTitleLayout.setVisibility(8);
        } else {
            this.mTitleLayout.setVisibility(0);
        }
    }

    private void setTitleImpl(CharSequence charSequence) {
        this.mTitle = charSequence;
        TextView textView = this.mTitleView;
        if (textView != null) {
            textView.setText(charSequence);
            this.mTitleLayout.setVisibility(this.mExpandedActionView == null && (this.mDisplayOptions & 8) != 0 && (!TextUtils.isEmpty(this.mTitle) || !TextUtils.isEmpty(this.mSubtitle)) ? 0 : 8);
        }
        ActionMenuItem actionMenuItem = this.mLogoNavItem;
        if (actionMenuItem != null) {
            actionMenuItem.setTitle(charSequence);
        }
        updateHomeAccessibility(this.mUpGoerFive.isEnabled());
    }

    private void updateHomeAccessibility(boolean z2) {
        if (z2) {
            this.mUpGoerFive.setImportantForAccessibility(0);
            this.mUpGoerFive.setContentDescription(buildHomeContentDescription());
        } else {
            this.mUpGoerFive.setContentDescription(null);
            this.mUpGoerFive.setImportantForAccessibility(2);
        }
    }

    @Override // com.android.internal.widget.DecorToolbar
    public boolean canSplit() {
        return true;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void collapseActionView() {
        ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = this.mExpandedMenuPresenter;
        MenuItemImpl menuItemImpl = expandedActionViewMenuPresenter == null ? null : expandedActionViewMenuPresenter.mCurrentExpandedItem;
        if (menuItemImpl != null) {
            menuItemImpl.collapseActionView();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ActionBar.LayoutParams(DEFAULT_CUSTOM_GRAVITY);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ActionBar.LayoutParams(getContext(), attributeSet);
    }

    @Override // com.android.internal.widget.DecorToolbar
    public View getCustomView() {
        return this.mCustomNavView;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public int getDisplayOptions() {
        return this.mDisplayOptions;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public int getDropdownItemCount() {
        SpinnerAdapter spinnerAdapter = this.mSpinnerAdapter;
        if (spinnerAdapter != null) {
            return spinnerAdapter.getCount();
        }
        return 0;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public int getDropdownSelectedPosition() {
        return this.mSpinner.getSelectedItemPosition();
    }

    @Override // com.android.internal.widget.DecorToolbar
    public Menu getMenu() {
        return this.mOptionsMenu;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public int getNavigationMode() {
        return this.mNavigationMode;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public CharSequence getSubtitle() {
        return this.mSubtitle;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public CharSequence getTitle() {
        return this.mTitle;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public ViewGroup getViewGroup() {
        return this;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public boolean hasEmbeddedTabs() {
        return this.mIncludeTabs;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public boolean hasExpandedActionView() {
        ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = this.mExpandedMenuPresenter;
        return (expandedActionViewMenuPresenter == null || expandedActionViewMenuPresenter.mCurrentExpandedItem == null) ? false : true;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public boolean hasIcon() {
        return this.mIcon != null;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public boolean hasLogo() {
        return this.mLogo != null;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void initIndeterminateProgress() {
        ProgressBar progressBar = new ProgressBar(this.mContext, null, 0, this.mIndeterminateProgressStyle);
        this.mIndeterminateProgressView = progressBar;
        progressBar.setId(R.id.progress_circular);
        this.mIndeterminateProgressView.setVisibility(8);
        addView(this.mIndeterminateProgressView);
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void initProgress() {
        ProgressBar progressBar = new ProgressBar(this.mContext, null, 0, this.mProgressStyle);
        this.mProgressView = progressBar;
        progressBar.setId(R.id.progress_horizontal);
        this.mProgressView.setMax(10000);
        this.mProgressView.setVisibility(8);
        addView(this.mProgressView);
    }

    @Override // com.android.internal.widget.DecorToolbar
    public boolean isSplit() {
        return this.mSplitActionBar;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public boolean isTitleTruncated() {
        Layout layout;
        TextView textView = this.mTitleView;
        if (textView == null || (layout = textView.getLayout()) == null) {
            return false;
        }
        int lineCount = layout.getLineCount();
        for (int i2 = 0; i2 < lineCount; i2++) {
            if (layout.getEllipsisCount(i2) > 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.internal.widget.AbsActionBarView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mTitleView = null;
        this.mSubtitleView = null;
        LinearLayout linearLayout = this.mTitleLayout;
        if (linearLayout != null) {
            ViewParent parent = linearLayout.getParent();
            ViewGroup viewGroup = this.mUpGoerFive;
            if (parent == viewGroup) {
                viewGroup.removeView(this.mTitleLayout);
            }
        }
        this.mTitleLayout = null;
        if ((this.mDisplayOptions & 8) != 0) {
            initTitle();
        }
        int i2 = this.mHomeDescriptionRes;
        if (i2 != 0) {
            setNavigationContentDescription(i2);
        }
        ScrollingTabContainerView scrollingTabContainerView = this.mTabScrollView;
        if (scrollingTabContainerView == null || !this.mIncludeTabs) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = scrollingTabContainerView.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = -2;
            layoutParams.height = -1;
        }
        this.mTabScrollView.setAllowCollapse(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.mTabSelector);
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.hideOverflowMenu();
            this.mActionMenuPresenter.hideSubMenus();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        ViewParent parent;
        super.onFinishInflate();
        this.mUpGoerFive.addView(this.mHomeLayout, 0);
        addView(this.mUpGoerFive);
        View view = this.mCustomNavView;
        if (view == null || (this.mDisplayOptions & 16) == 0 || (parent = view.getParent()) == this) {
            return;
        }
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.mCustomNavView);
        }
        addView(this.mCustomNavView);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0079  */
    /* JADX WARN: Code duplicated, block: B:89:0x0174  */
    /* JADX WARN: Code duplicated, block: B:91:0x0178  */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        int paddingBottom;
        int upWidth;
        int paddingTop = ((i5 - i3) - getPaddingTop()) - getPaddingBottom();
        if (paddingTop <= 0) {
            return;
        }
        boolean zIsLayoutRtl = isLayoutRtl();
        int i10 = zIsLayoutRtl ? 1 : -1;
        int paddingLeft = zIsLayoutRtl ? getPaddingLeft() : (i4 - i2) - getPaddingRight();
        int paddingRight = zIsLayoutRtl ? (i4 - i2) - getPaddingRight() : getPaddingLeft();
        int paddingTop2 = getPaddingTop();
        HomeView homeView = this.mExpandedActionView != null ? this.mExpandedHomeLayout : this.mHomeLayout;
        LinearLayout linearLayout = this.mTitleLayout;
        boolean z3 = (linearLayout == null || linearLayout.getVisibility() == 8 || (this.mDisplayOptions & 8) == 0) ? false : true;
        if (homeView.getParent() != this.mUpGoerFive) {
            i6 = 0;
        } else {
            if (homeView.getVisibility() != 8) {
                upWidth = homeView.getStartOffset();
            } else if (z3) {
                upWidth = homeView.getUpWidth();
            } else {
                i6 = 0;
            }
            i6 = upWidth;
        }
        int next = AbsActionBarView.next(positionChild(this.mUpGoerFive, AbsActionBarView.next(paddingRight, i6, zIsLayoutRtl), paddingTop2, paddingTop, zIsLayoutRtl) + paddingRight, i6, zIsLayoutRtl);
        if (this.mExpandedActionView == null) {
            int i11 = this.mNavigationMode;
            if (i11 != 1) {
                if (i11 == 2 && this.mTabScrollView != null) {
                    if (z3) {
                        next = AbsActionBarView.next(next, this.mItemPadding, zIsLayoutRtl);
                    }
                    int i12 = next;
                    next = AbsActionBarView.next(i12 + positionChild(this.mTabScrollView, i12, paddingTop2, paddingTop, zIsLayoutRtl), this.mItemPadding, zIsLayoutRtl);
                }
            } else if (this.mListNavLayout != null) {
                if (z3) {
                    next = AbsActionBarView.next(next, this.mItemPadding, zIsLayoutRtl);
                }
                int i13 = next;
                next = AbsActionBarView.next(i13 + positionChild(this.mListNavLayout, i13, paddingTop2, paddingTop, zIsLayoutRtl), this.mItemPadding, zIsLayoutRtl);
            }
        }
        int next2 = next;
        ActionMenuView actionMenuView = this.mMenuView;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            positionChild(this.mMenuView, paddingLeft, paddingTop2, paddingTop, !zIsLayoutRtl);
            paddingLeft += this.mMenuView.getMeasuredWidth() * i10;
        }
        ProgressBar progressBar = this.mIndeterminateProgressView;
        if (progressBar != null && progressBar.getVisibility() != 8) {
            positionChild(this.mIndeterminateProgressView, paddingLeft, paddingTop2, paddingTop, !zIsLayoutRtl);
            paddingLeft += this.mIndeterminateProgressView.getMeasuredWidth() * i10;
        }
        View view = this.mExpandedActionView;
        if (view == null && ((this.mDisplayOptions & 16) == 0 || (view = this.mCustomNavView) == null)) {
            view = null;
        }
        if (view != null) {
            int layoutDirection = getLayoutDirection();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            ActionBar.LayoutParams layoutParams2 = layoutParams instanceof ActionBar.LayoutParams ? (ActionBar.LayoutParams) layoutParams : null;
            int i14 = layoutParams2 != null ? layoutParams2.gravity : DEFAULT_CUSTOM_GRAVITY;
            int measuredWidth = view.getMeasuredWidth();
            if (layoutParams2 != null) {
                next2 = AbsActionBarView.next(next2, layoutParams2.getMarginStart(), zIsLayoutRtl);
                paddingLeft += layoutParams2.getMarginEnd() * i10;
                i8 = layoutParams2.topMargin;
                i7 = layoutParams2.bottomMargin;
            } else {
                i7 = 0;
                i8 = 0;
            }
            int i15 = 8388615 & i14;
            if (i15 == 1) {
                int i16 = ((this.mRight - this.mLeft) - measuredWidth) / 2;
                if (!zIsLayoutRtl) {
                    int i17 = i16 + measuredWidth;
                    if (i16 < next2) {
                        i15 = 3;
                    } else if (i17 > paddingLeft) {
                        i15 = 5;
                    }
                } else if (i16 + measuredWidth > next2) {
                    i15 = 5;
                } else if (i16 < paddingLeft) {
                    i15 = 3;
                }
            } else if (i14 == 0) {
                i15 = 8388611;
            }
            int absoluteGravity = Gravity.getAbsoluteGravity(i15, layoutDirection);
            if (absoluteGravity == 1) {
                i9 = ((this.mRight - this.mLeft) - measuredWidth) / 2;
            } else if (absoluteGravity == 3) {
                if (!zIsLayoutRtl) {
                    paddingLeft = next2;
                }
                i9 = paddingLeft;
            } else if (absoluteGravity != 5) {
                i9 = 0;
            } else {
                i9 = zIsLayoutRtl ? next2 - measuredWidth : paddingLeft - measuredWidth;
            }
            int i18 = i14 & 112;
            if (i14 == 0) {
                i18 = 16;
            }
            if (i18 == 16) {
                paddingBottom = ((((this.mBottom - this.mTop) - getPaddingBottom()) - getPaddingTop()) - view.getMeasuredHeight()) / 2;
            } else if (i18 != 48) {
                paddingBottom = i18 != 80 ? 0 : ((getHeight() - getPaddingBottom()) - view.getMeasuredHeight()) - i7;
            } else {
                paddingBottom = getPaddingTop() + i8;
            }
            int measuredWidth2 = view.getMeasuredWidth();
            view.layout(i9, paddingBottom, i9 + measuredWidth2, view.getMeasuredHeight() + paddingBottom);
            AbsActionBarView.next(next2, measuredWidth2, zIsLayoutRtl);
        }
        ProgressBar progressBar2 = this.mProgressView;
        if (progressBar2 != null) {
            progressBar2.bringToFront();
            int measuredHeight = this.mProgressView.getMeasuredHeight() / 2;
            ProgressBar progressBar3 = this.mProgressView;
            int i19 = this.mProgressBarPadding;
            progressBar3.layout(i19, -measuredHeight, progressBar3.getMeasuredWidth() + i19, measuredHeight);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        int iMax;
        int measuredWidth;
        int i5;
        int i6;
        int i7;
        ActionMenuView actionMenuView;
        int childCount = getChildCount();
        if (this.mIsCollapsible) {
            int i8 = 0;
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = getChildAt(i9);
                if (childAt.getVisibility() != 8 && ((childAt != (actionMenuView = this.mMenuView) || actionMenuView.getChildCount() != 0) && childAt != this.mUpGoerFive)) {
                    i8++;
                }
            }
            int childCount2 = this.mUpGoerFive.getChildCount();
            for (int i10 = 0; i10 < childCount2; i10++) {
                if (this.mUpGoerFive.getChildAt(i10).getVisibility() != 8) {
                    i8++;
                }
            }
            if (i8 == 0) {
                setMeasuredDimension(0, 0);
                return;
            }
        }
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
        }
        if (View.MeasureSpec.getMode(i3) != Integer.MIN_VALUE) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
        }
        int size = View.MeasureSpec.getSize(i2);
        int size2 = this.mContentHeight;
        if (size2 < 0) {
            size2 = View.MeasureSpec.getSize(i3);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int iMin = size2 - paddingBottom;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        int measuredWidth2 = (size - paddingLeft) - paddingRight;
        int iMax2 = measuredWidth2 / 2;
        LinearLayout linearLayout = this.mTitleLayout;
        boolean z2 = (linearLayout == null || linearLayout.getVisibility() == 8 || (this.mDisplayOptions & 8) == 0) ? false : true;
        HomeView homeView = this.mExpandedActionView != null ? this.mExpandedHomeLayout : this.mHomeLayout;
        int i11 = homeView.getLayoutParams().width;
        homeView.measure(i11 < 0 ? View.MeasureSpec.makeMeasureSpec(measuredWidth2, Integer.MIN_VALUE) : View.MeasureSpec.makeMeasureSpec(i11, 1073741824), iMakeMeasureSpec2);
        if ((homeView.getVisibility() == 8 || homeView.getParent() != this.mUpGoerFive) && !z2) {
            i4 = 0;
            iMax = iMax2;
            measuredWidth = 0;
        } else {
            measuredWidth = homeView.getMeasuredWidth();
            int startOffset = homeView.getStartOffset() + measuredWidth;
            i4 = 0;
            measuredWidth2 = Math.max(0, measuredWidth2 - startOffset);
            iMax = Math.max(0, measuredWidth2 - startOffset);
        }
        ActionMenuView actionMenuView2 = this.mMenuView;
        if (actionMenuView2 != null && actionMenuView2.getParent() == this) {
            measuredWidth2 = measureChildView(this.mMenuView, measuredWidth2, iMakeMeasureSpec2, i4);
            iMax2 = Math.max(i4, iMax2 - this.mMenuView.getMeasuredWidth());
        }
        ProgressBar progressBar = this.mIndeterminateProgressView;
        if (progressBar != null && progressBar.getVisibility() != 8) {
            measuredWidth2 = measureChildView(this.mIndeterminateProgressView, measuredWidth2, iMakeMeasureSpec, i4);
            iMax2 = Math.max(i4, iMax2 - this.mIndeterminateProgressView.getMeasuredWidth());
        }
        if (this.mExpandedActionView == null) {
            int i12 = this.mNavigationMode;
            if (i12 != 1) {
                if (i12 == 2 && this.mTabScrollView != null) {
                    int i13 = this.mItemPadding;
                    if (z2) {
                        i13 *= 2;
                    }
                    int iMax3 = Math.max(0, measuredWidth2 - i13);
                    int iMax4 = Math.max(0, iMax - i13);
                    this.mTabScrollView.measure(View.MeasureSpec.makeMeasureSpec(iMax3, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(iMin, 1073741824));
                    int measuredWidth3 = this.mTabScrollView.getMeasuredWidth();
                    measuredWidth2 = Math.max(0, iMax3 - measuredWidth3);
                    iMax = Math.max(0, iMax4 - measuredWidth3);
                }
            } else if (this.mListNavLayout != null) {
                int i14 = this.mItemPadding;
                if (z2) {
                    i14 *= 2;
                }
                int iMax5 = Math.max(0, measuredWidth2 - i14);
                int iMax6 = Math.max(0, iMax - i14);
                this.mListNavLayout.measure(View.MeasureSpec.makeMeasureSpec(iMax5, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(iMin, 1073741824));
                int measuredWidth4 = this.mListNavLayout.getMeasuredWidth();
                measuredWidth2 = Math.max(0, iMax5 - measuredWidth4);
                iMax = Math.max(0, iMax6 - measuredWidth4);
            }
        }
        View view = this.mExpandedActionView;
        if (view == null && ((this.mDisplayOptions & 16) == 0 || (view = this.mCustomNavView) == null)) {
            view = null;
        }
        if (view != null) {
            ViewGroup.LayoutParams layoutParamsGenerateLayoutParams = generateLayoutParams(view.getLayoutParams());
            ActionBar.LayoutParams layoutParams = layoutParamsGenerateLayoutParams instanceof ActionBar.LayoutParams ? (ActionBar.LayoutParams) layoutParamsGenerateLayoutParams : null;
            if (layoutParams != null) {
                int i15 = layoutParams.leftMargin + layoutParams.rightMargin;
                i6 = layoutParams.bottomMargin + layoutParams.topMargin;
                i7 = i15;
            } else {
                i6 = 0;
                i7 = 0;
            }
            int i16 = (this.mContentHeight > 0 && layoutParamsGenerateLayoutParams.height != -2) ? 1073741824 : Integer.MIN_VALUE;
            int i17 = layoutParamsGenerateLayoutParams.height;
            if (i17 >= 0) {
                iMin = Math.min(i17, iMin);
            }
            int iMax7 = Math.max(0, iMin - i6);
            int i18 = layoutParamsGenerateLayoutParams.width;
            int i19 = i18 != -2 ? 1073741824 : Integer.MIN_VALUE;
            int iMax8 = Math.max(0, (i18 >= 0 ? Math.min(i18, measuredWidth2) : measuredWidth2) - i7);
            if (((layoutParams != null ? layoutParams.gravity : DEFAULT_CUSTOM_GRAVITY) & 7) == 1 && layoutParamsGenerateLayoutParams.width == -1) {
                iMax8 = Math.min(iMax, iMax2) * 2;
            }
            view.measure(View.MeasureSpec.makeMeasureSpec(iMax8, i19), View.MeasureSpec.makeMeasureSpec(iMax7, i16));
            measuredWidth2 -= view.getMeasuredWidth() + i7;
        }
        measureChildView(this.mUpGoerFive, measuredWidth2 + measuredWidth, View.MeasureSpec.makeMeasureSpec(this.mContentHeight, 1073741824), 0);
        LinearLayout linearLayout2 = this.mTitleLayout;
        if (linearLayout2 != null) {
            Math.max(0, iMax - linearLayout2.getMeasuredWidth());
        }
        if (this.mContentHeight <= 0) {
            int i20 = 0;
            for (int i21 = 0; i21 < childCount; i21++) {
                int measuredHeight = getChildAt(i21).getMeasuredHeight() + paddingBottom;
                if (measuredHeight > i20) {
                    i20 = measuredHeight;
                }
            }
            i5 = size;
            setMeasuredDimension(i5, i20);
        } else {
            i5 = size;
            setMeasuredDimension(i5, size2);
        }
        ActionBarContextView actionBarContextView = this.mContextView;
        if (actionBarContextView != null) {
            actionBarContextView.setContentHeight(getMeasuredHeight());
        }
        ProgressBar progressBar2 = this.mProgressView;
        if (progressBar2 == null || progressBar2.getVisibility() == 8) {
            return;
        }
        this.mProgressView.measure(View.MeasureSpec.makeMeasureSpec(i5 - (this.mProgressBarPadding * 2), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuBuilder menuBuilder;
        MenuItem menuItemFindItem;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i2 = savedState.expandedMenuItemId;
        if (i2 != 0 && this.mExpandedMenuPresenter != null && (menuBuilder = this.mOptionsMenu) != null && (menuItemFindItem = menuBuilder.findItem(i2)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (savedState.isOverflowOpen) {
            postShowOverflowMenu();
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        MenuItemImpl menuItemImpl;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = this.mExpandedMenuPresenter;
        if (expandedActionViewMenuPresenter != null && (menuItemImpl = expandedActionViewMenuPresenter.mCurrentExpandedItem) != null) {
            savedState.expandedMenuItemId = menuItemImpl.getItemId();
        }
        savedState.isOverflowOpen = isOverflowMenuShowing();
        return savedState;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setCollapsible(boolean z2) {
        this.mIsCollapsible = z2;
    }

    public void setContextView(ActionBarContextView actionBarContextView) {
        this.mContextView = actionBarContextView;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setCustomView(View view) {
        boolean z2 = (this.mDisplayOptions & 16) != 0;
        View view2 = this.mCustomNavView;
        if (view2 != null && z2) {
            removeView(view2);
        }
        this.mCustomNavView = view;
        if (view == null || !z2) {
            return;
        }
        addView(view);
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setDefaultNavigationContentDescription(int i2) {
        if (this.mDefaultUpDescription == i2) {
            return;
        }
        this.mDefaultUpDescription = i2;
        updateHomeAccessibility(this.mUpGoerFive.isEnabled());
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setDefaultNavigationIcon(Drawable drawable) {
        this.mHomeLayout.setDefaultUpIndicator(drawable);
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setDisplayOptions(int i2) {
        View view;
        int i3 = this.mDisplayOptions;
        int i4 = i3 != -1 ? i2 ^ i3 : -1;
        this.mDisplayOptions = i2;
        if ((i4 & 63) != 0) {
            if ((i4 & 4) != 0) {
                boolean z2 = (i2 & 4) != 0;
                this.mHomeLayout.setShowUp(z2);
                if (z2) {
                    setHomeButtonEnabled(true);
                }
            }
            if ((i4 & 1) != 0) {
                Drawable drawable = this.mLogo;
                boolean z3 = (drawable == null || (i2 & 1) == 0) ? false : true;
                HomeView homeView = this.mHomeLayout;
                if (!z3) {
                    drawable = this.mIcon;
                }
                homeView.setIcon(drawable);
            }
            if ((i4 & 8) != 0) {
                if ((i2 & 8) != 0) {
                    initTitle();
                } else {
                    this.mUpGoerFive.removeView(this.mTitleLayout);
                }
            }
            boolean z4 = (i2 & 2) != 0;
            boolean z5 = !z4 && ((this.mDisplayOptions & 4) != 0);
            this.mHomeLayout.setShowIcon(z4);
            this.mHomeLayout.setVisibility(((z4 || z5) && this.mExpandedActionView == null) ? 0 : 8);
            if ((i4 & 16) != 0 && (view = this.mCustomNavView) != null) {
                if ((i2 & 16) != 0) {
                    addView(view);
                } else {
                    removeView(view);
                }
            }
            if (this.mTitleLayout != null && (i4 & 32) != 0) {
                if ((i2 & 32) != 0) {
                    this.mTitleView.setSingleLine(false);
                    this.mTitleView.setMaxLines(2);
                } else {
                    this.mTitleView.setMaxLines(1);
                    this.mTitleView.setSingleLine(true);
                }
            }
            requestLayout();
        } else {
            invalidate();
        }
        updateHomeAccessibility(this.mUpGoerFive.isEnabled());
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setDropdownParams(SpinnerAdapter spinnerAdapter, AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.mSpinnerAdapter = spinnerAdapter;
        this.mNavItemSelectedListener = onItemSelectedListener;
        Spinner spinner = this.mSpinner;
        if (spinner != null) {
            spinner.setAdapter(spinnerAdapter);
            this.mSpinner.setOnItemSelectedListener(onItemSelectedListener);
        }
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setDropdownSelectedPosition(int i2) {
        this.mSpinner.setSelection(i2);
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setEmbeddedTabView(ScrollingTabContainerView scrollingTabContainerView) {
        ScrollingTabContainerView scrollingTabContainerView2 = this.mTabScrollView;
        if (scrollingTabContainerView2 != null) {
            removeView(scrollingTabContainerView2);
        }
        this.mTabScrollView = scrollingTabContainerView;
        boolean z2 = scrollingTabContainerView != null;
        this.mIncludeTabs = z2;
        if (z2 && this.mNavigationMode == 2) {
            addView(scrollingTabContainerView);
            ViewGroup.LayoutParams layoutParams = this.mTabScrollView.getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = -1;
            scrollingTabContainerView.setAllowCollapse(true);
        }
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setHomeButtonEnabled(boolean z2) {
        setHomeButtonEnabled(z2, true);
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setIcon(Drawable drawable) {
        this.mIcon = drawable;
        if (drawable != null && ((this.mDisplayOptions & 1) == 0 || this.mLogo == null)) {
            this.mHomeLayout.setIcon(drawable);
        }
        if (this.mExpandedActionView != null) {
            this.mExpandedHomeLayout.setIcon(this.mIcon.getConstantState().newDrawable(getResources()));
        }
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setLogo(Drawable drawable) {
        this.mLogo = drawable;
        if (drawable == null || (this.mDisplayOptions & 1) == 0) {
            return;
        }
        this.mHomeLayout.setIcon(drawable);
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setMenu(Menu menu, MenuPresenter.Callback callback) {
        ActionMenuView actionMenuView;
        ViewGroup viewGroup;
        MenuBuilder menuBuilder = this.mOptionsMenu;
        if (menu == menuBuilder) {
            return;
        }
        if (menuBuilder != null) {
            menuBuilder.removeMenuPresenter(this.mActionMenuPresenter);
            this.mOptionsMenu.removeMenuPresenter(this.mExpandedMenuPresenter);
        }
        MenuBuilder menuBuilder2 = (MenuBuilder) menu;
        this.mOptionsMenu = menuBuilder2;
        ActionMenuView actionMenuView2 = this.mMenuView;
        if (actionMenuView2 != null && (viewGroup = (ViewGroup) actionMenuView2.getParent()) != null) {
            viewGroup.removeView(this.mMenuView);
        }
        if (this.mActionMenuPresenter == null) {
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(this.mContext);
            this.mActionMenuPresenter = actionMenuPresenter;
            actionMenuPresenter.setCallback(callback);
            this.mActionMenuPresenter.setId(R.id.action_menu_presenter);
            this.mExpandedMenuPresenter = new ExpandedActionViewMenuPresenter();
        }
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        if (this.mSplitActionBar) {
            this.mActionMenuPresenter.setExpandedActionViewsExclusive(false);
            this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
            this.mActionMenuPresenter.setItemLimit(Integer.MAX_VALUE);
            layoutParams.width = -1;
            layoutParams.height = -2;
            configPresenters(menuBuilder2);
            actionMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
            if (this.mSplitView != null) {
                ViewGroup viewGroup2 = (ViewGroup) actionMenuView.getParent();
                if (viewGroup2 != null && viewGroup2 != this.mSplitView) {
                    viewGroup2.removeView(actionMenuView);
                }
                actionMenuView.setVisibility(getAnimatedVisibility());
                this.mSplitView.addView(actionMenuView, layoutParams);
            } else {
                actionMenuView.setLayoutParams(layoutParams);
            }
        } else {
            this.mActionMenuPresenter.setExpandedActionViewsExclusive(getResources().getBoolean(R.bool.action_bar_expanded_action_views_exclusive));
            configPresenters(menuBuilder2);
            actionMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
            ViewGroup viewGroup3 = (ViewGroup) actionMenuView.getParent();
            if (viewGroup3 != null && viewGroup3 != this) {
                viewGroup3.removeView(actionMenuView);
            }
            addView(actionMenuView, layoutParams);
        }
        this.mMenuView = actionMenuView;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setMenuCallbacks(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.setCallback(callback);
        }
        MenuBuilder menuBuilder = this.mOptionsMenu;
        if (menuBuilder != null) {
            menuBuilder.setCallback(callback2);
        }
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setMenuPrepared() {
        this.mMenuPrepared = true;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setNavigationContentDescription(CharSequence charSequence) {
        this.mHomeDescription = charSequence;
        updateHomeAccessibility(this.mUpGoerFive.isEnabled());
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setNavigationIcon(Drawable drawable) {
        this.mHomeLayout.setUpIndicator(drawable);
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setNavigationMode(int i2) {
        ScrollingTabContainerView scrollingTabContainerView;
        ScrollingTabContainerView scrollingTabContainerView2;
        int i3 = this.mNavigationMode;
        if (i2 != i3) {
            if (i3 == 1) {
                LinearLayout linearLayout = this.mListNavLayout;
                if (linearLayout != null) {
                    removeView(linearLayout);
                }
            } else if (i3 == 2 && (scrollingTabContainerView2 = this.mTabScrollView) != null && this.mIncludeTabs) {
                removeView(scrollingTabContainerView2);
            }
            if (i2 == 1) {
                if (this.mSpinner == null) {
                    Spinner spinner = new Spinner(this.mContext, null, 16843479);
                    this.mSpinner = spinner;
                    spinner.setId(R.id.action_bar_spinner);
                    this.mListNavLayout = new LinearLayout(this.mContext, null, 16843508);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
                    layoutParams.gravity = 17;
                    this.mListNavLayout.addView(this.mSpinner, layoutParams);
                }
                SpinnerAdapter adapter = this.mSpinner.getAdapter();
                SpinnerAdapter spinnerAdapter = this.mSpinnerAdapter;
                if (adapter != spinnerAdapter) {
                    this.mSpinner.setAdapter(spinnerAdapter);
                }
                this.mSpinner.setOnItemSelectedListener(this.mNavItemSelectedListener);
                addView(this.mListNavLayout);
            } else if (i2 == 2 && (scrollingTabContainerView = this.mTabScrollView) != null && this.mIncludeTabs) {
                addView(scrollingTabContainerView);
            }
            this.mNavigationMode = i2;
            requestLayout();
        }
    }

    @Override // com.android.internal.widget.AbsActionBarView
    public void setSplitToolbar(boolean z2) {
        if (this.mSplitActionBar != z2) {
            ActionMenuView actionMenuView = this.mMenuView;
            if (actionMenuView != null) {
                ViewGroup viewGroup = (ViewGroup) actionMenuView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.mMenuView);
                }
                if (z2) {
                    ViewGroup viewGroup2 = this.mSplitView;
                    if (viewGroup2 != null) {
                        viewGroup2.addView(this.mMenuView);
                    }
                    this.mMenuView.getLayoutParams().width = -1;
                } else {
                    addView(this.mMenuView);
                    this.mMenuView.getLayoutParams().width = -2;
                }
                this.mMenuView.requestLayout();
            }
            ViewGroup viewGroup3 = this.mSplitView;
            if (viewGroup3 != null) {
                viewGroup3.setVisibility(z2 ? 0 : 8);
            }
            ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
            if (actionMenuPresenter != null) {
                if (z2) {
                    actionMenuPresenter.setExpandedActionViewsExclusive(false);
                    this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
                    this.mActionMenuPresenter.setItemLimit(Integer.MAX_VALUE);
                } else {
                    actionMenuPresenter.setExpandedActionViewsExclusive(getResources().getBoolean(R.bool.action_bar_expanded_action_views_exclusive));
                }
            }
            super.setSplitToolbar(z2);
        }
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setSubtitle(CharSequence charSequence) {
        this.mSubtitle = charSequence;
        TextView textView = this.mSubtitleView;
        if (textView != null) {
            textView.setText(charSequence);
            this.mSubtitleView.setVisibility(charSequence != null ? 0 : 8);
            this.mTitleLayout.setVisibility(this.mExpandedActionView == null && (this.mDisplayOptions & 8) != 0 && (!TextUtils.isEmpty(this.mTitle) || !TextUtils.isEmpty(this.mSubtitle)) ? 0 : 8);
        }
        updateHomeAccessibility(this.mUpGoerFive.isEnabled());
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setTitle(CharSequence charSequence) {
        this.mUserTitle = true;
        setTitleImpl(charSequence);
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setWindowCallback(Window.Callback callback) {
        this.mWindowCallback = callback;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setWindowTitle(CharSequence charSequence) {
        if (this.mUserTitle) {
            return;
        }
        setTitleImpl(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHomeButtonEnabled(boolean z2, boolean z3) {
        if (z3) {
            this.mWasHomeEnabled = z2;
        }
        if (this.mExpandedActionView != null) {
            return;
        }
        this.mUpGoerFive.setEnabled(z2);
        this.mUpGoerFive.setFocusable(z2);
        updateHomeAccessibility(z2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams == null ? generateDefaultLayoutParams() : layoutParams;
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setNavigationIcon(int i2) {
        this.mHomeLayout.setUpIndicator(i2);
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setNavigationContentDescription(int i2) {
        this.mHomeDescriptionRes = i2;
        this.mHomeDescription = i2 != 0 ? getResources().getText(i2) : null;
        updateHomeAccessibility(this.mUpGoerFive.isEnabled());
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setLogo(int i2) {
        setLogo(i2 != 0 ? this.mContext.getDrawable(i2) : null);
    }

    @Override // com.android.internal.widget.DecorToolbar
    public void setIcon(int i2) {
        setIcon(i2 != 0 ? this.mContext.getDrawable(i2) : null);
    }
}
