package com.google.android.projection.transport;

import com.google.android.projection.logging.Log;
import com.google.android.projection.protocol.Transport;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public class StreamTransport extends Transport {
    private static final String TAG = "AHU.TRANSPORT";
    private final InputStream mInputStream;
    private final OutputStream mOutputStream;

    public StreamTransport(InputStream inputStream, OutputStream outputStream) {
        this.mInputStream = inputStream;
        this.mOutputStream = outputStream;
    }

    @Override // com.google.android.projection.protocol.Transport
    public int read(byte[] bArr, int i2, int i3) {
        return this.mInputStream.read(bArr, i2, i3);
    }

    @Override // com.google.android.projection.protocol.Transport
    public void stopTransport(Transport.StopReason stopReason) {
        try {
            this.mInputStream.close();
        } catch (IOException e2) {
            Log.w("AHU.TRANSPORT", "Failed to close InputStream: " + e2);
        }
        try {
            this.mOutputStream.close();
        } catch (IOException e3) {
            Log.w("AHU.TRANSPORT", "Failed to close OutputStream: " + e3);
        }
    }

    @Override // com.google.android.projection.protocol.Transport
    public void write(byte[] bArr, int i2, int i3) throws IOException {
        this.mOutputStream.write(bArr, i2, i3);
    }
}
