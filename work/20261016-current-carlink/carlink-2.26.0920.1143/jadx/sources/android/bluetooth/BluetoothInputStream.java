package android.bluetooth;

import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
final class BluetoothInputStream extends InputStream {
    private BluetoothSocket mSocket;

    public BluetoothInputStream(BluetoothSocket bluetoothSocket) {
        this.mSocket = bluetoothSocket;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.mSocket.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.mSocket.close();
    }

    @Override // java.io.InputStream
    public int read() {
        byte[] bArr = new byte[1];
        if (this.mSocket.read(bArr, 0, 1) == 1) {
            return bArr[0] & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            throw new NullPointerException("byte array is null");
        }
        if ((i2 | i3) < 0 || i3 > bArr.length - i2) {
            throw new ArrayIndexOutOfBoundsException("invalid offset or length");
        }
        return this.mSocket.read(bArr, i2, i3);
    }
}
