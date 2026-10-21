package com.android.server.wifi.wificond;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class RadioChainInfo implements Parcelable {
    public static final Parcelable.Creator<RadioChainInfo> CREATOR = new Parcelable.Creator<RadioChainInfo>() { // from class: com.android.server.wifi.wificond.RadioChainInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RadioChainInfo createFromParcel(Parcel in) {
            RadioChainInfo result = new RadioChainInfo();
            result.chainId = in.readInt();
            result.level = in.readInt();
            return result;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RadioChainInfo[] newArray(int size) {
            return new RadioChainInfo[size];
        }
    };
    private static final String TAG = "RadioChainInfo";
    public int chainId;
    public int level;

    public RadioChainInfo() {
    }

    public RadioChainInfo(int chainId, int level) {
        this.chainId = chainId;
        this.level = level;
    }

    public boolean equals(Object rhs) {
        RadioChainInfo chainInfo;
        if (this == rhs) {
            return true;
        }
        if ((rhs instanceof RadioChainInfo) && (chainInfo = (RadioChainInfo) rhs) != null) {
            return this.chainId == chainInfo.chainId && this.level == chainInfo.level;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.chainId), Integer.valueOf(this.level));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeInt(this.chainId);
        out.writeInt(this.level);
    }
}
