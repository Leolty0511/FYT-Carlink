package android.security;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.android.org.bouncycastle.util.io.pem.PemObject;
import com.android.org.bouncycastle.util.io.pem.PemReader;
import com.android.org.bouncycastle.util.io.pem.PemWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.security.KeyPair;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Credentials {
    public static final String CA_CERTIFICATE = "CACERT_";
    public static final String EXTENSION_CER = ".cer";
    public static final String EXTENSION_CRT = ".crt";
    public static final String EXTENSION_P12 = ".p12";
    public static final String EXTENSION_PFX = ".pfx";
    public static final String EXTRA_CA_CERTIFICATES_DATA = "ca_certificates_data";
    public static final String EXTRA_CA_CERTIFICATES_NAME = "ca_certificates_name";
    public static final String EXTRA_INSTALL_AS_UID = "install_as_uid";
    public static final String EXTRA_PRIVATE_KEY = "PKEY";
    public static final String EXTRA_PUBLIC_KEY = "KEY";
    public static final String EXTRA_USER_CERTIFICATE_DATA = "user_certificate_data";
    public static final String EXTRA_USER_CERTIFICATE_NAME = "user_certificate_name";
    public static final String EXTRA_USER_PRIVATE_KEY_DATA = "user_private_key_data";
    public static final String EXTRA_USER_PRIVATE_KEY_NAME = "user_private_key_name";
    public static final String EXTRA_WAPI_AS_CERTIFICATES_DATA = "wapi_ca_certificates_data";
    public static final String EXTRA_WAPI_AS_CERTIFICATES_NAME = "wapi_ca_certificates_name";
    public static final String EXTRA_WAPI_USER_CERTIFICATES_DATA = "wapi_user_certificate_data";
    public static final String EXTRA_WAPI_USER_CERTIFICATES_NAME = "wapi_user_certificate_name";
    public static final String INSTALL_ACTION = "android.credentials.INSTALL";
    public static final String INSTALL_AS_USER_ACTION = "android.credentials.INSTALL_AS_USER";
    public static final String LOCKDOWN_VPN = "LOCKDOWN_VPN";
    private static final String LOGTAG = "Credentials";
    public static final String UNLOCK_ACTION = "com.android.credentials.UNLOCK";
    public static final String USER_CERTIFICATE = "USRCERT_";
    public static final String USER_PRIVATE_KEY = "USRPKEY_";
    public static final String USER_SECRET_KEY = "USRSKEY_";
    public static final String VPN = "VPN_";
    public static final String WAPI_AS_CERTIFICATE = "WAPIAS_";
    public static final String WAPI_USER_CERTIFICATE = "WAPIUSR_";
    public static final String WIFI = "WIFI_";
    private static Credentials singleton;

    public static List<X509Certificate> convertFromPem(byte[] bArr) {
        PemReader pemReader = new PemReader(new InputStreamReader(new ByteArrayInputStream(bArr), StandardCharsets.US_ASCII));
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X509");
            ArrayList arrayList = new ArrayList();
            while (true) {
                PemObject pemObject = pemReader.readPemObject();
                if (pemObject == null) {
                    pemReader.close();
                    return arrayList;
                }
                if (!pemObject.getType().equals("CERTIFICATE")) {
                    throw new IllegalArgumentException("Unknown type " + pemObject.getType());
                }
                arrayList.add((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(pemObject.getContent())));
            }
        } catch (Throwable th) {
            pemReader.close();
            throw th;
        }
    }

    public static byte[] convertToPem(Certificate... certificateArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PemWriter pemWriter = new PemWriter(new OutputStreamWriter(byteArrayOutputStream, StandardCharsets.US_ASCII));
        for (Certificate certificate : certificateArr) {
            pemWriter.writeObject(new PemObject("CERTIFICATE", certificate.getEncoded()));
        }
        pemWriter.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static boolean deleteAllTypesForAlias(KeyStore keyStore, String str) {
        return deleteAllTypesForAlias(keyStore, str, -1);
    }

    public static boolean deleteCertificateTypesForAlias(KeyStore keyStore, String str) {
        return deleteCertificateTypesForAlias(keyStore, str, -1);
    }

    public static boolean deletePrivateKeyTypeForAlias(KeyStore keyStore, String str) {
        return deletePrivateKeyTypeForAlias(keyStore, str, -1);
    }

    public static boolean deleteSecretKeyTypeForAlias(KeyStore keyStore, String str) {
        return deleteSecretKeyTypeForAlias(keyStore, str, -1);
    }

    public static Credentials getInstance() {
        if (singleton == null) {
            singleton = new Credentials();
        }
        return singleton;
    }

    public void install(Context context) {
        try {
            context.startActivity(KeyChain.createInstallIntent());
        } catch (ActivityNotFoundException e2) {
            Log.w(LOGTAG, e2.toString());
        }
    }

    public void unlock(Context context) {
        try {
            context.startActivity(new Intent(UNLOCK_ACTION));
        } catch (ActivityNotFoundException e2) {
            Log.w(LOGTAG, e2.toString());
        }
    }

    public static boolean deleteAllTypesForAlias(KeyStore keyStore, String str, int i2) {
        return deleteCertificateTypesForAlias(keyStore, str, i2) & deletePrivateKeyTypeForAlias(keyStore, str, i2) & deleteSecretKeyTypeForAlias(keyStore, str, i2);
    }

    public static boolean deleteCertificateTypesForAlias(KeyStore keyStore, String str, int i2) {
        return keyStore.delete(CA_CERTIFICATE + str, i2) & keyStore.delete(USER_CERTIFICATE + str, i2);
    }

    public static boolean deletePrivateKeyTypeForAlias(KeyStore keyStore, String str, int i2) {
        return keyStore.delete(USER_PRIVATE_KEY + str, i2);
    }

    public static boolean deleteSecretKeyTypeForAlias(KeyStore keyStore, String str, int i2) {
        return keyStore.delete(USER_SECRET_KEY + str, i2);
    }

    public void install(Context context, KeyPair keyPair) {
        try {
            Intent intentCreateInstallIntent = KeyChain.createInstallIntent();
            intentCreateInstallIntent.putExtra(EXTRA_PRIVATE_KEY, keyPair.getPrivate().getEncoded());
            intentCreateInstallIntent.putExtra(EXTRA_PUBLIC_KEY, keyPair.getPublic().getEncoded());
            context.startActivity(intentCreateInstallIntent);
        } catch (ActivityNotFoundException e2) {
            Log.w(LOGTAG, e2.toString());
        }
    }

    public void install(Context context, String str, byte[] bArr) {
        try {
            Intent intentCreateInstallIntent = KeyChain.createInstallIntent();
            intentCreateInstallIntent.putExtra(str, bArr);
            context.startActivity(intentCreateInstallIntent);
        } catch (ActivityNotFoundException e2) {
            Log.w(LOGTAG, e2.toString());
        }
    }
}
