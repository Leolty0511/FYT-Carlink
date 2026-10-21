package androidx.core.content;

import androidx.core.util.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f291b;

    public /* synthetic */ a(int i2) {
        this.f291b = i2;
    }

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        switch (this.f291b) {
            case 0:
                IntentSanitizer.lambda$sanitizeByFiltering$0((String) obj);
                break;
            default:
                IntentSanitizer.lambda$sanitizeByThrowing$1((String) obj);
                break;
        }
    }
}
