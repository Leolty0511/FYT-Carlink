package android.hardware.usb;

import android.accessibilityservice.c;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import com.android.internal.util.Preconditions;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class UsbManager {
    public static final String ACTION_USB_ACCESSORY_ATTACHED = "android.hardware.usb.action.USB_ACCESSORY_ATTACHED";
    public static final String ACTION_USB_ACCESSORY_DETACHED = "android.hardware.usb.action.USB_ACCESSORY_DETACHED";
    public static final String ACTION_USB_DEVICE_ATTACHED = "android.hardware.usb.action.USB_DEVICE_ATTACHED";
    public static final String ACTION_USB_DEVICE_DETACHED = "android.hardware.usb.action.USB_DEVICE_DETACHED";
    public static final String ACTION_USB_PORT_CHANGED = "android.hardware.usb.action.USB_PORT_CHANGED";
    public static final String ACTION_USB_STATE = "android.hardware.usb.action.USB_STATE";
    public static final String EXTRA_ACCESSORY = "accessory";
    public static final String EXTRA_DEVICE = "device";
    public static final String EXTRA_PERMISSION_GRANTED = "permission";
    public static final String EXTRA_PORT = "port";
    public static final String EXTRA_PORT_STATUS = "portStatus";
    private static final String TAG = "UsbManager";
    public static final String USB_CONFIGURED = "configured";
    public static final String USB_CONFIG_CHANGED = "config_changed";
    public static final String USB_CONNECTED = "connected";
    public static final String USB_DATA_UNLOCKED = "unlocked";
    public static final String USB_FUNCTION_ACCESSORY = "accessory";
    public static final String USB_FUNCTION_ADB = "adb";
    public static final String USB_FUNCTION_AUDIO_SOURCE = "audio_source";
    public static final String USB_FUNCTION_MIDI = "midi";
    public static final String USB_FUNCTION_MTP = "mtp";
    public static final String USB_FUNCTION_NONE = "none";
    public static final String USB_FUNCTION_PTP = "ptp";
    public static final String USB_FUNCTION_RNDIS = "rndis";
    public static final String USB_HOST_CONNECTED = "host_connected";
    private final Context mContext;
    private final IUsbManager mService;

    public UsbManager(Context context, IUsbManager iUsbManager) {
        this.mContext = context;
        this.mService = iUsbManager;
    }

    public static String addFunction(String str, String str2) {
        if ("none".equals(str)) {
            return str2;
        }
        if (containsFunction(str, str2)) {
            return str;
        }
        if (str.length() > 0) {
            str = str.concat(",");
        }
        return c.D(str, str2);
    }

    public static boolean containsFunction(String str, String str2) {
        int iIndexOf = str.indexOf(str2);
        if (iIndexOf < 0) {
            return false;
        }
        if (iIndexOf > 0 && str.charAt(iIndexOf - 1) != ',') {
            return false;
        }
        int length = str2.length() + iIndexOf;
        return length >= str.length() || str.charAt(length) == ',';
    }

    public static String removeFunction(String str, String str2) {
        String[] strArrSplit = str.split(",");
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            if (str2.equals(strArrSplit[i2])) {
                strArrSplit[i2] = null;
            }
        }
        if (strArrSplit.length == 1 && strArrSplit[0] == null) {
            return "none";
        }
        StringBuilder sb = new StringBuilder();
        for (String str3 : strArrSplit) {
            if (str3 != null) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str3);
            }
        }
        return sb.toString();
    }

    public UsbAccessory[] getAccessoryList() {
        IUsbManager iUsbManager = this.mService;
        if (iUsbManager == null) {
            return null;
        }
        try {
            UsbAccessory currentAccessory = iUsbManager.getCurrentAccessory();
            if (currentAccessory == null) {
                return null;
            }
            return new UsbAccessory[]{currentAccessory};
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public HashMap<String, UsbDevice> getDeviceList() {
        HashMap<String, UsbDevice> map = new HashMap<>();
        if (this.mService == null) {
            return map;
        }
        Bundle bundle = new Bundle();
        try {
            this.mService.getDeviceList(bundle);
            for (String str : bundle.keySet()) {
                map.put(str, (UsbDevice) bundle.get(str));
            }
            return map;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public UsbPortStatus getPortStatus(UsbPort usbPort) {
        Preconditions.checkNotNull(usbPort, "port must not be null");
        try {
            return this.mService.getPortStatus(usbPort.getId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public UsbPort[] getPorts() {
        IUsbManager iUsbManager = this.mService;
        if (iUsbManager == null) {
            return null;
        }
        try {
            return iUsbManager.getPorts();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void grantPermission(UsbDevice usbDevice) {
        grantPermission(usbDevice, Process.myUid());
    }

    public boolean hasPermission(UsbDevice usbDevice) {
        IUsbManager iUsbManager = this.mService;
        if (iUsbManager == null) {
            return false;
        }
        try {
            return iUsbManager.hasDevicePermission(usbDevice);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isFunctionEnabled(String str) {
        IUsbManager iUsbManager = this.mService;
        if (iUsbManager == null) {
            return false;
        }
        try {
            return iUsbManager.isFunctionEnabled(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public ParcelFileDescriptor openAccessory(UsbAccessory usbAccessory) {
        try {
            return this.mService.openAccessory(usbAccessory);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public UsbDeviceConnection openDevice(UsbDevice usbDevice) {
        try {
            String deviceName = usbDevice.getDeviceName();
            ParcelFileDescriptor parcelFileDescriptorOpenDevice = this.mService.openDevice(deviceName);
            if (parcelFileDescriptorOpenDevice == null) {
                return null;
            }
            UsbDeviceConnection usbDeviceConnection = new UsbDeviceConnection(usbDevice);
            boolean zOpen = usbDeviceConnection.open(deviceName, parcelFileDescriptorOpenDevice, this.mContext);
            parcelFileDescriptorOpenDevice.close();
            if (zOpen) {
                return usbDeviceConnection;
            }
            return null;
        } catch (Exception e2) {
            Log.e(TAG, "exception in UsbManager.openDevice", e2);
            return null;
        }
    }

    public void requestPermission(UsbDevice usbDevice, PendingIntent pendingIntent) {
        try {
            this.mService.requestDevicePermission(usbDevice, this.mContext.getPackageName(), pendingIntent);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setCurrentFunction(String str, boolean z2) {
        try {
            this.mService.setCurrentFunction(str, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setPortRoles(UsbPort usbPort, int i2, int i3) {
        Preconditions.checkNotNull(usbPort, "port must not be null");
        UsbPort.checkRoles(i2, i3);
        Log.d(TAG, "setPortRoles Package:" + this.mContext.getPackageName());
        try {
            this.mService.setPortRoles(usbPort.getId(), i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setUsbDeviceConnectionHandler(ComponentName componentName) {
        try {
            this.mService.setUsbDeviceConnectionHandler(componentName);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void grantPermission(UsbDevice usbDevice, int i2) {
        try {
            this.mService.grantDevicePermission(usbDevice, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void requestPermission(UsbAccessory usbAccessory, PendingIntent pendingIntent) {
        try {
            this.mService.requestAccessoryPermission(usbAccessory, this.mContext.getPackageName(), pendingIntent);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void grantPermission(UsbDevice usbDevice, String str) {
        try {
            grantPermission(usbDevice, this.mContext.getPackageManager().getPackageUidAsUser(str, this.mContext.getUserId()));
        } catch (PackageManager.NameNotFoundException e2) {
            Log.e(TAG, "Package " + str + " not found.", e2);
        }
    }

    public boolean hasPermission(UsbAccessory usbAccessory) {
        IUsbManager iUsbManager = this.mService;
        if (iUsbManager == null) {
            return false;
        }
        try {
            return iUsbManager.hasAccessoryPermission(usbAccessory);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }
}
