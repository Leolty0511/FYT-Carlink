package i0;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements a {
    private volatile /* synthetic */ Object _state;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f968a;

    public b(Object obj) {
        this._state = obj;
    }

    public final void a(Object obj) {
        int i2;
        if (obj == null) {
            obj = t.b.f1108b;
        }
        synchronized (this) {
            if (t.b.a(this._state, obj)) {
                return;
            }
            this._state = obj;
            int i3 = this.f968a;
            if ((i3 & 1) != 0) {
                this.f968a = i3 + 2;
                return;
            }
            int i4 = i3 + 1;
            this.f968a = i4;
            while (true) {
                synchronized (this) {
                    i2 = this.f968a;
                    if (i2 == i4) {
                        this.f968a = i4 + 1;
                        return;
                    }
                }
                i4 = i2;
            }
        }
    }
}
