package android.hardware.usb;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.ParcelFileDescriptor;
import com.android.internal.location.GpsNetInitiatedHandler;
import com.android.internal.util.Preconditions;
import dalvik.system.CloseGuard;
import java.io.FileDescriptor;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class UsbDeviceConnection {
    private static final String TAG = "UsbDeviceConnection";
    private final CloseGuard mCloseGuard = CloseGuard.get();
    private Context mContext;
    private final UsbDevice mDevice;
    private long mNativeContext;

    public UsbDeviceConnection(UsbDevice usbDevice) {
        this.mDevice = usbDevice;
    }

    private static void checkBounds(byte[] bArr, int i2, int i3) {
        int length = bArr != null ? bArr.length : 0;
        if (i3 < 0 || i2 < 0 || i2 + i3 > length) {
            throw new IllegalArgumentException("Buffer start or length out of bounds.");
        }
    }

    private native int native_bulk_request(int i2, byte[] bArr, int i3, int i4, int i5);

    private native boolean native_claim_interface(int i2, boolean z2);

    private native void native_close();

    private native int native_control_request(int i2, int i3, int i4, int i5, byte[] bArr, int i6, int i7, int i8);

    private native byte[] native_get_desc();

    private native int native_get_fd();

    private native String native_get_serial();

    private native boolean native_open(String str, FileDescriptor fileDescriptor);

    private native boolean native_release_interface(int i2);

    private native UsbRequest native_request_wait(long j2);

    private native boolean native_reset_device();

    private native boolean native_set_configuration(int i2);

    private native boolean native_set_interface(int i2, int i3);

    public int bulkTransfer(UsbEndpoint usbEndpoint, byte[] bArr, int i2, int i3) {
        return bulkTransfer(usbEndpoint, bArr, 0, i2, i3);
    }

    public boolean claimInterface(UsbInterface usbInterface, boolean z2) {
        return native_claim_interface(usbInterface.getId(), z2);
    }

    public void close() {
        if (this.mNativeContext != 0) {
            native_close();
            this.mCloseGuard.close();
        }
    }

    public int controlTransfer(int i2, int i3, int i4, int i5, byte[] bArr, int i6, int i7) {
        return controlTransfer(i2, i3, i4, i5, bArr, 0, i6, i7);
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.mCloseGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
        } finally {
            super.finalize();
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public int getFileDescriptor() {
        return native_get_fd();
    }

    public byte[] getRawDescriptors() {
        return native_get_desc();
    }

    public String getSerial() {
        return native_get_serial();
    }

    public boolean open(String str, ParcelFileDescriptor parcelFileDescriptor, Context context) {
        this.mContext = context.getApplicationContext();
        boolean zNative_open = native_open(str, parcelFileDescriptor.getFileDescriptor());
        if (zNative_open) {
            this.mCloseGuard.open("close");
        }
        return zNative_open;
    }

    public boolean releaseInterface(UsbInterface usbInterface) {
        return native_release_interface(usbInterface.getId());
    }

    public UsbRequest requestWait() {
        UsbRequest usbRequestNative_request_wait;
        try {
            usbRequestNative_request_wait = native_request_wait(-1L);
        } catch (TimeoutException unused) {
            usbRequestNative_request_wait = null;
        }
        if (usbRequestNative_request_wait != null) {
            usbRequestNative_request_wait.dequeue(this.mContext.getApplicationInfo().targetSdkVersion >= 26);
        }
        return usbRequestNative_request_wait;
    }

    @SuppressLint({"Doclava125"})
    public boolean resetDevice() {
        return native_reset_device();
    }

    public boolean setConfiguration(UsbConfiguration usbConfiguration) {
        return native_set_configuration(usbConfiguration.getId());
    }

    public boolean setInterface(UsbInterface usbInterface) {
        return native_set_interface(usbInterface.getId(), usbInterface.getAlternateSetting());
    }

    public int bulkTransfer(UsbEndpoint usbEndpoint, byte[] bArr, int i2, int i3, int i4) {
        checkBounds(bArr, i2, i3);
        return native_bulk_request(usbEndpoint.getAddress(), bArr, i2, i3, i4);
    }

    public int controlTransfer(int i2, int i3, int i4, int i5, byte[] bArr, int i6, int i7, int i8) {
        checkBounds(bArr, i6, i7);
        return native_control_request(i2, i3, i4, i5, bArr, i6, i7, i8);
    }

    public UsbRequest requestWait(long j2) {
        UsbRequest usbRequestNative_request_wait = native_request_wait(Preconditions.checkArgumentNonnegative(j2, GpsNetInitiatedHandler.NI_INTENT_KEY_TIMEOUT));
        if (usbRequestNative_request_wait != null) {
            usbRequestNative_request_wait.dequeue(true);
        }
        return usbRequestNative_request_wait;
    }
}
