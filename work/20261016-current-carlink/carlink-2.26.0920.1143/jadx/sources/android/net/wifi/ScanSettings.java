package android.net.wifi;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ScanSettings implements Parcelable {
    public static final Parcelable.Creator<ScanSettings> CREATOR = new Parcelable.Creator<ScanSettings>() { // from class: android.net.wifi.ScanSettings.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScanSettings createFromParcel(Parcel parcel) {
            ScanSettings scanSettings = new ScanSettings();
            int i2 = parcel.readInt();
            if (i2 > 0) {
                scanSettings.channelSet = new ArrayList(i2);
                while (true) {
                    int i3 = i2 - 1;
                    if (i2 <= 0) {
                        break;
                    }
                    scanSettings.channelSet.add(WifiChannel.CREATOR.createFromParcel(parcel));
                    i2 = i3;
                }
            }
            return scanSettings;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScanSettings[] newArray(int i2) {
            return new ScanSettings[i2];
        }
    };
    public Collection<WifiChannel> channelSet;

    public ScanSettings() {
    }

    public ScanSettings(ScanSettings scanSettings) {
        if (scanSettings.channelSet != null) {
            this.channelSet = new ArrayList(scanSettings.channelSet);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean isValid() {
        Iterator<WifiChannel> it = this.channelSet.iterator();
        while (it.hasNext()) {
            if (!it.next().isValid()) {
                return false;
            }
        }
        return true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        Collection<WifiChannel> collection = this.channelSet;
        parcel.writeInt(collection == null ? 0 : collection.size());
        Collection<WifiChannel> collection2 = this.channelSet;
        if (collection2 != null) {
            Iterator<WifiChannel> it = collection2.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(parcel, i2);
            }
        }
    }
}
