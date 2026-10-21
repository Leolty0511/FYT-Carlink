package android.webkit;

import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.http.SslCertificate;
import android.os.Bundle;
import android.os.Message;
import android.print.PrintDocumentAdapter;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import java.io.BufferedWriter;
import java.io.File;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface WebViewProvider {

    public interface ScrollDelegate {
        int computeHorizontalScrollOffset();

        int computeHorizontalScrollRange();

        void computeScroll();

        int computeVerticalScrollExtent();

        int computeVerticalScrollOffset();

        int computeVerticalScrollRange();
    }

    public interface ViewDelegate {
        boolean dispatchKeyEvent(KeyEvent keyEvent);

        AccessibilityNodeProvider getAccessibilityNodeProvider();

        void onAttachedToWindow();

        void onConfigurationChanged(Configuration configuration);

        InputConnection onCreateInputConnection(EditorInfo editorInfo);

        void onDetachedFromWindow();

        void onDraw(Canvas canvas);

        void onDrawVerticalScrollBar(Canvas canvas, Drawable drawable, int i2, int i3, int i4, int i5);

        void onFocusChanged(boolean z2, int i2, Rect rect);

        boolean onGenericMotionEvent(MotionEvent motionEvent);

        boolean onHoverEvent(MotionEvent motionEvent);

        void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent);

        void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo);

        boolean onKeyDown(int i2, KeyEvent keyEvent);

        boolean onKeyMultiple(int i2, int i3, KeyEvent keyEvent);

        boolean onKeyUp(int i2, KeyEvent keyEvent);

        void onMeasure(int i2, int i3);

        void onOverScrolled(int i2, int i3, boolean z2, boolean z3);

        void onScrollChanged(int i2, int i3, int i4, int i5);

        void onSizeChanged(int i2, int i3, int i4, int i5);

        boolean onTouchEvent(MotionEvent motionEvent);

        boolean onTrackballEvent(MotionEvent motionEvent);

        void onVisibilityChanged(View view, int i2);

        void onWindowFocusChanged(boolean z2);

        void onWindowVisibilityChanged(int i2);

        boolean performAccessibilityAction(int i2, Bundle bundle);

        boolean performLongClick();

        void preDispatchDraw(Canvas canvas);

        boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2);

        boolean requestFocus(int i2, Rect rect);

        void setBackgroundColor(int i2);

        boolean setFrame(int i2, int i3, int i4, int i5);

        void setLayerType(int i2, Paint paint);

        void setLayoutParams(ViewGroup.LayoutParams layoutParams);

        void setOverScrollMode(int i2);

        void setScrollBarStyle(int i2);

        boolean shouldDelayChildPressedState();
    }

    void addJavascriptInterface(Object obj, String str);

    boolean canGoBack();

    boolean canGoBackOrForward(int i2);

    boolean canGoForward();

    boolean canZoomIn();

    boolean canZoomOut();

    Picture capturePicture();

    void clearCache(boolean z2);

    void clearFormData();

    void clearHistory();

    void clearMatches();

    void clearSslPreferences();

    void clearView();

    WebBackForwardList copyBackForwardList();

    PrintDocumentAdapter createPrintDocumentAdapter();

    void destroy();

    void documentHasImages(Message message);

    void dumpViewHierarchyWithProperties(BufferedWriter bufferedWriter, int i2);

    void evaluateJavaScript(String str, ValueCallback<String> valueCallback);

    int findAll(String str);

    void findAllAsync(String str);

    View findHierarchyView(String str, int i2);

    void findNext(boolean z2);

    void flingScroll(int i2, int i3);

    void freeMemory();

    SslCertificate getCertificate();

    int getContentHeight();

    int getContentWidth();

    Bitmap getFavicon();

    WebView.HitTestResult getHitTestResult();

    String[] getHttpAuthUsernamePassword(String str, String str2);

    String getOriginalUrl();

    int getProgress();

    float getScale();

    ScrollDelegate getScrollDelegate();

    WebSettings getSettings();

    String getTitle();

    String getTouchIconUrl();

    String getUrl();

    ViewDelegate getViewDelegate();

    int getVisibleTitleHeight();

    View getZoomControls();

    void goBack();

    void goBackOrForward(int i2);

    void goForward();

    void init(Map<String, Object> map, boolean z2);

    void invokeZoomPicker();

    boolean isPaused();

    boolean isPrivateBrowsingEnabled();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    void loadUrl(String str, Map<String, String> map);

    void notifyFindDialogDismissed();

    void onPause();

    void onResume();

    boolean overlayHorizontalScrollbar();

    boolean overlayVerticalScrollbar();

    boolean pageDown(boolean z2);

    boolean pageUp(boolean z2);

    void pauseTimers();

    void postUrl(String str, byte[] bArr);

    void reload();

    void removeJavascriptInterface(String str);

    void requestFocusNodeHref(Message message);

    void requestImageRef(Message message);

    boolean restorePicture(Bundle bundle, File file);

    WebBackForwardList restoreState(Bundle bundle);

    void resumeTimers();

    void savePassword(String str, String str2, String str3);

    boolean savePicture(Bundle bundle, File file);

    WebBackForwardList saveState(Bundle bundle);

    void saveWebArchive(String str);

    void saveWebArchive(String str, boolean z2, ValueCallback<String> valueCallback);

    void setCertificate(SslCertificate sslCertificate);

    void setDownloadListener(DownloadListener downloadListener);

    void setFindListener(WebView.FindListener findListener);

    void setHorizontalScrollbarOverlay(boolean z2);

    void setHttpAuthUsernamePassword(String str, String str2, String str3, String str4);

    void setInitialScale(int i2);

    void setMapTrackballToArrowKeys(boolean z2);

    void setNetworkAvailable(boolean z2);

    void setPictureListener(WebView.PictureListener pictureListener);

    void setVerticalScrollbarOverlay(boolean z2);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    boolean showFindDialog(String str, boolean z2);

    void stopLoading();

    boolean zoomIn();

    boolean zoomOut();
}
