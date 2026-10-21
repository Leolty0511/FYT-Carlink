package android.mtp;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;

/* JADX INFO: loaded from: classes.dex */
public final class MtpDevice {
    private static final String TAG = "MtpDevice";
    private final UsbDevice mDevice;
    private int mNativeContext;

    static {
        System.loadLibrary("media_jni");
    }

    public MtpDevice(UsbDevice usbDevice) {
        this.mDevice = usbDevice;
    }

    private native void native_close();

    private native boolean native_delete_object(int i2);

    private native MtpDeviceInfo native_get_device_info();

    private native byte[] native_get_object(int i2, int i3);

    private native int[] native_get_object_handles(int i2, int i3, int i4);

    private native MtpObjectInfo native_get_object_info(int i2);

    private native long native_get_parent(int i2);

    private native long native_get_storage_id(int i2);

    private native int[] native_get_storage_ids();

    private native MtpStorageInfo native_get_storage_info(int i2);

    private native byte[] native_get_thumbnail(int i2);

    private native boolean native_import_file(int i2, String str);

    private native boolean native_open(String str, int i2);

    public void close() {
        native_close();
    }

    public boolean deleteObject(int i2) {
        return native_delete_object(i2);
    }

    public void finalize() throws Throwable {
        try {
            native_close();
        } finally {
            super.finalize();
        }
    }

    public int getDeviceId() {
        return this.mDevice.getDeviceId();
    }

    public MtpDeviceInfo getDeviceInfo() {
        return native_get_device_info();
    }

    public String getDeviceName() {
        return this.mDevice.getDeviceName();
    }

    public byte[] getObject(int i2, int i3) {
        return native_get_object(i2, i3);
    }

    public int[] getObjectHandles(int i2, int i3, int i4) {
        return native_get_object_handles(i2, i3, i4);
    }

    public MtpObjectInfo getObjectInfo(int i2) {
        return native_get_object_info(i2);
    }

    public long getParent(int i2) {
        return native_get_parent(i2);
    }

    public long getStorageId(int i2) {
        return native_get_storage_id(i2);
    }

    public int[] getStorageIds() {
        return native_get_storage_ids();
    }

    public MtpStorageInfo getStorageInfo(int i2) {
        return native_get_storage_info(i2);
    }

    public byte[] getThumbnail(int i2) {
        return native_get_thumbnail(i2);
    }

    public boolean importFile(int i2, String str) {
        return native_import_file(i2, str);
    }

    public boolean open(UsbDeviceConnection usbDeviceConnection) {
        boolean zNative_open = native_open(this.mDevice.getDeviceName(), usbDeviceConnection.getFileDescriptor());
        if (!zNative_open) {
            usbDeviceConnection.close();
        }
        return zNative_open;
    }

    public String toString() {
        return this.mDevice.getDeviceName();
    }
}
