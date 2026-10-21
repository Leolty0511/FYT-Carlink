package android.hardware.radio;

import android.os.HidlSupport;
import java.util.function.ToIntFunction;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements ToIntFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f82a;

    public /* synthetic */ b(int i2) {
        this.f82a = i2;
    }

    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        switch (this.f82a) {
            case 0:
                return ((Integer) obj).intValue();
            case 1:
                return ((Integer) obj).intValue();
            case 2:
                return HidlSupport.deepHashCode(obj);
            default:
                return HidlSupport.deepHashCode(obj);
        }
    }
}
