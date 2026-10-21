package androidx.core.view;

import android.view.ViewParent;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes2.dex */
public /* synthetic */ class ViewKt$ancestors$1 extends FunctionReferenceImpl implements z.l {
    public static final ViewKt$ancestors$1 INSTANCE = new ViewKt$ancestors$1();

    public ViewKt$ancestors$1() {
        super(1, ViewParent.class, "getParent", "getParent()Landroid/view/ViewParent;", 0);
    }

    @Override // z.l
    public final ViewParent invoke(ViewParent viewParent) {
        t.b.h(viewParent, "p0");
        return viewParent.getParent();
    }
}
