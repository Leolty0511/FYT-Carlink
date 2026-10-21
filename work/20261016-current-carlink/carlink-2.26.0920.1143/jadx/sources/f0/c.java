package f0;

import java.util.Iterator;
import z.p;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements e0.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f876a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f877b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p f878d;

    public c(CharSequence charSequence, int i2, int i3, p pVar) {
        t.b.h(charSequence, "input");
        this.f876a = charSequence;
        this.f877b = i2;
        this.c = i3;
        this.f878d = pVar;
    }

    @Override // e0.g
    public final Iterator iterator() {
        return new b(this);
    }
}
