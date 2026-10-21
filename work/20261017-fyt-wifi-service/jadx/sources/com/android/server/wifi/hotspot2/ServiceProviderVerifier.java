package com.android.server.wifi.hotspot2;

import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.android.internal.annotations.VisibleForTesting;
import com.android.org.bouncycastle.asn1.ASN1Encodable;
import com.android.org.bouncycastle.asn1.ASN1InputStream;
import com.android.org.bouncycastle.asn1.ASN1ObjectIdentifier;
import com.android.org.bouncycastle.asn1.ASN1Sequence;
import com.android.org.bouncycastle.asn1.DERTaggedObject;
import com.android.org.bouncycastle.asn1.DERUTF8String;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class ServiceProviderVerifier {
    private static final int ENTRY_COUNT = 2;

    @VisibleForTesting
    public static final String ID_WFA_OID_HOTSPOT_FRIENDLYNAME = "1.3.6.1.4.1.40808.1.1.1";
    private static final int LANGUAGE_CODE_LENGTH = 3;
    private static final int OTHER_NAME = 0;
    private static final String TAG = "PasspointServiceProviderVerifier";

    public static List<Pair<Locale, String>> getProviderNames(X509Certificate providerCert) {
        List<Pair<Locale, String>> providerNames = new ArrayList<>();
        if (providerCert == null) {
            return providerNames;
        }
        try {
            Collection<List<?>> col = providerCert.getSubjectAlternativeNames();
            if (col == null) {
                return providerNames;
            }
            for (List<?> entry : col) {
                if (entry != null && entry.size() == 2 && ((Integer) entry.get(0)).intValue() == 0) {
                    if (entry.toArray()[1] instanceof byte[]) {
                        byte[] octets = (byte[]) entry.toArray()[1];
                        DERTaggedObject object = new ASN1InputStream(octets).readObject();
                        if (object instanceof DERTaggedObject) {
                            DERTaggedObject taggedObject = object;
                            ASN1Sequence object2 = taggedObject.getObject();
                            if (object2 instanceof ASN1Sequence) {
                                ASN1Sequence innerSequence = object2;
                                ASN1Encodable innerObject = innerSequence.getObjectAt(0);
                                if (innerObject instanceof ASN1ObjectIdentifier) {
                                    ASN1ObjectIdentifier oid = ASN1ObjectIdentifier.getInstance(innerObject);
                                    if (oid.getId().equals(ID_WFA_OID_HOTSPOT_FRIENDLYNAME)) {
                                        for (int index = 1; index < innerSequence.size(); index++) {
                                            DERTaggedObject objectAt = innerSequence.getObjectAt(index);
                                            if (objectAt instanceof DERTaggedObject) {
                                                DERTaggedObject innerSequenceObj = objectAt;
                                                DERUTF8String object3 = innerSequenceObj.getObject();
                                                if (object3 instanceof DERUTF8String) {
                                                    DERUTF8String providerNameUtf8 = object3;
                                                    Pair<Locale, String> providerName = getFriendlyName(providerNameUtf8.getString());
                                                    if (providerName != null) {
                                                        providerNames.add(providerName);
                                                    } else {
                                                        continue;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return providerNames;
    }

    public static boolean verifyCertFingerprint(X509Certificate x509Cert, byte[] certSHA256Fingerprint) {
        try {
            byte[] fingerPrintSha256 = computeHash(x509Cert.getEncoded());
            if (fingerPrintSha256 == null || !Arrays.equals(fingerPrintSha256, certSHA256Fingerprint)) {
                return false;
            }
            return true;
        } catch (Exception e) {
            Log.e(TAG, "verifyCertFingerprint err:" + e);
        }
    }

    private static byte[] computeHash(byte[] input) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            return digest.digest(input);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    private static Pair<Locale, String> getFriendlyName(String alternativeName) {
        if (TextUtils.isEmpty(alternativeName) || alternativeName.length() < 3) {
            return null;
        }
        String language = alternativeName.substring(0, 3);
        try {
            Locale locale = new Locale.Builder().setLanguage(language).build();
            String friendlyName = alternativeName.substring(3);
            return Pair.create(locale, friendlyName);
        } catch (Exception e) {
            return null;
        }
    }
}
