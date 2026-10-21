package f;

import android.bluetooth.BluetoothDevice;
import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
public final class j implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BluetoothDevice f824b;
    public final /* synthetic */ k c;

    public j(k kVar, BluetoothDevice bluetoothDevice) {
        this.c = kVar;
        this.f824b = bluetoothDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        StringBuilder sb = new StringBuilder("------->>>>  wirelessAutoConnect startProjectingTo(btDevice) : ");
        BluetoothDevice bluetoothDevice = this.f824b;
        sb.append(bluetoothDevice);
        sb.append(" bluetoothExplorer: ");
        k kVar = this.c;
        sb.append(kVar.f836n);
        Log.i("Auto", sb.toString());
        Log.i("Auto", "------->>>>  wirelessAutoConnect mLaunchMode: " + kVar.f831h);
        if (kVar.f831h == 2) {
            kVar.f836n.startProjectingTo(bluetoothDevice);
        } else if (kVar.f836n != null) {
            kVar.i();
        }
    }
}
