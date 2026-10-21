package android.webkit;

import java.io.InputStream;
import java.io.StringBufferInputStream;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class WebResourceResponse {
    private String mEncoding;
    private boolean mImmutable;
    private InputStream mInputStream;
    private String mMimeType;
    private String mReasonPhrase;
    private Map<String, String> mResponseHeaders;
    private int mStatusCode;

    public WebResourceResponse(String str, String str2, InputStream inputStream) {
        this.mMimeType = str;
        this.mEncoding = str2;
        setData(inputStream);
    }

    private void checkImmutable() {
        if (this.mImmutable) {
            throw new IllegalStateException("This WebResourceResponse instance is immutable");
        }
    }

    public InputStream getData() {
        return this.mInputStream;
    }

    public String getEncoding() {
        return this.mEncoding;
    }

    public String getMimeType() {
        return this.mMimeType;
    }

    public String getReasonPhrase() {
        return this.mReasonPhrase;
    }

    public Map<String, String> getResponseHeaders() {
        return this.mResponseHeaders;
    }

    public int getStatusCode() {
        return this.mStatusCode;
    }

    public void setData(InputStream inputStream) {
        checkImmutable();
        if (inputStream != null && StringBufferInputStream.class.isAssignableFrom(inputStream.getClass())) {
            throw new IllegalArgumentException("StringBufferInputStream is deprecated and must not be passed to a WebResourceResponse");
        }
        this.mInputStream = inputStream;
    }

    public void setEncoding(String str) {
        checkImmutable();
        this.mEncoding = str;
    }

    public void setMimeType(String str) {
        checkImmutable();
        this.mMimeType = str;
    }

    public void setResponseHeaders(Map<String, String> map) {
        checkImmutable();
        this.mResponseHeaders = map;
    }

    public void setStatusCodeAndReasonPhrase(int i2, String str) {
        checkImmutable();
        if (i2 < 100) {
            throw new IllegalArgumentException("statusCode can't be less than 100.");
        }
        if (i2 > 599) {
            throw new IllegalArgumentException("statusCode can't be greater than 599.");
        }
        if (i2 > 299 && i2 < 400) {
            throw new IllegalArgumentException("statusCode can't be in the [300, 399] range.");
        }
        if (str == null) {
            throw new IllegalArgumentException("reasonPhrase can't be null.");
        }
        if (str.trim().isEmpty()) {
            throw new IllegalArgumentException("reasonPhrase can't be empty.");
        }
        for (int i3 = 0; i3 < str.length(); i3++) {
            if (str.charAt(i3) > 127) {
                throw new IllegalArgumentException("reasonPhrase can't contain non-ASCII characters.");
            }
        }
        this.mStatusCode = i2;
        this.mReasonPhrase = str;
    }

    public WebResourceResponse(String str, String str2, int i2, String str3, Map<String, String> map, InputStream inputStream) {
        this(str, str2, inputStream);
        setStatusCodeAndReasonPhrase(i2, str3);
        setResponseHeaders(map);
    }

    public WebResourceResponse(boolean z2, String str, String str2, int i2, String str3, Map<String, String> map, InputStream inputStream) {
        this.mImmutable = z2;
        this.mMimeType = str;
        this.mEncoding = str2;
        this.mStatusCode = i2;
        this.mReasonPhrase = str3;
        this.mResponseHeaders = map;
        this.mInputStream = inputStream;
    }
}
