package android.widget;

import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class l implements Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f265b;
    public final /* synthetic */ SelectionActionModeHelper c;

    public /* synthetic */ l(SelectionActionModeHelper selectionActionModeHelper, int i2) {
        this.f265b = i2;
        this.c = selectionActionModeHelper;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f265b) {
            case 0:
                this.c.startActionMode((SelectionActionModeHelper.SelectionResult) obj);
                break;
            default:
                this.c.invalidateActionMode((SelectionActionModeHelper.SelectionResult) obj);
                break;
        }
    }
}
