package android.webkit;

import android.os.StrictMode;
import android.util.AndroidRuntimeException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class WebViewFactory {
    private static final String CHROMIUM_WEBVIEW_FACTORY = "com.android.webview.chromium.WebViewChromiumFactoryProvider";
    private static final boolean DEBUG = false;
    private static final String LOGTAG = "WebViewFactory";
    private static WebViewFactoryProvider sProviderInstance;
    private static final Object sProviderLock = new Object();

    public static class Preloader {
        public static WebViewFactoryProvider sPreloadedProvider;

        static {
            try {
                sPreloadedProvider = (WebViewFactoryProvider) WebViewFactory.getFactoryClass().newInstance();
            } catch (Exception e2) {
                Log.w(WebViewFactory.LOGTAG, "error preloading provider", e2);
            }
        }

        private Preloader() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Class<WebViewFactoryProvider> getFactoryClass() {
        return Class.forName(CHROMIUM_WEBVIEW_FACTORY);
    }

    public static WebViewFactoryProvider getProvider() {
        synchronized (sProviderLock) {
            WebViewFactoryProvider webViewFactoryProvider = sProviderInstance;
            if (webViewFactoryProvider != null) {
                return webViewFactoryProvider;
            }
            try {
                Class<WebViewFactoryProvider> factoryClass = getFactoryClass();
                WebViewFactoryProvider webViewFactoryProvider2 = Preloader.sPreloadedProvider;
                if (webViewFactoryProvider2 != null && webViewFactoryProvider2.getClass() == factoryClass) {
                    WebViewFactoryProvider webViewFactoryProvider3 = Preloader.sPreloadedProvider;
                    sProviderInstance = webViewFactoryProvider3;
                    return webViewFactoryProvider3;
                }
                StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                try {
                    try {
                        WebViewFactoryProvider webViewFactoryProviderNewInstance = factoryClass.newInstance();
                        sProviderInstance = webViewFactoryProviderNewInstance;
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        return webViewFactoryProviderNewInstance;
                    } catch (Exception e2) {
                        Log.e(LOGTAG, "error instantiating provider", e2);
                        throw new AndroidRuntimeException(e2);
                    }
                } catch (Throwable th) {
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                    throw th;
                }
            } catch (ClassNotFoundException e3) {
                Log.e(LOGTAG, "error loading provider", e3);
                throw new AndroidRuntimeException(e3);
            }
        }
    }

    public static boolean isExperimentalWebViewAvailable() {
        return false;
    }

    public static boolean isUseExperimentalWebViewSet() {
        return false;
    }

    public static void setUseExperimentalWebView(boolean z2) {
    }

    public static boolean useExperimentalWebView() {
        return true;
    }
}
