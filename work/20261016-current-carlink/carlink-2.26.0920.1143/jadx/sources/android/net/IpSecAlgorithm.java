package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class IpSecAlgorithm implements Parcelable {
    public static final String AUTH_HMAC_MD5 = "hmac(md5)";
    public static final String AUTH_HMAC_SHA1 = "hmac(sha1)";
    public static final String AUTH_HMAC_SHA256 = "hmac(sha256)";
    public static final String AUTH_HMAC_SHA384 = "hmac(sha384)";
    public static final String AUTH_HMAC_SHA512 = "hmac(sha512)";
    public static final Parcelable.Creator<IpSecAlgorithm> CREATOR = new Parcelable.Creator<IpSecAlgorithm>() { // from class: android.net.IpSecAlgorithm.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IpSecAlgorithm createFromParcel(Parcel parcel) {
            return new IpSecAlgorithm(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IpSecAlgorithm[] newArray(int i2) {
            return new IpSecAlgorithm[i2];
        }
    };
    public static final String CRYPT_AES_CBC = "cbc(aes)";
    private final byte[] mKey;
    private final String mName;
    private final int mTruncLenBits;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AlgorithmName {
    }

    private static boolean isTruncationLengthValid(String str, int i2) {
        str.getClass();
        switch (str) {
            case "cbc(aes)":
                return i2 == 128 || i2 == 192 || i2 == 256;
            case "hmac(sha256)":
                return i2 >= 96 && i2 <= 256;
            case "hmac(sha384)":
                return i2 >= 192 && i2 <= 384;
            case "hmac(sha512)":
                return i2 >= 256 && i2 <= 512;
            case "hmac(md5)":
                return i2 >= 96 && i2 <= 128;
            case "hmac(sha1)":
                return i2 >= 96 && i2 <= 160;
            default:
                return false;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public byte[] getKey() {
        return (byte[]) this.mKey.clone();
    }

    public String getName() {
        return this.mName;
    }

    public int getTruncationLengthBits() {
        return this.mTruncLenBits;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mName);
        parcel.writeByteArray(this.mKey);
        parcel.writeInt(this.mTruncLenBits);
    }

    public IpSecAlgorithm(String str, byte[] bArr) {
        this(str, bArr, bArr.length * 8);
    }

    public IpSecAlgorithm(String str, byte[] bArr, int i2) {
        if (isTruncationLengthValid(str, i2)) {
            this.mName = str;
            this.mKey = (byte[]) bArr.clone();
            this.mTruncLenBits = Math.min(i2, bArr.length * 8);
            return;
        }
        throw new IllegalArgumentException("Unknown algorithm or invalid length");
    }

    private IpSecAlgorithm(Parcel parcel) {
        this.mName = parcel.readString();
        this.mKey = parcel.createByteArray();
        this.mTruncLenBits = parcel.readInt();
    }
}
