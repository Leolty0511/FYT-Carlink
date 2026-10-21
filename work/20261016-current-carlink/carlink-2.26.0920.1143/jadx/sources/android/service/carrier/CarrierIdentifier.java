package android.service.carrier;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class CarrierIdentifier implements Parcelable {
    public static final Parcelable.Creator<CarrierIdentifier> CREATOR = new Parcelable.Creator<CarrierIdentifier>() { // from class: android.service.carrier.CarrierIdentifier.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarrierIdentifier createFromParcel(Parcel parcel) {
            return new CarrierIdentifier(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarrierIdentifier[] newArray(int i2) {
            return new CarrierIdentifier[i2];
        }
    };
    private String mGid1;
    private String mGid2;
    private String mImsi;
    private String mIsNetworkPreferred;
    private String mMcc;
    private String mMnc;
    private String mPnn;
    private String mSpn;

    public interface MatchType {
        public static final int ALL = 0;
        public static final int GID1 = 3;
        public static final int GID2 = 4;
        public static final int IMSI_PREFIX = 2;
        public static final int PNN = 5;
        public static final int SPN = 1;
    }

    public CarrierIdentifier(String str, String str2, String str3, String str4, String str5, String str6) {
        this.mMcc = str;
        this.mMnc = str2;
        this.mSpn = str3;
        this.mImsi = str4;
        this.mGid1 = str5;
        this.mGid2 = str6;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getGid1() {
        return this.mGid1;
    }

    public String getGid2() {
        return this.mGid2;
    }

    public String getImsi() {
        return this.mImsi;
    }

    public String getMcc() {
        return this.mMcc;
    }

    public String getMnc() {
        return this.mMnc;
    }

    public String getPnn() {
        return this.mPnn;
    }

    public String getSpn() {
        return this.mSpn;
    }

    public boolean isNetworkPreferred() {
        return "true".equals(this.mIsNetworkPreferred);
    }

    public void readFromParcel(Parcel parcel) {
        this.mMcc = parcel.readString();
        this.mMnc = parcel.readString();
        this.mSpn = parcel.readString();
        this.mImsi = parcel.readString();
        this.mGid1 = parcel.readString();
        this.mGid2 = parcel.readString();
        this.mPnn = parcel.readString();
        this.mIsNetworkPreferred = parcel.readString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CarrierIdentifier{mcc=");
        sb.append(this.mMcc);
        sb.append(",mnc=");
        sb.append(this.mMnc);
        sb.append(",spn=");
        sb.append(this.mSpn);
        sb.append(",imsi=");
        sb.append(this.mImsi);
        sb.append(",gid1=");
        sb.append(this.mGid1);
        sb.append(",gid2=");
        sb.append(this.mGid2);
        sb.append(",pnn=");
        sb.append(this.mPnn);
        sb.append(",mIsNetworkPreferred = ");
        return c.n(sb, this.mIsNetworkPreferred, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mMcc);
        parcel.writeString(this.mMnc);
        parcel.writeString(this.mSpn);
        parcel.writeString(this.mImsi);
        parcel.writeString(this.mGid1);
        parcel.writeString(this.mGid2);
        parcel.writeString(this.mPnn);
        parcel.writeString(this.mIsNetworkPreferred);
    }

    public CarrierIdentifier(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this(str, str2, str3, str4, str5, str6);
        this.mPnn = str7;
        this.mIsNetworkPreferred = str8;
    }

    public CarrierIdentifier(Parcel parcel) {
        readFromParcel(parcel);
    }
}
