package android.view;

import android.content.Intent;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public interface MenuItem {
    public static final int SHOW_AS_ACTION_ALWAYS = 2;
    public static final int SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW = 8;
    public static final int SHOW_AS_ACTION_IF_ROOM = 1;
    public static final int SHOW_AS_ACTION_NEVER = 0;
    public static final int SHOW_AS_ACTION_WITH_TEXT = 4;

    public interface OnActionExpandListener {
        boolean onMenuItemActionCollapse(MenuItem menuItem);

        boolean onMenuItemActionExpand(MenuItem menuItem);
    }

    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    boolean collapseActionView();

    boolean expandActionView();

    ActionProvider getActionProvider();

    View getActionView();

    char getAlphabeticShortcut();

    int getGroupId();

    Drawable getIcon();

    Intent getIntent();

    int getItemId();

    ContextMenu.ContextMenuInfo getMenuInfo();

    char getNumericShortcut();

    int getOrder();

    SubMenu getSubMenu();

    CharSequence getTitle();

    CharSequence getTitleCondensed();

    boolean hasSubMenu();

    boolean isActionViewExpanded();

    boolean isCheckable();

    boolean isChecked();

    boolean isEnabled();

    boolean isVisible();

    MenuItem setActionProvider(ActionProvider actionProvider);

    MenuItem setActionView(int i2);

    MenuItem setActionView(View view);

    MenuItem setAlphabeticShortcut(char c2);

    MenuItem setCheckable(boolean z2);

    MenuItem setChecked(boolean z2);

    MenuItem setEnabled(boolean z2);

    MenuItem setIcon(int i2);

    MenuItem setIcon(Drawable drawable);

    MenuItem setIntent(Intent intent);

    MenuItem setNumericShortcut(char c2);

    MenuItem setOnActionExpandListener(OnActionExpandListener onActionExpandListener);

    MenuItem setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener);

    MenuItem setShortcut(char c2, char c3);

    void setShowAsAction(int i2);

    MenuItem setShowAsActionFlags(int i2);

    MenuItem setTitle(int i2);

    MenuItem setTitle(CharSequence charSequence);

    MenuItem setTitleCondensed(CharSequence charSequence);

    MenuItem setVisible(boolean z2);
}
