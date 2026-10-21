package android.hardware.usb;

import android.util.Log;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class UsbRequest {
    private static final String TAG = "UsbRequest";
    private ByteBuffer mBuffer;
    private Object mClientData;
    private UsbEndpoint mEndpoint;
    private int mLength;
    private int mNativeContext;

    private native boolean native_cancel();

    private native void native_close();

    private native int native_dequeue_array(byte[] bArr, int i2, boolean z2);

    private native int native_dequeue_direct();

    private native boolean native_init(UsbDeviceConnection usbDeviceConnection, int i2, int i3, int i4, int i5);

    private native boolean native_queue_array(byte[] bArr, int i2, boolean z2);

    private native boolean native_queue_direct(ByteBuffer byteBuffer, int i2, boolean z2);

    public boolean cancel() {
        return native_cancel();
    }

    public void close() {
        this.mEndpoint = null;
        native_close();
    }

    public void dequeue() {
        int iNative_dequeue_direct = this.mBuffer.isDirect() ? native_dequeue_direct() : native_dequeue_array(this.mBuffer.array(), this.mLength, this.mEndpoint.getDirection() == 0);
        if (iNative_dequeue_direct >= 0) {
            this.mBuffer.position(Math.min(iNative_dequeue_direct, this.mLength));
        }
        this.mBuffer = null;
        this.mLength = 0;
    }

    public void finalize() throws Throwable {
        try {
            if (this.mEndpoint != null) {
                Log.v(TAG, "endpoint still open in finalize(): " + this);
                close();
            }
        } finally {
            super.finalize();
        }
    }

    public Object getClientData() {
        return this.mClientData;
    }

    public UsbEndpoint getEndpoint() {
        return this.mEndpoint;
    }

    public boolean initialize(UsbDeviceConnection usbDeviceConnection, UsbEndpoint usbEndpoint) {
        this.mEndpoint = usbEndpoint;
        return native_init(usbDeviceConnection, usbEndpoint.getAddress(), usbEndpoint.getAttributes(), usbEndpoint.getMaxPacketSize(), usbEndpoint.getInterval());
    }

    public boolean queue(ByteBuffer byteBuffer, int i2) {
        boolean zNative_queue_array;
        boolean z2 = this.mEndpoint.getDirection() == 0;
        if (byteBuffer.isDirect()) {
            zNative_queue_array = native_queue_direct(byteBuffer, i2, z2);
        } else {
            if (!byteBuffer.hasArray()) {
                throw new IllegalArgumentException("buffer is not direct and has no array");
            }
            zNative_queue_array = native_queue_array(byteBuffer.array(), i2, z2);
        }
        if (zNative_queue_array) {
            this.mBuffer = byteBuffer;
            this.mLength = i2;
        }
        return zNative_queue_array;
    }

    public void setClientData(Object obj) {
        this.mClientData = obj;
    }
}
