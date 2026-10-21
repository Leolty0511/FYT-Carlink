package android.util.jar;

import android.accessibilityservice.c;
import android.app.m;
import android.security.keystore.KeyProperties;
import android.util.apk.ApkSignatureSchemeV2Verifier;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.jar.Attributes;
import sun.security.jca.Providers;
import sun.security.pkcs.PKCS7;
import sun.security.pkcs.SignerInfo;

/* JADX INFO: loaded from: classes2.dex */
class StrictJarVerifier {
    private static final String[] DIGEST_ALGORITHMS = {KeyProperties.DIGEST_SHA512, KeyProperties.DIGEST_SHA384, "SHA-256", "SHA1"};
    private final String jarName;
    private final int mainAttributesEnd;
    private final StrictJarManifest manifest;
    private final HashMap<String, byte[]> metaEntries;
    private final boolean signatureSchemeRollbackProtectionsEnforced;
    private final Hashtable<String, HashMap<String, Attributes>> signatures = new Hashtable<>(5);
    private final Hashtable<String, Certificate[]> certificates = new Hashtable<>(5);
    private final Hashtable<String, Certificate[][]> verifiedEntries = new Hashtable<>();

    public static class VerifierEntry extends OutputStream {
        private final Certificate[][] certChains;
        private final MessageDigest digest;
        private final byte[] hash;
        private final String name;
        private final Hashtable<String, Certificate[][]> verifiedEntries;

        public VerifierEntry(String str, MessageDigest messageDigest, byte[] bArr, Certificate[][] certificateArr, Hashtable<String, Certificate[][]> hashtable) {
            this.name = str;
            this.digest = messageDigest;
            this.hash = bArr;
            this.certChains = certificateArr;
            this.verifiedEntries = hashtable;
        }

        public void verify() {
            if (StrictJarVerifier.verifyMessageDigest(this.digest.digest(), this.hash)) {
                this.verifiedEntries.put(this.name, this.certChains);
            } else {
                String str = this.name;
                throw StrictJarVerifier.invalidDigest("META-INF/MANIFEST.MF", str, str);
            }
        }

        @Override // java.io.OutputStream
        public void write(int i2) {
            this.digest.update((byte) i2);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i2, int i3) {
            this.digest.update(bArr, i2, i3);
        }
    }

    public StrictJarVerifier(String str, StrictJarManifest strictJarManifest, HashMap<String, byte[]> map, boolean z2) {
        this.jarName = str;
        this.manifest = strictJarManifest;
        this.metaEntries = map;
        this.mainAttributesEnd = strictJarManifest.getMainAttributesEnd();
        this.signatureSchemeRollbackProtectionsEnforced = z2;
    }

