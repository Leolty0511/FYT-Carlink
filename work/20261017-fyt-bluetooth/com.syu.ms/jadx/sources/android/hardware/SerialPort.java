package android.hardware;

import android.os.ParcelFileDescriptor;
import java.io.FileDescriptor;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class SerialPort {
    private static final String TAG = "SerialPort";
    private ParcelFileDescriptor mFileDescriptor;
    private final String mName;
    private int mNativeContext;

    public SerialPort(String str) {
        this.mName = str;
    }

    private native void native_close();

    private native void native_open(FileDescriptor fileDescriptor, int i2);

    private native int native_read_array(byte[] bArr, int i2);

    private native int native_read_direct(ByteBuffer byteBuffer, int i2);

    private native void native_send_break();

    private native void native_write_array(byte[] bArr, int i2);

    private native void native_write_direct(ByteBuffer byteBuffer, int i2);

    public void close() {
        ParcelFileDescriptor parcelFileDescriptor = this.mFileDescriptor;
        if (parcelFileDescriptor != null) {
            parcelFileDescriptor.close();
            this.mFileDescriptor = null;
        }
        native_close();
    }

    public String getName() {
        return this.mName;
    }

    public void open(ParcelFileDescriptor parcelFileDescriptor, int i2) {
        native_open(parcelFileDescriptor.getFileDescriptor(), i2);
        this.mFileDescriptor = parcelFileDescriptor;
    }

    public int read(ByteBuffer byteBuffer) {
        if (byteBuffer.isDirect()) {
            return native_read_direct(byteBuffer, byteBuffer.remaining());
        }
        if (byteBuffer.hasArray()) {
            return native_read_array(byteBuffer.array(), byteBuffer.remaining());
        }
        throw new IllegalArgumentException("buffer is not direct and has no array");
    }

    public void sendBreak() {
        native_send_break();
    }

    public void write(ByteBuffer byteBuffer, int i2) {
        if (byteBuffer.isDirect()) {
            native_write_direct(byteBuffer, i2);
        } else {
            if (!byteBuffer.hasArray()) {
                throw new IllegalArgumentException("buffer is not direct and has no array");
            }
            native_write_array(byteBuffer.array(), i2);
        }
    }
}
