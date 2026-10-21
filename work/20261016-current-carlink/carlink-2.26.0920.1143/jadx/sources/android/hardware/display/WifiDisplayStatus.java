package android.hardware.display;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class WifiDisplayStatus implements Parcelable {
    public static final Parcelable.Creator<WifiDisplayStatus> CREATOR = new Parcelable.Creator<WifiDisplayStatus>() { // from class: android.hardware.display.WifiDisplayStatus.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiDisplayStatus createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            int i3 = parcel.readInt();
            int i4 = parcel.readInt();
            WifiDisplay wifiDisplayCreateFromParcel = parcel.readInt() != 0 ? WifiDisplay.CREATOR.createFromParcel(parcel) : null;
            WifiDisplay[] wifiDisplayArrNewArray = WifiDisplay.CREATOR.newArray(parcel.readInt());
            for (int i5 = 0; i5 < wifiDisplayArrNewArray.length; i5++) {
                wifiDisplayArrNewArray[i5] = WifiDisplay.CREATOR.createFromParcel(parcel);
            }
            return new WifiDisplayStatus(i2, i3, i4, wifiDisplayCreateFromParcel, wifiDisplayArrNewArray, WifiDisplaySessionInfo.CREATOR.createFromParcel(parcel));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiDisplayStatus[] newArray(int i2) {
            return new WifiDisplayStatus[i2];
        }
    };
    public static final int DISPLAY_STATE_CONNECTED = 2;
    public static final int DISPLAY_STATE_CONNECTING = 1;
    public static final int DISPLAY_STATE_NOT_CONNECTED = 0;
    public static final int FEATURE_STATE_DISABLED = 1;
    public static final int FEATURE_STATE_OFF = 2;
    public static final int FEATURE_STATE_ON = 3;
    public static final int FEATURE_STATE_UNAVAILABLE = 0;
    public static final int SCAN_STATE_NOT_SCANNING = 0;
    public static final int SCAN_STATE_SCANNING = 1;
    private final WifiDisplay mActiveDisplay;
    private final int mActiveDisplayState;
    private final WifiDisplay[] mDisplays;
    private final int mFeatureState;
    private final int mScanState;
    private final WifiDisplaySessionInfo mSessionInfo;

    public WifiDisplayStatus() {
        this(0, 0, 0, null, WifiDisplay.EMPTY_ARRAY, null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public WifiDisplay getActiveDisplay() {
        return this.mActiveDisplay;
    }

    public int getActiveDisplayState() {
        return this.mActiveDisplayState;
    }

    public WifiDisplay[] getDisplays() {
        return this.mDisplays;
    }

    public int getFeatureState() {
        return this.mFeatureState;
    }

    public int getScanState() {
        return this.mScanState;
    }

    public WifiDisplaySessionInfo getSessionInfo() {
        return this.mSessionInfo;
    }

    public String toString() {
        return "WifiDisplayStatus{featureState=" + this.mFeatureState + ", scanState=" + this.mScanState + ", activeDisplayState=" + this.mActiveDisplayState + ", activeDisplay=" + this.mActiveDisplay + ", displays=" + Arrays.toString(this.mDisplays) + ", sessionInfo=" + this.mSessionInfo + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mFeatureState);
        parcel.writeInt(this.mScanState);
        parcel.writeInt(this.mActiveDisplayState);
        if (this.mActiveDisplay != null) {
            parcel.writeInt(1);
            this.mActiveDisplay.writeToParcel(parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.mDisplays.length);
        for (WifiDisplay wifiDisplay : this.mDisplays) {
            wifiDisplay.writeToParcel(parcel, i2);
        }
        this.mSessionInfo.writeToParcel(parcel, i2);
    }

    public WifiDisplayStatus(int i2, int i3, int i4, WifiDisplay wifiDisplay, WifiDisplay[] wifiDisplayArr, WifiDisplaySessionInfo wifiDisplaySessionInfo) {
        if (wifiDisplayArr == null) {
            throw new IllegalArgumentException("displays must not be null");
        }
        this.mFeatureState = i2;
        this.mScanState = i3;
        this.mActiveDisplayState = i4;
        this.mActiveDisplay = wifiDisplay;
        this.mDisplays = wifiDisplayArr;
        this.mSessionInfo = wifiDisplaySessionInfo == null ? new WifiDisplaySessionInfo() : wifiDisplaySessionInfo;
    }
}
