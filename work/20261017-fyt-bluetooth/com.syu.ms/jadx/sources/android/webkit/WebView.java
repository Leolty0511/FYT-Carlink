package android.webkit;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.http.SslCertificate;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.StrictMode;
import android.print.PrintDocumentAdapter;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AbsoluteLayout;
import dalvik.system.BlockGuard;
import java.io.BufferedWriter;
import java.io.File;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class WebView extends AbsoluteLayout implements ViewTreeObserver.OnGlobalFocusChangeListener, ViewGroup.OnHierarchyChangeListener, ViewDebug.HierarchyHandler {
    private static final String LOGTAG = "WebView";
    public static final String SCHEME_GEO = "geo:0,0?q=";
    public static final String SCHEME_MAILTO = "mailto:";
    public static final String SCHEME_TEL = "tel:";
    private static Boolean sEnforceThreadChecking = Boolean.FALSE;
    private FindListenerDistributor mFindListener;
    private WebViewProvider mProvider;
    private final Looper mWebViewThread;

    public interface FindListener {
        void onFindResultReceived(int i2, int i3, boolean z2);
    }

    public class FindListenerDistributor implements FindListener {
        private FindListener mFindDialogFindListener;
        private FindListener mUserFindListener;

        private FindListenerDistributor() {
        }

        @Override // android.webkit.WebView.FindListener
        public void onFindResultReceived(int i2, int i3, boolean z2) {
            FindListener findListener = this.mFindDialogFindListener;
            if (findListener != null) {
                findListener.onFindResultReceived(i2, i3, z2);
            }
            FindListener findListener2 = this.mUserFindListener;
            if (findListener2 != null) {
                findListener2.onFindResultReceived(i2, i3, z2);
            }
        }
    }

    public static class HitTestResult {

        @Deprecated
        public static final int ANCHOR_TYPE = 1;
        public static final int EDIT_TEXT_TYPE = 9;
        public static final int EMAIL_TYPE = 4;
        public static final int GEO_TYPE = 3;

        @Deprecated
        public static final int IMAGE_ANCHOR_TYPE = 6;
        public static final int IMAGE_TYPE = 5;
        public static final int PHONE_TYPE = 2;
        public static final int SRC_ANCHOR_TYPE = 7;
        public static final int SRC_IMAGE_ANCHOR_TYPE = 8;
        public static final int UNKNOWN_TYPE = 0;
        private String mExtra;
        private int mType = 0;

        public String getExtra() {
            return this.mExtra;
        }

        public int getType() {
            return this.mType;
        }

        public void setExtra(String str) {
            this.mExtra = str;
        }

        public void setType(int i2) {
            this.mType = i2;
        }
    }

    @Deprecated
    public interface PictureListener {
        @Deprecated
        void onNewPicture(WebView webView, Picture picture);
    }

    public class PrivateAccess {
        public PrivateAccess() {
        }

        public void awakenScrollBars(int i2) {
            WebView.this.awakenScrollBars(i2);
        }

        public float getHorizontalScrollFactor() {
            return WebView.this.getHorizontalScrollFactor();
        }

        public int getHorizontalScrollbarHeight() {
            return WebView.this.getHorizontalScrollbarHeight();
        }

        public float getVerticalScrollFactor() {
            return WebView.this.getVerticalScrollFactor();
        }

        public void onScrollChanged(int i2, int i3, int i4, int i5) {
            WebView.this.onScrollChanged(i2, i3, i4, i5);
        }

        public void overScrollBy(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, boolean z2) {
            WebView.this.overScrollBy(i2, i3, i4, i5, i6, i7, i8, i9, z2);
        }

        public void setMeasuredDimension(int i2, int i3) {
            WebView.this.setMeasuredDimension(i2, i3);
        }

        public void setScrollXRaw(int i2) {
            WebView.this.mScrollX = i2;
        }

        public void setScrollYRaw(int i2) {
            WebView.this.mScrollY = i2;
        }

        public void super_computeScroll() {
            WebView.super.computeScroll();
        }

        public boolean super_dispatchKeyEvent(KeyEvent keyEvent) {
            return WebView.super.dispatchKeyEvent(keyEvent);
        }

        public int super_getScrollBarStyle() {
            return WebView.super.getScrollBarStyle();
        }

        public void super_onDrawVerticalScrollBar(Canvas canvas, Drawable drawable, int i2, int i3, int i4, int i5) {
            WebView.super.onDrawVerticalScrollBar(canvas, drawable, i2, i3, i4, i5);
        }

        public boolean super_onGenericMotionEvent(MotionEvent motionEvent) {
            return WebView.super.onGenericMotionEvent(motionEvent);
        }

        public boolean super_onHoverEvent(MotionEvent motionEvent) {
            return WebView.super.onHoverEvent(motionEvent);
        }

        public boolean super_performAccessibilityAction(int i2, Bundle bundle) {
            return WebView.super.performAccessibilityAction(i2, bundle);
        }

        public boolean super_performLongClick() {
            return WebView.super.performLongClick();
        }

        public boolean super_requestFocus(int i2, Rect rect) {
            return WebView.super.requestFocus(i2, rect);
        }

        public void super_scrollTo(int i2, int i3) {
            WebView.super.scrollTo(i2, i3);
        }

        public boolean super_setFrame(int i2, int i3, int i4, int i5) {
            return WebView.super.setFrame(i2, i3, i4, i5);
        }

        public void super_setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            WebView.super.setLayoutParams(layoutParams);
        }

        public void awakenScrollBars(int i2, boolean z2) {
            WebView.this.awakenScrollBars(i2, z2);
        }
    }

    public class WebViewTransport {
        private WebView mWebview;

        public WebViewTransport() {
        }

        public synchronized WebView getWebView() {
            return this.mWebview;
        }

        public synchronized void setWebView(WebView webView) {
            this.mWebview = webView;
        }
    }

    public WebView(Context context) {
        this(context, null);
    }

    private void checkThread() {
        if (this.mWebViewThread == null || Looper.myLooper() == this.mWebViewThread) {
            return;
        }
        Throwable th = new Throwable("A WebView method was called on thread '" + Thread.currentThread().getName() + "'. All WebView methods must be called on the same thread. (Expected Looper " + this.mWebViewThread + " called on " + Looper.myLooper() + ", FYI main Looper is " + Looper.getMainLooper() + ")");
        Log.w(LOGTAG, Log.getStackTraceString(th));
        StrictMode.onWebViewMethodCalledOnWrongThread(th);
        if (sEnforceThreadChecking.booleanValue()) {
            throw new RuntimeException(th);
        }
    }

    @Deprecated
    public static void disablePlatformNotifications() {
        getFactory().getStatics().setPlatformNotificationsEnabled(false);
    }

    @Deprecated
    public static void enablePlatformNotifications() {
        getFactory().getStatics().setPlatformNotificationsEnabled(true);
    }

    private void ensureProviderCreated() {
        checkThread();
        if (this.mProvider == null) {
            this.mProvider = getFactory().createWebView(this, new PrivateAccess());
        }
    }

    public static String findAddress(String str) {
        return getFactory().getStatics().findAddress(str);
    }

    public static void freeMemoryForTests() {
        getFactory().getStatics().freeMemoryForTests();
    }

    private static synchronized WebViewFactoryProvider getFactory() {
        return WebViewFactory.getProvider();
    }

    @Deprecated
    public static synchronized PluginList getPluginList() {
        return new PluginList();
    }

    public static void setWebContentsDebuggingEnabled(boolean z2) {
        getFactory().getStatics().setWebContentsDebuggingEnabled(z2);
    }

    private void setupFindListenerIfNeeded() {
        if (this.mFindListener == null) {
            FindListenerDistributor findListenerDistributor = new FindListenerDistributor();
            this.mFindListener = findListenerDistributor;
            this.mProvider.setFindListener(findListenerDistributor);
        }
    }

    public void addJavascriptInterface(Object obj, String str) {
        checkThread();
        this.mProvider.addJavascriptInterface(obj, str);
    }

    public boolean canGoBack() {
        checkThread();
        return this.mProvider.canGoBack();
    }

    public boolean canGoBackOrForward(int i2) {
        checkThread();
        return this.mProvider.canGoBackOrForward(i2);
    }

    public boolean canGoForward() {
        checkThread();
        return this.mProvider.canGoForward();
    }

    @Deprecated
    public boolean canZoomIn() {
        checkThread();
        return this.mProvider.canZoomIn();
    }

    @Deprecated
    public boolean canZoomOut() {
        checkThread();
        return this.mProvider.canZoomOut();
    }

    @Deprecated
    public Picture capturePicture() {
        checkThread();
        return this.mProvider.capturePicture();
    }

    public void clearCache(boolean z2) {
        checkThread();
        this.mProvider.clearCache(z2);
    }

    public void clearFormData() {
        checkThread();
        this.mProvider.clearFormData();
    }

    public void clearHistory() {
        checkThread();
        this.mProvider.clearHistory();
    }

    public void clearMatches() {
        checkThread();
        this.mProvider.clearMatches();
    }

    public void clearSslPreferences() {
        checkThread();
        this.mProvider.clearSslPreferences();
    }

    @Deprecated
    public void clearView() {
        checkThread();
        this.mProvider.clearView();
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        return this.mProvider.getScrollDelegate().computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        return this.mProvider.getScrollDelegate().computeHorizontalScrollRange();
    }

    @Override // android.view.View
    public void computeScroll() {
        this.mProvider.getScrollDelegate().computeScroll();
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        return this.mProvider.getScrollDelegate().computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        return this.mProvider.getScrollDelegate().computeVerticalScrollOffset();
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        return this.mProvider.getScrollDelegate().computeVerticalScrollRange();
    }

    public WebBackForwardList copyBackForwardList() {
        checkThread();
        return this.mProvider.copyBackForwardList();
    }

    public PrintDocumentAdapter createPrintDocumentAdapter() {
        checkThread();
        return this.mProvider.createPrintDocumentAdapter();
    }

    @Deprecated
    public void debugDump() {
        checkThread();
    }

    public void destroy() {
        checkThread();
        this.mProvider.destroy();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        this.mProvider.getViewDelegate().preDispatchDraw(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.mProvider.getViewDelegate().dispatchKeyEvent(keyEvent);
    }

    public void documentHasImages(Message message) {
        checkThread();
        this.mProvider.documentHasImages(message);
    }

    @Override // android.view.ViewDebug.HierarchyHandler
    public void dumpViewHierarchyWithProperties(BufferedWriter bufferedWriter, int i2) {
        this.mProvider.dumpViewHierarchyWithProperties(bufferedWriter, i2);
    }

    @Deprecated
    public void emulateShiftHeld() {
        checkThread();
    }

    public void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        checkThread();
        this.mProvider.evaluateJavaScript(str, valueCallback);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: dalvik.system.BlockGuard$BlockGuardPolicyException */
    @Deprecated
    public int findAll(String str) throws BlockGuard.BlockGuardPolicyException {
        checkThread();
        StrictMode.noteSlowCall("findAll blocks UI: prefer findAllAsync");
        return this.mProvider.findAll(str);
    }

    public void findAllAsync(String str) {
        checkThread();
        this.mProvider.findAllAsync(str);
    }

    @Override // android.view.ViewDebug.HierarchyHandler
    public View findHierarchyView(String str, int i2) {
        return this.mProvider.findHierarchyView(str, i2);
    }

    public void findNext(boolean z2) {
        checkThread();
        this.mProvider.findNext(z2);
    }

    public void flingScroll(int i2, int i3) {
        checkThread();
        this.mProvider.flingScroll(i2, i3);
    }

    @Deprecated
    public void freeMemory() {
        checkThread();
        this.mProvider.freeMemory();
    }

    @Override // android.view.View
    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        AccessibilityNodeProvider accessibilityNodeProvider = this.mProvider.getViewDelegate().getAccessibilityNodeProvider();
        return accessibilityNodeProvider == null ? super.getAccessibilityNodeProvider() : accessibilityNodeProvider;
    }

    public SslCertificate getCertificate() {
        checkThread();
        return this.mProvider.getCertificate();
    }

    @ViewDebug.ExportedProperty(category = "webview")
    public int getContentHeight() {
        checkThread();
        return this.mProvider.getContentHeight();
    }

    @ViewDebug.ExportedProperty(category = "webview")
    public int getContentWidth() {
        return this.mProvider.getContentWidth();
    }

    public Bitmap getFavicon() {
        checkThread();
        return this.mProvider.getFavicon();
    }

    public HitTestResult getHitTestResult() {
        checkThread();
        return this.mProvider.getHitTestResult();
    }

    public String[] getHttpAuthUsernamePassword(String str, String str2) {
        checkThread();
        return this.mProvider.getHttpAuthUsernamePassword(str, str2);
    }

    @ViewDebug.ExportedProperty(category = "webview")
    public String getOriginalUrl() {
        checkThread();
        return this.mProvider.getOriginalUrl();
    }

    public int getProgress() {
        checkThread();
        return this.mProvider.getProgress();
    }

    @ViewDebug.ExportedProperty(category = "webview")
    @Deprecated
    public float getScale() {
        checkThread();
        return this.mProvider.getScale();
    }

    public WebSettings getSettings() {
        checkThread();
        return this.mProvider.getSettings();
    }

    @ViewDebug.ExportedProperty(category = "webview")
    public String getTitle() {
        checkThread();
        return this.mProvider.getTitle();
    }

    public String getTouchIconUrl() {
        return this.mProvider.getTouchIconUrl();
    }

    @ViewDebug.ExportedProperty(category = "webview")
    public String getUrl() {
        checkThread();
        return this.mProvider.getUrl();
    }

    public int getVisibleTitleHeight() {
        checkThread();
        return this.mProvider.getVisibleTitleHeight();
    }

    public WebViewProvider getWebViewProvider() {
        return this.mProvider;
    }

    @Deprecated
    public View getZoomControls() {
        checkThread();
        return this.mProvider.getZoomControls();
    }

    public void goBack() {
        checkThread();
        this.mProvider.goBack();
    }

    public void goBackOrForward(int i2) {
        checkThread();
        this.mProvider.goBackOrForward(i2);
    }

    public void goForward() {
        checkThread();
        this.mProvider.goForward();
    }

    public void invokeZoomPicker() {
        checkThread();
        this.mProvider.invokeZoomPicker();
    }

    public boolean isPaused() {
        return this.mProvider.isPaused();
    }

    public boolean isPrivateBrowsingEnabled() {
        checkThread();
        return this.mProvider.isPrivateBrowsingEnabled();
    }

    public void loadData(String str, String str2, String str3) {
        checkThread();
        this.mProvider.loadData(str, str2, str3);
    }

    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        checkThread();
        this.mProvider.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    public void loadUrl(String str, Map<String, String> map) {
        checkThread();
        this.mProvider.loadUrl(str, map);
    }

    public void notifyFindDialogDismissed() {
        checkThread();
        this.mProvider.notifyFindDialogDismissed();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mProvider.getViewDelegate().onAttachedToWindow();
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    @Deprecated
    public void onChildViewAdded(View view, View view2) {
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    @Deprecated
    public void onChildViewRemoved(View view, View view2) {
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        this.mProvider.getViewDelegate().onConfigurationChanged(configuration);
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return this.mProvider.getViewDelegate().onCreateInputConnection(editorInfo);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.mProvider.getViewDelegate().onDetachedFromWindow();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.mProvider.getViewDelegate().onDraw(canvas);
    }

    @Override // android.view.View
    public void onDrawVerticalScrollBar(Canvas canvas, Drawable drawable, int i2, int i3, int i4, int i5) {
        this.mProvider.getViewDelegate().onDrawVerticalScrollBar(canvas, drawable, i2, i3, i4, i5);
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z2, int i2, Rect rect) {
        this.mProvider.getViewDelegate().onFocusChanged(z2, i2, rect);
        super.onFocusChanged(z2, i2, rect);
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        return this.mProvider.getViewDelegate().onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    @Deprecated
    public void onGlobalFocusChanged(View view, View view2) {
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        return this.mProvider.getViewDelegate().onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(WebView.class.getName());
        this.mProvider.getViewDelegate().onInitializeAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(WebView.class.getName());
        this.mProvider.getViewDelegate().onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        return this.mProvider.getViewDelegate().onKeyDown(i2, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i2, int i3, KeyEvent keyEvent) {
        return this.mProvider.getViewDelegate().onKeyMultiple(i2, i3, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        return this.mProvider.getViewDelegate().onKeyUp(i2, keyEvent);
    }

    @Override // android.widget.AbsoluteLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        this.mProvider.getViewDelegate().onMeasure(i2, i3);
    }

    @Override // android.view.View
    public void onOverScrolled(int i2, int i3, boolean z2, boolean z3) {
        this.mProvider.getViewDelegate().onOverScrolled(i2, i3, z2, z3);
    }

    public void onPause() {
        checkThread();
        this.mProvider.onPause();
    }

    public void onResume() {
        checkThread();
        this.mProvider.onResume();
    }

    @Override // android.view.View
    public void onScrollChanged(int i2, int i3, int i4, int i5) {
        super.onScrollChanged(i2, i3, i4, i5);
        this.mProvider.getViewDelegate().onScrollChanged(i2, i3, i4, i5);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.mProvider.getViewDelegate().onSizeChanged(i2, i3, i4, i5);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.mProvider.getViewDelegate().onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        return this.mProvider.getViewDelegate().onTrackballEvent(motionEvent);
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        ensureProviderCreated();
        this.mProvider.getViewDelegate().onVisibilityChanged(view, i2);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        this.mProvider.getViewDelegate().onWindowFocusChanged(z2);
        super.onWindowFocusChanged(z2);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.mProvider.getViewDelegate().onWindowVisibilityChanged(i2);
    }

    public boolean overlayHorizontalScrollbar() {
        checkThread();
        return this.mProvider.overlayHorizontalScrollbar();
    }

    public boolean overlayVerticalScrollbar() {
        checkThread();
        return this.mProvider.overlayVerticalScrollbar();
    }

    public boolean pageDown(boolean z2) {
        checkThread();
        return this.mProvider.pageDown(z2);
    }

    public boolean pageUp(boolean z2) {
        checkThread();
        return this.mProvider.pageUp(z2);
    }

    public void pauseTimers() {
        checkThread();
        this.mProvider.pauseTimers();
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i2, Bundle bundle) {
        return this.mProvider.getViewDelegate().performAccessibilityAction(i2, bundle);
    }

    @Override // android.view.View
    public boolean performLongClick() {
        return this.mProvider.getViewDelegate().performLongClick();
    }

    public void postUrl(String str, byte[] bArr) {
        checkThread();
        this.mProvider.postUrl(str, bArr);
    }

    @Deprecated
    public void refreshPlugins(boolean z2) {
        checkThread();
    }

    public void reload() {
        checkThread();
        this.mProvider.reload();
    }

    public void removeJavascriptInterface(String str) {
        checkThread();
        this.mProvider.removeJavascriptInterface(str);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        return this.mProvider.getViewDelegate().requestChildRectangleOnScreen(view, rect, z2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i2, Rect rect) {
        return this.mProvider.getViewDelegate().requestFocus(i2, rect);
    }

    public void requestFocusNodeHref(Message message) {
        checkThread();
        this.mProvider.requestFocusNodeHref(message);
    }

    public void requestImageRef(Message message) {
        checkThread();
        this.mProvider.requestImageRef(message);
    }

    @Deprecated
    public boolean restorePicture(Bundle bundle, File file) {
        checkThread();
        return this.mProvider.restorePicture(bundle, file);
    }

    public WebBackForwardList restoreState(Bundle bundle) {
        checkThread();
        return this.mProvider.restoreState(bundle);
    }

    public void resumeTimers() {
        checkThread();
        this.mProvider.resumeTimers();
    }

    @Deprecated
    public void savePassword(String str, String str2, String str3) {
        checkThread();
        this.mProvider.savePassword(str, str2, str3);
    }

    @Deprecated
    public boolean savePicture(Bundle bundle, File file) {
        checkThread();
        return this.mProvider.savePicture(bundle, file);
    }

    public WebBackForwardList saveState(Bundle bundle) {
        checkThread();
        return this.mProvider.saveState(bundle);
    }

    public void saveWebArchive(String str) {
        checkThread();
        this.mProvider.saveWebArchive(str);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        this.mProvider.getViewDelegate().setBackgroundColor(i2);
    }

    @Deprecated
    public void setCertificate(SslCertificate sslCertificate) {
        checkThread();
        this.mProvider.setCertificate(sslCertificate);
    }

    public void setDownloadListener(DownloadListener downloadListener) {
        checkThread();
        this.mProvider.setDownloadListener(downloadListener);
    }

    public void setFindDialogFindListener(FindListener findListener) {
        checkThread();
        setupFindListenerIfNeeded();
        this.mFindListener.mFindDialogFindListener = findListener;
    }

    public void setFindListener(FindListener findListener) {
        checkThread();
        setupFindListenerIfNeeded();
        this.mFindListener.mUserFindListener = findListener;
    }

    @Override // android.view.View
    public boolean setFrame(int i2, int i3, int i4, int i5) {
        return this.mProvider.getViewDelegate().setFrame(i2, i3, i4, i5);
    }

    public void setHorizontalScrollbarOverlay(boolean z2) {
        checkThread();
        this.mProvider.setHorizontalScrollbarOverlay(z2);
    }

    public void setHttpAuthUsernamePassword(String str, String str2, String str3, String str4) {
        checkThread();
        this.mProvider.setHttpAuthUsernamePassword(str, str2, str3, str4);
    }

    public void setInitialScale(int i2) {
        checkThread();
        this.mProvider.setInitialScale(i2);
    }

    @Override // android.view.View
    public void setLayerType(int i2, Paint paint) {
        super.setLayerType(i2, paint);
        this.mProvider.getViewDelegate().setLayerType(i2, paint);
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        this.mProvider.getViewDelegate().setLayoutParams(layoutParams);
    }

    @Deprecated
    public void setMapTrackballToArrowKeys(boolean z2) {
        checkThread();
        this.mProvider.setMapTrackballToArrowKeys(z2);
    }

    public void setNetworkAvailable(boolean z2) {
        checkThread();
        this.mProvider.setNetworkAvailable(z2);
    }

    @Override // android.view.View
    public void setOverScrollMode(int i2) {
        super.setOverScrollMode(i2);
        ensureProviderCreated();
        this.mProvider.getViewDelegate().setOverScrollMode(i2);
    }

    @Deprecated
    public void setPictureListener(PictureListener pictureListener) {
        checkThread();
        this.mProvider.setPictureListener(pictureListener);
    }

    @Override // android.view.View
    public void setScrollBarStyle(int i2) {
        this.mProvider.getViewDelegate().setScrollBarStyle(i2);
        super.setScrollBarStyle(i2);
    }

    public void setVerticalScrollbarOverlay(boolean z2) {
        checkThread();
        this.mProvider.setVerticalScrollbarOverlay(z2);
    }

    public void setWebChromeClient(WebChromeClient webChromeClient) {
        checkThread();
        this.mProvider.setWebChromeClient(webChromeClient);
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        checkThread();
        this.mProvider.setWebViewClient(webViewClient);
    }

    @Override // android.widget.AbsoluteLayout, android.view.ViewGroup
    @Deprecated
    public boolean shouldDelayChildPressedState() {
        return this.mProvider.getViewDelegate().shouldDelayChildPressedState();
    }

    @Deprecated
    public boolean showFindDialog(String str, boolean z2) {
        checkThread();
        return this.mProvider.showFindDialog(str, z2);
    }

    public void stopLoading() {
        checkThread();
        this.mProvider.stopLoading();
    }

    public boolean zoomIn() {
        checkThread();
        return this.mProvider.zoomIn();
    }

    public boolean zoomOut() {
        checkThread();
        return this.mProvider.zoomOut();
    }

    public WebView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.webViewStyle);
    }

    public WebView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, false);
    }

    public void loadUrl(String str) {
        checkThread();
        this.mProvider.loadUrl(str);
    }

    public void saveWebArchive(String str, boolean z2, ValueCallback<String> valueCallback) {
        checkThread();
        this.mProvider.saveWebArchive(str, z2, valueCallback);
    }

    @Deprecated
    public WebView(Context context, AttributeSet attributeSet, int i2, boolean z2) {
        this(context, attributeSet, i2, null, z2);
    }

    public WebView(Context context, AttributeSet attributeSet, int i2, Map<String, Object> map, boolean z2) {
        super(context, attributeSet, i2);
        this.mWebViewThread = Looper.myLooper();
        if (context != null) {
            sEnforceThreadChecking = Boolean.valueOf(context.getApplicationInfo().targetSdkVersion >= 18);
            checkThread();
            ensureProviderCreated();
            this.mProvider.init(map, z2);
            CookieSyncManager.setGetInstanceIsAllowed();
            return;
        }
        throw new IllegalArgumentException("Invalid context argument");
    }
}
