package android.print;

import java.util.function.IntConsumer;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements IntConsumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f114b;

    public /* synthetic */ a(int i2) {
        this.f114b = i2;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i2) {
        switch (this.f114b) {
            case 0:
                PrintAttributes.enforceValidColorMode(i2);
                break;
            case 1:
                PrintAttributes.enforceValidDuplexMode(i2);
                break;
            case 2:
                PrintAttributes.enforceValidDuplexMode(i2);
                break;
            default:
                PrintAttributes.enforceValidColorMode(i2);
                break;
        }
    }
}
