package android.net;

import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import com.google.android.collect.Lists;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import w.a;

/* JADX INFO: loaded from: classes.dex */
public class PacProxySelector extends ProxySelector {
    public static final String PROXY_SERVICE = "com.android.net.IProxyService";
    private static final String TAG = "PacProxySelector";
    private final List<java.net.Proxy> mDefaultList;
    private a mProxyService;

    public PacProxySelector() {
        a aVarJ2 = a.AbstractBinderC0123a.J2(ServiceManager.getService(PROXY_SERVICE));
        this.mProxyService = aVarJ2;
        if (aVarJ2 == null) {
            Log.e(TAG, "PacManager: no proxy service");
        }
        this.mDefaultList = Lists.newArrayList(java.net.Proxy.NO_PROXY);
    }

    private static List<java.net.Proxy> parseResponse(String str) {
        int i2;
        String[] strArrSplit = str.split(";");
        ArrayList arrayListNewArrayList = Lists.newArrayList();
        for (String str2 : strArrSplit) {
            String strTrim = str2.trim();
            if (strTrim.equals("DIRECT")) {
                arrayListNewArrayList.add(java.net.Proxy.NO_PROXY);
            } else if (strTrim.startsWith("PROXY ")) {
                String[] strArrSplit2 = strTrim.substring(6).split(":");
                String str3 = strArrSplit2[0];
                try {
                    i2 = Integer.parseInt(strArrSplit2[1]);
                } catch (Exception unused) {
                    i2 = 8080;
                }
                arrayListNewArrayList.add(new java.net.Proxy(java.net.Proxy.Type.HTTP, InetSocketAddress.createUnresolved(str3, i2)));
            }
        }
        if (arrayListNewArrayList.size() == 0) {
            arrayListNewArrayList.add(java.net.Proxy.NO_PROXY);
        }
        return arrayListNewArrayList;
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
    }

    @Override // java.net.ProxySelector
    public List<java.net.Proxy> select(URI uri) {
        String host;
        if (this.mProxyService == null) {
            this.mProxyService = a.AbstractBinderC0123a.J2(ServiceManager.getService(PROXY_SERVICE));
        }
        if (this.mProxyService == null) {
            Log.e(TAG, "select: no proxy service return NO_PROXY");
            return Lists.newArrayList(java.net.Proxy.NO_PROXY);
        }
        String strE2 = null;
        try {
            host = uri.toURL().toString();
        } catch (MalformedURLException unused) {
            host = uri.getHost();
        }
        try {
            strE2 = this.mProxyService.E2(uri.getHost(), host);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
        return strE2 == null ? this.mDefaultList : parseResponse(strE2);
    }
}
