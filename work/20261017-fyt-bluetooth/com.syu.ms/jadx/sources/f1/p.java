package f1;

import android.os.Handler;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class p extends q {
    public p(int i2, Handler handler) {
        super(0, i2, handler);
    }

    @Override // f1.q
    public boolean M() {
        if (n()) {
            return true;
        }
        p();
        return this.f2154r;
    }

    public boolean X(int i2) {
        return true;
    }

    @Override // f1.q
    public int k() {
        Log.e("EmptyDevice", "Check Signal EmptyDevice = " + this.f2147k);
        return 1;
    }

    @Override // f1.q
    public void o() {
        G(1, 0);
    }

    @Override // f1.q
    public void p() {
        H(X(this.f2147k));
        this.f2147k = 2;
    }
}
