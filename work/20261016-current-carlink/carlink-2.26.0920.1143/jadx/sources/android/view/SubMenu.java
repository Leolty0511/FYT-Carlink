package android.view;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes2.dex */
public interface SubMenu extends Menu {
    void clearHeader();

    MenuItem getItem();

    SubMenu setHeaderIcon(int i2);

    SubMenu setHeaderIcon(Drawable drawable);

    SubMenu setHeaderTitle(int i2);

    SubMenu setHeaderTitle(CharSequence charSequence);

    SubMenu setHeaderView(View view);

    SubMenu setIcon(int i2);

    SubMenu setIcon(Drawable drawable);
}
