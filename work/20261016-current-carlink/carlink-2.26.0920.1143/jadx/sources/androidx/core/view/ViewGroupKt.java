package androidx.core.view;

import android.annotation.SuppressLint;
import android.hardware.Camera;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import java.util.Iterator;
import z.p;

/* JADX INFO: loaded from: classes2.dex */
public final class ViewGroupKt {
    public static final boolean contains(ViewGroup viewGroup, View view) {
        t.b.h(viewGroup, "<this>");
        t.b.h(view, "view");
        return viewGroup.indexOfChild(view) != -1;
    }

    public static final void forEach(ViewGroup viewGroup, z.l lVar) {
        t.b.h(viewGroup, "<this>");
        t.b.h(lVar, Camera.Parameters.SCENE_MODE_ACTION);
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            t.b.g(childAt, "getChildAt(index)");
            lVar.invoke(childAt);
        }
    }

    public static final void forEachIndexed(ViewGroup viewGroup, p pVar) {
        t.b.h(viewGroup, "<this>");
        t.b.h(pVar, Camera.Parameters.SCENE_MODE_ACTION);
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            Integer numValueOf = Integer.valueOf(i2);
            View childAt = viewGroup.getChildAt(i2);
            t.b.g(childAt, "getChildAt(index)");
            pVar.invoke(numValueOf, childAt);
        }
    }

    public static final View get(ViewGroup viewGroup, int i2) {
        t.b.h(viewGroup, "<this>");
        View childAt = viewGroup.getChildAt(i2);
        if (childAt != null) {
            return childAt;
        }
        StringBuilder sbS = android.accessibilityservice.c.s("Index: ", i2, ", Size: ");
        sbS.append(viewGroup.getChildCount());
        throw new IndexOutOfBoundsException(sbS.toString());
    }

    public static final e0.g getChildren(final ViewGroup viewGroup) {
        t.b.h(viewGroup, "<this>");
        return new e0.g() { // from class: androidx.core.view.ViewGroupKt$children$1
            @Override // e0.g
            public Iterator<View> iterator() {
                return ViewGroupKt.iterator(viewGroup);
            }
        };
    }

    public static final e0.g getDescendants(ViewGroup viewGroup) {
        t.b.h(viewGroup, "<this>");
        return new e0.j(new ViewGroupKt$descendants$1(viewGroup, null), 0);
    }

    public static final c0.d getIndices(ViewGroup viewGroup) {
        t.b.h(viewGroup, "<this>");
        int childCount = viewGroup.getChildCount();
        return childCount <= Integer.MIN_VALUE ? c0.d.f357e : new c0.d(0, childCount - 1);
    }

    public static final int getSize(ViewGroup viewGroup) {
        t.b.h(viewGroup, "<this>");
        return viewGroup.getChildCount();
    }

    public static final boolean isEmpty(ViewGroup viewGroup) {
        t.b.h(viewGroup, "<this>");
        return viewGroup.getChildCount() == 0;
    }

    public static final boolean isNotEmpty(ViewGroup viewGroup) {
        t.b.h(viewGroup, "<this>");
        return viewGroup.getChildCount() != 0;
    }

    public static final Iterator<View> iterator(final ViewGroup viewGroup) {
        t.b.h(viewGroup, "<this>");
        return new Iterator<View>() { // from class: androidx.core.view.ViewGroupKt.iterator.1
            private int index;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < viewGroup.getChildCount();
            }

            @Override // java.util.Iterator
            public void remove() {
                ViewGroup viewGroup2 = viewGroup;
                int i2 = this.index - 1;
                this.index = i2;
                viewGroup2.removeViewAt(i2);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Iterator
            public View next() {
                ViewGroup viewGroup2 = viewGroup;
                int i2 = this.index;
                this.index = i2 + 1;
                View childAt = viewGroup2.getChildAt(i2);
                if (childAt != null) {
                    return childAt;
                }
                throw new IndexOutOfBoundsException();
            }
        };
    }

    public static final void minusAssign(ViewGroup viewGroup, View view) {
        t.b.h(viewGroup, "<this>");
        t.b.h(view, "view");
        viewGroup.removeView(view);
    }

    public static final void plusAssign(ViewGroup viewGroup, View view) {
        t.b.h(viewGroup, "<this>");
        t.b.h(view, "view");
        viewGroup.addView(view);
    }

    public static final void setMargins(ViewGroup.MarginLayoutParams marginLayoutParams, @Px int i2) {
        t.b.h(marginLayoutParams, "<this>");
        marginLayoutParams.setMargins(i2, i2, i2, i2);
    }

    public static final void updateMargins(ViewGroup.MarginLayoutParams marginLayoutParams, @Px int i2, @Px int i3, @Px int i4, @Px int i5) {
        t.b.h(marginLayoutParams, "<this>");
        marginLayoutParams.setMargins(i2, i3, i4, i5);
    }

    public static /* synthetic */ void updateMargins$default(ViewGroup.MarginLayoutParams marginLayoutParams, int i2, int i3, int i4, int i5, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            i2 = marginLayoutParams.leftMargin;
        }
        if ((i6 & 2) != 0) {
            i3 = marginLayoutParams.topMargin;
        }
        if ((i6 & 4) != 0) {
            i4 = marginLayoutParams.rightMargin;
        }
        if ((i6 & 8) != 0) {
            i5 = marginLayoutParams.bottomMargin;
        }
        t.b.h(marginLayoutParams, "<this>");
        marginLayoutParams.setMargins(i2, i3, i4, i5);
    }

    @RequiresApi(17)
    @SuppressLint({"ClassVerificationFailure"})
    public static final void updateMarginsRelative(ViewGroup.MarginLayoutParams marginLayoutParams, @Px int i2, @Px int i3, @Px int i4, @Px int i5) {
        t.b.h(marginLayoutParams, "<this>");
        marginLayoutParams.setMarginStart(i2);
        marginLayoutParams.topMargin = i3;
        marginLayoutParams.setMarginEnd(i4);
        marginLayoutParams.bottomMargin = i5;
    }

    public static /* synthetic */ void updateMarginsRelative$default(ViewGroup.MarginLayoutParams marginLayoutParams, int i2, int i3, int i4, int i5, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            i2 = marginLayoutParams.getMarginStart();
        }
        if ((i6 & 2) != 0) {
            i3 = marginLayoutParams.topMargin;
        }
        if ((i6 & 4) != 0) {
            i4 = marginLayoutParams.getMarginEnd();
        }
        if ((i6 & 8) != 0) {
            i5 = marginLayoutParams.bottomMargin;
        }
        t.b.h(marginLayoutParams, "<this>");
        marginLayoutParams.setMarginStart(i2);
        marginLayoutParams.topMargin = i3;
        marginLayoutParams.setMarginEnd(i4);
        marginLayoutParams.bottomMargin = i5;
    }
}
