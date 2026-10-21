package com.android.server.wifi.wificond;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class SingleScanSettings implements Parcelable {
    public static final Parcelable.Creator<SingleScanSettings> CREATOR = new Parcelable.Creator<SingleScanSettings>() { // from class: com.android.server.wifi.wificond.SingleScanSettings.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SingleScanSettings createFromParcel(Parcel in) {
            SingleScanSettings result = new SingleScanSettings();
            result.scanType = in.readInt();
            if (!SingleScanSettings.isValidScanType(result.scanType)) {
                Log.wtf(SingleScanSettings.TAG, "Invalid scan type " + result.scanType);
            }
            result.channelSettings = new ArrayList<>();
            in.readTypedList(result.channelSettings, ChannelSettings.CREATOR);
            result.hiddenNetworks = new ArrayList<>();
            in.readTypedList(result.hiddenNetworks, HiddenNetwork.CREATOR);
            if (in.dataAvail() != 0) {
                Log.e(SingleScanSettings.TAG, "Found trailing data after parcel parsing.");
            }
            return result;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SingleScanSettings[] newArray(int size) {
            return new SingleScanSettings[size];
        }
    };
    private static final String TAG = "SingleScanSettings";
    public ArrayList<ChannelSettings> channelSettings;
    public ArrayList<HiddenNetwork> hiddenNetworks;
    public int scanType;

    public boolean equals(Object rhs) {
        SingleScanSettings settings;
        if (this == rhs) {
            return true;
        }
        if ((rhs instanceof SingleScanSettings) && (settings = (SingleScanSettings) rhs) != null) {
            return this.scanType == settings.scanType && this.channelSettings.equals(settings.channelSettings) && this.hiddenNetworks.equals(settings.hiddenNetworks);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.scanType), this.channelSettings, this.hiddenNetworks);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isValidScanType(int scanType) {
        return scanType == 0 || scanType == 1 || scanType == 2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        if (!isValidScanType(this.scanType)) {
            Log.wtf(TAG, "Invalid scan type " + this.scanType);
        }
        out.writeInt(this.scanType);
        out.writeTypedList(this.channelSettings);
        out.writeTypedList(this.hiddenNetworks);
    }
}
