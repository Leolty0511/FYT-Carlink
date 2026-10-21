package android.net;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class LinkQualityInfo implements Parcelable {
    public static final Parcelable.Creator<LinkQualityInfo> CREATOR = new Parcelable.Creator<LinkQualityInfo>() { // from class: android.net.LinkQualityInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LinkQualityInfo createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            if (i2 == 1) {
                LinkQualityInfo linkQualityInfo = new LinkQualityInfo();
                linkQualityInfo.initializeFromParcel(parcel);
                return linkQualityInfo;
            }
            if (i2 == 2) {
                return WifiLinkQualityInfo.createFromParcelBody(parcel);
            }
            if (i2 == 3) {
                return MobileLinkQualityInfo.createFromParcelBody(parcel);
            }
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LinkQualityInfo[] newArray(int i2) {
            return new LinkQualityInfo[i2];
        }
    };
    public static final int NORMALIZED_MAX_SIGNAL_STRENGTH = 99;
    public static final int NORMALIZED_MIN_SIGNAL_STRENGTH = 0;
    public static final int NORMALIZED_SIGNAL_STRENGTH_RANGE = 100;
    protected static final int OBJECT_TYPE_LINK_QUALITY_INFO = 1;
    protected static final int OBJECT_TYPE_MOBILE_LINK_QUALITY_INFO = 3;
    protected static final int OBJECT_TYPE_WIFI_LINK_QUALITY_INFO = 2;
    public static final int UNKNOWN_INT = Integer.MAX_VALUE;
    public static final long UNKNOWN_LONG = Long.MAX_VALUE;
    private int mNetworkType = -1;
    private int mNormalizedSignalStrength = Integer.MAX_VALUE;
    private long mPacketCount = Long.MAX_VALUE;
    private long mPacketErrorCount = Long.MAX_VALUE;
    private int mTheoreticalTxBandwidth = Integer.MAX_VALUE;
    private int mTheoreticalRxBandwidth = Integer.MAX_VALUE;
    private int mTheoreticalLatency = Integer.MAX_VALUE;
    private long mLastDataSampleTime = Long.MAX_VALUE;
    private int mDataSampleDuration = Integer.MAX_VALUE;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getDataSampleDuration() {
        return this.mDataSampleDuration;
    }

    public long getLastDataSampleTime() {
        return this.mLastDataSampleTime;
    }

    public int getNetworkType() {
        return this.mNetworkType;
    }

    public int getNormalizedSignalStrength() {
        return this.mNormalizedSignalStrength;
    }

    public long getPacketCount() {
        return this.mPacketCount;
    }

    public long getPacketErrorCount() {
        return this.mPacketErrorCount;
    }

    public int getTheoreticalLatency() {
        return this.mTheoreticalLatency;
    }

    public int getTheoreticalRxBandwidth() {
        return this.mTheoreticalRxBandwidth;
    }

    public int getTheoreticalTxBandwidth() {
        return this.mTheoreticalTxBandwidth;
    }

    public void initializeFromParcel(Parcel parcel) {
        this.mNetworkType = parcel.readInt();
        this.mNormalizedSignalStrength = parcel.readInt();
        this.mPacketCount = parcel.readLong();
        this.mPacketErrorCount = parcel.readLong();
        this.mTheoreticalTxBandwidth = parcel.readInt();
        this.mTheoreticalRxBandwidth = parcel.readInt();
        this.mTheoreticalLatency = parcel.readInt();
        this.mLastDataSampleTime = parcel.readLong();
        this.mDataSampleDuration = parcel.readInt();
    }

    public void setDataSampleDuration(int i2) {
        this.mDataSampleDuration = i2;
    }

    public void setLastDataSampleTime(long j2) {
        this.mLastDataSampleTime = j2;
    }

    public void setNetworkType(int i2) {
        this.mNetworkType = i2;
    }

    public void setNormalizedSignalStrength(int i2) {
        this.mNormalizedSignalStrength = i2;
    }

    public void setPacketCount(long j2) {
        this.mPacketCount = j2;
    }

    public void setPacketErrorCount(long j2) {
        this.mPacketErrorCount = j2;
    }

    public void setTheoreticalLatency(int i2) {
        this.mTheoreticalLatency = i2;
    }

    public void setTheoreticalRxBandwidth(int i2) {
        this.mTheoreticalRxBandwidth = i2;
    }

    public void setTheoreticalTxBandwidth(int i2) {
        this.mTheoreticalTxBandwidth = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        writeToParcel(parcel, i2, 1);
    }

    public void writeToParcel(Parcel parcel, int i2, int i3) {
        parcel.writeInt(i3);
        parcel.writeInt(this.mNetworkType);
        parcel.writeInt(this.mNormalizedSignalStrength);
        parcel.writeLong(this.mPacketCount);
        parcel.writeLong(this.mPacketErrorCount);
        parcel.writeInt(this.mTheoreticalTxBandwidth);
        parcel.writeInt(this.mTheoreticalRxBandwidth);
        parcel.writeInt(this.mTheoreticalLatency);
        parcel.writeLong(this.mLastDataSampleTime);
        parcel.writeInt(this.mDataSampleDuration);
    }
}
