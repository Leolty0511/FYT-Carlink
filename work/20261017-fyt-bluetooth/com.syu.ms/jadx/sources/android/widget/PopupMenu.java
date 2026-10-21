package android.widget;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.android.internal.view.menu.c;
import com.android.internal.view.menu.e;
import com.android.internal.view.menu.f;
import com.android.internal.view.menu.h;

/* JADX INFO: loaded from: classes.dex */
public class PopupMenu implements c.a, f.a {
    private View mAnchor;
    private Context mContext;
    private OnDismissListener mDismissListener;
    private View.OnTouchListener mDragListener;
    private c mMenu;
    private OnMenuItemClickListener mMenuItemClickListener;
    private e mPopup;

    public interface OnDismissListener {
        void onDismiss(PopupMenu popupMenu);
    }

    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public PopupMenu(Context context, View view) {
        this(context, view, 0);
    }

    public void dismiss() {
        this.mPopup.j();
    }

    public View.OnTouchListener getDragToOpenListener() {
        if (this.mDragListener == null) {
            this.mDragListener = new ListPopupWindow.ForwardingListener(this.mAnchor) { // from class: android.widget.PopupMenu.1
                @Override // android.widget.ListPopupWindow.ForwardingListener
                public ListPopupWindow getPopup() {
                    return PopupMenu.this.mPopup.k();
                }

                @Override // android.widget.ListPopupWindow.ForwardingListener
                public boolean onForwardingStarted() {
                    PopupMenu.this.show();
                    return true;
                }

                @Override // android.widget.ListPopupWindow.ForwardingListener
                public boolean onForwardingStopped() {
                    PopupMenu.this.dismiss();
                    return true;
                }
            };
        }
        return this.mDragListener;
    }

    public Menu getMenu() {
        return this.mMenu;
    }

    public MenuInflater getMenuInflater() {
        return new MenuInflater(this.mContext);
    }

    public void inflate(int i2) {
        getMenuInflater().inflate(i2, this.mMenu);
    }

    @Override // com.android.internal.view.menu.f.a
    public void onCloseMenu(c cVar, boolean z2) {
        OnDismissListener onDismissListener = this.mDismissListener;
        if (onDismissListener != null) {
            onDismissListener.onDismiss(this);
        }
    }

    public void onCloseSubMenu(h hVar) {
    }

    @Override // com.android.internal.view.menu.c.a
    public boolean onMenuItemSelected(c cVar, MenuItem menuItem) {
        OnMenuItemClickListener onMenuItemClickListener = this.mMenuItemClickListener;
        if (onMenuItemClickListener != null) {
            return onMenuItemClickListener.onMenuItemClick(menuItem);
        }
        return false;
    }

    @Override // com.android.internal.view.menu.c.a
    public void onMenuModeChange(c cVar) {
    }

    @Override // com.android.internal.view.menu.f.a
    public boolean onOpenSubMenu(c cVar) {
        if (cVar == null) {
            return false;
        }
        if (!cVar.hasVisibleItems()) {
            return true;
        }
        new e(this.mContext, cVar, this.mAnchor).r();
        return true;
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.mDismissListener = onDismissListener;
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.mMenuItemClickListener = onMenuItemClickListener;
    }

    public void show() {
        this.mPopup.r();
    }

    public PopupMenu(Context context, View view, int i2) {
        this.mContext = context;
        c cVar = new c(context);
        this.mMenu = cVar;
        cVar.H(this);
        this.mAnchor = view;
        e eVar = new e(context, this.mMenu, view);
        this.mPopup = eVar;
        eVar.q(i2);
        this.mPopup.o(this);
    }
}
