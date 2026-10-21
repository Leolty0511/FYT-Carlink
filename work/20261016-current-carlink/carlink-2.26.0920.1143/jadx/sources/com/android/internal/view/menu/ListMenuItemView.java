package com.android.internal.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckBox;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import com.android.internal.R;

/* JADX INFO: loaded from: classes3.dex */
public class ListMenuItemView extends LinearLayout implements MenuView.ItemView {
    private static final String TAG = "ListMenuItemView";
    private Drawable mBackground;
    private CheckBox mCheckBox;
    private boolean mForceShowIcon;
    private ImageView mIconView;
    private LayoutInflater mInflater;
    private MenuItemImpl mItemData;
    private int mMenuType;
    private boolean mPreserveIconSpacing;
    private RadioButton mRadioButton;
    private TextView mShortcutView;
    private Drawable mSubMenuArrow;
    private ImageView mSubMenuArrowView;
    private int mTextAppearance;
    private Context mTextAppearanceContext;
    private TextView mTitleView;

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MenuView, i2, i3);
        this.mBackground = typedArrayObtainStyledAttributes.getDrawable(5);
        this.mTextAppearance = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        this.mPreserveIconSpacing = typedArrayObtainStyledAttributes.getBoolean(8, false);
        this.mTextAppearanceContext = context;
        this.mSubMenuArrow = typedArrayObtainStyledAttributes.getDrawable(7);
        typedArrayObtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.mInflater == null) {
            this.mInflater = LayoutInflater.from(this.mContext);
        }
        return this.mInflater;
    }

    private void insertCheckBox() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.list_menu_item_checkbox, (ViewGroup) this, false);
        this.mCheckBox = checkBox;
        addView(checkBox);
    }

    private void insertIconView() {
        ImageView imageView = (ImageView) getInflater().inflate(R.layout.list_menu_item_icon, (ViewGroup) this, false);
        this.mIconView = imageView;
        addView(imageView, 0);
    }

    private void insertRadioButton() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.list_menu_item_radio, (ViewGroup) this, false);
        this.mRadioButton = radioButton;
        addView(radioButton);
    }

    private void setSubMenuArrowVisible(boolean z2) {
        ImageView imageView = this.mSubMenuArrowView;
        if (imageView != null) {
            imageView.setVisibility(z2 ? 0 : 8);
        }
    }

    @Override // com.android.internal.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.mItemData;
    }

    @Override // com.android.internal.view.menu.MenuView.ItemView
    public void initialize(MenuItemImpl menuItemImpl, int i2) {
        this.mItemData = menuItemImpl;
        this.mMenuType = i2;
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        setTitle(menuItemImpl.getTitleForItemView(this));
        setCheckable(menuItemImpl.isCheckable());
        setShortcut(menuItemImpl.shouldShowShortcut(), menuItemImpl.getShortcut());
        setIcon(menuItemImpl.getIcon());
        setEnabled(menuItemImpl.isEnabled());
        setSubMenuArrowVisible(menuItemImpl.hasSubMenu());
        setContentDescription(menuItemImpl.getContentDescription());
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        setBackgroundDrawable(this.mBackground);
        TextView textView = (TextView) findViewById(16908310);
        this.mTitleView = textView;
        int i2 = this.mTextAppearance;
        if (i2 != -1) {
            textView.setTextAppearance(this.mTextAppearanceContext, i2);
        }
        this.mShortcutView = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.mSubMenuArrowView = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.mSubMenuArrow);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        MenuItemImpl menuItemImpl = this.mItemData;
        if (menuItemImpl == null || !menuItemImpl.hasSubMenu()) {
            return;
        }
        accessibilityNodeInfo.setCanOpenPopup(true);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        if (this.mIconView != null && this.mPreserveIconSpacing) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.mIconView.getLayoutParams();
            int i4 = layoutParams.height;
            if (i4 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i4;
            }
        }
        super.onMeasure(i2, i3);
    }

    @Override // com.android.internal.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    @Override // com.android.internal.view.menu.MenuView.ItemView
    public void setCheckable(boolean z2) {
        CompoundButton compoundButton;
        View view;
        if (!z2 && this.mRadioButton == null && this.mCheckBox == null) {
            return;
        }
        if (this.mItemData.isExclusiveCheckable()) {
            if (this.mRadioButton == null) {
                insertRadioButton();
            }
            compoundButton = this.mRadioButton;
            view = this.mCheckBox;
        } else {
            if (this.mCheckBox == null) {
                insertCheckBox();
            }
            compoundButton = this.mCheckBox;
            view = this.mRadioButton;
        }
        if (!z2) {
            CheckBox checkBox = this.mCheckBox;
            if (checkBox != null) {
                checkBox.setVisibility(8);
            }
            RadioButton radioButton = this.mRadioButton;
            if (radioButton != null) {
                radioButton.setVisibility(8);
                return;
            }
            return;
        }
        compoundButton.setChecked(this.mItemData.isChecked());
        int i2 = z2 ? 0 : 8;
        if (compoundButton.getVisibility() != i2) {
            compoundButton.setVisibility(i2);
        }
        if (view == null || view.getVisibility() == 8) {
            return;
        }
        view.setVisibility(8);
    }

    @Override // com.android.internal.view.menu.MenuView.ItemView
    public void setChecked(boolean z2) {
        Checkable checkable;
        if (this.mItemData.isExclusiveCheckable()) {
            if (this.mRadioButton == null) {
                insertRadioButton();
            }
            checkable = this.mRadioButton;
        } else {
            if (this.mCheckBox == null) {
                insertCheckBox();
            }
            checkable = this.mCheckBox;
        }
        checkable.setChecked(z2);
    }

    public void setForceShowIcon(boolean z2) {
        this.mForceShowIcon = z2;
        this.mPreserveIconSpacing = z2;
    }

    @Override // com.android.internal.view.menu.MenuView.ItemView
    public void setIcon(Drawable drawable) {
        boolean z2 = this.mItemData.shouldShowIcon() || this.mForceShowIcon;
        if (z2 || this.mPreserveIconSpacing) {
            ImageView imageView = this.mIconView;
            if (imageView == null && drawable == null && !this.mPreserveIconSpacing) {
                return;
            }
            if (imageView == null) {
                insertIconView();
            }
            if (drawable == null && !this.mPreserveIconSpacing) {
                this.mIconView.setVisibility(8);
                return;
            }
            ImageView imageView2 = this.mIconView;
            if (!z2) {
                drawable = null;
            }
            imageView2.setImageDrawable(drawable);
            if (this.mIconView.getVisibility() != 0) {
                this.mIconView.setVisibility(0);
            }
        }
    }

    @Override // com.android.internal.view.menu.MenuView.ItemView
    public void setShortcut(boolean z2, char c) {
        int i2 = (z2 && this.mItemData.shouldShowShortcut()) ? 0 : 8;
        if (i2 == 0) {
            this.mShortcutView.setText(this.mItemData.getShortcutLabel());
        }
        if (this.mShortcutView.getVisibility() != i2) {
            this.mShortcutView.setVisibility(i2);
        }
    }

    @Override // com.android.internal.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.mTitleView.getVisibility() != 8) {
                this.mTitleView.setVisibility(8);
            }
        } else {
            this.mTitleView.setText(charSequence);
            if (this.mTitleView.getVisibility() != 0) {
                this.mTitleView.setVisibility(0);
            }
        }
    }

    @Override // com.android.internal.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return this.mForceShowIcon;
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16844018);
    }
}
