package android.telephony;

import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.os.Parcel;
import android.os.Parcelable;
import android.security.keystore.KeyProperties;
import android.text.TextUtils;
import com.android.internal.telephony.uicc.IccUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class UiccAccessRule implements Parcelable {
    public static final Parcelable.Creator<UiccAccessRule> CREATOR = new Parcelable.Creator<UiccAccessRule>() { // from class: android.telephony.UiccAccessRule.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UiccAccessRule createFromParcel(Parcel parcel) {
            return new UiccAccessRule(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UiccAccessRule[] newArray(int i2) {
            return new UiccAccessRule[i2];
        }
    };
    private static final int ENCODING_VERSION = 1;
    private static final String TAG = "UiccAccessRule";
    private final long mAccessType;
    private final byte[] mCertificateHash;
    private final String mPackageName;

    public UiccAccessRule(byte[] bArr, String str, long j2) {
        this.mCertificateHash = bArr;
        this.mPackageName = str;
        this.mAccessType = j2;
    }

    public static UiccAccessRule[] decodeRules(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
            try {
                dataInputStream.readInt();
                int i2 = dataInputStream.readInt();
                UiccAccessRule[] uiccAccessRuleArr = new UiccAccessRule[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    byte[] bArr2 = new byte[dataInputStream.readInt()];
                    dataInputStream.readFully(bArr2);
                    uiccAccessRuleArr[i3] = new UiccAccessRule(bArr2, dataInputStream.readBoolean() ? dataInputStream.readUTF() : null, dataInputStream.readLong());
                }
                dataInputStream.close();
                dataInputStream.close();
                return uiccAccessRuleArr;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        dataInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (IOException e2) {
            throw new IllegalStateException("ByteArrayInputStream should never lead to an IOException", e2);
        }
    }

    public static byte[] encodeRules(UiccAccessRule[] uiccAccessRuleArr) {
        if (uiccAccessRuleArr == null) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeInt(1);
            dataOutputStream.writeInt(uiccAccessRuleArr.length);
            for (UiccAccessRule uiccAccessRule : uiccAccessRuleArr) {
                dataOutputStream.writeInt(uiccAccessRule.mCertificateHash.length);
                dataOutputStream.write(uiccAccessRule.mCertificateHash);
                if (uiccAccessRule.mPackageName != null) {
                    dataOutputStream.writeBoolean(true);
                    dataOutputStream.writeUTF(uiccAccessRule.mPackageName);
                } else {
                    dataOutputStream.writeBoolean(false);
                }
                dataOutputStream.writeLong(uiccAccessRule.mAccessType);
            }
            dataOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw new IllegalStateException("ByteArrayOutputStream should never lead to an IOException", e2);
        }
    }

    private static byte[] getCertHash(Signature signature, String str) {
        try {
            return MessageDigest.getInstance(str).digest(signature.toByteArray());
        } catch (NoSuchAlgorithmException e2) {
            Rlog.e(TAG, "NoSuchAlgorithmException: " + e2);
            return null;
        }
    }

    private boolean matches(byte[] bArr, String str) {
        return bArr != null && Arrays.equals(this.mCertificateHash, bArr) && (TextUtils.isEmpty(this.mPackageName) || this.mPackageName.equals(str));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCarrierPrivilegeStatus(PackageInfo packageInfo) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null || signatureArr.length == 0) {
            throw new IllegalArgumentException("Must use GET_SIGNATURES when looking up package info");
        }
        for (Signature signature : signatureArr) {
            int carrierPrivilegeStatus = getCarrierPrivilegeStatus(signature, packageInfo.packageName);
            if (carrierPrivilegeStatus != 0) {
                return carrierPrivilegeStatus;
            }
        }
        return 0;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public String toString() {
        return "cert: " + IccUtils.bytesToHexString(this.mCertificateHash) + " pkg: " + this.mPackageName + " access: " + this.mAccessType;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeByteArray(this.mCertificateHash);
        parcel.writeString(this.mPackageName);
        parcel.writeLong(this.mAccessType);
    }

    public UiccAccessRule(Parcel parcel) {
        this.mCertificateHash = parcel.createByteArray();
        this.mPackageName = parcel.readString();
        this.mAccessType = parcel.readLong();
    }

    public int getCarrierPrivilegeStatus(Signature signature, String str) {
        return (matches(getCertHash(signature, KeyProperties.DIGEST_SHA1), str) || matches(getCertHash(signature, "SHA-256"), str)) ? 1 : 0;
    }
}
