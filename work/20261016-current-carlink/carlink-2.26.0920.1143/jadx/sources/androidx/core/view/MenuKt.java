package androidx.core.view;

import android.hardware.Camera;
import android.view.Menu;
import android.view.MenuItem;
import com.android.ims.ImsConfig;
import java.util.Iterator;
import z.p;

/* JADX INFO: loaded from: classes2.dex */
public final class MenuKt {
    public static final boolean contains(Menu menu, MenuItem menuItem) {
        t.b.h(menu, "<this>");
        t.b.h(menuItem, ImsConfig.EXTRA_CHANGED_ITEM);
        int size = menu.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (t.b.a(menu.getItem(i2), menuItem)) {
                return true;
            }
        }
        return false;
    }

    public static final void forEach(Menu menu, z.l lVar) {
        t.b.h(menu, "<this>");
        t.b.h(lVar, Camera.Parameters.SCENE_MODE_ACTION);
        int size = menu.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = menu.getItem(i2);
            t.b.g(item, "getItem(index)");
            lVar.invoke(item);
        }
    }

    public static final void forEachIndexed(Menu menu, p pVar) {
        t.b.h(menu, "<this>");
        t.b.h(pVar, Camera.Parameters.SCENE_MODE_ACTION);
        int size = menu.size();
        for (int i2 = 0; i2 < size; i2++) {
            Integer numValueOf = Integer.valueOf(i2);
            MenuItem item = menu.getItem(i2);
            t.b.g(item, "getItem(index)");
            pVar.invoke(numValueOf, item);
        }
    }

    public static final MenuItem get(Menu menu, int i2) {
        t.b.h(menu, "<this>");
        MenuItem item = menu.getItem(i2);
        t.b.g(item, "getItem(index)");
        return item;
    }

    public static final e0.g getChildren(final Menu menu) {
        t.b.h(menu, "<this>");
        return new e0.g() { // from class: androidx.core.view.MenuKt$children$1
            @Override // e0.g
            public Iterator<MenuItem> iterator() {
                return MenuKt.iterator(menu);
            }
        };
    }

    public static final int getSize(Menu menu) {
        t.b.h(menu, "<this>");
        return menu.size();
    }

    public static final boolean isEmpty(Menu menu) {
        t.b.h(menu, "<this>");
        return menu.size() == 0;
    }

    public static final boolean isNotEmpty(Menu menu) {
        t.b.h(menu, "<this>");
        return menu.size() != 0;
    }

    public static final Iterator<MenuItem> iterator(final Menu menu) {
        t.b.h(menu, "<this>");
        return new Iterator<MenuItem>() { // from class: androidx.core.view.MenuKt.iterator.1
            private int index;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < menu.size();
            }

            @Override // java.util.Iterator
            public void remove() {
                s.c cVar;
                Menu menu2 = menu;
                int i2 = this.index - 1;
                this.index = i2;
                MenuItem item = menu2.getItem(i2);
                if (item != null) {
                    menu2.removeItem(item.getItemId());
                    cVar = s.c.f1105a;
                } else {
                    cVar = null;
                }
                if (cVar == null) {
                    throw new IndexOutOfBoundsException();
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Iterator
            public MenuItem next() {
                Menu menu2 = menu;
                int i2 = this.index;
                this.index = i2 + 1;
                MenuItem item = menu2.getItem(i2);
                if (item != null) {
                    return item;
                }
                throw new IndexOutOfBoundsException();
            }
        };
    }

    public static final void minusAssign(Menu menu, MenuItem menuItem) {
        t.b.h(menu, "<this>");
        t.b.h(menuItem, ImsConfig.EXTRA_CHANGED_ITEM);
        menu.removeItem(menuItem.getItemId());
    }

    public static final void removeItemAt(Menu menu, int i2) {
        s.c cVar;
        t.b.h(menu, "<this>");
        MenuItem item = menu.getItem(i2);
        if (item != null) {
            menu.removeItem(item.getItemId());
            cVar = s.c.f1105a;
        } else {
            cVar = null;
        }
        if (cVar == null) {
            throw new IndexOutOfBoundsException();
        }
    }
}
