package android.bluetooth;

import android.os.Handler;
import android.os.ParcelUuid;
import java.io.Closeable;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothServerSocket implements Closeable {
    private final int mChannel;
    private Handler mHandler;
    private int mMessage;
    public final BluetoothSocket mSocket;

    public BluetoothServerSocket(int i2, boolean z2, boolean z3, int i3) {
        this.mChannel = i3;
        this.mSocket = new BluetoothSocket(i2, -1, z2, z3, null, i3, null);
    }

    public BluetoothSocket accept() {
        return accept(-1);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.obtainMessage(this.mMessage).sendToTarget();
            }
        }
        this.mSocket.close();
    }

    public int getChannel() {
        return this.mChannel;
    }

    public synchronized void setCloseHandler(Handler handler, int i2) {
        this.mHandler = handler;
        this.mMessage = i2;
    }

    public void setServiceName(String str) {
        this.mSocket.setServiceName(str);
    }

    public BluetoothSocket accept(int i2) {
        return this.mSocket.accept(i2);
    }

    public BluetoothServerSocket(int i2, boolean z2, boolean z3, ParcelUuid parcelUuid) {
        BluetoothSocket bluetoothSocket = new BluetoothSocket(i2, -1, z2, z3, null, -1, parcelUuid);
        this.mSocket = bluetoothSocket;
        this.mChannel = bluetoothSocket.getPort();
    }
}
