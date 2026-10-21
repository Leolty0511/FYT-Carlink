package b0;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import t.b;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends a0.a {
    @Override // a0.a
    public final Random a() {
        ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
        b.g(threadLocalRandomCurrent, "current()");
        return threadLocalRandomCurrent;
    }
}
