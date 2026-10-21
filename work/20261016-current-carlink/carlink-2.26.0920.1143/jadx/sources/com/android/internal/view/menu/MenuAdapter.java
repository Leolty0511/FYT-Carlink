package com.android.internal.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class MenuAdapter extends BaseAdapter {
    static final int ITEM_LAYOUT = 17367206;
    MenuBuilder mAdapterMenu;
    private int mExpandedIndex = -1;
    private boolean mForceShowIcon;
    private final LayoutInflater mInflater;
    private final boolean mOverflowOnly;

    public MenuAdapter(MenuBuilder menuBuilder, LayoutInflater layoutInflater, boolean z2) {
        this.mOverflowOnly = z2;
        this.mInflater = layoutInflater;
        this.mAdapterMenu = menuBuilder;
        findExpandedIndex();
    }

    public void findExpandedIndex() {
        MenuItemImpl expandedItem = this.mAdapterMenu.getExpandedItem();
        if (expandedItem != null) {
            ArrayList<MenuItemImpl> nonActionItems = this.mAdapterMenu.getNonActionItems();
            int size = nonActionItems.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (nonActionItems.get(i2) == expandedItem) {
                    this.mExpandedIndex = i2;
                    return;
                }
            }
        }
        this.mExpandedIndex = -1;
    }

    public MenuBuilder getAdapterMenu() {
        return this.mAdapterMenu;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<MenuItemImpl> nonActionItems = this.mOverflowOnly ? this.mAdapterMenu.getNonActionItems() : this.mAdapterMenu.getVisibleItems();
        return this.mExpandedIndex < 0 ? nonActionItems.size() : nonActionItems.size() - 1;
    }

    public boolean getForceShowIcon() {
        return this.mForceShowIcon;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.mInflater.inflate(17367206, viewGroup, false);
        }
        MenuView.ItemView itemView = (MenuView.ItemView) view;
        if (this.mForceShowIcon) {
            ((ListMenuItemView) view).setForceShowIcon(true);
        }
        itemView.initialize(getItem(i2), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        findExpandedIndex();
        super.notifyDataSetChanged();
    }

    public void setForceShowIcon(boolean z2) {
        this.mForceShowIcon = z2;
    }

    @Override // android.widget.Adapter
    public MenuItemImpl getItem(int i2) {
        ArrayList<MenuItemImpl> nonActionItems = this.mOverflowOnly ? this.mAdapterMenu.getNonActionItems() : this.mAdapterMenu.getVisibleItems();
        int i3 = this.mExpandedIndex;
        if (i3 >= 0 && i2 >= i3) {
            i2++;
        }
        return nonActionItems.get(i2);
    }
}
