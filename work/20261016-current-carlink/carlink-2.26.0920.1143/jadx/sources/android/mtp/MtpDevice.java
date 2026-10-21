package android.mtp;

import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.UserManager;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.Preconditions;
import dalvik.system.CloseGuard;

/* JADX INFO: loaded from: classes.dex */
public final class MtpDevice {
    private static final String TAG = "MtpDevice";

    @GuardedBy("mLock")
    private UsbDeviceConnection mConnection;
    private final UsbDevice mDevice;
    private long mNativeContext;

    @GuardedBy("mLock")
    private CloseGuard mCloseGuard = CloseGuard.get();
    private final Object mLock = new Object();

    static {
        System.loadLibrary("media_jni");
    }

    public MtpDevice(UsbDevice usbDevice) {
        Preconditions.checkNotNull(usbDevice);
        this.mDevice = usbDevice;
    }

    private native void native_close();

    private native boolean native_delete_object(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public native void native_discard_event_request(int i2);

    private native MtpDeviceInfo native_get_device_info();

    private native byte[] native_get_object(int i2, long j2);

    private native int[] native_get_object_handles(int i2, int i3, int i4);

    private native MtpObjectInfo native_get_object_info(int i2);

    private native long native_get_object_size_long(int i2, int i3);

    private native int native_get_parent(int i2);

    private native long native_get_partial_object(int i2, long j2, long j3, byte[] bArr);

    private native int native_get_partial_object_64(int i2, long j2, long j3, byte[] bArr);

    private native int native_get_storage_id(int i2);

    private native int[] native_get_storage_ids();

    private native MtpStorageInfo native_get_storage_info(int i2);

    private native byte[] native_get_thumbnail(int i2);

    private native boolean native_import_file(int i2, int i3);

    private native boolean native_import_file(int i2, String str);

    private native boolean native_open(String str, int i2);

    private native MtpEvent native_reap_event_request(int i2);

    private native boolean native_send_object(int i2, long j2, int i3);

    private native MtpObjectInfo native_send_object_info(MtpObjectInfo mtpObjectInfo);

    private native int native_submit_event_request();

    public void close() {
        synchronized (this.mLock) {
            if (this.mConnection != null) {
                this.mCloseGuard.close();
                native_close();
                this.mConnection.close();
                this.mConnection = null;
            }
        }
    }

    public boolean deleteObject(int i2) {
        return native_delete_object(i2);
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
        Preconditions.checkArgumentNonnegative(i3, "objectSize should not be negative");
        return native_get_object(i2, i3);
    }

    public int[] getObjectHandles(int i2, int i3, int i4) {
        return native_get_object_handles(i2, i3, i4);
    }

    public MtpObjectInfo getObjectInfo(int i2) {
        return native_get_object_info(i2);
    }

    public long getObjectSizeLong(int i2, int i3) {
        return native_get_object_size_long(i2, i3);
    }

    public long getParent(int i2) {
        return native_get_parent(i2);
    }

    public long getPartialObject(int i2, long j2, long j3, byte[] bArr) {
        return native_get_partial_object(i2, j2, j3, bArr);
    }

    public long getPartialObject64(int i2, long j2, long j3, byte[] bArr) {
        return native_get_partial_object_64(i2, j2, j3, bArr);
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

    /* JADX WARN: Code duplicated, block: B:10:0x002c  */
    public boolean open(UsbDeviceConnection usbDeviceConnection) {
        boolean zNative_open;
        Context context = usbDeviceConnection.getContext();
        synchronized (this.mLock) {
            if (context != null) {
                try {
                    if (((UserManager) context.getSystemService("user")).hasUserRestriction(UserManager.DISALLOW_USB_FILE_TRANSFER)) {
                        zNative_open = false;
                    } else {
                        zNative_open = native_open(this.mDevice.getDeviceName(), usbDeviceConnection.getFileDescriptor());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                zNative_open = false;
            }
            if (zNative_open) {
                this.mConnection = usbDeviceConnection;
                this.mCloseGuard.open("close");
            } else {
                usbDeviceConnection.close();
            }
        }
        return zNative_open;
    }

    public MtpEvent readEvent(CancellationSignal cancellationSignal) {
        final int iNative_submit_event_request = native_submit_event_request();
        Preconditions.checkState(iNative_submit_event_request >= 0, "Other thread is reading an event.");
        if (cancellationSignal != null) {
            cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: android.mtp.MtpDevice.1
                @Override // android.os.CancellationSignal.OnCancelListener
                public void onCancel() {
                    MtpDevice.this.native_discard_event_request(iNative_submit_event_request);
                }
            });
        }
        try {
            return native_reap_event_request(iNative_submit_event_request);
        } finally {
            if (cancellationSignal != null) {
                cancellationSignal.setOnCancelListener(null);
            }
        }
    }

    public boolean sendObject(int i2, long j2, ParcelFileDescriptor parcelFileDescriptor) {
        return native_send_object(i2, j2, parcelFileDescriptor.getFd());
    }

    public MtpObjectInfo sendObjectInfo(MtpObjectInfo mtpObjectInfo) {
        return native_send_object_info(mtpObjectInfo);
    }

    public String toString() {
        return this.mDevice.getDeviceName();
    }

    public boolean importFile(int i2, ParcelFileDescriptor parcelFileDescriptor) {
        return native_import_file(i2, parcelFileDescriptor.getFd());
    }
}
