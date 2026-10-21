package android.content.pm;

import android.net.dhcp.DhcpPacket;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.ByteArrayInputStream;
import java.lang.ref.SoftReference;
import java.security.PublicKey;
import java.security.cert.CertificateFactory;
import java.util.Arrays;
import u.a;

/* JADX INFO: loaded from: classes.dex */
public class Signature implements Parcelable {
    public static final Parcelable.Creator<Signature> CREATOR = new Parcelable.Creator<Signature>() { // from class: android.content.pm.Signature.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Signature createFromParcel(Parcel parcel) {
            return new Signature(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Signature[] newArray(int i2) {
            return new Signature[i2];
        }
    };
    private int mHashCode;
    private boolean mHaveHashCode;
    private final byte[] mSignature;
    private SoftReference<String> mStringRef;

    public static boolean areExactMatch(Signature[] signatureArr, Signature[] signatureArr2) {
        return a.c(signatureArr, signatureArr2) && a.c(signatureArr2, signatureArr);
    }

    private static final int parseHexDigit(int i2) {
        if (48 <= i2 && i2 <= 57) {
            return i2 - 48;
        }
        int i3 = 97;
        if (97 > i2 || i2 > 102) {
            i3 = 65;
            if (65 > i2 || i2 > 70) {
                throw new IllegalArgumentException("Invalid character " + i2 + " in hex string");
            }
        }
        return (i2 - i3) + 10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            Signature signature = (Signature) obj;
            return this == signature || Arrays.equals(this.mSignature, signature.mSignature);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public PublicKey getPublicKey() {
        return CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(this.mSignature)).getPublicKey();
    }

    public int hashCode() {
        if (this.mHaveHashCode) {
            return this.mHashCode;
        }
        int iHashCode = Arrays.hashCode(this.mSignature);
        this.mHashCode = iHashCode;
        this.mHaveHashCode = true;
        return iHashCode;
    }

    public byte[] toByteArray() {
        byte[] bArr = this.mSignature;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public char[] toChars() {
        return toChars(null, null);
    }

    public String toCharsString() {
        SoftReference<String> softReference = this.mStringRef;
        String str = softReference == null ? null : softReference.get();
        if (str != null) {
            return str;
        }
        String str2 = new String(toChars());
        this.mStringRef = new SoftReference<>(str2);
        return str2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeByteArray(this.mSignature);
    }

    public Signature(byte[] bArr) {
        this.mSignature = (byte[]) bArr.clone();
    }

    public char[] toChars(char[] cArr, int[] iArr) {
        byte[] bArr = this.mSignature;
        int length = bArr.length;
        int i2 = length * 2;
        if (cArr == null || i2 > cArr.length) {
            cArr = new char[i2];
        }
        for (int i3 = 0; i3 < length; i3++) {
            byte b2 = bArr[i3];
            int i4 = (b2 >> 4) & 15;
            int i5 = i3 * 2;
            cArr[i5] = (char) (i4 >= 10 ? (i4 + 97) - 10 : i4 + 48);
            int i6 = b2 & DhcpPacket.DHCP_DOMAIN_NAME;
            cArr[i5 + 1] = (char) (i6 >= 10 ? (i6 + 97) - 10 : i6 + 48);
        }
        if (iArr != null) {
            iArr[0] = length;
        }
        return cArr;
    }

    public Signature(String str) {
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        if (length % 2 == 0) {
            byte[] bArr = new byte[length / 2];
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                int i4 = i2 + 1;
                bArr[i3] = (byte) ((parseHexDigit(bytes[i2]) << 4) | parseHexDigit(bytes[i4]));
                i2 = i4 + 1;
                i3++;
            }
            this.mSignature = bArr;
            return;
        }
        throw new IllegalArgumentException("text size " + length + " is not even");
    }

    private Signature(Parcel parcel) {
        this.mSignature = parcel.createByteArray();
    }
}
