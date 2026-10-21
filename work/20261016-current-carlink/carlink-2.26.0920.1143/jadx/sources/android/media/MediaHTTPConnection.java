package android.media;

import android.content.IntentFilter;
import android.net.NetworkUtils;
import android.net.ProxyInfo;
import android.os.IBinder;
import android.os.StrictMode;
import android.provider.SettingsStringUtil;
import android.util.Log;
import com.android.internal.content.NativeLibraryHelper;
import com.google.common.net.HttpHeaders;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.CookieHandler;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URL;
import java.net.UnknownServiceException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class MediaHTTPConnection extends IMediaHTTPConnection.Stub {
    private static final int CONNECT_TIMEOUT_MS = 30000;
    private static final int HTTP_TEMP_REDIRECT = 307;
    private static final int MAX_REDIRECTS = 20;
    private static final String TAG = "MediaHTTPConnection";
    private static final boolean VERBOSE = false;
    private long mNativeContext;
    private long mCurrentOffset = -1;
    private URL mURL = null;
    private Map<String, String> mHeaders = null;
    private HttpURLConnection mConnection = null;
    private long mTotalSize = -1;
    private InputStream mInputStream = null;
    private boolean mAllowCrossDomainRedirect = true;
    private boolean mAllowCrossProtocolRedirect = true;

    static {
        System.loadLibrary("media_jni");
        native_init();
    }

    public MediaHTTPConnection() {
        if (CookieHandler.getDefault() == null) {
            Log.w(TAG, "MediaHTTPConnection: Unexpected. No CookieHandler found.");
        }
        native_setup();
    }

    private Map<String, String> convertHeaderStringToMap(String str) {
        HashMap map = new HashMap();
        for (String str2 : str.split("\r\n")) {
            int iIndexOf = str2.indexOf(SettingsStringUtil.DELIMITER);
            if (iIndexOf >= 0) {
                String strSubstring = str2.substring(0, iIndexOf);
                String strSubstring2 = str2.substring(iIndexOf + 1);
                if (!filterOutInternalHeaders(strSubstring, strSubstring2)) {
                    map.put(strSubstring, strSubstring2);
                }
            }
        }
        return map;
    }

    private boolean filterOutInternalHeaders(String str, String str2) {
        if (!"android-allow-cross-domain-redirect".equalsIgnoreCase(str)) {
            return false;
        }
        boolean z2 = parseBoolean(str2);
        this.mAllowCrossDomainRedirect = z2;
        this.mAllowCrossProtocolRedirect = z2;
        return true;
    }

    private static final boolean isLocalHost(URL url) {
        String host;
        if (url == null || (host = url.getHost()) == null) {
            return false;
        }
        try {
            return host.equalsIgnoreCase(ProxyInfo.LOCAL_HOST) || NetworkUtils.numericToInetAddress(host).isLoopbackAddress();
        } catch (IllegalArgumentException unused) {
        }
    }

    private final native void native_finalize();

    private final native IBinder native_getIMemory();

    private static final native void native_init();

    private final native int native_readAt(long j2, int i2);

    private final native void native_setup();

    private boolean parseBoolean(String str) {
        try {
            return Long.parseLong(str) != 0;
        } catch (NumberFormatException unused) {
            return "true".equalsIgnoreCase(str) || "yes".equalsIgnoreCase(str);
        }
    }

    private void seekTo(long j2) throws IOException {
        int iLastIndexOf;
        teardownConnection();
        try {
            URL url = this.mURL;
            boolean zIsLocalHost = isLocalHost(url);
            int i2 = 0;
            while (true) {
                if (zIsLocalHost) {
                    this.mConnection = (HttpURLConnection) url.openConnection(Proxy.NO_PROXY);
                } else {
                    this.mConnection = (HttpURLConnection) url.openConnection();
                }
                this.mConnection.setConnectTimeout(30000);
                this.mConnection.setInstanceFollowRedirects(this.mAllowCrossDomainRedirect);
                Map<String, String> map = this.mHeaders;
                if (map != null) {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        this.mConnection.setRequestProperty(entry.getKey(), entry.getValue());
                    }
                }
                if (j2 > 0) {
                    this.mConnection.setRequestProperty(HttpHeaders.RANGE, "bytes=" + j2 + NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
                }
                int responseCode = this.mConnection.getResponseCode();
                if (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303 && responseCode != 307) {
                    if (this.mAllowCrossDomainRedirect) {
                        this.mURL = this.mConnection.getURL();
                    }
                    if (responseCode == 206) {
                        String headerField = this.mConnection.getHeaderField(HttpHeaders.CONTENT_RANGE);
                        this.mTotalSize = -1L;
                        if (headerField != null && (iLastIndexOf = headerField.lastIndexOf(47)) >= 0) {
                            try {
                                this.mTotalSize = Long.parseLong(headerField.substring(iLastIndexOf + 1));
                            } catch (NumberFormatException unused) {
                            }
                        }
                    } else {
                        if (responseCode != 200) {
                            throw new IOException();
                        }
                        this.mTotalSize = this.mConnection.getContentLength();
                    }
                    if (j2 > 0 && responseCode != 206) {
                        throw new ProtocolException();
                    }
                    this.mInputStream = new BufferedInputStream(this.mConnection.getInputStream());
                    this.mCurrentOffset = j2;
                    return;
                }
                i2++;
                if (i2 > 20) {
                    throw new NoRouteToHostException("Too many redirects: " + i2);
                }
                String requestMethod = this.mConnection.getRequestMethod();
                if (responseCode == 307 && !requestMethod.equals("GET") && !requestMethod.equals("HEAD")) {
                    throw new NoRouteToHostException("Invalid redirect");
                }
                String headerField2 = this.mConnection.getHeaderField(HttpHeaders.LOCATION);
                if (headerField2 == null) {
                    throw new NoRouteToHostException("Invalid redirect");
                }
                URL url2 = new URL(this.mURL, headerField2);
                if (!url2.getProtocol().equals(IntentFilter.SCHEME_HTTPS) && !url2.getProtocol().equals(IntentFilter.SCHEME_HTTP)) {
                    throw new NoRouteToHostException("Unsupported protocol redirect");
                }
                boolean zEquals = this.mURL.getProtocol().equals(url2.getProtocol());
                if (!this.mAllowCrossProtocolRedirect && !zEquals) {
                    throw new NoRouteToHostException("Cross-protocol redirects are disallowed");
                }
                boolean zEquals2 = this.mURL.getHost().equals(url2.getHost());
                if (!this.mAllowCrossDomainRedirect && !zEquals2) {
                    throw new NoRouteToHostException("Cross-domain redirects are disallowed");
                }
                if (responseCode != 307) {
                    this.mURL = url2;
                }
                url = url2;
            }
        } catch (IOException e2) {
            this.mTotalSize = -1L;
            this.mInputStream = null;
            this.mConnection = null;
            this.mCurrentOffset = -1L;
            throw e2;
        }
    }

    private void teardownConnection() {
        HttpURLConnection httpURLConnection = this.mConnection;
        if (httpURLConnection != null) {
            this.mInputStream = null;
            httpURLConnection.disconnect();
            this.mConnection = null;
            this.mCurrentOffset = -1L;
        }
    }

    @Override // android.media.IMediaHTTPConnection
    public IBinder connect(String str, String str2) {
        try {
            disconnect();
            this.mAllowCrossDomainRedirect = true;
            this.mURL = new URL(str);
            this.mHeaders = convertHeaderStringToMap(str2);
            return native_getIMemory();
        } catch (MalformedURLException unused) {
            return null;
        }
    }

    @Override // android.media.IMediaHTTPConnection
    public void disconnect() {
        teardownConnection();
        this.mHeaders = null;
        this.mURL = null;
    }

    @Override // android.os.Binder
    public void finalize() {
        native_finalize();
    }

    @Override // android.media.IMediaHTTPConnection
    public String getMIMEType() {
        if (this.mConnection == null) {
            try {
                seekTo(0L);
            } catch (IOException unused) {
                return "application/octet-stream";
            }
        }
        return this.mConnection.getContentType();
    }

    @Override // android.media.IMediaHTTPConnection
    public long getSize() {
        if (this.mConnection == null) {
            try {
                seekTo(0L);
            } catch (IOException unused) {
                return -1L;
            }
        }
        return this.mTotalSize;
    }

    @Override // android.media.IMediaHTTPConnection
    public String getUri() {
        return this.mURL.toString();
    }

    @Override // android.media.IMediaHTTPConnection
    public int readAt(long j2, int i2) {
        return native_readAt(j2, i2);
    }

    private int readAt(long j2, byte[] bArr, int i2) {
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
        try {
            if (j2 != this.mCurrentOffset) {
                seekTo(j2);
            }
            int i3 = 0;
            int i4 = this.mInputStream.read(bArr, 0, i2);
            if (i4 != -1) {
                i3 = i4;
            }
            this.mCurrentOffset += (long) i3;
            return i3;
        } catch (NoRouteToHostException e2) {
            Log.w(TAG, "readAt " + j2 + " / " + i2 + " => " + e2);
            return MediaPlayer.MEDIA_ERROR_UNSUPPORTED;
        } catch (ProtocolException e3) {
            Log.w(TAG, "readAt " + j2 + " / " + i2 + " => " + e3);
            return MediaPlayer.MEDIA_ERROR_UNSUPPORTED;
        } catch (UnknownServiceException e4) {
            Log.w(TAG, "readAt " + j2 + " / " + i2 + " => " + e4);
            return MediaPlayer.MEDIA_ERROR_UNSUPPORTED;
        } catch (IOException | Exception unused) {
            return -1;
        }
    }
}
