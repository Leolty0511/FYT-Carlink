package l;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.os.Handler;
import android.telecom.f;
import java.io.IOException;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends Thread {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f1050f = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f1051b;
    public boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final BluetoothSocket f1052d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ b f1053e;

    public a(b bVar, BluetoothDevice bluetoothDevice, Handler handler) throws IOException {
        t.b.h(handler, "handler");
        this.f1053e = bVar;
        this.f1051b = handler;
        BluetoothSocket bluetoothSocketCreateRfcommSocketToServiceRecord = bluetoothDevice.createRfcommSocketToServiceRecord(UUID.fromString("00000000-deca-fade-deca-deafdecacafe"));
        bluetoothSocketCreateRfcommSocketToServiceRecord.connect();
        n.b.a("BluetoothUtils", "=======>>> btSocketConnected()");
        b.a("SV");
        this.c = true;
        this.f1052d = bluetoothSocketCreateRfcommSocketToServiceRecord;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        StringBuilder sb = new StringBuilder("Connection ===>>> socket: ");
        BluetoothSocket bluetoothSocket = this.f1052d;
        sb.append(bluetoothSocket);
        n.b.a("HDL", sb.toString());
        while (this.c) {
            try {
                byte[] bArr = new byte[1024];
                int i2 = bluetoothSocket.getInputStream().read(bArr);
                if (i2 > 0) {
                    this.f1051b.post(new f(bArr, i2, this.f1053e));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
