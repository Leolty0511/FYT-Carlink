package android.net.wifi.aware;

/* JADX INFO: loaded from: classes.dex */
public class WifiAwareUtils {
    public static boolean validatePassphrase(String str) {
        return str != null && str.length() >= 8 && str.length() <= 63;
    }

    public static boolean validatePmk(byte[] bArr) {
        return bArr != null && bArr.length == 32;
    }

    public static void validateServiceName(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("Invalid service name - null");
        }
        if (bArr.length < 1 || bArr.length > 255) {
            throw new IllegalArgumentException("Invalid service name length - must be between 1 and 255 bytes (UTF-8 encoding)");
        }
        for (byte b2 : bArr) {
            if ((b2 & 128) == 0 && ((b2 < 48 || b2 > 57) && ((b2 < 97 || b2 > 122) && ((b2 < 65 || b2 > 90) && b2 != 45 && b2 != 46)))) {
                throw new IllegalArgumentException("Invalid service name - illegal characters, allowed = (0-9, a-z,A-Z, -, .)");
            }
        }
    }
}
