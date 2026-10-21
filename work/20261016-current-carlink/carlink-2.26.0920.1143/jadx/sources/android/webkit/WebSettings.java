package android.webkit;

import android.content.Context;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
public abstract class WebSettings {
    public static final int LOAD_CACHE_ELSE_NETWORK = 1;
    public static final int LOAD_CACHE_ONLY = 3;
    public static final int LOAD_DEFAULT = -1;

    @Deprecated
    public static final int LOAD_NORMAL = 0;
    public static final int LOAD_NO_CACHE = 2;
    public static final int MENU_ITEM_NONE = 0;
    public static final int MENU_ITEM_PROCESS_TEXT = 4;
    public static final int MENU_ITEM_SHARE = 1;
    public static final int MENU_ITEM_WEB_SEARCH = 2;
    public static final int MIXED_CONTENT_ALWAYS_ALLOW = 0;
    public static final int MIXED_CONTENT_COMPATIBILITY_MODE = 2;
    public static final int MIXED_CONTENT_NEVER_ALLOW = 1;

    @Retention(RetentionPolicy.SOURCE)
    public @interface CacheMode {
    }

    public enum LayoutAlgorithm {
        NORMAL,
        SINGLE_COLUMN,
        NARROW_COLUMNS,
        TEXT_AUTOSIZING
    }

    @Target({ElementType.PARAMETER, ElementType.METHOD})
    @Retention(RetentionPolicy.SOURCE)
    public @interface MenuItemFlags {
    }

    public enum PluginState {
        ON,
        ON_DEMAND,
        OFF
    }

    public enum RenderPriority {
        NORMAL,
        HIGH,
        LOW
    }

    @Deprecated
    public enum TextSize {
        SMALLEST(50),
        SMALLER(75),
        NORMAL(100),
        LARGER(150),
        LARGEST(200);

        int value;

        TextSize(int i2) {
            this.value = i2;
        }
    }

    public enum ZoomDensity {
        FAR(150),
        MEDIUM(100),
        CLOSE(75);

        int value;

