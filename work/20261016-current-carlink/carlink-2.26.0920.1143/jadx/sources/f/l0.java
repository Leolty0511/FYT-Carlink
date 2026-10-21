package f;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.projection.protocol.AndroidHeadUnitLogging;
import com.google.android.projection.protocol.BluetoothEndpoint;
import com.syu.carlink.auto.AutoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class l0 implements BluetoothEndpoint.BluetoothEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AutoFragment f849a;

    public l0(AutoFragment autoFragment) {
        this.f849a = autoFragment;
    }

    @Override // com.google.android.projection.protocol.BluetoothEndpoint.BluetoothEventListener
    public final void onAuthenticationResult(int i2) {
        Log.i(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "onAuthenticationResult: status=" + i2);
    }

    @Override // com.google.android.projection.protocol.BluetoothEndpoint.BluetoothEventListener
    public final void onPairingRequest(String str, int i2) {
        Log.i(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "onPairingRequest: phoneAddress=" + str + " pairingMethod=" + i2);
        new Handler(Looper.getMainLooper()).post(new k0(this));
    }
}
