package android.bluetooth;

import android.os.Handler;
import android.os.ParcelUuid;
import android.util.Log;
import java.io.Closeable;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothServerSocket implements Closeable {
    private static final String TAG = "BluetoothServerSocket";
    private int mChannel;
    private Handler mHandler;
    private int mMessage;
    final BluetoothSocket mSocket;

    public BluetoothServerSocket(int i2, boolean z2, boolean z3, int i3) {
        this.mChannel = i3;
        BluetoothSocket bluetoothSocket = new BluetoothSocket(i2, -1, z2, z3, null, i3, null);
        this.mSocket = bluetoothSocket;
        if (i3 == -2) {
            bluetoothSocket.setExcludeSdp(true);
        }
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

    public void setChannel(int i2) {
        BluetoothSocket bluetoothSocket = this.mSocket;
        if (bluetoothSocket != null && bluetoothSocket.getPort() != i2) {
            Log.w(TAG, "The port set is different that the underlying port. mSocket.getPort(): " + this.mSocket.getPort() + " requested newChannel: " + i2);
        }
        this.mChannel = i2;
    }

    public synchronized void setCloseHandler(Handler handler, int i2) {
        this.mHandler = handler;
        this.mMessage = i2;
    }

    public void setServiceName(String str) {
        this.mSocket.setServiceName(str);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ServerSocket: Type: ");
        int connectionType = this.mSocket.getConnectionType();
        if (connectionType == 1) {
            sb.append("TYPE_RFCOMM");
        } else if (connectionType == 2) {
            sb.append("TYPE_SCO");
        } else if (connectionType == 3) {
            sb.append("TYPE_L2CAP");
        }
        sb.append(" Channel: ");
        sb.append(this.mChannel);
        return sb.toString();
    }

    public BluetoothSocket accept(int i2) {
        return this.mSocket.accept(i2);
    }

    public BluetoothServerSocket(int i2, boolean z2, boolean z3, int i3, boolean z4, boolean z5) {
        this.mChannel = i3;
        BluetoothSocket bluetoothSocket = new BluetoothSocket(i2, -1, z2, z3, null, i3, null, z4, z5);
        this.mSocket = bluetoothSocket;
        if (i3 == -2) {
            bluetoothSocket.setExcludeSdp(true);
        }
    }

    public BluetoothServerSocket(int i2, boolean z2, boolean z3, ParcelUuid parcelUuid) {
        BluetoothSocket bluetoothSocket = new BluetoothSocket(i2, -1, z2, z3, null, -1, parcelUuid);
        this.mSocket = bluetoothSocket;
        this.mChannel = bluetoothSocket.getPort();
    }
}
