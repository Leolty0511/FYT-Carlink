package com.android.internal.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.android.internal.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class IconMenuPresenter extends BaseMenuPresenter {
    private static final String OPEN_SUBMENU_KEY = "android:menu:icon:submenu";
    private static final String VIEWS_TAG = "android:menu:icon";
    private int mMaxItems;
    private IconMenuItemView mMoreView;
    MenuDialogHelper mOpenSubMenu;
    int mOpenSubMenuId;
    SubMenuPresenterCallback mSubMenuPresenterCallback;

    public class SubMenuPresenterCallback implements MenuPresenter.Callback {
        public SubMenuPresenterCallback() {
        }

        @Override // com.android.internal.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z2) {
            IconMenuPresenter iconMenuPresenter = IconMenuPresenter.this;
            iconMenuPresenter.mOpenSubMenuId = 0;
            MenuDialogHelper menuDialogHelper = iconMenuPresenter.mOpenSubMenu;
            if (menuDialogHelper != null) {
                menuDialogHelper.dismiss();
                IconMenuPresenter.this.mOpenSubMenu = null;
            }
        }

        @Override // com.android.internal.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            if (menuBuilder == null) {
                return false;
            }
            IconMenuPresenter.this.mOpenSubMenuId = ((SubMenuBuilder) menuBuilder).getItem().getItemId();
            return false;
        }
    }

    public IconMenuPresenter(Context context) {
        super(new ContextThemeWrapper(context, R.style.Theme_IconMenu), R.layout.icon_menu_layout, R.layout.icon_menu_item_layout);
        this.mMaxItems = -1;
        this.mSubMenuPresenterCallback = new SubMenuPresenterCallback();
    }

    @Override // com.android.internal.view.menu.BaseMenuPresenter
    public void addItemView(View view, int i2) {
        IconMenuItemView iconMenuItemView = (IconMenuItemView) view;
        IconMenuView iconMenuView = (IconMenuView) this.mMenuView;
        iconMenuItemView.setIconMenuView(iconMenuView);
        iconMenuItemView.setItemInvoker(iconMenuView);
        iconMenuItemView.setBackgroundDrawable(iconMenuView.getItemBackgroundDrawable());
        super.addItemView(view, i2);
    }

    @Override // com.android.internal.view.menu.BaseMenuPresenter
    public void bindItemView(MenuItemImpl menuItemImpl, MenuView.ItemView itemView) {
        IconMenuItemView iconMenuItemView = (IconMenuItemView) itemView;
        iconMenuItemView.setItemData(menuItemImpl);
        iconMenuItemView.initialize(menuItemImpl.getTitleForItemView(iconMenuItemView), menuItemImpl.getIcon());
        iconMenuItemView.setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        iconMenuItemView.setEnabled(iconMenuItemView.isEnabled());
        iconMenuItemView.setLayoutParams(iconMenuItemView.getTextAppropriateLayoutParams());
    }

    @Override // com.android.internal.view.menu.BaseMenuPresenter
    public boolean filterLeftoverView(ViewGroup viewGroup, int i2) {
        if (viewGroup.getChildAt(i2) != this.mMoreView) {
            return super.filterLeftoverView(viewGroup, i2);
        }
        return false;
    }

    public int getNumActualItemsShown() {
        return ((IconMenuView) this.mMenuView).getNumActualItemsShown();
    }

    @Override // com.android.internal.view.menu.BaseMenuPresenter, com.android.internal.view.menu.MenuPresenter
    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        super.initForMenu(context, menuBuilder);
        this.mMaxItems = -1;
    }

    @Override // com.android.internal.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        restoreHierarchyState((Bundle) parcelable);
    }

    @Override // com.android.internal.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        if (this.mMenuView == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        saveHierarchyState(bundle);
        int i2 = this.mOpenSubMenuId;
        if (i2 > 0) {
            bundle.putInt(OPEN_SUBMENU_KEY, i2);
        }
        return bundle;
    }

    @Override // com.android.internal.view.menu.BaseMenuPresenter, com.android.internal.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        MenuDialogHelper menuDialogHelper = new MenuDialogHelper(subMenuBuilder);
        menuDialogHelper.setPresenterCallback(this.mSubMenuPresenterCallback);
        menuDialogHelper.show(null);
        this.mOpenSubMenu = menuDialogHelper;
        this.mOpenSubMenuId = subMenuBuilder.getItem().getItemId();
        super.onSubMenuSelected(subMenuBuilder);
        return true;
    }

    public void restoreHierarchyState(Bundle bundle) {
        MenuBuilder menuBuilder;
        MenuItem menuItemFindItem;
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(VIEWS_TAG);
        if (sparseParcelableArray != null) {
            ((View) this.mMenuView).restoreHierarchyState(sparseParcelableArray);
        }
        int i2 = bundle.getInt(OPEN_SUBMENU_KEY, 0);
        if (i2 <= 0 || (menuBuilder = this.mMenu) == null || (menuItemFindItem = menuBuilder.findItem(i2)) == null) {
            return;
        }
        onSubMenuSelected((SubMenuBuilder) menuItemFindItem.getSubMenu());
    }

    public void saveHierarchyState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        Object obj = this.mMenuView;
        if (obj != null) {
            ((View) obj).saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray(VIEWS_TAG, sparseArray);
    }

    @Override // com.android.internal.view.menu.BaseMenuPresenter
    public boolean shouldIncludeItem(int i2, MenuItemImpl menuItemImpl) {
        int size = this.mMenu.getNonActionItems().size();
        int i3 = this.mMaxItems;
        return ((size == i3 && i2 < i3) || i2 < i3 - 1) && !menuItemImpl.isActionButton();
    }

    @Override // com.android.internal.view.menu.BaseMenuPresenter, com.android.internal.view.menu.MenuPresenter
    public void updateMenuView(boolean z2) {
        IconMenuItemView iconMenuItemView;
        IconMenuItemView iconMenuItemView2;
        IconMenuView iconMenuView = (IconMenuView) this.mMenuView;
        if (this.mMaxItems < 0) {
            this.mMaxItems = iconMenuView.getMaxItems();
        }
        ArrayList<MenuItemImpl> nonActionItems = this.mMenu.getNonActionItems();
        boolean z3 = nonActionItems.size() > this.mMaxItems;
        super.updateMenuView(z2);
        if (z3 && ((iconMenuItemView2 = this.mMoreView) == null || iconMenuItemView2.getParent() != iconMenuView)) {
            if (this.mMoreView == null) {
                IconMenuItemView iconMenuItemViewCreateMoreItemView = iconMenuView.createMoreItemView();
                this.mMoreView = iconMenuItemViewCreateMoreItemView;
                iconMenuItemViewCreateMoreItemView.setBackgroundDrawable(iconMenuView.getItemBackgroundDrawable());
            }
            iconMenuView.addView(this.mMoreView);
        } else if (!z3 && (iconMenuItemView = this.mMoreView) != null) {
            iconMenuView.removeView(iconMenuItemView);
        }
        iconMenuView.setNumActualItemsShown(z3 ? this.mMaxItems - 1 : nonActionItems.size());
    }
}
