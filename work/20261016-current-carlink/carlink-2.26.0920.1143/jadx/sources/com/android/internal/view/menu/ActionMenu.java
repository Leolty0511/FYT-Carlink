package com.android.internal.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ActionMenu implements Menu {
    private Context mContext;
    private boolean mIsQwerty;
    private ArrayList<ActionMenuItem> mItems = new ArrayList<>();

    public ActionMenu(Context context) {
        this.mContext = context;
    }

    private int findItemIndex(int i2) {
        ArrayList<ActionMenuItem> arrayList = this.mItems;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            if (arrayList.get(i3).getItemId() == i2) {
                return i3;
            }
        }
        return -1;
    }

    private ActionMenuItem findItemWithShortcut(int i2, KeyEvent keyEvent) {
        boolean z2 = this.mIsQwerty;
        ArrayList<ActionMenuItem> arrayList = this.mItems;
        int size = arrayList.size();
        int modifiers = keyEvent.getModifiers();
        for (int i3 = 0; i3 < size; i3++) {
            ActionMenuItem actionMenuItem = arrayList.get(i3);
            char alphabeticShortcut = z2 ? actionMenuItem.getAlphabeticShortcut() : actionMenuItem.getNumericShortcut();
            boolean z3 = (modifiers & 69647) == ((z2 ? actionMenuItem.getAlphabeticModifiers() : actionMenuItem.getNumericModifiers()) & 69647);
            if (i2 == alphabeticShortcut && z3) {
                return actionMenuItem;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return add(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i2, int i3, int i4, ComponentName componentName, Intent[] intentArr, Intent intent, int i5, MenuItem[] menuItemArr) {
        int i6;
        PackageManager packageManager = this.mContext.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i5 & 1) == 0) {
            removeGroup(i2);
        }
        for (int i7 = 0; i7 < size; i7++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i7);
            int i8 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i8 < 0 ? intent : intentArr[i8]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            MenuItem intent3 = add(i2, i3, i4, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && (i6 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i6] = intent3;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2) {
        return null;
    }

    @Override // android.view.Menu
    public void clear() {
        this.mItems.clear();
    }

    @Override // android.view.Menu
    public void close() {
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i2) {
        return this.mItems.get(findItemIndex(i2));
    }

    public Context getContext() {
        return this.mContext;
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i2) {
        return this.mItems.get(i2);
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        ArrayList<ActionMenuItem> arrayList = this.mItems;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (arrayList.get(i2).isVisible()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i2, KeyEvent keyEvent) {
        return findItemWithShortcut(i2, keyEvent) != null;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i2, int i3) {
        int iFindItemIndex = findItemIndex(i2);
        if (iFindItemIndex < 0) {
            return false;
        }
        return this.mItems.get(iFindItemIndex).invoke();
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i2, KeyEvent keyEvent, int i3) {
        ActionMenuItem actionMenuItemFindItemWithShortcut = findItemWithShortcut(i2, keyEvent);
        if (actionMenuItemFindItemWithShortcut == null) {
            return false;
        }
        return actionMenuItemFindItemWithShortcut.invoke();
    }

    @Override // android.view.Menu
    public void removeGroup(int i2) {
        ArrayList<ActionMenuItem> arrayList = this.mItems;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            if (arrayList.get(i3).getGroupId() == i2) {
                arrayList.remove(i3);
                size--;
            } else {
                i3++;
            }
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i2) {
        this.mItems.remove(findItemIndex(i2));
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i2, boolean z2, boolean z3) {
        ArrayList<ActionMenuItem> arrayList = this.mItems;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ActionMenuItem actionMenuItem = arrayList.get(i3);
            if (actionMenuItem.getGroupId() == i2) {
                actionMenuItem.setCheckable(z2);
                actionMenuItem.setExclusiveCheckable(z3);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i2, boolean z2) {
        ArrayList<ActionMenuItem> arrayList = this.mItems;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ActionMenuItem actionMenuItem = arrayList.get(i3);
            if (actionMenuItem.getGroupId() == i2) {
                actionMenuItem.setEnabled(z2);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i2, boolean z2) {
        ArrayList<ActionMenuItem> arrayList = this.mItems;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ActionMenuItem actionMenuItem = arrayList.get(i3);
            if (actionMenuItem.getGroupId() == i2) {
                actionMenuItem.setVisible(z2);
            }
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z2) {
        this.mIsQwerty = z2;
    }

    @Override // android.view.Menu
    public int size() {
        return this.mItems.size();
    }

    @Override // android.view.Menu
    public MenuItem add(int i2) {
        return add(0, 0, 0, i2);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2, int i3, int i4, int i5) {
        return null;
    }

    @Override // android.view.Menu
    public MenuItem add(int i2, int i3, int i4, int i5) {
        return add(i2, i3, i4, this.mContext.getResources().getString(i5));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2, int i3, int i4, CharSequence charSequence) {
        return null;
    }

    @Override // android.view.Menu
    public MenuItem add(int i2, int i3, int i4, CharSequence charSequence) {
        ActionMenuItem actionMenuItem = new ActionMenuItem(getContext(), i2, i3, 0, i4, charSequence);
        this.mItems.add(i4, actionMenuItem);
        return actionMenuItem;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return null;
    }
}
