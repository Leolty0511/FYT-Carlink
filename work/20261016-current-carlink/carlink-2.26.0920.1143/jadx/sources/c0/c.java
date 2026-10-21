package c0;

import java.util.NoSuchElementException;
import t.f;

/* JADX INFO: loaded from: classes4.dex */
public final class c extends f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f354b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f355d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f356e;

    public c(int i2, int i3, int i4) {
        this.f354b = i4;
        this.c = i3;
        boolean z2 = true;
        if (i4 <= 0 ? i2 < i3 : i2 > i3) {
            z2 = false;
        }
        this.f355d = z2;
        this.f356e = z2 ? i2 : i3;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f355d;
    }

    @Override // t.f
    public final int nextInt() {
        int i2 = this.f356e;
        if (i2 != this.c) {
            this.f356e = this.f354b + i2;
        } else {
            if (!this.f355d) {
                throw new NoSuchElementException();
            }
            this.f355d = false;
        }
        return i2;
    }
}
