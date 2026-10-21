package android.content.res;

import android.os.SystemClock;
import androidx.emoji2.text.flatbuffer.Utf8Old;
import com.google.common.math.StatsAccumulator;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Supplier {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f57b;

    public /* synthetic */ a(int i2) {
        this.f57b = i2;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f57b) {
            case 0:
                return ResourcesImpl.lambda$new$0();
            case 1:
                return Long.valueOf(SystemClock.elapsedRealtime());
            case 2:
                return Utf8Old.lambda$static$0();
            case 3:
                return new StatsAccumulator();
            case 4:
                return new StatsAccumulator();
            case 5:
                return new StatsAccumulator();
            case 6:
                return new StatsAccumulator();
            case 7:
                return new StatsAccumulator();
            case 8:
                return new StatsAccumulator();
            default:
                return new StatsAccumulator();
        }
    }
}
