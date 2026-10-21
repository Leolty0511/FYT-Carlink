package android.view;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public interface ContextMenu extends Menu {

    public interface ContextMenuInfo {
    }

    void clearHeader();

    ContextMenu setHeaderIcon(int i2);

    ContextMenu setHeaderIcon(Drawable drawable);

    ContextMenu setHeaderTitle(int i2);

    ContextMenu setHeaderTitle(CharSequence charSequence);

    ContextMenu setHeaderView(View view);
}
