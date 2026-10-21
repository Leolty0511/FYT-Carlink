package android.webkit;

import java.io.InputStream;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class PluginData {
    private long mContentLength;
    private Map<String, String[]> mHeaders;
    private int mStatusCode;
    private InputStream mStream;

    @Deprecated
    public PluginData(InputStream inputStream, long j2, Map<String, String[]> map, int i2) {
        this.mStream = inputStream;
        this.mContentLength = j2;
        this.mHeaders = map;
        this.mStatusCode = i2;
    }

    @Deprecated
    public long getContentLength() {
        return this.mContentLength;
    }

    @Deprecated
    public Map<String, String[]> getHeaders() {
        return this.mHeaders;
    }

    @Deprecated
    public InputStream getInputStream() {
        return this.mStream;
    }

    @Deprecated
    public int getStatusCode() {
        return this.mStatusCode;
    }
}
