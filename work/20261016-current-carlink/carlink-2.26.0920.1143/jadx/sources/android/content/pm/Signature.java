package android.content.pm;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.ArrayUtils;
import java.io.ByteArrayInputStream;
import java.lang.ref.SoftReference;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Arrays;

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
    private Certificate[] mCertificateChain;
    private int mHashCode;
    private boolean mHaveHashCode;
    private final byte[] mSignature;
    private SoftReference<String> mStringRef;

    public static boolean areEffectiveMatch(Signature[] signatureArr, Signature[] signatureArr2) throws CertificateException {
        CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
        Signature[] signatureArr3 = new Signature[signatureArr.length];
        for (int i2 = 0; i2 < signatureArr.length; i2++) {
            signatureArr3[i2] = bounce(certificateFactory, signatureArr[i2]);
        }
        Signature[] signatureArr4 = new Signature[signatureArr2.length];
        for (int i3 = 0; i3 < signatureArr2.length; i3++) {
            signatureArr4[i3] = bounce(certificateFactory, signatureArr2[i3]);
        }
        return areExactMatch(signatureArr3, signatureArr4);
    }

    public static boolean areExactMatch(Signature[] signatureArr, Signature[] signatureArr2) {
        return signatureArr.length == signatureArr2.length && ArrayUtils.containsAll(signatureArr, signatureArr2) && ArrayUtils.containsAll(signatureArr2, signatureArr);
    }

    public static Signature bounce(CertificateFactory certificateFactory, Signature signature) throws CertificateException {
        Signature signature2 = new Signature(((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(signature.mSignature))).getEncoded());
        if (Math.abs(signature2.mSignature.length - signature.mSignature.length) <= 2) {
            return signature2;
        }
        throw new CertificateException("Bounced cert length looks fishy; before " + signature.mSignature.length + ", after " + signature2.mSignature.length);
    }

    private static final int parseHexDigit(int i2) {
        if (48 <= i2 && i2 <= 57) {
            return i2 - 48;
        }
        int i3 = 97;
        if (97 > i2 || i2 > 102) {
            i3 = 65;
            if (65 > i2 || i2 > 70) {
                throw new IllegalArgumentException(c.e("Invalid character ", i2, " in hex string"));
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

    public Signature[] getChainSignatures() {
        Certificate[] certificateArr = this.mCertificateChain;
        int i2 = 0;
        int i3 = 1;
        if (certificateArr == null) {
            return new Signature[]{this};
        }
        Signature[] signatureArr = new Signature[certificateArr.length + 1];
        signatureArr[0] = this;
        int length = certificateArr.length;
        while (i2 < length) {
            signatureArr[i3] = new Signature(certificateArr[i2].getEncoded());
            i2++;
            i3++;
        }
        return signatureArr;
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
        this.mCertificateChain = null;
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
            int i6 = b2 & 15;
            cArr[i5 + 1] = (char) (i6 >= 10 ? (i6 + 97) - 10 : i6 + 48);
        }
        if (iArr != null) {
            iArr[0] = length;
        }
        return cArr;
    }

    public Signature(Certificate[] certificateArr) {
        this.mSignature = certificateArr[0].getEncoded();
        if (certificateArr.length > 1) {
            this.mCertificateChain = (Certificate[]) Arrays.copyOfRange(certificateArr, 1, certificateArr.length);
        }
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
        throw new IllegalArgumentException(c.e("text size ", length, " is not even"));
    }

    private Signature(Parcel parcel) {
        this.mSignature = parcel.createByteArray();
    }
}
