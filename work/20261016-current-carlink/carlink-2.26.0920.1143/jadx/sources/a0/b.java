package a0;

import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public final class b extends ThreadLocal {
    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        return new Random();
    }
}
