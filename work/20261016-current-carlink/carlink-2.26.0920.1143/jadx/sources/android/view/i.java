package android.view;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class i {
    public static void a(ViewParent viewParent, View view, View view2) {
        if (viewParent.getParent() != null) {
            viewParent.getParent().onDescendantInvalidated(view, view2);
        }
    }
}
