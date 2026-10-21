package android.view.accessibility;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Color;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.telecom.Logging.Session;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class CaptioningManager {
    private static final int DEFAULT_ENABLED = 0;
    private static final float DEFAULT_FONT_SCALE = 1.0f;
    private static final int DEFAULT_PRESET = 0;
    private final ContentObserver mContentObserver;
    private final ContentResolver mContentResolver;
    private final ArrayList<CaptioningChangeListener> mListeners = new ArrayList<>();
    private final Runnable mStyleChangedRunnable = new Runnable() { // from class: android.view.accessibility.CaptioningManager.1
        @Override // java.lang.Runnable
        public void run() {
            CaptioningManager.this.notifyUserStyleChanged();
        }
    };

    public static final class CaptionStyle {
        private static final CaptionStyle BLACK_ON_WHITE;
        private static final int COLOR_NONE_OPAQUE = 255;
        public static final int COLOR_UNSPECIFIED = 16777215;
        public static final CaptionStyle DEFAULT;
        private static final CaptionStyle DEFAULT_CUSTOM;
        public static final int EDGE_TYPE_DEPRESSED = 4;
        public static final int EDGE_TYPE_DROP_SHADOW = 2;
        public static final int EDGE_TYPE_NONE = 0;
        public static final int EDGE_TYPE_OUTLINE = 1;
        public static final int EDGE_TYPE_RAISED = 3;
        public static final int EDGE_TYPE_UNSPECIFIED = -1;
        public static final CaptionStyle[] PRESETS;
        public static final int PRESET_CUSTOM = -1;
        private static final CaptionStyle UNSPECIFIED;
        private static final CaptionStyle WHITE_ON_BLACK;
        private static final CaptionStyle YELLOW_ON_BLACK;
        private static final CaptionStyle YELLOW_ON_BLUE;
        public final int backgroundColor;
        public final int edgeColor;
        public final int edgeType;
        public final int foregroundColor;
        private final boolean mHasBackgroundColor;
        private final boolean mHasEdgeColor;
        private final boolean mHasEdgeType;
        private final boolean mHasForegroundColor;
        private final boolean mHasWindowColor;
        private Typeface mParsedTypeface;
        public final String mRawTypeface;
        public final int windowColor;

        static {
            CaptionStyle captionStyle = new CaptionStyle(-1, -16777216, 0, -16777216, 255, null);
            WHITE_ON_BLACK = captionStyle;
            CaptionStyle captionStyle2 = new CaptionStyle(-16777216, -1, 0, -16777216, 255, null);
            BLACK_ON_WHITE = captionStyle2;
            CaptionStyle captionStyle3 = new CaptionStyle(-256, -16777216, 0, -16777216, 255, null);
            YELLOW_ON_BLACK = captionStyle3;
            CaptionStyle captionStyle4 = new CaptionStyle(-256, Color.BLUE, 0, -16777216, 255, null);
            YELLOW_ON_BLUE = captionStyle4;
            CaptionStyle captionStyle5 = new CaptionStyle(16777215, 16777215, -1, 16777215, 16777215, null);
            UNSPECIFIED = captionStyle5;
            PRESETS = new CaptionStyle[]{captionStyle, captionStyle2, captionStyle3, captionStyle4, captionStyle5};
            DEFAULT_CUSTOM = captionStyle;
            DEFAULT = captionStyle;
        }

        private CaptionStyle(int i2, int i3, int i4, int i5, int i6, String str) {
            boolean zHasColor = hasColor(i2);
            this.mHasForegroundColor = zHasColor;
            boolean zHasColor2 = hasColor(i3);
            this.mHasBackgroundColor = zHasColor2;
            boolean z2 = i4 != -1;
            this.mHasEdgeType = z2;
            boolean zHasColor3 = hasColor(i5);
            this.mHasEdgeColor = zHasColor3;
            boolean zHasColor4 = hasColor(i6);
            this.mHasWindowColor = zHasColor4;
            this.foregroundColor = zHasColor ? i2 : -1;
            this.backgroundColor = zHasColor2 ? i3 : -16777216;
            this.edgeType = z2 ? i4 : 0;
            this.edgeColor = zHasColor3 ? i5 : -16777216;
            this.windowColor = zHasColor4 ? i6 : 255;
            this.mRawTypeface = str;
        }

        public static CaptionStyle getCustomStyle(ContentResolver contentResolver) {
            CaptionStyle captionStyle = DEFAULT_CUSTOM;
            int i2 = Settings.Secure.getInt(contentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR, captionStyle.foregroundColor);
            int i3 = Settings.Secure.getInt(contentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR, captionStyle.backgroundColor);
            int i4 = Settings.Secure.getInt(contentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_EDGE_TYPE, captionStyle.edgeType);
            int i5 = Settings.Secure.getInt(contentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_EDGE_COLOR, captionStyle.edgeColor);
            int i6 = Settings.Secure.getInt(contentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_WINDOW_COLOR, captionStyle.windowColor);
            String string = Settings.Secure.getString(contentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_TYPEFACE);
            if (string == null) {
                string = captionStyle.mRawTypeface;
            }
            return new CaptionStyle(i2, i3, i4, i5, i6, string);
        }

        public static boolean hasColor(int i2) {
            return (i2 >>> 24) != 0 || (i2 & 16776960) == 0;
        }

        public CaptionStyle applyStyle(CaptionStyle captionStyle) {
            int i2 = captionStyle.hasForegroundColor() ? captionStyle.foregroundColor : this.foregroundColor;
            int i3 = captionStyle.hasBackgroundColor() ? captionStyle.backgroundColor : this.backgroundColor;
            int i4 = captionStyle.hasEdgeType() ? captionStyle.edgeType : this.edgeType;
            int i5 = captionStyle.hasEdgeColor() ? captionStyle.edgeColor : this.edgeColor;
            int i6 = captionStyle.hasWindowColor() ? captionStyle.windowColor : this.windowColor;
            String str = captionStyle.mRawTypeface;
            if (str == null) {
                str = this.mRawTypeface;
            }
            return new CaptionStyle(i2, i3, i4, i5, i6, str);
        }

        public Typeface getTypeface() {
            if (this.mParsedTypeface == null && !TextUtils.isEmpty(this.mRawTypeface)) {
                this.mParsedTypeface = Typeface.create(this.mRawTypeface, 0);
            }
            return this.mParsedTypeface;
        }

        public boolean hasBackgroundColor() {
            return this.mHasBackgroundColor;
        }

        public boolean hasEdgeColor() {
            return this.mHasEdgeColor;
        }

        public boolean hasEdgeType() {
            return this.mHasEdgeType;
        }

        public boolean hasForegroundColor() {
            return this.mHasForegroundColor;
        }

        public boolean hasWindowColor() {
            return this.mHasWindowColor;
        }
    }

    public static abstract class CaptioningChangeListener {
        public void onEnabledChanged(boolean z2) {
        }

        public void onFontScaleChanged(float f2) {
        }

        public void onLocaleChanged(Locale locale) {
        }

        public void onUserStyleChanged(CaptionStyle captionStyle) {
        }
    }

    public class MyContentObserver extends ContentObserver {
        private final Handler mHandler;

        public MyContentObserver(Handler handler) {
            super(handler);
            this.mHandler = handler;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z2, Uri uri) {
            String path = uri.getPath();
            String strSubstring = path.substring(path.lastIndexOf(47) + 1);
            if (Settings.Secure.ACCESSIBILITY_CAPTIONING_ENABLED.equals(strSubstring)) {
                CaptioningManager.this.notifyEnabledChanged();
                return;
            }
            if (Settings.Secure.ACCESSIBILITY_CAPTIONING_LOCALE.equals(strSubstring)) {
                CaptioningManager.this.notifyLocaleChanged();
            } else if (Settings.Secure.ACCESSIBILITY_CAPTIONING_FONT_SCALE.equals(strSubstring)) {
                CaptioningManager.this.notifyFontScaleChanged();
            } else {
                this.mHandler.removeCallbacks(CaptioningManager.this.mStyleChangedRunnable);
                this.mHandler.post(CaptioningManager.this.mStyleChangedRunnable);
            }
        }
    }

    public CaptioningManager(Context context) {
        this.mContentResolver = context.getContentResolver();
        this.mContentObserver = new MyContentObserver(new Handler(context.getMainLooper()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyEnabledChanged() {
        boolean zIsEnabled = isEnabled();
        synchronized (this.mListeners) {
            Iterator<CaptioningChangeListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onEnabledChanged(zIsEnabled);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFontScaleChanged() {
        float fontScale = getFontScale();
        synchronized (this.mListeners) {
            Iterator<CaptioningChangeListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onFontScaleChanged(fontScale);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyLocaleChanged() {
        Locale locale = getLocale();
        synchronized (this.mListeners) {
            Iterator<CaptioningChangeListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onLocaleChanged(locale);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyUserStyleChanged() {
        CaptionStyle userStyle = getUserStyle();
        synchronized (this.mListeners) {
            Iterator<CaptioningChangeListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onUserStyleChanged(userStyle);
            }
        }
    }

    private void registerObserver(String str) {
        this.mContentResolver.registerContentObserver(Settings.Secure.getUriFor(str), false, this.mContentObserver);
    }

    public void addCaptioningChangeListener(CaptioningChangeListener captioningChangeListener) {
        synchronized (this.mListeners) {
            if (this.mListeners.isEmpty()) {
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_ENABLED);
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR);
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR);
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_WINDOW_COLOR);
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_EDGE_TYPE);
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_EDGE_COLOR);
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_TYPEFACE);
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_FONT_SCALE);
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_LOCALE);
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_PRESET);
            }
            this.mListeners.add(captioningChangeListener);
        }
    }

    public final float getFontScale() {
        return Settings.Secure.getFloat(this.mContentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_FONT_SCALE, 1.0f);
    }

    public final Locale getLocale() {
        String rawLocale = getRawLocale();
        if (TextUtils.isEmpty(rawLocale)) {
            return null;
        }
        String[] strArrSplit = rawLocale.split(Session.SESSION_SEPARATION_CHAR_CHILD);
        int length = strArrSplit.length;
        if (length == 1) {
            return new Locale(strArrSplit[0]);
        }
        if (length == 2) {
            return new Locale(strArrSplit[0], strArrSplit[1]);
        }
        if (length != 3) {
            return null;
        }
        return new Locale(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
    }

    public final String getRawLocale() {
        return Settings.Secure.getString(this.mContentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_LOCALE);
    }

    public int getRawUserStyle() {
        return Settings.Secure.getInt(this.mContentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_PRESET, 0);
    }

    public CaptionStyle getUserStyle() {
        int rawUserStyle = getRawUserStyle();
        return rawUserStyle == -1 ? CaptionStyle.getCustomStyle(this.mContentResolver) : CaptionStyle.PRESETS[rawUserStyle];
    }

    public final boolean isEnabled() {
        return Settings.Secure.getInt(this.mContentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_ENABLED, 0) == 1;
    }

    public void removeCaptioningChangeListener(CaptioningChangeListener captioningChangeListener) {
        synchronized (this.mListeners) {
            this.mListeners.remove(captioningChangeListener);
            if (this.mListeners.isEmpty()) {
                this.mContentResolver.unregisterContentObserver(this.mContentObserver);
            }
        }
    }
}
