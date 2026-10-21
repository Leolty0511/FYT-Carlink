package com.google.android.projection.transport.usb;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.util.Log;
import com.google.android.projection.common.UsbInputReader;
import com.google.android.projection.protocol.Transport;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class UsbHostTransport extends Transport {
    private static final int SCRATCH_SIZE = 32768;
    private static final String TAG = "AHU.USB_HOST_CONNECTION";
    private static final int TIMEOUT_MILLIS = 6000;
    private final UsbDeviceConnection mAccessoryConnection;
    private final UsbInterface mAccessoryInterface;
    private final UsbEndpoint mBulkInEndpoint;
    private final UsbEndpoint mBulkOutEndpoint;
    private boolean mIsOpened;
    private final UsbInputReader mUsbInputReader;

    public UsbHostTransport(UsbManager usbManager, UsbDevice usbDevice) throws IOException {
        UsbDeviceConnection usbDeviceConnectionOpenDevice = usbManager.openDevice(usbDevice);
        this.mAccessoryConnection = usbDeviceConnectionOpenDevice;
        if (usbDeviceConnectionOpenDevice == null) {
            throw new IOException("connection failed to open");
        }
        if (usbDevice.getInterfaceCount() < 1) {
            throw new IOException("interface not available");
        }
        UsbInterface usbInterface = usbDevice.getInterface(0);
        this.mAccessoryInterface = usbInterface;
        if (usbInterface == null) {
            throw new IOException("interface not available");
        }
        if (!usbDeviceConnectionOpenDevice.claimInterface(usbInterface, true)) {
            throw new IOException("interface could not be claimed");
        }
        UsbEndpoint usbEndpoint = null;
        UsbEndpoint usbEndpoint2 = null;
        for (int i2 = 0; i2 < this.mAccessoryInterface.getEndpointCount(); i2++) {
            UsbEndpoint endpoint = this.mAccessoryInterface.getEndpoint(i2);
            if (endpoint.getType() == 2) {
                if (endpoint.getDirection() == 128) {
                    Log.d("AHU.USB_HOST_CONNECTION", String.format("Found bulk IN endpoint at %d", Integer.valueOf(i2)));
                    usbEndpoint = endpoint;
                } else if (endpoint.getDirection() == 0) {
                    Log.d("AHU.USB_HOST_CONNECTION", String.format("Found bulk OUT endpoint at %d", Integer.valueOf(i2)));
                    usbEndpoint2 = endpoint;
                }
            }
        }
        if (usbEndpoint == null) {
            throw new IOException("Could not find USB bulk in endpoint");
        }
        if (usbEndpoint2 == null) {
            throw new IOException("Could not find USB bulk out endpoint");
        }
        this.mBulkInEndpoint = usbEndpoint;
        this.mBulkOutEndpoint = usbEndpoint2;
        this.mUsbInputReader = new UsbInputReader(new UsbInputReader.RawUsbInputReader() { // from class: com.google.android.projection.transport.usb.UsbHostTransport.1
            @Override // com.google.android.projection.common.UsbInputReader.RawUsbInputReader
            public int read(byte[] bArr, int i3, int i4) throws IOException {
                if (!UsbHostTransport.this.mIsOpened) {
                    throw new IOException("USB device is closed");
                }
                try {
                    return UsbHostTransport.this.mAccessoryConnection.bulkTransfer(UsbHostTransport.this.mBulkInEndpoint, bArr, i3, i4, 6000);
                } catch (NullPointerException e2) {
                    throw new IOException(e2);
                }
            }
        }, 32768);
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
        this.mAccessoryConnection.releaseInterface(this.mAccessoryInterface);
        if (stopReason != Transport.StopReason.MD_BYEBYE) {
            try {
                this.mAccessoryConnection.getClass().getDeclaredMethod("resetDevice", new Class[0]).invoke(this.mAccessoryConnection, new Object[0]);
            } catch (Exception e2) {
                Log.w("AHU.USB_HOST_CONNECTION", "Unable to reset USB - restarting projection will not work", e2);
            }
        }
        this.mAccessoryConnection.close();
        this.mIsOpened = false;
    }

    @Override // com.google.android.projection.protocol.Transport
    public void write(byte[] bArr, int i2, int i3) throws IOException {
        if (!this.mIsOpened) {
            throw new IOException("Connection was closed.");
        }
        if (this.mAccessoryConnection.bulkTransfer(this.mBulkOutEndpoint, bArr, i2, i3, 6000) < 0) {
            throw new IOException("Bulk transfer failed.");
        }
    }
}
