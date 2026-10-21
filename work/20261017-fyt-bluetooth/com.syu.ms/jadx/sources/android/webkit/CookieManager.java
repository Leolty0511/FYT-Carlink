package android.webkit;

import android.net.WebAddress;

/* JADX INFO: loaded from: classes.dex */
public class CookieManager {
    public static boolean allowFileSchemeCookies() {
        return getInstance().allowFileSchemeCookiesImpl();
    }

    public static synchronized CookieManager getInstance() {
        return WebViewFactory.getProvider().getCookieManager();
    }

    public static void setAcceptFileSchemeCookies(boolean z2) {
        getInstance().setAcceptFileSchemeCookiesImpl(z2);
    }

    public synchronized boolean acceptCookie() {
        throw new MustOverrideException();
    }

    public boolean allowFileSchemeCookiesImpl() {
        throw new MustOverrideException();
    }

    public Object clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException("doesn't implement Cloneable");
    }

    public void flushCookieStore() {
        throw new MustOverrideException();
    }

    public String getCookie(String str) {
        throw new MustOverrideException();
    }

    public synchronized boolean hasCookies() {
        throw new MustOverrideException();
    }

    public void removeAllCookie() {
        throw new MustOverrideException();
    }

    public void removeExpiredCookie() {
        throw new MustOverrideException();
    }

    public void removeSessionCookie() {
        throw new MustOverrideException();
    }

    public synchronized void setAcceptCookie(boolean z2) {
        throw new MustOverrideException();
    }

    public void setAcceptFileSchemeCookiesImpl(boolean z2) {
        throw new MustOverrideException();
    }

    public void setCookie(String str, String str2) {
        throw new MustOverrideException();
    }

    public String getCookie(String str, boolean z2) {
        throw new MustOverrideException();
    }

    public synchronized boolean hasCookies(boolean z2) {
        throw new MustOverrideException();
    }

    public synchronized String getCookie(WebAddress webAddress) {
        throw new MustOverrideException();
    }
}
