package android.text;

import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public final class FontConfig {
    private final Alias[] mAliases;
    private final Family[] mFamilies;

    public static final class Alias {
        private final String mName;
        private final String mToName;
        private final int mWeight;

        public Alias(String str, String str2, int i2) {
            this.mName = str;
            this.mToName = str2;
            this.mWeight = i2;
        }

        public String getName() {
            return this.mName;
        }

        public String getToName() {
            return this.mToName;
        }

        public int getWeight() {
            return this.mWeight;
        }
    }

    public static final class Family {
        public static final int VARIANT_COMPACT = 1;
        public static final int VARIANT_DEFAULT = 0;
        public static final int VARIANT_ELEGANT = 2;
        private final Font[] mFonts;
        private final String mLanguage;
        private final String mName;
        private final int mVariant;

        @Retention(RetentionPolicy.SOURCE)
        public @interface Variant {
        }

        public Family(String str, Font[] fontArr, String str2, int i2) {
            this.mName = str;
            this.mFonts = fontArr;
            this.mLanguage = str2;
            this.mVariant = i2;
        }

        public Font[] getFonts() {
            return this.mFonts;
        }

        public String getLanguage() {
            return this.mLanguage;
        }

        public String getName() {
            return this.mName;
        }

        public int getVariant() {
            return this.mVariant;
        }
    }

    public static final class Font {
        private final FontVariationAxis[] mAxes;
        private final String mFontName;
        private final boolean mIsItalic;
        private final int mTtcIndex;
        private Uri mUri;
        private final int mWeight;

        public Font(String str, int i2, FontVariationAxis[] fontVariationAxisArr, int i3, boolean z2) {
            this.mFontName = str;
            this.mTtcIndex = i2;
            this.mAxes = fontVariationAxisArr;
            this.mWeight = i3;
            this.mIsItalic = z2;
        }

        public FontVariationAxis[] getAxes() {
            return this.mAxes;
        }

        public String getFontName() {
            return this.mFontName;
        }

        public int getTtcIndex() {
            return this.mTtcIndex;
        }

        public Uri getUri() {
            return this.mUri;
        }

        public int getWeight() {
            return this.mWeight;
        }

        public boolean isItalic() {
            return this.mIsItalic;
        }

        public void setUri(Uri uri) {
            this.mUri = uri;
        }
    }

    public FontConfig(Family[] familyArr, Alias[] aliasArr) {
        this.mFamilies = familyArr;
        this.mAliases = aliasArr;
    }

    public Alias[] getAliases() {
        return this.mAliases;
    }

    public Family[] getFamilies() {
        return this.mFamilies;
    }
}
