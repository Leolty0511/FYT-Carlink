package android.net.http;

import android.net.ParseException;
import android.net.ProxyProperties;
import android.net.WebAddress;
import android.net.dhcp.DhcpPacket;
import android.text.format.DateFormat;
import android.webkit.CookieManager;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import junit.framework.Assert;
import org.apache.commons.codec.binary.Base64;

/* JADX INFO: loaded from: classes.dex */
public class RequestHandle {
    private static final String AUTHORIZATION_HEADER = "Authorization";
    public static final int MAX_REDIRECT_COUNT = 16;
    private static final String PROXY_AUTHORIZATION_HEADER = "Proxy-Authorization";
    private int mBodyLength;
    private InputStream mBodyProvider;
    private Connection mConnection;
    private Map<String, String> mHeaders;
    private String mMethod;
    private int mRedirectCount;
    private Request mRequest;
    private RequestQueue mRequestQueue;
    private WebAddress mUri;
    private String mUrl;

    public RequestHandle(RequestQueue requestQueue, String str, WebAddress webAddress, String str2, Map<String, String> map, InputStream inputStream, int i2, Request request) {
        this.mRedirectCount = 0;
        this.mHeaders = map == null ? new HashMap<>() : map;
        this.mBodyProvider = inputStream;
        this.mBodyLength = i2;
        this.mMethod = str2 == null ? "GET" : str2;
        this.mUrl = str;
        this.mUri = webAddress;
        this.mRequestQueue = requestQueue;
        this.mRequest = request;
    }

