package android.net;

import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public class WifiLinkQualityInfo extends LinkQualityInfo {
    private String mBssid;
    private int mType = Integer.MAX_VALUE;
    private int mRssi = Integer.MAX_VALUE;
    private long mTxGood = LinkQualityInfo.UNKNOWN_LONG;
    private long mTxBad = LinkQualityInfo.UNKNOWN_LONG;

    public static WifiLinkQualityInfo createFromParcelBody(Parcel parcel) {
        WifiLinkQualityInfo wifiLinkQualityInfo = new WifiLinkQualityInfo();
        wifiLinkQualityInfo.initializeFromParcel(parcel);
        wifiLinkQualityInfo.mType = parcel.readInt();
        wifiLinkQualityInfo.mRssi = parcel.readInt();
        wifiLinkQualityInfo.mTxGood = parcel.readLong();
        wifiLinkQualityInfo.mTxBad = parcel.readLong();
        wifiLinkQualityInfo.mBssid = parcel.readString();
        return wifiLinkQualityInfo;
    }

    public String getBssid() {
        return this.mBssid;
    }

    public int getRssi() {
        return this.mRssi;
    }

    public long getTxBad() {
        return this.mTxBad;
    }

    public long getTxGood() {
        return this.mTxGood;
    }

    public int getType() {
        return this.mType;
    }

    public void setBssid(String str) {
        this.mBssid = str;
    }

    public void setRssi(int i2) {
        this.mRssi = i2;
    }

    public void setTxBad(long j2) {
        this.mTxBad = j2;
    }

    public void setTxGood(long j2) {
        this.mTxGood = j2;
    }

    public void setType(int i2) {
        this.mType = i2;
    }

    @Override // android.net.LinkQualityInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2, 2);
        parcel.writeInt(this.mType);
        parcel.writeInt(this.mRssi);
        parcel.writeLong(this.mTxGood);
        parcel.writeLong(this.mTxBad);
        parcel.writeString(this.mBssid);
    }
}
