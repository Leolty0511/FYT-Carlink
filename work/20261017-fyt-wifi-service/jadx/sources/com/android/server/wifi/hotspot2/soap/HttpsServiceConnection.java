package com.android.server.wifi.hotspot2.soap;

import android.net.Network;
import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.ksoap2.HeaderProperty;
import org.ksoap2.transport.ServiceConnection;

/* JADX INFO: loaded from: classes.dex */
public class HttpsServiceConnection implements ServiceConnection {
    public static final int DEFAULT_TIMEOUT_MS = 5000;
    private HttpsURLConnection mConnection;

    public HttpsServiceConnection(Network network, URL url) throws IOException {
        this.mConnection = (HttpsURLConnection) network.openConnection(url);
        this.mConnection.setConnectTimeout(5000);
        this.mConnection.setReadTimeout(5000);
    }

    @Override // org.ksoap2.transport.ServiceConnection
    public void connect() throws IOException {
        this.mConnection.connect();
    }

    @Override // org.ksoap2.transport.ServiceConnection
    public void disconnect() {
        this.mConnection.disconnect();
    }

    @Override // org.ksoap2.transport.ServiceConnection
    public List<HeaderProperty> getResponseProperties() {
        final Map<String, List<String>> properties = this.mConnection.getHeaderFields();
        Set<String> keys = properties.keySet();
        final List<HeaderProperty> retList = new ArrayList<>();
        keys.forEach(new Consumer() { // from class: com.android.server.wifi.hotspot2.soap.-$$Lambda$HttpsServiceConnection$k-nSdSqX0BRNqEjns0MeZJ9Clkk
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                HttpsServiceConnection.lambda$getResponseProperties$1(properties, retList, (String) obj);
            }
        });
        return retList;
    }

    static /* synthetic */ void lambda$getResponseProperties$1(Map properties, final List retList, final String key) {
        List<String> values = (List) properties.get(key);
        values.forEach(new Consumer() { // from class: com.android.server.wifi.hotspot2.soap.-$$Lambda$HttpsServiceConnection$5RQekXFWWcmffL7vs0hIBLXCcn0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                retList.add(new HeaderProperty(key, (String) obj));
            }
        });
    }

    @Override // org.ksoap2.transport.ServiceConnection
    public int getResponseCode() throws IOException {
        return this.mConnection.getResponseCode();
    }

    @Override // org.ksoap2.transport.ServiceConnection
    public void setRequestProperty(String propertyName, String value) {
        if (!TextUtils.equals("Connection", propertyName) || !TextUtils.equals("close", value)) {
            this.mConnection.setRequestProperty(propertyName, value);
        }
    }

    @Override // org.ksoap2.transport.ServiceConnection
    public void setRequestMethod(String requestMethodType) throws IOException {
        this.mConnection.setRequestMethod(requestMethodType);
    }

    @Override // org.ksoap2.transport.ServiceConnection
    public void setFixedLengthStreamingMode(int contentLength) {
        this.mConnection.setFixedLengthStreamingMode(contentLength);
    }

    @Override // org.ksoap2.transport.ServiceConnection
    public void setChunkedStreamingMode() {
        this.mConnection.setChunkedStreamingMode(0);
    }

    @Override // org.ksoap2.transport.ServiceConnection
    public OutputStream openOutputStream() throws IOException {
        return this.mConnection.getOutputStream();
    }

    @Override // org.ksoap2.transport.ServiceConnection
    public InputStream openInputStream() throws IOException {
        return this.mConnection.getInputStream();
    }

    @Override // org.ksoap2.transport.ServiceConnection
    public InputStream getErrorStream() {
        return this.mConnection.getErrorStream();
    }

    @Override // org.ksoap2.transport.ServiceConnection
    public String getHost() {
        return this.mConnection.getURL().getHost();
    }

    @Override // org.ksoap2.transport.ServiceConnection
    public int getPort() {
        return this.mConnection.getURL().getPort();
    }

    @Override // org.ksoap2.transport.ServiceConnection
    public String getPath() {
        return this.mConnection.getURL().getPath();
    }

    public void setSSLSocketFactory(SSLSocketFactory sslSocketFactory) {
        this.mConnection.setSSLSocketFactory(sslSocketFactory);
    }
}
