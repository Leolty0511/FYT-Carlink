package android.net.wifi;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class WifiChannel implements Parcelable {
    public static final Parcelable.Creator<WifiChannel> CREATOR = new Parcelable.Creator<WifiChannel>() { // from class: android.net.wifi.WifiChannel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiChannel createFromParcel(Parcel parcel) {
            WifiChannel wifiChannel = new WifiChannel();
            wifiChannel.freqMHz = parcel.readInt();
            wifiChannel.channelNum = parcel.readInt();
            wifiChannel.isDFS = parcel.readInt() != 0;
            return wifiChannel;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiChannel[] newArray(int i2) {
            return new WifiChannel[i2];
        }
    };
    private static final int MAX_CHANNEL_NUM = 196;
    private static final int MAX_FREQ_MHZ = 5825;
    private static final int MIN_CHANNEL_NUM = 1;
    private static final int MIN_FREQ_MHZ = 2412;
    public int channelNum;
    public int freqMHz;
    public boolean isDFS;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean isValid() {
        int i2;
        int i3 = this.freqMHz;
        return i3 >= MIN_FREQ_MHZ && i3 <= MAX_FREQ_MHZ && (i2 = this.channelNum) >= 1 && i2 <= 196;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.freqMHz);
        parcel.writeInt(this.channelNum);
        parcel.writeInt(this.isDFS ? 1 : 0);
    }
}
