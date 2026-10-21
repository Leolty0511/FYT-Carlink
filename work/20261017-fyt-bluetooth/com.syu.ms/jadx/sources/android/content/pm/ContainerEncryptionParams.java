package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Slog;
import java.security.InvalidAlgorithmParameterException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Arrays;
import java.util.Objects;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;

/* JADX INFO: loaded from: classes.dex */
public class ContainerEncryptionParams implements Parcelable {
    public static final Parcelable.Creator<ContainerEncryptionParams> CREATOR = new Parcelable.Creator<ContainerEncryptionParams>() { // from class: android.content.pm.ContainerEncryptionParams.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ContainerEncryptionParams createFromParcel(Parcel parcel) {
            try {
                return new ContainerEncryptionParams(parcel);
            } catch (InvalidAlgorithmParameterException e2) {
                Slog.e(ContainerEncryptionParams.TAG, "Invalid algorithm parameters specified", e2);
                return null;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ContainerEncryptionParams[] newArray(int i2) {
            return new ContainerEncryptionParams[i2];
        }
    };
    private static final int ENC_PARAMS_IV_PARAMETERS = 1;
    private static final int MAC_PARAMS_NONE = 1;
    public static final String TAG = "ContainerEncryptionParams";
    private static final String TO_STRING_PREFIX = "ContainerEncryptionParams{";
    private final long mAuthenticatedDataStart;
    private final long mDataEnd;
    private final long mEncryptedDataStart;
    private final String mEncryptionAlgorithm;
    private final SecretKey mEncryptionKey;
    private final IvParameterSpec mEncryptionSpec;
    private final String mMacAlgorithm;
    private final SecretKey mMacKey;
    private final AlgorithmParameterSpec mMacSpec;
    private final byte[] mMacTag;

    private static final boolean isSecretKeyEqual(SecretKey secretKey, SecretKey secretKey2) {
        String format = secretKey.getFormat();
        String format2 = secretKey2.getFormat();
        if (format == null) {
            return format == format2 && secretKey.getEncoded() == secretKey2.getEncoded();
        }
        return format.equals(secretKey2.getFormat()) && Arrays.equals(secretKey.getEncoded(), secretKey2.getEncoded());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContainerEncryptionParams)) {
            return false;
        }
        ContainerEncryptionParams containerEncryptionParams = (ContainerEncryptionParams) obj;
        return this.mAuthenticatedDataStart == containerEncryptionParams.mAuthenticatedDataStart && this.mEncryptedDataStart == containerEncryptionParams.mEncryptedDataStart && this.mDataEnd == containerEncryptionParams.mDataEnd && this.mEncryptionAlgorithm.equals(containerEncryptionParams.mEncryptionAlgorithm) && this.mMacAlgorithm.equals(containerEncryptionParams.mMacAlgorithm) && isSecretKeyEqual(this.mEncryptionKey, containerEncryptionParams.mEncryptionKey) && isSecretKeyEqual(this.mMacKey, containerEncryptionParams.mMacKey) && Arrays.equals(this.mEncryptionSpec.getIV(), containerEncryptionParams.mEncryptionSpec.getIV()) && Arrays.equals(this.mMacTag, containerEncryptionParams.mMacTag) && this.mMacSpec == containerEncryptionParams.mMacSpec;
    }

    public long getAuthenticatedDataStart() {
        return this.mAuthenticatedDataStart;
    }

    public long getDataEnd() {
        return this.mDataEnd;
    }

    public long getEncryptedDataStart() {
        return this.mEncryptedDataStart;
    }

    public String getEncryptionAlgorithm() {
        return this.mEncryptionAlgorithm;
    }

    public SecretKey getEncryptionKey() {
        return this.mEncryptionKey;
    }

    public AlgorithmParameterSpec getEncryptionSpec() {
        return this.mEncryptionSpec;
    }

    public String getMacAlgorithm() {
        return this.mMacAlgorithm;
    }

    public SecretKey getMacKey() {
        return this.mMacKey;
    }

    public AlgorithmParameterSpec getMacSpec() {
        return this.mMacSpec;
    }

    public byte[] getMacTag() {
        return this.mMacTag;
    }

    public int hashCode() {
        return (int) (((long) ((int) (((long) ((int) (((long) ((this.mEncryptionAlgorithm.hashCode() * 5) + 3 + (Arrays.hashCode(this.mEncryptionSpec.getIV()) * 7) + (this.mEncryptionKey.hashCode() * 11) + (this.mMacAlgorithm.hashCode() * 13) + (this.mMacKey.hashCode() * 17) + (Arrays.hashCode(this.mMacTag) * 19))) + (this.mAuthenticatedDataStart * 23)))) + (this.mEncryptedDataStart * 29)))) + (this.mDataEnd * 31));
    }

    public String toString() {
        return TO_STRING_PREFIX + "mEncryptionAlgorithm=\"" + this.mEncryptionAlgorithm + "\",mEncryptionSpec=" + this.mEncryptionSpec.toString() + "mEncryptionKey=" + this.mEncryptionKey.toString() + "mMacAlgorithm=\"" + this.mMacAlgorithm + "\",mMacSpec=" + this.mMacSpec.toString() + "mMacKey=" + this.mMacKey.toString() + ",mAuthenticatedDataStart=" + this.mAuthenticatedDataStart + ",mEncryptedDataStart=" + this.mEncryptedDataStart + ",mDataEnd=" + this.mDataEnd + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mEncryptionAlgorithm);
        parcel.writeInt(1);
        parcel.writeByteArray(this.mEncryptionSpec.getIV());
        parcel.writeSerializable(this.mEncryptionKey);
        parcel.writeString(this.mMacAlgorithm);
        parcel.writeInt(1);
        parcel.writeByteArray(new byte[0]);
        parcel.writeSerializable(this.mMacKey);
        parcel.writeByteArray(this.mMacTag);
        parcel.writeLong(this.mAuthenticatedDataStart);
        parcel.writeLong(this.mEncryptedDataStart);
        parcel.writeLong(this.mDataEnd);
    }

    public ContainerEncryptionParams(String str, AlgorithmParameterSpec algorithmParameterSpec, SecretKey secretKey) {
        this(str, algorithmParameterSpec, secretKey, null, null, null, null, -1L, -1L, -1L);
    }

    public ContainerEncryptionParams(String str, AlgorithmParameterSpec algorithmParameterSpec, SecretKey secretKey, String str2, AlgorithmParameterSpec algorithmParameterSpec2, SecretKey secretKey2, byte[] bArr, long j2, long j3, long j4) throws InvalidAlgorithmParameterException {
        if (!TextUtils.isEmpty(str)) {
            Objects.requireNonNull(algorithmParameterSpec, "encryptionSpec == null");
            Objects.requireNonNull(secretKey, "encryptionKey == null");
            if (!TextUtils.isEmpty(str2)) {
                Objects.requireNonNull(secretKey2, "macKey == null");
            }
            if (algorithmParameterSpec instanceof IvParameterSpec) {
                this.mEncryptionAlgorithm = str;
                this.mEncryptionSpec = (IvParameterSpec) algorithmParameterSpec;
                this.mEncryptionKey = secretKey;
                this.mMacAlgorithm = str2;
                this.mMacSpec = algorithmParameterSpec2;
                this.mMacKey = secretKey2;
                this.mMacTag = bArr;
                this.mAuthenticatedDataStart = j2;
                this.mEncryptedDataStart = j3;
                this.mDataEnd = j4;
                return;
            }
            throw new InvalidAlgorithmParameterException("Unknown parameter spec class; must be IvParameters");
        }
        throw new NullPointerException("algorithm == null");
    }

    private ContainerEncryptionParams(Parcel parcel) throws InvalidAlgorithmParameterException {
        this.mEncryptionAlgorithm = parcel.readString();
        int i2 = parcel.readInt();
        byte[] bArrCreateByteArray = parcel.createByteArray();
        SecretKey secretKey = (SecretKey) parcel.readSerializable();
        this.mEncryptionKey = secretKey;
        this.mMacAlgorithm = parcel.readString();
        int i3 = parcel.readInt();
        parcel.createByteArray();
        this.mMacKey = (SecretKey) parcel.readSerializable();
        this.mMacTag = parcel.createByteArray();
        this.mAuthenticatedDataStart = parcel.readLong();
        this.mEncryptedDataStart = parcel.readLong();
        this.mDataEnd = parcel.readLong();
        if (i2 == 1) {
            this.mEncryptionSpec = new IvParameterSpec(bArrCreateByteArray);
            if (i3 == 1) {
                this.mMacSpec = null;
                Objects.requireNonNull(secretKey, "encryptionKey == null");
                return;
            } else {
                throw new InvalidAlgorithmParameterException("Unknown parameter type " + i3);
            }
        }
        throw new InvalidAlgorithmParameterException("Unknown parameter type " + i2);
    }
}
