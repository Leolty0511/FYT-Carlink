package android.companion;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.le.ScanFilter;
import android.net.wifi.ScanResult;
import android.os.ParcelUuid;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class BluetoothDeviceFilterUtils {
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = "BluetoothDeviceFilterUtils";

    private BluetoothDeviceFilterUtils() {
    }

    private static void debugLogMatchResult(boolean z2, BluetoothDevice bluetoothDevice, Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append(getDeviceDisplayNameInternal(bluetoothDevice));
        sb.append(z2 ? " ~ " : " !~ ");
        sb.append(obj);
        Log.i(LOG_TAG, sb.toString());
    }

    public static String getDeviceDisplayNameInternal(BluetoothDevice bluetoothDevice) {
        return TextUtils.firstNotEmpty(bluetoothDevice.getAliasName(), bluetoothDevice.getAddress());
    }

    public static String getDeviceMacAddress(Parcelable parcelable) {
        if (parcelable instanceof BluetoothDevice) {
            return ((BluetoothDevice) parcelable).getAddress();
        }
        if (parcelable instanceof ScanResult) {
            return ((ScanResult) parcelable).BSSID;
        }
        if (parcelable instanceof android.bluetooth.le.ScanResult) {
            return getDeviceMacAddress(((android.bluetooth.le.ScanResult) parcelable).getDevice());
        }
        throw new IllegalArgumentException("Unknown device type: " + parcelable);
    }

    public static boolean matches(ScanFilter scanFilter, BluetoothDevice bluetoothDevice) {
        return matchesAddress(scanFilter.getDeviceAddress(), bluetoothDevice) && matchesServiceUuid(scanFilter.getServiceUuid(), scanFilter.getServiceUuidMask(), bluetoothDevice);
    }

    public static boolean matchesAddress(String str, BluetoothDevice bluetoothDevice) {
        return str == null || (bluetoothDevice != null && str.equals(bluetoothDevice.getAddress()));
    }

    public static boolean matchesName(Pattern pattern, BluetoothDevice bluetoothDevice) {
        String name;
        if (pattern == null) {
            return true;
        }
        return (bluetoothDevice == null || (name = bluetoothDevice.getName()) == null || !pattern.matcher(name).find()) ? false : true;
    }

    public static boolean matchesServiceUuid(ParcelUuid parcelUuid, ParcelUuid parcelUuid2, BluetoothDevice bluetoothDevice) {
        return parcelUuid == null || ScanFilter.matchesServiceUuids(parcelUuid, parcelUuid2, Arrays.asList(bluetoothDevice.getUuids()));
    }

    public static boolean matchesServiceUuids(List<ParcelUuid> list, List<ParcelUuid> list2, BluetoothDevice bluetoothDevice) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (!matchesServiceUuid(list.get(i2), list2.get(i2), bluetoothDevice)) {
                return false;
            }
        }
        return true;
    }

    public static Pattern patternFromString(String str) {
        if (str == null) {
            return null;
        }
        return Pattern.compile(str);
    }

    public static String patternToString(Pattern pattern) {
        if (pattern == null) {
            return null;
        }
        return pattern.pattern();
    }

    private static void debugLogMatchResult(boolean z2, ScanResult scanResult, Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append(getDeviceDisplayNameInternal(scanResult));
        sb.append(z2 ? " ~ " : " !~ ");
        sb.append(obj);
        Log.i(LOG_TAG, sb.toString());
    }

    public static String getDeviceDisplayNameInternal(ScanResult scanResult) {
        return TextUtils.firstNotEmpty(scanResult.SSID, scanResult.BSSID);
    }

    public static boolean matchesName(Pattern pattern, ScanResult scanResult) {
        String str;
        if (pattern == null) {
            return true;
        }
        return (scanResult == null || (str = scanResult.SSID) == null || !pattern.matcher(str).find()) ? false : true;
    }
}
