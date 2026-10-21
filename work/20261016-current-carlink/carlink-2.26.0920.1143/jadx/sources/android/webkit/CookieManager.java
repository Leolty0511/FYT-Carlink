package android.webkit;

import android.net.WebAddress;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CookieManager {
    public static boolean allowFileSchemeCookies() {
        return getInstance().allowFileSchemeCookiesImpl();
    }

    public static CookieManager getInstance() {
        return WebViewFactory.getProvider().getCookieManager();
    }

    public static void setAcceptFileSchemeCookies(boolean z2) {
        getInstance().setAcceptFileSchemeCookiesImpl(z2);
    }

    public abstract boolean acceptCookie();

    public abstract boolean acceptThirdPartyCookies(WebView webView);

    public abstract boolean allowFileSchemeCookiesImpl();

    public Object clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException("doesn't implement Cloneable");
    }

    public abstract void flush();

    public synchronized String getCookie(WebAddress webAddress) {
        return getCookie(webAddress.toString());
    }

    public abstract String getCookie(String str);

    public abstract String getCookie(String str, boolean z2);

    public abstract boolean hasCookies();

    public abstract boolean hasCookies(boolean z2);

    @Deprecated
    public abstract void removeAllCookie();

    public abstract void removeAllCookies(ValueCallback<Boolean> valueCallback);

    @Deprecated
    public abstract void removeExpiredCookie();

    @Deprecated
    public abstract void removeSessionCookie();

    public abstract void removeSessionCookies(ValueCallback<Boolean> valueCallback);

    public abstract void setAcceptCookie(boolean z2);

    public abstract void setAcceptFileSchemeCookiesImpl(boolean z2);

    public abstract void setAcceptThirdPartyCookies(WebView webView, boolean z2);

    public abstract void setCookie(String str, String str2);

    public abstract void setCookie(String str, String str2, ValueCallback<Boolean> valueCallback);
}
