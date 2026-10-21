package com.google.android.projection.transport.usb;

import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbManager;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.google.android.projection.common.UsbInputReader;
import com.google.android.projection.protocol.Transport;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public class UsbAccessoryTransport extends Transport {
    private static final String TAG = "AHU.USB_ACC_CONNECTION";
    private static final int USB_ACCESSORY_BUFFER_SIZE = 16384;
    private final InputStream mInputStream;
    private boolean mIsOpened;
    private final OutputStream mOutputStream;
    private final ParcelFileDescriptor mParcelAccessoryFd;
    private final UsbInputReader mUsbInputReader;

    public UsbAccessoryTransport(UsbManager usbManager, UsbAccessory usbAccessory) throws IOException {
        ParcelFileDescriptor parcelFileDescriptorOpenAccessory = usbManager.openAccessory(usbAccessory);
        this.mParcelAccessoryFd = parcelFileDescriptorOpenAccessory;
        if (parcelFileDescriptorOpenAccessory == null) {
            throw new IOException("Unable to open USB accessory");
        }
        FileDescriptor fileDescriptor = parcelFileDescriptorOpenAccessory.getFileDescriptor();
        this.mOutputStream = new FileOutputStream(fileDescriptor);
        this.mInputStream = new FileInputStream(fileDescriptor);
        this.mUsbInputReader = new UsbInputReader(new UsbInputReader.RawUsbInputReader() { // from class: com.google.android.projection.transport.usb.UsbAccessoryTransport.1
            @Override // com.google.android.projection.common.UsbInputReader.RawUsbInputReader
            public int read(byte[] bArr, int i2, int i3) {
                return UsbAccessoryTransport.this.mInputStream.read(bArr, i2, i3);
            }
        }, 16384);
        this.mIsOpened = true;
    }

    @Override // com.google.android.projection.protocol.Transport
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        if (this.mIsOpened) {
            return this.mUsbInputReader.read(bArr, i2, i3);
        }
        throw new IOException("Connection was closed.");
    }

    @Override // com.google.android.projection.protocol.Transport
    public void stopTransport(Transport.StopReason stopReason) {
        try {
            this.mInputStream.close();
            this.mOutputStream.close();
            this.mParcelAccessoryFd.close();
        } catch (IOException e2) {
            Log.d("AHU.USB_ACC_CONNECTION", "Can't close USB accessory: " + e2);
        }
        this.mIsOpened = false;
    }

    @Override // com.google.android.projection.protocol.Transport
    public void write(byte[] bArr, int i2, int i3) throws IOException {
        if (!this.mIsOpened) {
            throw new IOException("Connection was closed.");
        }
        this.mOutputStream.write(bArr, i2, i3);
    }
}
