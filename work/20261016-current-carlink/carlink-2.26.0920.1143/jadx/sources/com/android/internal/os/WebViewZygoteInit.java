package com.android.internal.os;

import android.app.ApplicationLoaders;
import android.net.LocalSocket;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebViewFactory;
import android.webkit.WebViewFactoryProvider;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
class WebViewZygoteInit {
    public static final String TAG = "WebViewZygoteInit";
    private static ZygoteServer sServer;

    public static class WebViewZygoteConnection extends ZygoteConnection {
        public WebViewZygoteConnection(LocalSocket localSocket, String str) {
            super(localSocket, str);
        }

        @Override // com.android.internal.os.ZygoteConnection
        public void handlePreloadPackage(String str, String str2, String str3) {
            boolean zBooleanValue;
            Log.i(WebViewZygoteInit.TAG, "Beginning package preload");
            ClassLoader classLoaderCreateAndCacheWebViewClassLoader = ApplicationLoaders.getDefault().createAndCacheWebViewClassLoader(str, str2, str3);
            for (String str4 : TextUtils.split(str, File.pathSeparator)) {
                Zygote.nativeAllowFileAcrossFork(str4);
            }
            try {
                Class<WebViewFactoryProvider> webViewProviderClass = WebViewFactory.getWebViewProviderClass(classLoaderCreateAndCacheWebViewClassLoader);
                Method method = webViewProviderClass.getMethod("preloadInZygote", new Class[0]);
                method.setAccessible(true);
                if (method.getReturnType() != Boolean.TYPE) {
                    Log.e(WebViewZygoteInit.TAG, "Unexpected return type: preloadInZygote must return boolean");
                    zBooleanValue = false;
                } else {
                    zBooleanValue = ((Boolean) webViewProviderClass.getMethod("preloadInZygote", new Class[0]).invoke(null, new Object[0])).booleanValue();
                    if (!zBooleanValue) {
                        try {
                            Log.e(WebViewZygoteInit.TAG, "preloadInZygote returned false");
                        } catch (ReflectiveOperationException e2) {
                            Log.e(WebViewZygoteInit.TAG, "Exception while preloading package", e2);
                            zBooleanValue = zBooleanValue;
                        }
                    }
                }
            } catch (ReflectiveOperationException e3) {
                Log.e(WebViewZygoteInit.TAG, "Exception while preloading package", e3);
                zBooleanValue = false;
            }
            try {
                getSocketOutputStream().writeInt(zBooleanValue ? 1 : 0);
                Log.i(WebViewZygoteInit.TAG, "Package preload done");
            } catch (IOException e4) {
                throw new IllegalStateException("Error writing to command socket", e4);
            }
        }

        @Override // com.android.internal.os.ZygoteConnection
        public boolean isPreloadComplete() {
            return true;
        }

        @Override // com.android.internal.os.ZygoteConnection
        public void preload() {
        }
    }

    public static class WebViewZygoteServer extends ZygoteServer {
        private WebViewZygoteServer() {
        }

        @Override // com.android.internal.os.ZygoteServer
        public ZygoteConnection createNewConnection(LocalSocket localSocket, String str) {
            return new WebViewZygoteConnection(localSocket, str);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x002d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void main(java.lang.String[] r2) {
        /*
            com.android.internal.os.WebViewZygoteInit$WebViewZygoteServer r2 = new com.android.internal.os.WebViewZygoteInit$WebViewZygoteServer
            r0 = 0
            r2.<init>()
            com.android.internal.os.WebViewZygoteInit.sServer = r2
            r2 = 0
            android.system.Os.setpgid(r2, r2)     // Catch: android.system.ErrnoException -> L3e
            com.android.internal.os.ZygoteServer r2 = com.android.internal.os.WebViewZygoteInit.sServer     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L2f
            java.lang.String r0 = "webview_zygote"
            r2.registerServerSocket(r0)     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L2f
            com.android.internal.os.ZygoteServer r2 = com.android.internal.os.WebViewZygoteInit.sServer     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L2f
            java.lang.String r0 = ","
            java.lang.String[] r1 = android.os.Build.SUPPORTED_ABIS     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L2f
            java.lang.String r0 = android.text.TextUtils.join(r0, r1)     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L2f
            java.lang.Runnable r2 = r2.runSelectLoop(r0)     // Catch: java.lang.Throwable -> L2d java.lang.RuntimeException -> L2f
            com.android.internal.os.ZygoteServer r0 = com.android.internal.os.WebViewZygoteInit.sServer
            r0.closeServerSocket()
            if (r2 == 0) goto L2c
            r2.run()
        L2c:
            return
        L2d:
            r2 = move-exception
            goto L38
        L2f:
            r2 = move-exception
            java.lang.String r0 = "WebViewZygoteInit"
            java.lang.String r1 = "Fatal exception:"
            android.util.Log.e(r0, r1, r2)     // Catch: java.lang.Throwable -> L2d
            throw r2     // Catch: java.lang.Throwable -> L2d
        L38:
            com.android.internal.os.ZygoteServer r0 = com.android.internal.os.WebViewZygoteInit.sServer
            r0.closeServerSocket()
            throw r2
        L3e:
            r2 = move-exception
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.String r1 = "Failed to setpgid(0,0)"
            r0.<init>(r1, r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.os.WebViewZygoteInit.main(java.lang.String[]):void");
    }
}
