package android.view;

import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes2.dex */
public interface MenuItem {
    public static final int SHOW_AS_ACTION_ALWAYS = 2;
    public static final int SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW = 8;
    public static final int SHOW_AS_ACTION_IF_ROOM = 1;
    public static final int SHOW_AS_ACTION_NEVER = 0;
    public static final int SHOW_AS_ACTION_WITH_TEXT = 4;
    public static final int SHOW_AS_OVERFLOW_ALWAYS = Integer.MIN_VALUE;

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

    int getAlphabeticModifiers();

    char getAlphabeticShortcut();

    CharSequence getContentDescription();

    int getGroupId();

    Drawable getIcon();

    ColorStateList getIconTintList();

    PorterDuff.Mode getIconTintMode();

    Intent getIntent();

    int getItemId();

    ContextMenu.ContextMenuInfo getMenuInfo();

    int getNumericModifiers();

    char getNumericShortcut();

    int getOrder();

    SubMenu getSubMenu();

    CharSequence getTitle();

    CharSequence getTitleCondensed();

    CharSequence getTooltipText();

    boolean hasSubMenu();

    boolean isActionViewExpanded();

    boolean isCheckable();

    boolean isChecked();

    boolean isEnabled();

    boolean isVisible();

    boolean requiresOverflow();

    MenuItem setActionProvider(ActionProvider actionProvider);

    MenuItem setActionView(int i2);

    MenuItem setActionView(View view);

    MenuItem setAlphabeticShortcut(char c);

    MenuItem setAlphabeticShortcut(char c, int i2);

    MenuItem setCheckable(boolean z2);

    MenuItem setChecked(boolean z2);

    MenuItem setContentDescription(CharSequence charSequence);

    MenuItem setEnabled(boolean z2);

    MenuItem setIcon(int i2);

    MenuItem setIcon(Drawable drawable);

    MenuItem setIconTintList(ColorStateList colorStateList);

    MenuItem setIconTintMode(PorterDuff.Mode mode);

    MenuItem setIntent(Intent intent);

    MenuItem setNumericShortcut(char c);

    MenuItem setNumericShortcut(char c, int i2);

    MenuItem setOnActionExpandListener(OnActionExpandListener onActionExpandListener);

    MenuItem setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener);

    MenuItem setShortcut(char c, char c2);

    MenuItem setShortcut(char c, char c2, int i2, int i3);

    void setShowAsAction(int i2);

    MenuItem setShowAsActionFlags(int i2);

    MenuItem setTitle(int i2);

    MenuItem setTitle(CharSequence charSequence);

    MenuItem setTitleCondensed(CharSequence charSequence);

    MenuItem setTooltipText(CharSequence charSequence);

    MenuItem setVisible(boolean z2);
}
