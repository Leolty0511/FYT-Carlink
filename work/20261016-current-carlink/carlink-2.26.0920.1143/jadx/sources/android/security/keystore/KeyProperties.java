package android.security.keystore;

import android.accessibilityservice.c;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
public abstract class KeyProperties {
    public static final String BLOCK_MODE_CBC = "CBC";
    public static final String BLOCK_MODE_CTR = "CTR";
    public static final String BLOCK_MODE_ECB = "ECB";
    public static final String BLOCK_MODE_GCM = "GCM";
    public static final String DIGEST_MD5 = "MD5";
    public static final String DIGEST_NONE = "NONE";
    public static final String DIGEST_SHA1 = "SHA-1";
    public static final String DIGEST_SHA224 = "SHA-224";
    public static final String DIGEST_SHA256 = "SHA-256";
    public static final String DIGEST_SHA384 = "SHA-384";
    public static final String DIGEST_SHA512 = "SHA-512";
    public static final String ENCRYPTION_PADDING_NONE = "NoPadding";
    public static final String ENCRYPTION_PADDING_PKCS7 = "PKCS7Padding";
    public static final String ENCRYPTION_PADDING_RSA_OAEP = "OAEPPadding";
    public static final String ENCRYPTION_PADDING_RSA_PKCS1 = "PKCS1Padding";
    public static final String KEY_ALGORITHM_AES = "AES";
    public static final String KEY_ALGORITHM_EC = "EC";
    public static final String KEY_ALGORITHM_HMAC_SHA1 = "HmacSHA1";
    public static final String KEY_ALGORITHM_HMAC_SHA224 = "HmacSHA224";
    public static final String KEY_ALGORITHM_HMAC_SHA256 = "HmacSHA256";
    public static final String KEY_ALGORITHM_HMAC_SHA384 = "HmacSHA384";
    public static final String KEY_ALGORITHM_HMAC_SHA512 = "HmacSHA512";
    public static final String KEY_ALGORITHM_RSA = "RSA";
    public static final int ORIGIN_GENERATED = 1;
    public static final int ORIGIN_IMPORTED = 2;
    public static final int ORIGIN_UNKNOWN = 4;
    public static final int PURPOSE_DECRYPT = 2;
    public static final int PURPOSE_ENCRYPT = 1;
    public static final int PURPOSE_SIGN = 4;
    public static final int PURPOSE_VERIFY = 8;
    public static final String SIGNATURE_PADDING_RSA_PKCS1 = "PKCS1";
    public static final String SIGNATURE_PADDING_RSA_PSS = "PSS";

    public static abstract class BlockMode {
        private BlockMode() {
        }

        public static String[] allFromKeymaster(Collection<Integer> collection) {
            if (collection == null || collection.isEmpty()) {
                return EmptyArray.STRING;
            }
            String[] strArr = new String[collection.size()];
            Iterator<Integer> it = collection.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                strArr[i2] = fromKeymaster(it.next().intValue());
                i2++;
            }
            return strArr;
        }

        public static int[] allToKeymaster(String[] strArr) {
            if (strArr == null || strArr.length == 0) {
                return EmptyArray.INT;
            }
            int[] iArr = new int[strArr.length];
            for (int i2 = 0; i2 < strArr.length; i2++) {
                iArr[i2] = toKeymaster(strArr[i2]);
            }
            return iArr;
        }

        public static String fromKeymaster(int i2) {
            if (i2 == 1) {
                return KeyProperties.BLOCK_MODE_ECB;
            }
            if (i2 == 2) {
                return KeyProperties.BLOCK_MODE_CBC;
            }
            if (i2 == 3) {
                return KeyProperties.BLOCK_MODE_CTR;
            }
            if (i2 == 32) {
                return KeyProperties.BLOCK_MODE_GCM;
            }
            throw new IllegalArgumentException(c.d("Unsupported block mode: ", i2));
        }

