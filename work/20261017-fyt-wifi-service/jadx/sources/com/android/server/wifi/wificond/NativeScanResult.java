package com.android.server.wifi.wificond;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.BitSet;

/* JADX INFO: loaded from: classes.dex */
public class NativeScanResult implements Parcelable {
    private static final int CAPABILITY_SIZE = 16;
    public static final Parcelable.Creator<NativeScanResult> CREATOR = new Parcelable.Creator<NativeScanResult>() { // from class: com.android.server.wifi.wificond.NativeScanResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NativeScanResult createFromParcel(Parcel in) {
            NativeScanResult result = new NativeScanResult();
            result.ssid = in.createByteArray();
            result.bssid = in.createByteArray();
            result.infoElement = in.createByteArray();
            result.frequency = in.readInt();
            result.signalMbm = in.readInt();
            result.tsf = in.readLong();
            int capabilityInt = in.readInt();
            result.capability = new BitSet(16);
            int i = 0;
            while (true) {
                if (i >= 16) {
                    break;
                }
                if (((1 << i) & capabilityInt) != 0) {
                    result.capability.set(i);
                }
                i++;
            }
            int i2 = in.readInt();
            result.associated = i2 != 0;
            result.radioChainInfos = new ArrayList<>();
            in.readTypedList(result.radioChainInfos, RadioChainInfo.CREATOR);
            return result;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NativeScanResult[] newArray(int size) {
            return new NativeScanResult[size];
        }
    };
    public boolean associated;
    public byte[] bssid;
    public BitSet capability;
    public int frequency;
    public byte[] infoElement;
    public ArrayList<RadioChainInfo> radioChainInfos;
    public int signalMbm;
    public byte[] ssid;
    public long tsf;

    public NativeScanResult() {
    }

    public NativeScanResult(NativeScanResult source) {
        this.ssid = (byte[]) source.ssid.clone();
        this.bssid = (byte[]) source.bssid.clone();
        this.infoElement = (byte[]) source.infoElement.clone();
        this.frequency = source.frequency;
        this.signalMbm = source.signalMbm;
        this.tsf = source.tsf;
        this.capability = (BitSet) source.capability.clone();
        this.associated = source.associated;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByteArray(this.ssid);
        parcel.writeByteArray(this.bssid);
        parcel.writeByteArray(this.infoElement);
        parcel.writeInt(this.frequency);
        parcel.writeInt(this.signalMbm);
        parcel.writeLong(this.tsf);
        int i2 = 0;
        for (int i3 = 0; i3 < 16; i3++) {
            if (this.capability.get(i3)) {
                i2 |= 1 << i3;
            }
        }
        parcel.writeInt(i2);
        parcel.writeInt(this.associated ? 1 : 0);
        parcel.writeTypedList(this.radioChainInfos);
    }
}
