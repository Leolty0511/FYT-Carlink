package android.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.SpinnerAdapter;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class ActionBar {
    public static final int DISPLAY_HOME_AS_UP = 4;
    public static final int DISPLAY_SHOW_CUSTOM = 16;
    public static final int DISPLAY_SHOW_HOME = 2;
    public static final int DISPLAY_SHOW_TITLE = 8;
    public static final int DISPLAY_TITLE_MULTIPLE_LINES = 32;
    public static final int DISPLAY_USE_LOGO = 1;
    public static final int NAVIGATION_MODE_LIST = 1;
    public static final int NAVIGATION_MODE_STANDARD = 0;
    public static final int NAVIGATION_MODE_TABS = 2;

    public interface OnMenuVisibilityListener {
        void onMenuVisibilityChanged(boolean z2);
    }

    public interface OnNavigationListener {
        boolean onNavigationItemSelected(int i2, long j2);
    }

    public static abstract class Tab {
        public static final int INVALID_POSITION = -1;

        public abstract CharSequence getContentDescription();

        public abstract View getCustomView();

        public abstract Drawable getIcon();

        public abstract int getPosition();

        public abstract Object getTag();

        public abstract CharSequence getText();

        public abstract void select();

        public abstract Tab setContentDescription(int i2);

        public abstract Tab setContentDescription(CharSequence charSequence);

        public abstract Tab setCustomView(int i2);

        public abstract Tab setCustomView(View view);

        public abstract Tab setIcon(int i2);

        public abstract Tab setIcon(Drawable drawable);

        public abstract Tab setTabListener(TabListener tabListener);

        public abstract Tab setTag(Object obj);

        public abstract Tab setText(int i2);

        public abstract Tab setText(CharSequence charSequence);
    }

    public interface TabListener {
        void onTabReselected(Tab tab, FragmentTransaction fragmentTransaction);

        void onTabSelected(Tab tab, FragmentTransaction fragmentTransaction);

        void onTabUnselected(Tab tab, FragmentTransaction fragmentTransaction);
    }

    public abstract void addOnMenuVisibilityListener(OnMenuVisibilityListener onMenuVisibilityListener);

    public abstract void addTab(Tab tab);

    public abstract void addTab(Tab tab, int i2);

    public abstract void addTab(Tab tab, int i2, boolean z2);

    public abstract void addTab(Tab tab, boolean z2);

    public abstract View getCustomView();

    public abstract int getDisplayOptions();

    public abstract int getHeight();

    public abstract int getNavigationItemCount();

    public abstract int getNavigationMode();

    public abstract int getSelectedNavigationIndex();

    public abstract Tab getSelectedTab();

    public abstract CharSequence getSubtitle();

    public abstract Tab getTabAt(int i2);

    public abstract int getTabCount();

    public Context getThemedContext() {
        return null;
    }

    public abstract CharSequence getTitle();

    public abstract void hide();

    public abstract boolean isShowing();

    public boolean isTitleTruncated() {
        return false;
    }

    public abstract Tab newTab();

    public abstract void removeAllTabs();

    public abstract void removeOnMenuVisibilityListener(OnMenuVisibilityListener onMenuVisibilityListener);

    public abstract void removeTab(Tab tab);

    public abstract void removeTabAt(int i2);

    public abstract void selectTab(Tab tab);

    public abstract void setBackgroundDrawable(Drawable drawable);

    public abstract void setCustomView(int i2);

    public abstract void setCustomView(View view);

    public abstract void setCustomView(View view, LayoutParams layoutParams);

    public abstract void setDisplayHomeAsUpEnabled(boolean z2);

    public abstract void setDisplayOptions(int i2);

    public abstract void setDisplayOptions(int i2, int i3);

    public abstract void setDisplayShowCustomEnabled(boolean z2);

    public abstract void setDisplayShowHomeEnabled(boolean z2);

    public abstract void setDisplayShowTitleEnabled(boolean z2);

    public abstract void setDisplayUseLogoEnabled(boolean z2);

    public void setHomeActionContentDescription(int i2) {
    }

    public void setHomeActionContentDescription(CharSequence charSequence) {
    }

    public void setHomeAsUpIndicator(int i2) {
    }

    public void setHomeAsUpIndicator(Drawable drawable) {
    }

    public void setHomeButtonEnabled(boolean z2) {
    }

    public abstract void setIcon(int i2);

    public abstract void setIcon(Drawable drawable);

    public abstract void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, OnNavigationListener onNavigationListener);

    public abstract void setLogo(int i2);

    public abstract void setLogo(Drawable drawable);

    public abstract void setNavigationMode(int i2);

    public abstract void setSelectedNavigationItem(int i2);

    public void setSplitBackgroundDrawable(Drawable drawable) {
    }

    public void setStackedBackgroundDrawable(Drawable drawable) {
    }

    public abstract void setSubtitle(int i2);

    public abstract void setSubtitle(CharSequence charSequence);

    public abstract void setTitle(int i2);

    public abstract void setTitle(CharSequence charSequence);

    public abstract void show();

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        @ViewDebug.ExportedProperty(category = "layout", mapping = {@ViewDebug.IntToString(from = -1, to = "NONE"), @ViewDebug.IntToString(from = 0, to = "NONE"), @ViewDebug.IntToString(from = 48, to = "TOP"), @ViewDebug.IntToString(from = 80, to = "BOTTOM"), @ViewDebug.IntToString(from = 3, to = "LEFT"), @ViewDebug.IntToString(from = 5, to = "RIGHT"), @ViewDebug.IntToString(from = Gravity.START, to = "START"), @ViewDebug.IntToString(from = Gravity.END, to = "END"), @ViewDebug.IntToString(from = 16, to = "CENTER_VERTICAL"), @ViewDebug.IntToString(from = 112, to = "FILL_VERTICAL"), @ViewDebug.IntToString(from = 1, to = "CENTER_HORIZONTAL"), @ViewDebug.IntToString(from = 7, to = "FILL_HORIZONTAL"), @ViewDebug.IntToString(from = 17, to = "CENTER"), @ViewDebug.IntToString(from = 119, to = "FILL")})
        public int gravity;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.ActionBar_LayoutParams);
            this.gravity = typedArrayObtainStyledAttributes.getInt(0, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.gravity = 0;
            this.gravity = 8388627;
        }

        public LayoutParams(int i2, int i3, int i4) {
            super(i2, i3);
            this.gravity = 0;
            this.gravity = i4;
        }

        public LayoutParams(int i2) {
            this(-2, -1, i2);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = 0;
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = 0;
        }
    }
}
