package android.widget;

import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class k implements Supplier {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f264b;
    public final /* synthetic */ SelectionActionModeHelper.TextClassificationHelper c;

    public /* synthetic */ k(SelectionActionModeHelper.TextClassificationHelper textClassificationHelper, int i2) {
        this.f264b = i2;
        this.c = textClassificationHelper;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f264b) {
            case 0:
                return this.c.suggestSelection();
            case 1:
                return this.c.classifyText();
            default:
                return this.c.classifyText();
        }
    }
}
