package androidx.activity;

import android.view.View;
import z.l;

/* JADX INFO: loaded from: classes2.dex */
public final class ViewTreeOnBackPressedDispatcherOwner {
    public static final OnBackPressedDispatcherOwner get(View view) {
        t.b.h(view, "<this>");
        e0.c cVar = new e0.c(kotlin.sequences.b.H(kotlin.sequences.a.G(view, new l() { // from class: androidx.activity.ViewTreeOnBackPressedDispatcherOwner$findViewTreeOnBackPressedDispatcherOwner$1
            @Override // z.l
            public final View invoke(View view2) {
                t.b.h(view2, "it");
                Object parent = view2.getParent();
                if (parent instanceof View) {
                    return (View) parent;
                }
                return null;
            }
        }), new l() { // from class: androidx.activity.ViewTreeOnBackPressedDispatcherOwner$findViewTreeOnBackPressedDispatcherOwner$2
            @Override // z.l
            public final OnBackPressedDispatcherOwner invoke(View view2) {
                t.b.h(view2, "it");
                Object tag = view2.getTag(R.id.view_tree_on_back_pressed_dispatcher_owner);
                if (tag instanceof OnBackPressedDispatcherOwner) {
                    return (OnBackPressedDispatcherOwner) tag;
                }
                return null;
            }
        }));
        return (OnBackPressedDispatcherOwner) (!cVar.hasNext() ? null : cVar.next());
    }

    public static final void set(View view, OnBackPressedDispatcherOwner onBackPressedDispatcherOwner) {
        t.b.h(view, "<this>");
        t.b.h(onBackPressedDispatcherOwner, "onBackPressedDispatcherOwner");
        view.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, onBackPressedDispatcherOwner);
    }
}
