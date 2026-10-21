package android.bluetooth;

import android.accessibilityservice.c;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothAvrcpPlayerSettings implements Parcelable {
    public static final Parcelable.Creator<BluetoothAvrcpPlayerSettings> CREATOR = new Parcelable.Creator<BluetoothAvrcpPlayerSettings>() { // from class: android.bluetooth.BluetoothAvrcpPlayerSettings.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothAvrcpPlayerSettings createFromParcel(Parcel parcel) {
            return new BluetoothAvrcpPlayerSettings(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothAvrcpPlayerSettings[] newArray(int i2) {
            return new BluetoothAvrcpPlayerSettings[i2];
        }
    };
    public static final int SETTING_EQUALIZER = 1;
    public static final int SETTING_REPEAT = 2;
    public static final int SETTING_SCAN = 8;
    public static final int SETTING_SHUFFLE = 4;
    public static final int STATE_ALL_TRACK = 3;
    public static final int STATE_GROUP = 4;
    public static final int STATE_INVALID = -1;
    public static final int STATE_OFF = 0;
    public static final int STATE_ON = 1;
    public static final int STATE_SINGLE_TRACK = 2;
    public static final String TAG = "BluetoothAvrcpPlayerSettings";
    private int mSettings;
    private Map<Integer, Integer> mSettingsValue;

    public void addSettingValue(int i2, int i3) {
        if ((this.mSettings & i2) != 0) {
            this.mSettingsValue.put(Integer.valueOf(i2), Integer.valueOf(i3));
            return;
        }
        StringBuilder sbS = c.s("Setting not supported: ", i2, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        sbS.append(this.mSettings);
        Log.e(TAG, sbS.toString());
        throw new IllegalStateException(c.d("Setting not supported: ", i2));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getSettingValue(int i2) {
        if ((this.mSettings & i2) != 0) {
            Integer num = this.mSettingsValue.get(Integer.valueOf(i2));
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }
        StringBuilder sbS = c.s("Setting not supported: ", i2, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        sbS.append(this.mSettings);
        Log.e(TAG, sbS.toString());
        throw new IllegalStateException(c.d("Setting not supported: ", i2));
    }

    public int getSettings() {
        return this.mSettings;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mSettings);
        parcel.writeInt(this.mSettingsValue.size());
        Iterator<Integer> it = this.mSettingsValue.keySet().iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            parcel.writeInt(iIntValue);
            parcel.writeInt(this.mSettingsValue.get(Integer.valueOf(iIntValue)).intValue());
        }
    }

    private BluetoothAvrcpPlayerSettings(Parcel parcel) {
        this.mSettingsValue = new HashMap();
        this.mSettings = parcel.readInt();
        int i2 = parcel.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            this.mSettingsValue.put(Integer.valueOf(parcel.readInt()), Integer.valueOf(parcel.readInt()));
        }
    }

    public BluetoothAvrcpPlayerSettings(int i2) {
        this.mSettingsValue = new HashMap();
        this.mSettings = i2;
    }
}
