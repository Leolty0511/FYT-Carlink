package com.google.android.projection.sink.transport.usb;

import android.accessibilityservice.c;
import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.util.Log;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class UsbHostSetup {
    private static final String ACCESSORY_DESCRIPTION = "Android Auto";
    private static final String ACCESSORY_MANUFACTURER_NAME = "Android";
    private static final String ACCESSORY_MODEL_NAME = "Android Auto";
    private static final int ACCESSORY_PRODUCT_ID0 = 11520;
    private static final int ACCESSORY_PRODUCT_ID1 = 11521;
    private static final String ACCESSORY_SERIAL_NUMBER = "0000000012345678";
    private static final String ACCESSORY_URI = "http://www.android.com/auto";
    private static final String ACCESSORY_VERSION = "1.0";
    private static final int AOAP_STR_DESCRIPTION = 2;
    private static final int AOAP_STR_MANUFACTURER_NAME = 0;
    private static final int AOAP_STR_MODEL_NAME = 1;
    private static final int AOAP_STR_SERIAL_NUMBER = 5;
    private static final int AOAP_STR_URI = 4;
    private static final int AOAP_STR_VERSION = 3;
    private static final String TAG = "AHU.USB_HOST_CONNECTION";
    private static final int USB_TIMEOUT_MS = 100000;
    private static final Set<Integer> VENDOR_IDS;

    static {
        HashSet hashSet = new HashSet();
        VENDOR_IDS = hashSet;
        hashSet.add(6353);
        hashSet.add(1256);
        hashSet.add(8888);
        hashSet.add(2996);
        hashSet.add(4100);
    }

    private UsbHostSetup() {
    }

    private static int getAccessoryProtocol(UsbDeviceConnection usbDeviceConnection) {
        byte[] bArr = new byte[2];
        if (usbDeviceConnection.controlTransfer(192, 51, 0, 0, bArr, 2, 100000) == 2) {
            return bArr[0] + (bArr[1] << 8);
        }
        return -1;
    }

    public static boolean processDevice(UsbDevice usbDevice, Context context) {
        boolean z2 = VENDOR_IDS.contains(Integer.valueOf(usbDevice.getVendorId())) && (usbDevice.getProductId() == ACCESSORY_PRODUCT_ID0 || usbDevice.getProductId() == ACCESSORY_PRODUCT_ID1);
        c.z("processDevice(), isAndroidAccessory = ", z2, "AHU.USB_HOST_CONNECTION");
        if (z2) {
            return true;
        }
        UsbInterface usbInterface = usbDevice.getInterface(0);
        UsbDeviceConnection usbDeviceConnectionOpenDevice = ((UsbManager) context.getSystemService(Context.USB_SERVICE)).openDevice(usbDevice);
        if (usbDeviceConnectionOpenDevice == null) {
            return false;
        }
        usbDeviceConnectionOpenDevice.claimInterface(usbInterface, true);
        switchAccessory(usbDeviceConnectionOpenDevice);
        return false;
    }

    private static int sendAccessoryControlTransfer(UsbDeviceConnection usbDeviceConnection, int i2, int i3, byte[] bArr) {
        return usbDeviceConnection.controlTransfer(64, i2, 0, i3, bArr, bArr == null ? 0 : bArr.length, 100000);
    }

    private static boolean sendAccessoryString(UsbDeviceConnection usbDeviceConnection, int i2, String str) {
        return sendAccessoryControlTransfer(usbDeviceConnection, 52, i2, str.getBytes()) == str.length();
    }

    private static boolean startAccessory(UsbDeviceConnection usbDeviceConnection) {
        return sendAccessoryControlTransfer(usbDeviceConnection, 53, 0, null) == 0;
    }

    private static boolean switchAccessory(UsbDeviceConnection usbDeviceConnection) {
        int accessoryProtocol = getAccessoryProtocol(usbDeviceConnection);
        if (accessoryProtocol <= 0) {
            Log.d("AHU.USB_HOST_CONNECTION", String.format("Incorrect accessory protocol %d", Integer.valueOf(accessoryProtocol)));
            return false;
        }
        if (!sendAccessoryString(usbDeviceConnection, 0, "Android")) {
            Log.d("AHU.USB_HOST_CONNECTION", "Unable to send manufacturer name");
            return false;
        }
        if (!sendAccessoryString(usbDeviceConnection, 1, "Android Auto")) {
            Log.d("AHU.USB_HOST_CONNECTION", "Unable to send model name");
            return false;
        }
        if (!sendAccessoryString(usbDeviceConnection, 2, "Android Auto")) {
            Log.d("AHU.USB_HOST_CONNECTION", "Unable to send description");
            return false;
        }
        if (!sendAccessoryString(usbDeviceConnection, 3, ACCESSORY_VERSION)) {
            Log.d("AHU.USB_HOST_CONNECTION", "Unable to send version");
            return false;
        }
        if (!sendAccessoryString(usbDeviceConnection, 4, ACCESSORY_URI)) {
            Log.d("AHU.USB_HOST_CONNECTION", "Unable to send URI");
            return false;
        }
        if (!sendAccessoryString(usbDeviceConnection, 5, ACCESSORY_SERIAL_NUMBER)) {
            Log.d("AHU.USB_HOST_CONNECTION", "Unable to send serial number");
            return false;
        }
        if (startAccessory(usbDeviceConnection)) {
            return true;
        }
        Log.d("AHU.USB_HOST_CONNECTION", "Unable to start accessory mode");
        return false;
    }
}
