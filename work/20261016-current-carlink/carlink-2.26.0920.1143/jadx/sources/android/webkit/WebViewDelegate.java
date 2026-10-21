package android.webkit;

import android.accessibilityservice.c;
import android.app.ActivityThread;
import android.app.Application;
import android.app.ResourcesManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.SparseArray;
import android.view.DisplayListCanvas;
import android.view.View;
import android.view.ViewRootImpl;
import com.android.internal.util.ArrayUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class WebViewDelegate {

    public interface OnTraceEnabledChangeListener {
        void onTraceEnabledChange(boolean z2);
    }

    public void addWebViewAssetPath(Context context) {
        String str = WebViewFactory.getLoadedPackageInfo().applicationInfo.sourceDir;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String[] strArr = applicationInfo.sharedLibraryFiles;
        if (ArrayUtils.contains(strArr, str)) {
            return;
        }
        int length = (strArr != null ? strArr.length : 0) + 1;
        String[] strArr2 = new String[length];
        if (strArr != null) {
            System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        }
        strArr2[length - 1] = str;
        applicationInfo.sharedLibraryFiles = strArr2;
        ResourcesManager.getInstance().appendLibAssetForMainAssetPath(applicationInfo.getBaseResourcePath(), str);
    }

    public void callDrawGlFunction(Canvas canvas, long j2) {
        if (!(canvas instanceof DisplayListCanvas)) {
            throw new IllegalArgumentException(canvas.getClass().getName().concat(" is not a DisplayList canvas"));
        }
        ((DisplayListCanvas) canvas).drawGLFunctor2(j2, null);
    }

    public boolean canInvokeDrawGlFunctor(View view) {
        return true;
    }

    public void detachDrawGlFunctor(View view, long j2) {
        ViewRootImpl viewRootImpl = view.getViewRootImpl();
        if (j2 == 0 || viewRootImpl == null) {
            return;
        }
        viewRootImpl.detachFunctor(j2);
    }

    public Application getApplication() {
        return ActivityThread.currentApplication();
    }

    public String getErrorString(Context context, int i2) {
        return LegacyErrorStrings.getString(i2, context);
    }

    public int getPackageId(Resources resources, String str) {
        SparseArray<String> assignedPackageIdentifiers = resources.getAssets().getAssignedPackageIdentifiers();
        for (int i2 = 0; i2 < assignedPackageIdentifiers.size(); i2++) {
            if (str.equals(assignedPackageIdentifiers.valueAt(i2))) {
                return assignedPackageIdentifiers.keyAt(i2);
            }
        }
        throw new RuntimeException(c.j("Package not found: ", str));
    }

    public void invokeDrawGlFunctor(View view, long j2, boolean z2) {
        ViewRootImpl.invokeFunctor(j2, z2);
    }

    public boolean isMultiProcessEnabled() {
        try {
            return WebViewFactory.getUpdateService().isMultiProcessEnabled();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isTraceTagEnabled() {
        return Trace.isTagEnabled(16L);
    }

    public void setOnTraceEnabledChangeListener(final OnTraceEnabledChangeListener onTraceEnabledChangeListener) {
        SystemProperties.addChangeCallback(new Runnable() { // from class: android.webkit.WebViewDelegate.1
            @Override // java.lang.Runnable
            public void run() {
                onTraceEnabledChangeListener.onTraceEnabledChange(WebViewDelegate.this.isTraceTagEnabled());
            }
        });
    }

    public void callDrawGlFunction(Canvas canvas, long j2, Runnable runnable) {
        if (canvas instanceof DisplayListCanvas) {
            ((DisplayListCanvas) canvas).drawGLFunctor2(j2, runnable);
            return;
        }
        throw new IllegalArgumentException(canvas.getClass().getName().concat(" is not a DisplayList canvas"));
    }
}
