package android.security.keystore;

import android.accessibilityservice.c;
import android.hardware.fingerprint.FingerprintManager;
import android.security.GateKeeper;
import android.security.KeyStore;
import android.security.keymaster.KeymasterArguments;
import android.security.keymaster.KeymasterDefs;
import com.android.internal.logging.nano.MetricsProto;
import java.security.ProviderException;

/* JADX INFO: loaded from: classes.dex */
public abstract class KeymasterUtils {
    private KeymasterUtils() {
    }

    public static void addMinMacLengthAuthorizationIfNecessary(KeymasterArguments keymasterArguments, int i2, int[] iArr, int[] iArr2) {
        if (i2 == 32) {
            if (com.android.internal.util.ArrayUtils.contains(iArr, 32)) {
                keymasterArguments.addUnsignedInt(KeymasterDefs.KM_TAG_MIN_MAC_LENGTH, 96L);
            }
        } else {
            if (i2 != 128) {
                return;
            }
            if (iArr2.length != 1) {
                throw new ProviderException(c.m(new StringBuilder("Unsupported number of authorized digests for HMAC key: "), iArr2.length, ". Exactly one digest must be authorized"));
            }
            int i3 = iArr2[0];
            int digestOutputSizeBits = getDigestOutputSizeBits(i3);
            if (digestOutputSizeBits != -1) {
                keymasterArguments.addUnsignedInt(KeymasterDefs.KM_TAG_MIN_MAC_LENGTH, digestOutputSizeBits);
            } else {
                throw new ProviderException("HMAC key authorized for unsupported digest: " + KeyProperties.Digest.fromKeymaster(i3));
            }
        }
    }

    public static void addUserAuthArgs(KeymasterArguments keymasterArguments, boolean z2, int i2, boolean z3, boolean z4, long j2) {
        if (!z2) {
            keymasterArguments.addBoolean(KeymasterDefs.KM_TAG_NO_AUTH_REQUIRED);
            return;
        }
        if (i2 != -1) {
            if (j2 == 0) {
                j2 = getRootSid();
            }
            keymasterArguments.addUnsignedLong(KeymasterDefs.KM_TAG_USER_SECURE_ID, KeymasterArguments.toUint64(j2));
            keymasterArguments.addEnum(KeymasterDefs.KM_TAG_USER_AUTH_TYPE, 3);
            keymasterArguments.addUnsignedInt(KeymasterDefs.KM_TAG_AUTH_TIMEOUT, i2);
            if (z3) {
                keymasterArguments.addBoolean(KeymasterDefs.KM_TAG_ALLOW_WHILE_ON_BODY);
                return;
            }
            return;
        }
        FingerprintManager fingerprintManager = (FingerprintManager) KeyStore.getApplicationContext().getSystemService(FingerprintManager.class);
        long authenticatorId = fingerprintManager != null ? fingerprintManager.getAuthenticatorId() : 0L;
        if (authenticatorId == 0) {
            throw new IllegalStateException("At least one fingerprint must be enrolled to create keys requiring user authentication for every use");
        }
        if (j2 == 0) {
            j2 = z4 ? authenticatorId : getRootSid();
        }
        keymasterArguments.addUnsignedLong(KeymasterDefs.KM_TAG_USER_SECURE_ID, KeymasterArguments.toUint64(j2));
        keymasterArguments.addEnum(KeymasterDefs.KM_TAG_USER_AUTH_TYPE, 2);
        if (z3) {
            throw new ProviderException("Key validity extension while device is on-body is not supported for keys requiring fingerprint authentication");
        }
    }

    public static int getDigestOutputSizeBits(int i2) {
        switch (i2) {
            case 0:
                return -1;
            case 1:
                return 128;
            case 2:
                return 160;
            case 3:
                return 224;
            case 4:
                return 256;
            case 5:
                return MetricsProto.MetricsEvent.ACTION_SHOW_SETTINGS_SUGGESTION;
            case 6:
                return 512;
            default:
                throw new IllegalArgumentException(c.d("Unknown digest: ", i2));
        }
    }

    private static long getRootSid() {
        long secureUserId = GateKeeper.getSecureUserId();
        if (secureUserId != 0) {
            return secureUserId;
        }
        throw new IllegalStateException("Secure lock screen must be enabled to create keys requiring user authentication");
    }

    public static boolean isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(int i2) {
        if (i2 == 1) {
            return false;
        }
        if (i2 == 2 || i2 == 3 || i2 == 32) {
            return true;
        }
        throw new IllegalArgumentException(c.d("Unsupported block mode: ", i2));
    }

    public static boolean isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(int i2) {
        if (i2 == 1) {
            return false;
        }
        if (i2 == 2 || i2 == 4) {
            return true;
        }
        throw new IllegalArgumentException(c.d("Unsupported asymmetric encryption padding scheme: ", i2));
    }
}
