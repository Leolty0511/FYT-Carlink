package f;

import android.widget.Button;
import com.google.android.projection.sink.R;

/* JADX INFO: loaded from: classes4.dex */
public final class k0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l0 f847b;

    public k0(l0 l0Var) {
        this.f847b = l0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        l0 l0Var = this.f847b;
        ((Button) l0Var.f849a.getView().findViewById(R.id.bluetooth_pairing_response_button)).setEnabled(true);
        ((Button) l0Var.f849a.getView().findViewById(R.id.bluetooth_auth_data_button)).setEnabled(true);
    }
}