        ZoomDensity(int i2) {
            this.value = i2;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static String getDefaultUserAgent(Context context) {
        return WebViewFactory.getProvider().getStatics().getDefaultUserAgent(context);
    }

    @Deprecated
    public abstract boolean enableSmoothTransition();

    public abstract boolean getAcceptThirdPartyCookies();

    public abstract boolean getAllowContentAccess();

    public abstract boolean getAllowFileAccess();

    public abstract boolean getAllowFileAccessFromFileURLs();

    public abstract boolean getAllowUniversalAccessFromFileURLs();

    public abstract boolean getBlockNetworkImage();

    public abstract boolean getBlockNetworkLoads();

    public abstract boolean getBuiltInZoomControls();

    public abstract int getCacheMode();

    public abstract String getCursiveFontFamily();

    public abstract boolean getDatabaseEnabled();

    @Deprecated
    public abstract String getDatabasePath();

    public abstract int getDefaultFixedFontSize();

    public abstract int getDefaultFontSize();

    public abstract String getDefaultTextEncodingName();

    @Deprecated
    public abstract ZoomDensity getDefaultZoom();

    public abstract int getDisabledActionModeMenuItems();

    public abstract boolean getDisplayZoomControls();

    public abstract boolean getDomStorageEnabled();

    public abstract String getFantasyFontFamily();

    public abstract String getFixedFontFamily();

    public abstract boolean getForceUserScalable();

    public abstract boolean getJavaScriptCanOpenWindowsAutomatically();

    public abstract boolean getJavaScriptEnabled();

    public abstract LayoutAlgorithm getLayoutAlgorithm();

    @Deprecated
    public abstract boolean getLightTouchEnabled();

    public abstract boolean getLoadWithOverviewMode();

    public abstract boolean getLoadsImagesAutomatically();

    public abstract boolean getMediaPlaybackRequiresUserGesture();

    public abstract int getMinimumFontSize();

    public abstract int getMinimumLogicalFontSize();

    public abstract int getMixedContentMode();

    @Deprecated
    public abstract boolean getNavDump();

    public abstract boolean getOffscreenPreRaster();

    @Deprecated
    public abstract PluginState getPluginState();

    @Deprecated
    public abstract boolean getPluginsEnabled();

    @Deprecated
    public String getPluginsPath() {
        return "";
    }

    public abstract boolean getSafeBrowsingEnabled();

    public abstract String getSansSerifFontFamily();

    @Deprecated
    public abstract boolean getSaveFormData();

    @Deprecated
    public abstract boolean getSavePassword();

    public abstract String getSerifFontFamily();

    public abstract String getStandardFontFamily();

    @Deprecated
    public synchronized TextSize getTextSize() {
        int textZoom = getTextZoom();
        TextSize textSize = null;
        int i2 = Integer.MAX_VALUE;
        for (TextSize textSize2 : TextSize.values()) {
            int iAbs = Math.abs(textZoom - textSize2.value);
            if (iAbs == 0) {
                return textSize2;
            }
            if (iAbs < i2) {
                textSize = textSize2;
                i2 = iAbs;
            }
        }
        if (textSize == null) {
            textSize = TextSize.NORMAL;
        }
        return textSize;
    }

    public abstract int getTextZoom();

    @Deprecated
    public boolean getUseDoubleTree() {
        return false;
    }

    @Deprecated
    public abstract boolean getUseWebViewBackgroundForOverscrollBackground();

    public abstract boolean getUseWideViewPort();

    @Deprecated
    public abstract int getUserAgent();

    public abstract String getUserAgentString();

    public abstract boolean getVideoOverlayForEmbeddedEncryptedVideoEnabled();

    public abstract void setAcceptThirdPartyCookies(boolean z2);

    public abstract void setAllowContentAccess(boolean z2);

    public abstract void setAllowFileAccess(boolean z2);

    public abstract void setAllowFileAccessFromFileURLs(boolean z2);

    public abstract void setAllowUniversalAccessFromFileURLs(boolean z2);

    public abstract void setAppCacheEnabled(boolean z2);

    @Deprecated
    public abstract void setAppCacheMaxSize(long j2);

    public abstract void setAppCachePath(String str);

    public abstract void setBlockNetworkImage(boolean z2);

    public abstract void setBlockNetworkLoads(boolean z2);

    public abstract void setBuiltInZoomControls(boolean z2);

    public abstract void setCacheMode(int i2);

    public abstract void setCursiveFontFamily(String str);

    public abstract void setDatabaseEnabled(boolean z2);

    @Deprecated
    public abstract void setDatabasePath(String str);

    public abstract void setDefaultFixedFontSize(int i2);

    public abstract void setDefaultFontSize(int i2);

    public abstract void setDefaultTextEncodingName(String str);

    @Deprecated
    public abstract void setDefaultZoom(ZoomDensity zoomDensity);

    public abstract void setDisabledActionModeMenuItems(int i2);

    public abstract void setDisplayZoomControls(boolean z2);

    public abstract void setDomStorageEnabled(boolean z2);

    @Deprecated
    public abstract void setEnableSmoothTransition(boolean z2);

    public abstract void setFantasyFontFamily(String str);

    public abstract void setFixedFontFamily(String str);

    public abstract void setForceUserScalable(boolean z2);

    @Deprecated
    public abstract void setGeolocationDatabasePath(String str);

    public abstract void setGeolocationEnabled(boolean z2);

    public abstract void setJavaScriptCanOpenWindowsAutomatically(boolean z2);

    public abstract void setJavaScriptEnabled(boolean z2);

    public abstract void setLayoutAlgorithm(LayoutAlgorithm layoutAlgorithm);

    @Deprecated
    public abstract void setLightTouchEnabled(boolean z2);

    public abstract void setLoadWithOverviewMode(boolean z2);

    public abstract void setLoadsImagesAutomatically(boolean z2);

    public abstract void setMediaPlaybackRequiresUserGesture(boolean z2);

    public abstract void setMinimumFontSize(int i2);

    public abstract void setMinimumLogicalFontSize(int i2);

    public abstract void setMixedContentMode(int i2);

    @Deprecated
    public abstract void setNavDump(boolean z2);

    public abstract void setNeedInitialFocus(boolean z2);

    public abstract void setOffscreenPreRaster(boolean z2);

    @Deprecated
    public abstract void setPluginState(PluginState pluginState);

    @Deprecated
    public abstract void setPluginsEnabled(boolean z2);

    @Deprecated
    public void setPluginsPath(String str) {
    }

    @Deprecated
    public abstract void setRenderPriority(RenderPriority renderPriority);

    public abstract void setSafeBrowsingEnabled(boolean z2);

    public abstract void setSansSerifFontFamily(String str);

    @Deprecated
    public abstract void setSaveFormData(boolean z2);

    @Deprecated
    public abstract void setSavePassword(boolean z2);

    public abstract void setSerifFontFamily(String str);

    public abstract void setStandardFontFamily(String str);

    public abstract void setSupportMultipleWindows(boolean z2);

    public abstract void setSupportZoom(boolean z2);

    @Deprecated
    public synchronized void setTextSize(TextSize textSize) {
        setTextZoom(textSize.value);
    }

    public abstract void setTextZoom(int i2);

    @Deprecated
    public void setUseDoubleTree(boolean z2) {
    }

    @Deprecated
    public abstract void setUseWebViewBackgroundForOverscrollBackground(boolean z2);

    public abstract void setUseWideViewPort(boolean z2);

    @Deprecated
    public abstract void setUserAgent(int i2);

    public abstract void setUserAgentString(String str);

    public abstract void setVideoOverlayForEmbeddedEncryptedVideoEnabled(boolean z2);

    public abstract boolean supportMultipleWindows();

    public abstract boolean supportZoom();
}
