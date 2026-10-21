package android.hardware.usb;

import android.util.Log;
import com.android.internal.util.Preconditions;
import dalvik.system.CloseGuard;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class UsbRequest {
    private static final int MAX_USBFS_BUFFER_SIZE = 16384;
    private static final String TAG = "UsbRequest";
    private ByteBuffer mBuffer;
    private Object mClientData;
    private UsbDeviceConnection mConnection;
    private UsbEndpoint mEndpoint;
    private boolean mIsUsingNewQueue;
    private int mLength;
    private long mNativeContext;
    private ByteBuffer mTempBuffer;
    private final CloseGuard mCloseGuard = CloseGuard.get();
    private final Object mLock = new Object();

    private native boolean native_cancel();

    private native void native_close();

    private native int native_dequeue_array(byte[] bArr, int i2, boolean z2);

    private native int native_dequeue_direct();

    private native boolean native_init(UsbDeviceConnection usbDeviceConnection, int i2, int i3, int i4, int i5);

    private native boolean native_queue(ByteBuffer byteBuffer, int i2, int i3);

    private native boolean native_queue_array(byte[] bArr, int i2, boolean z2);

    private native boolean native_queue_direct(ByteBuffer byteBuffer, int i2, boolean z2);

    public boolean cancel() {
        return native_cancel();
    }

    public void close() {
        if (this.mNativeContext != 0) {
            this.mEndpoint = null;
            this.mConnection = null;
            native_close();
            this.mCloseGuard.close();
        }
    }

    public void dequeue(boolean z2) {
        boolean z3 = this.mEndpoint.getDirection() == 0;
        synchronized (this.mLock) {
            if (this.mIsUsingNewQueue) {
                int iNative_dequeue_direct = native_dequeue_direct();
                this.mIsUsingNewQueue = false;
                ByteBuffer byteBuffer = this.mBuffer;
                if (byteBuffer != null) {
                    ByteBuffer byteBuffer2 = this.mTempBuffer;
                    if (byteBuffer2 == null) {
                        byteBuffer.position(byteBuffer.position() + iNative_dequeue_direct);
                    } else {
                        byteBuffer2.limit(iNative_dequeue_direct);
                        try {
                            if (z3) {
                                ByteBuffer byteBuffer3 = this.mBuffer;
                                byteBuffer3.position(byteBuffer3.position() + iNative_dequeue_direct);
                            } else {
                                this.mBuffer.put(this.mTempBuffer);
                            }
                            this.mTempBuffer = null;
                        } catch (Throwable th) {
                            this.mTempBuffer = null;
                            throw th;
                        }
                    }
                }
                this.mBuffer = null;
                this.mLength = 0;
            } else {
                int iNative_dequeue_direct2 = this.mBuffer.isDirect() ? native_dequeue_direct() : native_dequeue_array(this.mBuffer.array(), this.mLength, z3);
                if (iNative_dequeue_direct2 >= 0) {
                    int iMin = Math.min(iNative_dequeue_direct2, this.mLength);
                    try {
                        this.mBuffer.position(iMin);
                    } catch (IllegalArgumentException e2) {
                        if (!z2) {
                            throw e2;
                        }
                        Log.e(TAG, "Buffer " + this.mBuffer + " does not have enough space to read " + iMin + " bytes", e2);
                        throw new BufferOverflowException();
                    }
                }
                this.mBuffer = null;
                this.mLength = 0;
            }
        }
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.mCloseGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            close();
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
        this.mConnection = (UsbDeviceConnection) Preconditions.checkNotNull(usbDeviceConnection, "connection");
        boolean zNative_init = native_init(usbDeviceConnection, usbEndpoint.getAddress(), usbEndpoint.getAttributes(), usbEndpoint.getMaxPacketSize(), usbEndpoint.getInterval());
        if (zNative_init) {
            this.mCloseGuard.open("close");
        }
        return zNative_init;
    }

    @Deprecated
    public boolean queue(ByteBuffer byteBuffer, int i2) {
        boolean zNative_queue_array;
        boolean z2 = this.mEndpoint.getDirection() == 0;
        synchronized (this.mLock) {
            this.mBuffer = byteBuffer;
            this.mLength = i2;
            if (byteBuffer.isDirect()) {
                zNative_queue_array = native_queue_direct(byteBuffer, i2, z2);
            } else {
                if (!byteBuffer.hasArray()) {
                    throw new IllegalArgumentException("buffer is not direct and has no array");
                }
                zNative_queue_array = native_queue_array(byteBuffer.array(), i2, z2);
            }
            if (!zNative_queue_array) {
                this.mBuffer = null;
                this.mLength = 0;
            }
        }
        return zNative_queue_array;
    }

    public void setClientData(Object obj) {
        this.mClientData = obj;
    }

    public boolean queue(ByteBuffer byteBuffer) {
        boolean zNative_queue;
        Preconditions.checkState(this.mNativeContext != 0, "request is not initialized");
        Preconditions.checkState(!this.mIsUsingNewQueue, "this request is currently queued");
        boolean z2 = this.mEndpoint.getDirection() == 0;
        synchronized (this.mLock) {
            this.mBuffer = byteBuffer;
            if (byteBuffer == null) {
                this.mIsUsingNewQueue = true;
                zNative_queue = native_queue(null, 0, 0);
            } else {
                Preconditions.checkArgumentInRange(byteBuffer.remaining(), 0, 16384, "number of remaining bytes");
                Preconditions.checkArgument(!byteBuffer.isReadOnly() || z2, "buffer can not be read-only when receiving data");
                if (!byteBuffer.isDirect()) {
                    this.mTempBuffer = ByteBuffer.allocateDirect(this.mBuffer.remaining());
                    if (z2) {
                        this.mBuffer.mark();
                        this.mTempBuffer.put(this.mBuffer);
                        this.mTempBuffer.flip();
                        this.mBuffer.reset();
                    }
                    byteBuffer = this.mTempBuffer;
                }
                this.mIsUsingNewQueue = true;
                zNative_queue = native_queue(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
            }
        }
        if (!zNative_queue) {
            this.mIsUsingNewQueue = false;
            this.mTempBuffer = null;
            this.mBuffer = null;
        }
        return zNative_queue;
    }
}
