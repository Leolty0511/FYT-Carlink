package kotlinx.coroutines.android;

import android.os.Looper;
import android.view.View;
import g0.f;
import h0.a;
import h0.b;
import java.util.List;
import k0.e;

/* JADX INFO: loaded from: classes4.dex */
public final class AndroidDispatcherFactory implements e {
    @Override // k0.e
    public f createDispatcher(List<? extends e> list) {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return new a(b.a(mainLooper));
        }
        throw new IllegalStateException("The main looper is not available");
    }

    @Override // k0.e
    public int getLoadPriority() {
        return View.LAST_APP_AUTOFILL_ID;
    }

    @Override // k0.e
    public String hintOnError() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }
}