        public static int toKeymaster(String str) {
            if (KeyProperties.BLOCK_MODE_ECB.equalsIgnoreCase(str)) {
                return 1;
            }
            if (KeyProperties.BLOCK_MODE_CBC.equalsIgnoreCase(str)) {
                return 2;
            }
            if (KeyProperties.BLOCK_MODE_CTR.equalsIgnoreCase(str)) {
                return 3;
            }
            if (KeyProperties.BLOCK_MODE_GCM.equalsIgnoreCase(str)) {
                return 32;
            }
            throw new IllegalArgumentException(c.j("Unsupported block mode: ", str));
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface BlockModeEnum {
    }

    public static abstract class Digest {
        private Digest() {
        }

        public static String[] allFromKeymaster(Collection<Integer> collection) {
            if (collection.isEmpty()) {
                return EmptyArray.STRING;
            }
            String[] strArr = new String[collection.size()];
            Iterator<Integer> it = collection.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                strArr[i2] = fromKeymaster(it.next().intValue());
                i2++;
            }
            return strArr;
        }

        public static int[] allToKeymaster(String[] strArr) {
            if (strArr == null || strArr.length == 0) {
                return EmptyArray.INT;
            }
            int[] iArr = new int[strArr.length];
            int i2 = 0;
            for (String str : strArr) {
                iArr[i2] = toKeymaster(str);
                i2++;
            }
            return iArr;
        }

        public static String fromKeymaster(int i2) {
            switch (i2) {
                case 0:
                    return KeyProperties.DIGEST_NONE;
                case 1:
                    return KeyProperties.DIGEST_MD5;
                case 2:
                    return KeyProperties.DIGEST_SHA1;
                case 3:
                    return KeyProperties.DIGEST_SHA224;
                case 4:
                    return "SHA-256";
                case 5:
                    return KeyProperties.DIGEST_SHA384;
                case 6:
                    return KeyProperties.DIGEST_SHA512;
                default:
                    throw new IllegalArgumentException(c.d("Unsupported digest algorithm: ", i2));
            }
        }

        public static String fromKeymasterToSignatureAlgorithmDigest(int i2) {
            switch (i2) {
                case 0:
                    return KeyProperties.DIGEST_NONE;
                case 1:
                    return KeyProperties.DIGEST_MD5;
                case 2:
                    return "SHA1";
                case 3:
                    return "SHA224";
                case 4:
                    return "SHA256";
                case 5:
                    return "SHA384";
                case 6:
                    return "SHA512";
                default:
                    throw new IllegalArgumentException(c.d("Unsupported digest algorithm: ", i2));
            }
        }

        public static int toKeymaster(String str) {
            String upperCase = str.toUpperCase(Locale.US);
            upperCase.getClass();
            switch (upperCase) {
                case "SHA-224":
                    return 3;
                case "SHA-256":
                    return 4;
                case "SHA-384":
                    return 5;
                case "SHA-512":
                    return 6;
                case "MD5":
                    return 1;
                case "NONE":
                    return 0;
                case "SHA-1":
                    return 2;
                default:
                    throw new IllegalArgumentException("Unsupported digest algorithm: ".concat(str));
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface DigestEnum {
    }

    public static abstract class EncryptionPadding {
        private EncryptionPadding() {
        }

        public static int[] allToKeymaster(String[] strArr) {
            if (strArr == null || strArr.length == 0) {
                return EmptyArray.INT;
            }
            int[] iArr = new int[strArr.length];
            for (int i2 = 0; i2 < strArr.length; i2++) {
                iArr[i2] = toKeymaster(strArr[i2]);
            }
            return iArr;
        }

        public static String fromKeymaster(int i2) {
            if (i2 == 1) {
                return KeyProperties.ENCRYPTION_PADDING_NONE;
            }
            if (i2 == 2) {
                return KeyProperties.ENCRYPTION_PADDING_RSA_OAEP;
            }
            if (i2 == 4) {
                return KeyProperties.ENCRYPTION_PADDING_RSA_PKCS1;
            }
            if (i2 == 64) {
                return KeyProperties.ENCRYPTION_PADDING_PKCS7;
            }
            throw new IllegalArgumentException(c.d("Unsupported encryption padding: ", i2));
        }

        public static int toKeymaster(String str) {
            if (KeyProperties.ENCRYPTION_PADDING_NONE.equalsIgnoreCase(str)) {
                return 1;
            }
            if (KeyProperties.ENCRYPTION_PADDING_PKCS7.equalsIgnoreCase(str)) {
                return 64;
            }
            if (KeyProperties.ENCRYPTION_PADDING_RSA_PKCS1.equalsIgnoreCase(str)) {
                return 4;
            }
            if (KeyProperties.ENCRYPTION_PADDING_RSA_OAEP.equalsIgnoreCase(str)) {
                return 2;
            }
            throw new IllegalArgumentException(c.j("Unsupported encryption padding scheme: ", str));
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface EncryptionPaddingEnum {
    }

    public static abstract class KeyAlgorithm {
        private KeyAlgorithm() {
        }

        public static String fromKeymasterAsymmetricKeyAlgorithm(int i2) {
            if (i2 == 1) {
                return KeyProperties.KEY_ALGORITHM_RSA;
            }
            if (i2 == 3) {
                return KeyProperties.KEY_ALGORITHM_EC;
            }
            throw new IllegalArgumentException(c.d("Unsupported key algorithm: ", i2));
        }

        public static String fromKeymasterSecretKeyAlgorithm(int i2, int i3) {
            if (i2 == 32) {
                return KeyProperties.KEY_ALGORITHM_AES;
            }
            if (i2 != 128) {
                throw new IllegalArgumentException(c.d("Unsupported key algorithm: ", i2));
            }
            if (i3 == 2) {
                return KeyProperties.KEY_ALGORITHM_HMAC_SHA1;
            }
            if (i3 == 3) {
                return KeyProperties.KEY_ALGORITHM_HMAC_SHA224;
            }
            if (i3 == 4) {
                return KeyProperties.KEY_ALGORITHM_HMAC_SHA256;
            }
            if (i3 == 5) {
                return KeyProperties.KEY_ALGORITHM_HMAC_SHA384;
            }
            if (i3 == 6) {
                return KeyProperties.KEY_ALGORITHM_HMAC_SHA512;
            }
            throw new IllegalArgumentException("Unsupported HMAC digest: " + Digest.fromKeymaster(i3));
        }

        public static int toKeymasterAsymmetricKeyAlgorithm(String str) {
            if (KeyProperties.KEY_ALGORITHM_EC.equalsIgnoreCase(str)) {
                return 3;
            }
            if (KeyProperties.KEY_ALGORITHM_RSA.equalsIgnoreCase(str)) {
                return 1;
            }
            throw new IllegalArgumentException(c.j("Unsupported key algorithm: ", str));
        }

        public static int toKeymasterDigest(String str) {
            String upperCase = str.toUpperCase(Locale.US);
            if (!upperCase.startsWith("HMAC")) {
                return -1;
            }
            String strSubstring = upperCase.substring(4);
            strSubstring.getClass();
            switch (strSubstring) {
                case "SHA224":
                    return 3;
                case "SHA256":
                    return 4;
                case "SHA384":
                    return 5;
                case "SHA512":
                    return 6;
                case "SHA1":
                    return 2;
                default:
                    throw new IllegalArgumentException("Unsupported HMAC digest: ".concat(strSubstring));
            }
        }

        public static int toKeymasterSecretKeyAlgorithm(String str) {
            if (KeyProperties.KEY_ALGORITHM_AES.equalsIgnoreCase(str)) {
                return 32;
            }
            if (str.toUpperCase(Locale.US).startsWith("HMAC")) {
                return 128;
            }
            throw new IllegalArgumentException("Unsupported secret key algorithm: ".concat(str));
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface KeyAlgorithmEnum {
    }

    public static abstract class Origin {
        private Origin() {
        }

        public static int fromKeymaster(int i2) {
            if (i2 == 0) {
                return 1;
            }
            if (i2 == 2) {
                return 2;
            }
            if (i2 == 3) {
                return 4;
            }
            throw new IllegalArgumentException(c.d("Unknown origin: ", i2));
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OriginEnum {
    }

    public static abstract class Purpose {
        private Purpose() {
        }

        public static int allFromKeymaster(Collection<Integer> collection) {
            Iterator<Integer> it = collection.iterator();
            int iFromKeymaster = 0;
            while (it.hasNext()) {
                iFromKeymaster |= fromKeymaster(it.next().intValue());
            }
            return iFromKeymaster;
        }

        public static int[] allToKeymaster(int i2) {
            int[] setFlags = KeyProperties.getSetFlags(i2);
            for (int i3 = 0; i3 < setFlags.length; i3++) {
                setFlags[i3] = toKeymaster(setFlags[i3]);
            }
            return setFlags;
        }

        public static int fromKeymaster(int i2) {
            if (i2 == 0) {
                return 1;
            }
            if (i2 == 1) {
                return 2;
            }
            if (i2 == 2) {
                return 4;
            }
            if (i2 == 3) {
                return 8;
            }
            throw new IllegalArgumentException(c.d("Unknown purpose: ", i2));
        }

        public static int toKeymaster(int i2) {
            if (i2 == 1) {
                return 0;
            }
            if (i2 == 2) {
                return 1;
            }
            if (i2 == 4) {
                return 2;
            }
            if (i2 == 8) {
                return 3;
            }
            throw new IllegalArgumentException(c.d("Unknown purpose: ", i2));
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface PurposeEnum {
    }

    public static abstract class SignaturePadding {
        private SignaturePadding() {
        }

        public static int[] allToKeymaster(String[] strArr) {
            if (strArr == null || strArr.length == 0) {
                return EmptyArray.INT;
            }
            int[] iArr = new int[strArr.length];
            for (int i2 = 0; i2 < strArr.length; i2++) {
                iArr[i2] = toKeymaster(strArr[i2]);
            }
            return iArr;
        }

        public static String fromKeymaster(int i2) {
            if (i2 == 3) {
                return KeyProperties.SIGNATURE_PADDING_RSA_PSS;
            }
            if (i2 == 5) {
                return KeyProperties.SIGNATURE_PADDING_RSA_PKCS1;
            }
            throw new IllegalArgumentException(c.d("Unsupported signature padding: ", i2));
        }

        public static int toKeymaster(String str) {
            String upperCase = str.toUpperCase(Locale.US);
            upperCase.getClass();
            if (upperCase.equals(KeyProperties.SIGNATURE_PADDING_RSA_PSS)) {
                return 3;
            }
            if (upperCase.equals(KeyProperties.SIGNATURE_PADDING_RSA_PKCS1)) {
                return 5;
            }
            throw new IllegalArgumentException("Unsupported signature padding scheme: ".concat(str));
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SignaturePaddingEnum {
    }

    private KeyProperties() {
    }

    private static int getSetBitCount(int i2) {
        int i3 = 0;
        if (i2 == 0) {
            return 0;
        }
        while (i2 != 0) {
            if ((i2 & 1) != 0) {
                i3++;
            }
            i2 >>>= 1;
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int[] getSetFlags(int i2) {
        if (i2 == 0) {
            return EmptyArray.INT;
        }
        int[] iArr = new int[getSetBitCount(i2)];
        int i3 = 1;
        int i4 = 0;
        while (i2 != 0) {
            if ((i2 & 1) != 0) {
                iArr[i4] = i3;
                i4++;
            }
            i2 >>>= 1;
            i3 <<= 1;
        }
        return iArr;
    }
}
