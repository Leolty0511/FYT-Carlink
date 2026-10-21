package android.hardware.usb;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class UsbPort implements Parcelable {
    public static final Parcelable.Creator<UsbPort> CREATOR = new Parcelable.Creator<UsbPort>() { // from class: android.hardware.usb.UsbPort.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsbPort createFromParcel(Parcel parcel) {
            return new UsbPort(parcel.readString(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsbPort[] newArray(int i2) {
            return new UsbPort[i2];
        }
    };
    public static final int DATA_ROLE_DEVICE = 2;
    public static final int DATA_ROLE_HOST = 1;
    public static final int DATA_ROLE_NONE = 0;
    public static final int MODE_AUDIO_ACCESSORY = 4;
    public static final int MODE_DEBUG_ACCESSORY = 8;
    public static final int MODE_DFP = 2;
    public static final int MODE_DUAL = 3;
    public static final int MODE_NONE = 0;
    public static final int MODE_UFP = 1;
    private static final int NUM_DATA_ROLES = 3;
    public static final int POWER_ROLE_NONE = 0;
    private static final int POWER_ROLE_OFFSET = 0;
    public static final int POWER_ROLE_SINK = 2;
    public static final int POWER_ROLE_SOURCE = 1;
    private final String mId;
    private final int mSupportedModes;

    public UsbPort(String str, int i2) {
        this.mId = str;
        this.mSupportedModes = i2;
    }

    public static void checkDataRole(int i2) {
        Preconditions.checkArgumentInRange(i2, 0, 2, "powerRole");
    }

    public static void checkMode(int i2) {
        Preconditions.checkArgumentInRange(i2, 0, 3, "portMode");
    }

    public static void checkPowerRole(int i2) {
        Preconditions.checkArgumentInRange(i2, 0, 2, "powerRole");
    }

    public static void checkRoles(int i2, int i3) {
        Preconditions.checkArgumentInRange(i2, 0, 2, "powerRole");
        Preconditions.checkArgumentInRange(i3, 0, 2, "dataRole");
    }

    public static int combineRolesAsBit(int i2, int i3) {
        checkRoles(i2, i3);
        return 1 << (((i2 + 0) * 3) + i3);
    }

    public static String dataRoleToString(int i2) {
        if (i2 == 0) {
            return "no-data";
        }
        if (i2 != 1) {
            return i2 != 2 ? Integer.toString(i2) : UsbManager.EXTRA_DEVICE;
        }
        return "host";
    }

    public static String modeToString(int i2) {
        StringBuilder sb = new StringBuilder();
        if (i2 == 0) {
            return "none";
        }
        if ((i2 & 3) == 3) {
            sb.append("dual, ");
        } else if ((i2 & 2) == 2) {
            sb.append("dfp, ");
        } else if ((i2 & 1) == 1) {
            sb.append("ufp, ");
        }
        if ((i2 & 4) == 4) {
            sb.append("audio_acc, ");
        }
        if ((i2 & 8) == 8) {
            sb.append("debug_acc, ");
        }
        return sb.length() == 0 ? Integer.toString(i2) : sb.substring(0, sb.length() - 2);
    }

    public static String powerRoleToString(int i2) {
        if (i2 == 0) {
            return "no-power";
        }
        if (i2 != 1) {
            return i2 != 2 ? Integer.toString(i2) : "sink";
        }
        return "source";
    }

    public static String roleCombinationsToString(int i2) {
        StringBuilder sb = new StringBuilder("[");
        boolean z2 = true;
        while (i2 != 0) {
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i2);
            i2 &= ~(1 << iNumberOfTrailingZeros);
            int i3 = (iNumberOfTrailingZeros / 3) + 0;
            int i4 = iNumberOfTrailingZeros % 3;
            if (z2) {
                z2 = false;
            } else {
                sb.append(", ");
            }
            sb.append(powerRoleToString(i3));
            sb.append(':');
            sb.append(dataRoleToString(i4));
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getId() {
        return this.mId;
    }

    public int getSupportedModes() {
        return this.mSupportedModes;
    }

    public boolean isModeSupported(int i2) {
        return (this.mSupportedModes & i2) == i2;
    }

    public String toString() {
        return "UsbPort{id=" + this.mId + ", supportedModes=" + modeToString(this.mSupportedModes) + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mId);
        parcel.writeInt(this.mSupportedModes);
    }
}
