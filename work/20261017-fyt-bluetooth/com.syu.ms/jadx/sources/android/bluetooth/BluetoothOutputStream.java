package android.bluetooth;

import java.io.OutputStream;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class BluetoothOutputStream extends OutputStream {
    private BluetoothSocket mSocket;

    public BluetoothOutputStream(BluetoothSocket bluetoothSocket) {
        this.mSocket = bluetoothSocket;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.mSocket.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        this.mSocket.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i2) {
        this.mSocket.write(new byte[]{(byte) i2}, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i3) {
        Objects.requireNonNull(bArr, "buffer is null");
        if ((i2 | i3) < 0 || i3 > bArr.length - i2) {
            throw new IndexOutOfBoundsException("invalid offset or length");
        }
        this.mSocket.write(bArr, i2, i3);
    }
}
