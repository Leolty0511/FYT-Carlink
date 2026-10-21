package a0;

import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a extends d {
    public abstract Random a();

    @Override // a0.d
    public int nextInt() {
        return a().nextInt();
    }
}
