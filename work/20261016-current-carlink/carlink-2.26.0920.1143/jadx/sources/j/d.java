package j;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public final class d extends RecyclerView.ItemDecoration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f975a = 4;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f976b = 4;

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        t.b.h(rect, "outRect");
        t.b.h(view, "view");
        t.b.h(recyclerView, "parent");
        t.b.h(state, "state");
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        t.b.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager");
        int spanCount = ((GridLayoutManager) layoutManager).getSpanCount();
        int i2 = childAdapterPosition % spanCount;
        int i3 = this.f975a;
        rect.set((i3 * i2) / spanCount, 0, (((spanCount - i2) - 1) * i3) / spanCount, this.f976b);
    }
}
