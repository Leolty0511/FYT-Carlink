package android.util;

import android.content.pm.Signature;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class PackageUtils {
    private PackageUtils() {
    }

    public static String computeSha256Digest(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA256");
            messageDigest.update(bArr);
            return ByteStringUtils.toHexString(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public static String computeSignaturesSha256Digest(Signature[] signatureArr) {
        return signatureArr.length == 1 ? computeSha256Digest(signatureArr[0].toByteArray()) : computeSignaturesSha256Digest(computeSignaturesSha256Digests(signatureArr));
    }

    public static String[] computeSignaturesSha256Digests(Signature[] signatureArr) {
        int length = signatureArr.length;
        String[] strArr = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            strArr[i2] = computeSha256Digest(signatureArr[i2].toByteArray());
        }
        return strArr;
    }

    public static String computeSignaturesSha256Digest(String[] strArr) {
        if (strArr.length == 1) {
            return strArr[0];
        }
        Arrays.sort(strArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (String str : strArr) {
            try {
                byteArrayOutputStream.write(str.getBytes());
            } catch (IOException unused) {
            }
        }
        return computeSha256Digest(byteArrayOutputStream.toByteArray());
    }
}