    private String H(String str) {
        if (str == null) {
            return null;
        }
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes());
            if (bArrDigest != null) {
                return bufferToHex(bArrDigest);
            }
            return null;
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException(e2);
        }
    }

    private String KD(String str, String str2) {
        return H(str + ":" + str2);
    }

    public static String authorizationHeader(boolean z2) {
        return !z2 ? AUTHORIZATION_HEADER : PROXY_AUTHORIZATION_HEADER;
    }

    private String bufferToHex(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', DateFormat.AM_PM, 'b', 'c', DateFormat.DATE, 'e', 'f'};
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        if (length <= 0) {
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
        StringBuilder sb = new StringBuilder(length * 2);
        for (int i2 = 0; i2 < length; i2++) {
            byte b2 = (byte) (bArr[i2] & DhcpPacket.DHCP_DOMAIN_NAME);
            sb.append(cArr[(byte) ((bArr[i2] & 240) >> 4)]);
            sb.append(cArr[b2]);
        }
        return sb.toString();
    }

    public static String computeBasicAuthResponse(String str, String str2) {
        Assert.assertNotNull(str);
        Assert.assertNotNull(str2);
        return new String(Base64.encodeBase64((str + ':' + str2).getBytes()));
    }

    private String computeCnonce() {
        int iNextInt = new Random().nextInt();
        return Integer.toString(iNextInt == Integer.MIN_VALUE ? Integer.MAX_VALUE : Math.abs(iNextInt), 16);
    }

    private String computeDigest(String str, String str2, String str3, String str4, String str5, String str6) {
        if (str4 == null) {
            return KD(H(str), str3 + ":" + H(str2));
        }
        if (!str4.equalsIgnoreCase("auth")) {
            return null;
        }
        return KD(H(str), str3 + ":" + str5 + ":" + str6 + ":" + str4 + ":" + H(str2));
    }

    private String computeDigestAuthResponse(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        Assert.assertNotNull(str);
        Assert.assertNotNull(str2);
        Assert.assertNotNull(str3);
        String str8 = this.mMethod + ":" + this.mUrl;
        String strComputeCnonce = computeCnonce();
        String strComputeDigest = computeDigest(str + ":" + str3 + ":" + str2, str8, str4, str5, "00000001", strComputeCnonce);
        String str9 = ((((ProxyProperties.LOCAL_EXCL_LIST + "username=" + doubleQuote(str) + ", ") + "realm=" + doubleQuote(str3) + ", ") + "nonce=" + doubleQuote(str4) + ", ") + "uri=" + doubleQuote(this.mUrl) + ", ") + "response=" + doubleQuote(strComputeDigest);
        if (str7 != null) {
            str9 = str9 + ", opaque=" + doubleQuote(str7);
        }
        if (str6 != null) {
            str9 = str9 + ", algorithm=" + str6;
        }
        if (str5 == null) {
            return str9;
        }
        return str9 + ", qop=" + str5 + ", nc=00000001, cnonce=" + doubleQuote(strComputeCnonce);
    }

    private void createAndQueueNewRequest() {
        if (this.mConnection == null) {
            this.mRequest = this.mRequestQueue.queueRequest(this.mUrl, this.mUri, this.mMethod, this.mHeaders, this.mRequest.mEventHandler, this.mBodyProvider, this.mBodyLength).mRequest;
            return;
        }
        RequestHandle requestHandleQueueSynchronousRequest = this.mRequestQueue.queueSynchronousRequest(this.mUrl, this.mUri, this.mMethod, this.mHeaders, this.mRequest.mEventHandler, this.mBodyProvider, this.mBodyLength);
        this.mRequest = requestHandleQueueSynchronousRequest.mRequest;
        this.mConnection = requestHandleQueueSynchronousRequest.mConnection;
        requestHandleQueueSynchronousRequest.processRequest();
    }

    private String doubleQuote(String str) {
        if (str == null) {
            return null;
        }
        return "\"" + str + "\"";
    }

    private void setupAuthResponse() {
        try {
            InputStream inputStream = this.mBodyProvider;
            if (inputStream != null) {
                inputStream.reset();
            }
        } catch (IOException unused) {
        }
        createAndQueueNewRequest();
    }

    public void cancel() {
        Request request = this.mRequest;
        if (request != null) {
            request.cancel();
        }
    }

    public String getMethod() {
        return this.mMethod;
    }

    public int getRedirectCount() {
        return this.mRedirectCount;
    }

    public void handleSslErrorResponse(boolean z2) {
        Request request = this.mRequest;
        if (request != null) {
            request.handleSslErrorResponse(z2);
        }
    }

    public boolean isRedirectMax() {
        return this.mRedirectCount >= 16;
    }

    public void pauseRequest(boolean z2) {
        Request request = this.mRequest;
        if (request != null) {
            request.setLoadingPaused(z2);
        }
    }

    public void processRequest() {
        Connection connection = this.mConnection;
        if (connection != null) {
            connection.processRequests(this.mRequest);
        }
    }

    public void setRedirectCount(int i2) {
        this.mRedirectCount = i2;
    }

    public void setupBasicAuthResponse(boolean z2, String str, String str2) {
        String strComputeBasicAuthResponse = computeBasicAuthResponse(str, str2);
        this.mHeaders.put(authorizationHeader(z2), "Basic " + strComputeBasicAuthResponse);
        setupAuthResponse();
    }

    public void setupDigestAuthResponse(boolean z2, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        String strComputeDigestAuthResponse = computeDigestAuthResponse(str, str2, str3, str4, str5, str6, str7);
        this.mHeaders.put(authorizationHeader(z2), "Digest " + strComputeDigestAuthResponse);
        setupAuthResponse();
    }

    public boolean setupRedirect(String str, int i2, Map<String, String> map) {
        this.mHeaders.remove(AUTHORIZATION_HEADER);
        this.mHeaders.remove(PROXY_AUTHORIZATION_HEADER);
        int i3 = this.mRedirectCount + 1;
        this.mRedirectCount = i3;
        if (i3 == 16) {
            this.mRequest.error(-9, 17039529);
            return false;
        }
        if (this.mUrl.startsWith("https:") && str.startsWith("http:")) {
            this.mHeaders.remove("Referer");
        }
        this.mUrl = str;
        try {
            this.mUri = new WebAddress(this.mUrl);
        } catch (ParseException e2) {
            e2.printStackTrace();
        }
        this.mHeaders.remove("Cookie");
        String cookie = CookieManager.getInstance().getCookie(this.mUri);
        if (cookie != null && cookie.length() > 0) {
            this.mHeaders.put("Cookie", cookie);
        }
        if ((i2 == 302 || i2 == 303) && this.mMethod.equals("POST")) {
            this.mMethod = "GET";
        }
        if (i2 == 307) {
            try {
                InputStream inputStream = this.mBodyProvider;
                if (inputStream != null) {
                    inputStream.reset();
                }
            } catch (IOException unused) {
                return false;
            }
        } else {
            this.mHeaders.remove("Content-Type");
            this.mBodyProvider = null;
        }
        this.mHeaders.putAll(map);
        createAndQueueNewRequest();
        return true;
    }

    public void waitUntilComplete() {
        this.mRequest.waitUntilComplete();
    }

    public RequestHandle(RequestQueue requestQueue, String str, WebAddress webAddress, String str2, Map<String, String> map, InputStream inputStream, int i2, Request request, Connection connection) {
        this(requestQueue, str, webAddress, str2, map, inputStream, i2, request);
        this.mConnection = connection;
    }
}