    private static SecurityException failedVerification(String str, String str2) {
        throw new SecurityException(m.h(str, " failed verification of ", str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static SecurityException invalidDigest(String str, String str2, String str3) {
        throw new SecurityException(str + " has invalid digest for " + str2 + " in " + str3);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0037  */
    private boolean verify(Attributes attributes, String str, byte[] bArr, int i2, int i3, boolean z2, boolean z3) {
        int i4 = 0;
        while (true) {
            String[] strArr = DIGEST_ALGORITHMS;
            if (i4 >= strArr.length) {
                return z3;
            }
            String str2 = strArr[i4];
            String value = attributes.getValue(str2 + str);
            if (value != null) {
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance(str2);
                    if (z2) {
                        int i5 = i3 - 1;
                        if (bArr[i5] == 10 && bArr[i3 - 2] == 10) {
                            messageDigest.update(bArr, i2, i5 - i2);
                        } else {
                            messageDigest.update(bArr, i2, i3 - i2);
                        }
                    } else {
                        messageDigest.update(bArr, i2, i3 - i2);
                    }
                    return verifyMessageDigest(messageDigest.digest(), value.getBytes(StandardCharsets.ISO_8859_1));
                } catch (NoSuchAlgorithmException unused) {
                    continue;
                }
            }
            i4++;
        }
    }

    public static Certificate[] verifyBytes(byte[] bArr, byte[] bArr2) {
        try {
            try {
                Object objStartJarVerification = Providers.startJarVerification();
                PKCS7 pkcs7 = new PKCS7(bArr);
                SignerInfo[] signerInfoArrVerify = pkcs7.verify(bArr2);
                if (signerInfoArrVerify == null || signerInfoArrVerify.length == 0) {
                    throw new GeneralSecurityException("Failed to verify signature: no verified SignerInfos");
                }
                ArrayList certificateChain = signerInfoArrVerify[0].getCertificateChain(pkcs7);
                if (certificateChain == null) {
                    throw new GeneralSecurityException("Failed to find verified SignerInfo certificate chain");
                }
                if (certificateChain.isEmpty()) {
                    throw new GeneralSecurityException("Verified SignerInfo certificate chain is emtpy");
                }
                Certificate[] certificateArr = (Certificate[]) certificateChain.toArray(new X509Certificate[certificateChain.size()]);
                Providers.stopJarVerification(objStartJarVerification);
                return certificateArr;
            } catch (IOException e2) {
                throw new GeneralSecurityException("IO exception verifying jar cert", e2);
            }
        } catch (Throwable th) {
            Providers.stopJarVerification((Object) null);
            throw th;
        }
    }

    private void verifyCertificate(String str) {
        byte[] bArr;
        String value;
        boolean z2;
        StringBuilder sb = new StringBuilder();
        boolean z3 = false;
        sb.append(str.substring(0, str.lastIndexOf(46)));
        sb.append(".SF");
        String string = sb.toString();
        byte[] bArr2 = this.metaEntries.get(string);
        if (bArr2 == null || (bArr = this.metaEntries.get("META-INF/MANIFEST.MF")) == null) {
            return;
        }
        try {
            Certificate[] certificateArrVerifyBytes = verifyBytes(this.metaEntries.get(str), bArr2);
            if (certificateArrVerifyBytes != null) {
                this.certificates.put(string, certificateArrVerifyBytes);
            }
            Attributes attributes = new Attributes();
            HashMap<String, Attributes> map = new HashMap<>();
            try {
                new StrictJarManifestReader(bArr2, attributes).readEntries(map, null);
                if (this.signatureSchemeRollbackProtectionsEnforced && (value = attributes.getValue(ApkSignatureSchemeV2Verifier.SF_ATTRIBUTE_ANDROID_APK_SIGNED_NAME)) != null) {
                    StringTokenizer stringTokenizer = new StringTokenizer(value, ",");
                    while (true) {
                        if (!stringTokenizer.hasMoreTokens()) {
                            z2 = false;
                            break;
                        }
                        String strTrim = stringTokenizer.nextToken().trim();
                        if (!strTrim.isEmpty()) {
                            try {
                                if (Integer.parseInt(strTrim) == 2) {
                                    z2 = true;
                                    break;
                                }
                            } catch (Exception unused) {
                                continue;
                            }
                        }
                    }
                    if (z2) {
                        throw new SecurityException(c.n(c.u(string, " indicates "), this.jarName, " is signed using APK Signature Scheme v2, but no such signature was found. Signature stripped?"));
                    }
                }
                if (attributes.get(Attributes.Name.SIGNATURE_VERSION) == null) {
                    return;
                }
                String value2 = attributes.getValue("Created-By");
                if (value2 != null && value2.indexOf("signtool") != -1) {
                    z3 = true;
                }
                int i2 = this.mainAttributesEnd;
                if (i2 > 0 && !z3 && !verify(attributes, "-Digest-Manifest-Main-Attributes", bArr, 0, i2, false, true)) {
                    throw failedVerification(this.jarName, string);
                }
                if (!verify(attributes, z3 ? "-Digest" : "-Digest-Manifest", bArr, 0, bArr.length, false, false)) {
                    for (Map.Entry<String, Attributes> entry : map.entrySet()) {
                        StrictJarManifest.Chunk chunk = this.manifest.getChunk(entry.getKey());
                        if (chunk == null) {
                            return;
                        }
                        if (!verify(entry.getValue(), "-Digest", bArr, chunk.start, chunk.end, z3, false)) {
                            throw invalidDigest(string, entry.getKey(), this.jarName);
                        }
                    }
                }
                this.metaEntries.put(string, null);
                this.signatures.put(string, map);
            } catch (IOException unused2) {
            }
        } catch (GeneralSecurityException e2) {
            throw failedVerification(this.jarName, string, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean verifyMessageDigest(byte[] bArr, byte[] bArr2) {
        try {
            return MessageDigest.isEqual(bArr, Base64.getDecoder().decode(bArr2));
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public void addMetaEntry(String str, byte[] bArr) {
        this.metaEntries.put(str.toUpperCase(Locale.US), bArr);
    }

    public Certificate[][] getCertificateChains(String str) {
        return this.verifiedEntries.get(str);
    }

    public VerifierEntry initEntry(String str) {
        Attributes attributes;
        if (this.manifest == null || this.signatures.isEmpty() || (attributes = this.manifest.getAttributes(str)) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, HashMap<String, Attributes>> entry : this.signatures.entrySet()) {
            if (entry.getValue().get(str) != null) {
                Certificate[] certificateArr = this.certificates.get(entry.getKey());
                if (certificateArr != null) {
                    arrayList.add(certificateArr);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        Certificate[][] certificateArr2 = (Certificate[][]) arrayList.toArray(new Certificate[arrayList.size()][]);
        int i2 = 0;
        while (true) {
            String[] strArr = DIGEST_ALGORITHMS;
            if (i2 >= strArr.length) {
                break;
            }
            String str2 = strArr[i2];
            String value = attributes.getValue(str2 + "-Digest");
            if (value != null) {
                try {
                    return new VerifierEntry(str, MessageDigest.getInstance(str2), value.getBytes(StandardCharsets.ISO_8859_1), certificateArr2, this.verifiedEntries);
                } catch (NoSuchAlgorithmException unused) {
                    continue;
                }
            }
            i2++;
        }
        return null;
    }

    public boolean isSignedJar() {
        return this.certificates.size() > 0;
    }

    public synchronized boolean readCertificates() {
        if (this.metaEntries.isEmpty()) {
            return false;
        }
        Iterator<String> it = this.metaEntries.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next.endsWith(".DSA") || next.endsWith(".RSA") || next.endsWith(".EC")) {
                verifyCertificate(next);
                it.remove();
            }
        }
        return true;
    }

    public void removeMetaEntries() {
        this.metaEntries.clear();
    }

    private static SecurityException failedVerification(String str, String str2, Throwable th) {
        throw new SecurityException(m.h(str, " failed verification of ", str2), th);
    }
}
