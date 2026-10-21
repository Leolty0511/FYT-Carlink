package android.net.wifi.hotspot2;

import android.accessibilityservice.c;
import android.app.m;
import android.net.wifi.hotspot2.omadm.PpsMoParser;
import android.net.wifi.hotspot2.pps.Credential;
import android.security.KeyChain;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ConfigParser {
    private static final String BOUNDARY = "boundary=";
    private static final String CONTENT_TRANSFER_ENCODING = "Content-Transfer-Encoding";
    private static final String CONTENT_TYPE = "Content-Type";
    private static final String ENCODING_BASE64 = "base64";
    private static final String TAG = "ConfigParser";
    private static final String TYPE_CA_CERT = "application/x-x509-ca-cert";
    private static final String TYPE_MULTIPART_MIXED = "multipart/mixed";
    private static final String TYPE_PASSPOINT_PROFILE = "application/x-passpoint-profile";
    private static final String TYPE_PKCS12 = "application/x-pkcs12";
    private static final String TYPE_WIFI_CONFIG = "application/x-wifi-config";

    public static class MimeHeader {
        public String boundary;
        public String contentType;
        public String encodingType;

        private MimeHeader() {
            this.contentType = null;
            this.boundary = null;
            this.encodingType = null;
        }
    }

    public static class MimePart {
        public byte[] data;
        public boolean isLast;
        public String type;

        private MimePart() {
            this.type = null;
            this.data = null;
            this.isLast = false;
        }
    }

    private static PasspointConfiguration createPasspointConfig(Map<String, byte[]> map) throws IOException {
        byte[] bArr = map.get(TYPE_PASSPOINT_PROFILE);
        if (bArr == null) {
            throw new IOException("Missing Passpoint Profile");
        }
        PasspointConfiguration moText = PpsMoParser.parseMoText(new String(bArr));
        if (moText == null) {
            throw new IOException("Failed to parse Passpoint profile");
        }
        if (moText.getCredential() == null) {
            throw new IOException("Passpoint profile missing credential");
        }
        byte[] bArr2 = map.get(TYPE_CA_CERT);
        if (bArr2 != null) {
            try {
                moText.getCredential().setCaCertificate(parseCACert(bArr2));
            } catch (CertificateException unused) {
                throw new IOException("Failed to parse CA Certificate");
            }
        }
        byte[] bArr3 = map.get(TYPE_PKCS12);
        if (bArr3 != null) {
            try {
                Pair<PrivateKey, List<X509Certificate>> pkcs12 = parsePkcs12(bArr3);
                moText.getCredential().setClientPrivateKey(pkcs12.first);
                Credential credential = moText.getCredential();
                List<X509Certificate> list = pkcs12.second;
                credential.setClientCertificateChain((X509Certificate[]) list.toArray(new X509Certificate[list.size()]));
            } catch (IOException | GeneralSecurityException unused2) {
                throw new IOException("Failed to parse PCKS12 string");
            }
        }
        return moText;
    }

    private static X509Certificate parseCACert(byte[] bArr) {
        return (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArr));
    }

    private static Pair<String, String> parseContentType(String str) throws IOException {
        String[] strArrSplit = str.split(";");
        if (strArrSplit.length < 1) {
            throw new IOException("Invalid Content-Type: ".concat(str));
        }
        String strTrim = strArrSplit[0].trim();
        String strSubstring = null;
        for (int i2 = 1; i2 < strArrSplit.length; i2++) {
            String strTrim2 = strArrSplit[i2].trim();
            if (strTrim2.startsWith(BOUNDARY)) {
                strSubstring = strTrim2.substring(9);
                if (strSubstring.length() > 1 && strSubstring.startsWith("\"") && strSubstring.endsWith("\"")) {
                    strSubstring = strSubstring.substring(1, strSubstring.length() - 1);
                }
            } else {
                m.x(new StringBuilder("Ignore Content-Type attribute: "), strArrSplit[i2], TAG);
            }
        }
        return new Pair<>(strTrim, strSubstring);
    }

    private static MimeHeader parseHeaders(LineNumberReader lineNumberReader) throws IOException {
        MimeHeader mimeHeader = new MimeHeader();
        for (Map.Entry<String, String> entry : readHeaders(lineNumberReader).entrySet()) {
            String key = entry.getKey();
            key.getClass();
            if (key.equals(CONTENT_TRANSFER_ENCODING)) {
                mimeHeader.encodingType = entry.getValue();
            } else if (key.equals("Content-Type")) {
                Pair<String, String> contentType = parseContentType(entry.getValue());
                mimeHeader.contentType = contentType.first;
                mimeHeader.boundary = contentType.second;
            } else {
                m.x(new StringBuilder("Ignore header: "), entry.getKey(), TAG);
            }
        }
        return mimeHeader;
    }

    private static Map<String, byte[]> parseMimeMultipartMessage(LineNumberReader lineNumberReader) throws IOException {
        String line;
        MimePart mimePart;
        MimeHeader headers = parseHeaders(lineNumberReader);
        if (!TextUtils.equals(headers.contentType, TYPE_MULTIPART_MIXED)) {
            throw new IOException("Invalid content type: " + headers.contentType);
        }
        if (TextUtils.isEmpty(headers.boundary)) {
            throw new IOException("Missing boundary string");
        }
        if (!TextUtils.equals(headers.encodingType, ENCODING_BASE64)) {
            throw new IOException("Unexpected encoding: " + headers.encodingType);
        }
        do {
            line = lineNumberReader.readLine();
            if (line == null) {
                throw new IOException("Unexpected EOF before first boundary @ " + lineNumberReader.getLineNumber());
            }
        } while (!line.equals("--" + headers.boundary));
        HashMap map = new HashMap();
        do {
            mimePart = parseMimePart(lineNumberReader, headers.boundary);
            map.put(mimePart.type, mimePart.data);
        } while (!mimePart.isLast);
        return map;
    }

    private static MimePart parseMimePart(LineNumberReader lineNumberReader, String str) throws IOException {
        MimeHeader headers = parseHeaders(lineNumberReader);
        if (!TextUtils.equals(headers.encodingType, ENCODING_BASE64)) {
            throw new IOException("Unexpected encoding type: " + headers.encodingType);
        }
        if (!TextUtils.equals(headers.contentType, TYPE_PASSPOINT_PROFILE) && !TextUtils.equals(headers.contentType, TYPE_CA_CERT) && !TextUtils.equals(headers.contentType, TYPE_PKCS12)) {
            throw new IOException("Unexpected content type: " + headers.contentType);
        }
        StringBuilder sb = new StringBuilder();
        String strJ = c.j("--", str);
        String strD = c.D(strJ, "--");
        while (true) {
            String line = lineNumberReader.readLine();
            if (line == null) {
                throw new IOException("Unexpected EOF file in body @ " + lineNumberReader.getLineNumber());
            }
            if (line.startsWith(strJ)) {
                boolean zEquals = line.equals(strD);
                MimePart mimePart = new MimePart();
                mimePart.type = headers.contentType;
                mimePart.data = Base64.decode(sb.toString(), 0);
                mimePart.isLast = zEquals;
                return mimePart;
            }
            sb.append(line);
        }
    }

    public static PasspointConfiguration parsePasspointConfig(String str, byte[] bArr) {
        if (!TextUtils.equals(str, TYPE_WIFI_CONFIG)) {
            m.r("Unexpected MIME type: ", str, TAG);
            return null;
        }
        try {
            return createPasspointConfig(parseMimeMultipartMessage(new LineNumberReader(new InputStreamReader(new ByteArrayInputStream(Base64.decode(new String(bArr, StandardCharsets.ISO_8859_1), 0)), StandardCharsets.ISO_8859_1))));
        } catch (IOException | IllegalArgumentException e2) {
            Log.e(TAG, "Failed to parse installation file: " + e2.getMessage());
            return null;
        }
    }

    private static Pair<PrivateKey, List<X509Certificate>> parsePkcs12(byte[] bArr) throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        KeyStore keyStore = KeyStore.getInstance(KeyChain.EXTRA_PKCS12);
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        keyStore.load(byteArrayInputStream, new char[0]);
        byteArrayInputStream.close();
        if (keyStore.size() != 1) {
            throw new IOException("Unexpected key size: " + keyStore.size());
        }
        String strNextElement = keyStore.aliases().nextElement();
        if (strNextElement == null) {
            throw new IOException("No alias found");
        }
        ArrayList arrayList = null;
        PrivateKey privateKey = (PrivateKey) keyStore.getKey(strNextElement, null);
        Certificate[] certificateChain = keyStore.getCertificateChain(strNextElement);
        if (certificateChain != null) {
            arrayList = new ArrayList();
            for (Certificate certificate : certificateChain) {
                if (!(certificate instanceof X509Certificate)) {
                    throw new IOException("Unexpceted certificate type: " + certificate.getClass());
                }
                arrayList.add((X509Certificate) certificate);
            }
        }
        return new Pair<>(privateKey, arrayList);
    }

    private static Map<String, String> readHeaders(LineNumberReader lineNumberReader) throws IOException {
        HashMap map = new HashMap();
        String strTrim = null;
        StringBuilder sb = null;
        while (true) {
            String line = lineNumberReader.readLine();
            if (line == null) {
                throw new IOException("Missing line @ " + lineNumberReader.getLineNumber());
            }
            if (line.length() == 0 || line.trim().length() == 0) {
                if (strTrim != null) {
                    map.put(strTrim, sb.toString());
                }
                return map;
            }
            int iIndexOf = line.indexOf(58);
            if (iIndexOf < 0) {
                if (sb == null) {
                    StringBuilder sbV = c.v("Bad header line: '", line, "' @ ");
                    sbV.append(lineNumberReader.getLineNumber());
                    throw new IOException(sbV.toString());
                }
                sb.append(' ');
                sb.append(line.trim());
            } else {
                if (Character.isWhitespace(line.charAt(0))) {
                    StringBuilder sbV2 = c.v("Illegal blank prefix in header line '", line, "' @ ");
                    sbV2.append(lineNumberReader.getLineNumber());
                    throw new IOException(sbV2.toString());
                }
                if (strTrim != null) {
                    map.put(strTrim, sb.toString());
                }
                strTrim = line.substring(0, iIndexOf).trim();
                sb = new StringBuilder();
                sb.append(line.substring(iIndexOf + 1).trim());
            }
        }
    }
}
