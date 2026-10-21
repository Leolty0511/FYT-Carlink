package f0;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Pair;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f871b = -1;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f872d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c0.d f873e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f874f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ c f875g;

    public b(c cVar) {
        this.f875g = cVar;
        int i2 = cVar.f877b;
        int length = cVar.f876a.length();
        if (length < 0) {
            throw new IllegalArgumentException(android.accessibilityservice.c.e("Cannot coerce value to an empty range: maximum ", length, " is less than minimum 0."));
        }
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > length) {
            i2 = length;
        }
        this.c = i2;
        this.f872d = i2;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0023  */
    /* JADX WARN: Code duplicated, block: B:12:0x0033  */
    /* JADX WARN: Code duplicated, block: B:14:0x0043  */
    /* JADX WARN: Code duplicated, block: B:15:0x0053  */
    /* JADX WARN: Code duplicated, block: B:17:0x006d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0070  */
    /* JADX WARN: Code duplicated, block: B:21:0x007f  */
    /* JADX WARN: Code duplicated, block: B:9:0x001d  */
    public final void a() {
        Pair pair;
        int iIntValue;
        int i2;
        c0.d dVar;
        int i3 = this.f872d;
        if (i3 < 0) {
            this.f871b = 0;
            this.f873e = null;
            return;
        }
        c cVar = this.f875g;
        int i4 = cVar.c;
        CharSequence charSequence = cVar.f876a;
        if (i4 > 0) {
            int i5 = this.f874f + 1;
            this.f874f = i5;
            if (i5 >= i4) {
                this.f873e = new c0.d(this.c, h.L(charSequence));
                this.f872d = -1;
            } else if (i3 > charSequence.length()) {
                this.f873e = new c0.d(this.c, h.L(charSequence));
                this.f872d = -1;
            } else {
                pair = (Pair) cVar.f878d.invoke(charSequence, Integer.valueOf(this.f872d));
                if (pair == null) {
                    this.f873e = new c0.d(this.c, h.L(charSequence));
                    this.f872d = -1;
                } else {
                    iIntValue = ((Number) pair.component1()).intValue();
                    int iIntValue2 = ((Number) pair.component2()).intValue();
                    i2 = this.c;
                    if (iIntValue <= Integer.MIN_VALUE) {
                        dVar = c0.d.f357e;
                    } else {
                        dVar = new c0.d(i2, iIntValue - 1);
                    }
                    this.f873e = dVar;
                    int i6 = iIntValue + iIntValue2;
                    this.c = i6;
                    this.f872d = i6 + (iIntValue2 == 0 ? 1 : 0);
                }
            }
        } else if (i3 > charSequence.length()) {
            this.f873e = new c0.d(this.c, h.L(charSequence));
            this.f872d = -1;
        } else {
            pair = (Pair) cVar.f878d.invoke(charSequence, Integer.valueOf(this.f872d));
            if (pair == null) {
                this.f873e = new c0.d(this.c, h.L(charSequence));
                this.f872d = -1;
            } else {
                iIntValue = ((Number) pair.component1()).intValue();
                int iIntValue3 = ((Number) pair.component2()).intValue();
                i2 = this.c;
                if (iIntValue <= Integer.MIN_VALUE) {
                    dVar = c0.d.f357e;
                } else {
                    dVar = new c0.d(i2, iIntValue - 1);
                }
                this.f873e = dVar;
                int i7 = iIntValue + iIntValue3;
                this.c = i7;
                this.f872d = i7 + (iIntValue3 == 0 ? 1 : 0);
            }
        }
        this.f871b = 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f871b == -1) {
            a();
        }
        return this.f871b == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f871b == -1) {
            a();
        }
        if (this.f871b == 0) {
            throw new NoSuchElementException();
        }
        c0.d dVar = this.f873e;
        t.b.f(dVar, "null cannot be cast to non-null type kotlin.ranges.IntRange");
        this.f873e = null;
        this.f871b = -1;
        return dVar;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
