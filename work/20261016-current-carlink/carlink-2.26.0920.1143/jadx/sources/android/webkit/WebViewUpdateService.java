package android.webkit;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public final class WebViewUpdateService {
    private WebViewUpdateService() {
    }

    public static WebViewProviderInfo[] getAllWebViewPackages() {
        try {
            return getUpdateService().getAllWebViewPackages();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static String getCurrentWebViewPackageName() {
        try {
            return getUpdateService().getCurrentWebViewPackageName();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private static IWebViewUpdateService getUpdateService() {
        return WebViewFactory.getUpdateService();
    }

    public static WebViewProviderInfo[] getValidWebViewPackages() {
        try {
            return getUpdateService().getValidWebViewPackages();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }
}
