package androidx.savedstate;

import android.view.View;
import e0.c;
import t.b;
import z.l;

/* JADX INFO: loaded from: classes2.dex */
public final class ViewTreeSavedStateRegistryOwner {
    public static final SavedStateRegistryOwner get(View view) {
        b.h(view, "<this>");
        c cVar = new c(kotlin.sequences.b.H(kotlin.sequences.a.G(view, new l() { // from class: androidx.savedstate.ViewTreeSavedStateRegistryOwner$findViewTreeSavedStateRegistryOwner$1
            @Override // z.l
            public final View invoke(View view2) {
                b.h(view2, "view");
                Object parent = view2.getParent();
                if (parent instanceof View) {
                    return (View) parent;
                }
                return null;
            }
        }), new l() { // from class: androidx.savedstate.ViewTreeSavedStateRegistryOwner$findViewTreeSavedStateRegistryOwner$2
            @Override // z.l
            public final SavedStateRegistryOwner invoke(View view2) {
                b.h(view2, "view");
                Object tag = view2.getTag(R.id.view_tree_saved_state_registry_owner);
                if (tag instanceof SavedStateRegistryOwner) {
                    return (SavedStateRegistryOwner) tag;
                }
                return null;
            }
        }));
        return (SavedStateRegistryOwner) (!cVar.hasNext() ? null : cVar.next());
    }

    public static final void set(View view, SavedStateRegistryOwner savedStateRegistryOwner) {
        b.h(view, "<this>");
        view.setTag(R.id.view_tree_saved_state_registry_owner, savedStateRegistryOwner);
    }
}
