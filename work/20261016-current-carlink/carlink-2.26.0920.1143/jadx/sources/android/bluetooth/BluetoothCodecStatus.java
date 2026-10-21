package android.bluetooth;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothCodecStatus implements Parcelable {
    public static final Parcelable.Creator<BluetoothCodecStatus> CREATOR = new Parcelable.Creator<BluetoothCodecStatus>() { // from class: android.bluetooth.BluetoothCodecStatus.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothCodecStatus createFromParcel(Parcel parcel) {
            Parcelable.Creator<BluetoothCodecConfig> creator = BluetoothCodecConfig.CREATOR;
            return new BluetoothCodecStatus((BluetoothCodecConfig) parcel.readTypedObject(creator), (BluetoothCodecConfig[]) parcel.createTypedArray(creator), (BluetoothCodecConfig[]) parcel.createTypedArray(creator));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothCodecStatus[] newArray(int i2) {
            return new BluetoothCodecStatus[i2];
        }
    };
    public static final String EXTRA_CODEC_STATUS = "android.bluetooth.codec.extra.CODEC_STATUS";
    private final BluetoothCodecConfig mCodecConfig;
    private final BluetoothCodecConfig[] mCodecsLocalCapabilities;
    private final BluetoothCodecConfig[] mCodecsSelectableCapabilities;

    public BluetoothCodecStatus(BluetoothCodecConfig bluetoothCodecConfig, BluetoothCodecConfig[] bluetoothCodecConfigArr, BluetoothCodecConfig[] bluetoothCodecConfigArr2) {
        this.mCodecConfig = bluetoothCodecConfig;
        this.mCodecsLocalCapabilities = bluetoothCodecConfigArr;
        this.mCodecsSelectableCapabilities = bluetoothCodecConfigArr2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BluetoothCodecStatus)) {
            return false;
        }
        BluetoothCodecStatus bluetoothCodecStatus = (BluetoothCodecStatus) obj;
        return Objects.equals(bluetoothCodecStatus.mCodecConfig, this.mCodecConfig) && Objects.equals(bluetoothCodecStatus.mCodecsLocalCapabilities, this.mCodecsLocalCapabilities) && Objects.equals(bluetoothCodecStatus.mCodecsSelectableCapabilities, this.mCodecsSelectableCapabilities);
    }

    public BluetoothCodecConfig getCodecConfig() {
        return this.mCodecConfig;
    }

    public BluetoothCodecConfig[] getCodecsLocalCapabilities() {
        return this.mCodecsLocalCapabilities;
    }

    public BluetoothCodecConfig[] getCodecsSelectableCapabilities() {
        return this.mCodecsSelectableCapabilities;
    }

    public int hashCode() {
        BluetoothCodecConfig[] bluetoothCodecConfigArr = this.mCodecsLocalCapabilities;
        return Objects.hash(this.mCodecConfig, bluetoothCodecConfigArr, bluetoothCodecConfigArr);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{mCodecConfig:");
        sb.append(this.mCodecConfig);
        sb.append(",mCodecsLocalCapabilities:");
        sb.append(Arrays.toString(this.mCodecsLocalCapabilities));
        sb.append(",mCodecsSelectableCapabilities:");
        return c.n(sb, Arrays.toString(this.mCodecsSelectableCapabilities), "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeTypedObject(this.mCodecConfig, 0);
        parcel.writeTypedArray(this.mCodecsLocalCapabilities, 0);
        parcel.writeTypedArray(this.mCodecsSelectableCapabilities, 0);
    }
}
