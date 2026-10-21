package android.webkit;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public interface WebViewFactoryProvider {

    public interface Statics {
        String findAddress(String str);

        void freeMemoryForTests();

        String getDefaultUserAgent(Context context);

        void setPlatformNotificationsEnabled(boolean z2);

        void setWebContentsDebuggingEnabled(boolean z2);
    }

    WebViewProvider createWebView(WebView webView, WebView.PrivateAccess privateAccess);

    CookieManager getCookieManager();

    GeolocationPermissions getGeolocationPermissions();

    Statics getStatics();

    WebIconDatabase getWebIconDatabase();

    WebStorage getWebStorage();

    WebViewDatabase getWebViewDatabase(Context context);
}
