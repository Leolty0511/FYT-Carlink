package android.bluetooth;

import android.content.Context;
import android.net.ProxyProperties;
import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothDevice implements Parcelable {
    public static final String ACTION_ACL_CONNECTED = "android.bluetooth.device.action.ACL_CONNECTED";
    public static final String ACTION_ACL_DISCONNECTED = "android.bluetooth.device.action.ACL_DISCONNECTED";
    public static final String ACTION_ACL_DISCONNECT_REQUESTED = "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED";
    public static final String ACTION_ALIAS_CHANGED = "android.bluetooth.device.action.ALIAS_CHANGED";
    public static final String ACTION_BOND_STATE_CHANGED = "android.bluetooth.device.action.BOND_STATE_CHANGED";
    public static final String ACTION_CLASS_CHANGED = "android.bluetooth.device.action.CLASS_CHANGED";
    public static final String ACTION_CONNECTION_ACCESS_CANCEL = "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL";
    public static final String ACTION_CONNECTION_ACCESS_REPLY = "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY";
    public static final String ACTION_CONNECTION_ACCESS_REQUEST = "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST";
    public static final String ACTION_DISAPPEARED = "android.bluetooth.device.action.DISAPPEARED";
    public static final String ACTION_FOUND = "android.bluetooth.device.action.FOUND";
    public static final String ACTION_NAME_CHANGED = "android.bluetooth.device.action.NAME_CHANGED";
    public static final String ACTION_NAME_FAILED = "android.bluetooth.device.action.NAME_FAILED";
    public static final String ACTION_PAIRING_CANCEL = "android.bluetooth.device.action.PAIRING_CANCEL";
    public static final String ACTION_PAIRING_REQUEST = "android.bluetooth.device.action.PAIRING_REQUEST";
    public static final String ACTION_UUID = "android.bluetooth.device.action.UUID";
    public static final int BOND_BONDED = 12;
    public static final int BOND_BONDING = 11;
    public static final int BOND_NONE = 10;
    public static final int BOND_SUCCESS = 0;
    public static final int CONNECTION_ACCESS_NO = 2;
    public static final int CONNECTION_ACCESS_YES = 1;
    private static final boolean DBG = false;
    public static final int DEVICE_TYPE_CLASSIC = 1;
    public static final int DEVICE_TYPE_DUAL = 3;
    public static final int DEVICE_TYPE_LE = 2;
    public static final int DEVICE_TYPE_UNKNOWN = 0;
    public static final int ERROR = Integer.MIN_VALUE;
    public static final String EXTRA_ACCESS_REQUEST_TYPE = "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE";
    public static final String EXTRA_ALWAYS_ALLOWED = "android.bluetooth.device.extra.ALWAYS_ALLOWED";
    public static final String EXTRA_BOND_STATE = "android.bluetooth.device.extra.BOND_STATE";
    public static final String EXTRA_CLASS = "android.bluetooth.device.extra.CLASS";
    public static final String EXTRA_CLASS_NAME = "android.bluetooth.device.extra.CLASS_NAME";
    public static final String EXTRA_CONNECTION_ACCESS_RESULT = "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT";
    public static final String EXTRA_DEVICE = "android.bluetooth.device.extra.DEVICE";
    public static final String EXTRA_NAME = "android.bluetooth.device.extra.NAME";
    public static final String EXTRA_PACKAGE_NAME = "android.bluetooth.device.extra.PACKAGE_NAME";
    public static final String EXTRA_PAIRING_KEY = "android.bluetooth.device.extra.PAIRING_KEY";
    public static final String EXTRA_PAIRING_VARIANT = "android.bluetooth.device.extra.PAIRING_VARIANT";
    public static final String EXTRA_PREVIOUS_BOND_STATE = "android.bluetooth.device.extra.PREVIOUS_BOND_STATE";
    public static final String EXTRA_REASON = "android.bluetooth.device.extra.REASON";
    public static final String EXTRA_RSSI = "android.bluetooth.device.extra.RSSI";
    public static final String EXTRA_UUID = "android.bluetooth.device.extra.UUID";
    public static final int PAIRING_VARIANT_CONSENT = 3;
    public static final int PAIRING_VARIANT_DISPLAY_PASSKEY = 4;
    public static final int PAIRING_VARIANT_DISPLAY_PIN = 5;
    public static final int PAIRING_VARIANT_OOB_CONSENT = 6;
    public static final int PAIRING_VARIANT_PASSKEY = 1;
    public static final int PAIRING_VARIANT_PASSKEY_CONFIRMATION = 2;
    public static final int PAIRING_VARIANT_PIN = 0;
    public static final int REQUEST_TYPE_MESSAGE_ACCESS = 3;
    public static final int REQUEST_TYPE_PHONEBOOK_ACCESS = 2;
    public static final int REQUEST_TYPE_PROFILE_CONNECTION = 1;
    private static final String TAG = "BluetoothDevice";
    public static final int UNBOND_REASON_AUTH_CANCELED = 3;
    public static final int UNBOND_REASON_AUTH_FAILED = 1;
    public static final int UNBOND_REASON_AUTH_REJECTED = 2;
    public static final int UNBOND_REASON_AUTH_TIMEOUT = 6;
    public static final int UNBOND_REASON_DISCOVERY_IN_PROGRESS = 5;
    public static final int UNBOND_REASON_REMOTE_AUTH_CANCELED = 8;
    public static final int UNBOND_REASON_REMOTE_DEVICE_DOWN = 4;
    public static final int UNBOND_REASON_REMOVED = 9;
    public static final int UNBOND_REASON_REPEATED_ATTEMPTS = 7;
    private static IBluetooth sService;
    private final String mAddress;
    public static IBluetoothManagerCallback mStateChangeCallback = new IBluetoothManagerCallback.Stub() { // from class: android.bluetooth.BluetoothDevice.1
        @Override // android.bluetooth.IBluetoothManagerCallback
        public void onBluetoothServiceDown() {
            synchronized (BluetoothDevice.class) {
                IBluetooth unused = BluetoothDevice.sService = null;
            }
        }

        @Override // android.bluetooth.IBluetoothManagerCallback
        public void onBluetoothServiceUp(IBluetooth iBluetooth) {
            synchronized (BluetoothDevice.class) {
                IBluetooth unused = BluetoothDevice.sService = iBluetooth;
            }
        }
    };
    public static final Parcelable.Creator<BluetoothDevice> CREATOR = new Parcelable.Creator<BluetoothDevice>() { // from class: android.bluetooth.BluetoothDevice.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothDevice createFromParcel(Parcel parcel) {
            return new BluetoothDevice(parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothDevice[] newArray(int i2) {
            return new BluetoothDevice[i2];
        }
    };

    public BluetoothDevice(String str) {
        getService();
        if (BluetoothAdapter.checkBluetoothAddress(str)) {
            this.mAddress = str;
            return;
        }
        throw new IllegalArgumentException(str + " is not a valid Bluetooth address");
    }

    public static byte[] convertPinToBytes(String str) {
        if (str == null) {
            return null;
        }
        try {
            byte[] bytes = str.getBytes("UTF-8");
            if (bytes.length <= 0 || bytes.length > 16) {
                return null;
            }
            return bytes;
        } catch (UnsupportedEncodingException unused) {
            Log.e(TAG, "UTF-8 not supported?!?");
            return null;
        }
    }

    public static IBluetooth getService() {
        synchronized (BluetoothDevice.class) {
            if (sService == null) {
                sService = BluetoothAdapter.getDefaultAdapter().getBluetoothService(mStateChangeCallback);
            }
        }
        return sService;
    }

    public boolean cancelBondProcess() {
        IBluetooth iBluetooth = sService;
        if (iBluetooth == null) {
            Log.e(TAG, "BT not enabled. Cannot cancel Remote Device bond");
            return false;
        }
        try {
            return iBluetooth.cancelBondProcess(this);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean cancelPairingUserInput() {
        IBluetooth iBluetooth = sService;
        if (iBluetooth == null) {
            Log.e(TAG, "BT not enabled. Cannot create pairing user input");
            return false;
        }
        try {
            return iBluetooth.cancelBondProcess(this);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public BluetoothGatt connectGatt(Context context, boolean z2, BluetoothGattCallback bluetoothGattCallback) {
        try {
            IBluetoothGatt bluetoothGatt = BluetoothAdapter.getDefaultAdapter().getBluetoothManager().getBluetoothGatt();
            if (bluetoothGatt == null) {
                return null;
            }
            BluetoothGatt bluetoothGatt2 = new BluetoothGatt(context, bluetoothGatt, this);
            bluetoothGatt2.connect(Boolean.valueOf(z2), bluetoothGattCallback);
            return bluetoothGatt2;
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return null;
        }
    }

    public boolean createBond() {
        IBluetooth iBluetooth = sService;
        if (iBluetooth == null) {
            Log.e(TAG, "BT not enabled. Cannot create bond to Remote Device");
            return false;
        }
        try {
            return iBluetooth.createBond(this);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean createBondOutOfBand(byte[] bArr, byte[] bArr2) {
        return false;
    }

    public BluetoothSocket createInsecureRfcommSocket(int i2) {
        return new BluetoothSocket(1, -1, false, false, this, i2, null);
    }

    public BluetoothSocket createInsecureRfcommSocketToServiceRecord(UUID uuid) {
        return new BluetoothSocket(1, -1, false, false, this, -1, new ParcelUuid(uuid));
    }

    public BluetoothSocket createRfcommSocket(int i2) {
        return new BluetoothSocket(1, -1, true, true, this, i2, null);
    }

    public BluetoothSocket createRfcommSocketToServiceRecord(UUID uuid) {
        return new BluetoothSocket(1, -1, true, true, this, -1, new ParcelUuid(uuid));
    }

    public BluetoothSocket createScoSocket() {
        return new BluetoothSocket(2, -1, true, true, this, -1, null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof BluetoothDevice) {
            return this.mAddress.equals(((BluetoothDevice) obj).getAddress());
        }
        return false;
    }

    public boolean fetchUuidsWithSdp() {
        try {
            return sService.fetchRemoteUuids(this);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public String getAddress() {
        return this.mAddress;
    }

    public String getAlias() {
        IBluetooth iBluetooth = sService;
        if (iBluetooth == null) {
            Log.e(TAG, "BT not enabled. Cannot get Remote Device Alias");
            return null;
        }
        try {
            return iBluetooth.getRemoteAlias(this);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return null;
        }
    }

    public String getAliasName() {
        String alias = getAlias();
        return alias == null ? getName() : alias;
    }

    public BluetoothClass getBluetoothClass() {
        IBluetooth iBluetooth = sService;
        if (iBluetooth == null) {
            Log.e(TAG, "BT not enabled. Cannot get Bluetooth Class");
            return null;
        }
        try {
            int remoteClass = iBluetooth.getRemoteClass(this);
            if (remoteClass == -16777216) {
                return null;
            }
            return new BluetoothClass(remoteClass);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return null;
        }
    }

    public int getBondState() {
        IBluetooth iBluetooth = sService;
        if (iBluetooth == null) {
            Log.e(TAG, "BT not enabled. Cannot get bond state");
            return 10;
        }
        try {
            return iBluetooth.getBondState(this);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return 10;
        } catch (NullPointerException e3) {
            Log.e(TAG, "NullPointerException for getBondState() of device (" + getAddress() + ")", e3);
            return 10;
        }
    }

    public String getName() {
        IBluetooth iBluetooth = sService;
        if (iBluetooth == null) {
            Log.e(TAG, "BT not enabled. Cannot get Remote Device name");
            return null;
        }
        try {
            return iBluetooth.getRemoteName(this);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return null;
        }
    }

    public int getServiceChannel(ParcelUuid parcelUuid) {
        return Integer.MIN_VALUE;
    }

    public boolean getTrustState() {
        return false;
    }

    public int getType() {
        IBluetooth iBluetooth = sService;
        if (iBluetooth == null) {
            Log.e(TAG, "BT not enabled. Cannot get Remote Device type");
            return 0;
        }
        try {
            return iBluetooth.getRemoteType(this);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return 0;
        }
    }

    public ParcelUuid[] getUuids() {
        IBluetooth iBluetooth = sService;
        if (iBluetooth == null) {
            Log.e(TAG, "BT not enabled. Cannot get remote device Uuids");
            return null;
        }
        try {
            return iBluetooth.getRemoteUuids(this);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return null;
        }
    }

    public int hashCode() {
        return this.mAddress.hashCode();
    }

    public boolean isBluetoothDock() {
        return false;
    }

    public boolean removeBond() {
        IBluetooth iBluetooth = sService;
        if (iBluetooth == null) {
            Log.e(TAG, "BT not enabled. Cannot remove Remote Device bond");
            return false;
        }
        try {
            return iBluetooth.removeBond(this);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean setAlias(String str) {
        IBluetooth iBluetooth = sService;
        if (iBluetooth == null) {
            Log.e(TAG, "BT not enabled. Cannot set Remote Device name");
            return false;
        }
        try {
            return iBluetooth.setRemoteAlias(this, str);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean setDeviceOutOfBandData(byte[] bArr, byte[] bArr2) {
        return false;
    }

    public boolean setPairingConfirmation(boolean z2) {
        IBluetooth iBluetooth = sService;
        if (iBluetooth == null) {
            Log.e(TAG, "BT not enabled. Cannot set pairing confirmation");
            return false;
        }
        try {
            return iBluetooth.setPairingConfirmation(this, z2);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean setPasskey(int i2) {
        return false;
    }

    public boolean setPin(byte[] bArr) {
        IBluetooth iBluetooth = sService;
        if (iBluetooth == null) {
            Log.e(TAG, "BT not enabled. Cannot set Remote Device pin");
            return false;
        }
        try {
            return iBluetooth.setPin(this, true, bArr.length, bArr);
        } catch (RemoteException e2) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
            return false;
        }
    }

    public boolean setRemoteOutOfBandData() {
        return false;
    }

    public boolean setTrust(boolean z2) {
        return false;
    }

    public String toString() {
        return this.mAddress;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mAddress);
    }
}
