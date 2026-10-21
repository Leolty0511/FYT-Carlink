package android.text;

import android.content.res.Resources;
import android.media.AudioSystem;
import android.net.ProxyProperties;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemProperties;
import android.provider.Settings;
import android.telephony.PhoneNumberUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.BulletSpan;
import android.text.style.CharacterStyle;
import android.text.style.EasyEditSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.LeadingMarginSpan;
import android.text.style.LocaleSpan;
import android.text.style.MetricAffectingSpan;
import android.text.style.QuoteSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.ReplacementSpan;
import android.text.style.ScaleXSpan;
import android.text.style.SpellCheckSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuggestionRangeSpan;
import android.text.style.SuggestionSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.TextAppearanceSpan;
import android.text.style.TypefaceSpan;
import android.text.style.URLSpan;
import android.text.style.UnderlineSpan;
import android.util.Log;
import android.util.Printer;
import android.widget.ExpandableListView;
import java.lang.reflect.Array;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Pattern;
import libcore.icu.ICU;
import u.a;

/* JADX INFO: loaded from: classes.dex */
public class TextUtils {
    public static final int ABSOLUTE_SIZE_SPAN = 16;
    public static final int ALIGNMENT_SPAN = 1;
    public static final int ANNOTATION = 18;
    public static final int BACKGROUND_COLOR_SPAN = 12;
    public static final int BULLET_SPAN = 8;
    public static final int CAP_MODE_CHARACTERS = 4096;
    public static final int CAP_MODE_SENTENCES = 16384;
    public static final int CAP_MODE_WORDS = 8192;
    public static final int EASY_EDIT_SPAN = 22;
    private static final char FIRST_RIGHT_TO_LEFT = 1424;
    public static final int FIRST_SPAN = 1;
    public static final int FOREGROUND_COLOR_SPAN = 2;
    public static final int LAST_SPAN = 23;
    public static final int LEADING_MARGIN_SPAN = 10;
    public static final int LOCALE_SPAN = 23;
    public static final int QUOTE_SPAN = 9;
    public static final int RELATIVE_SIZE_SPAN = 3;
    public static final int SCALE_X_SPAN = 4;
    public static final int SPELL_CHECK_SPAN = 20;
    public static final int STRIKETHROUGH_SPAN = 5;
    public static final int STYLE_SPAN = 7;
    public static final int SUBSCRIPT_SPAN = 15;
    public static final int SUGGESTION_RANGE_SPAN = 21;
    public static final int SUGGESTION_SPAN = 19;
    public static final int SUPERSCRIPT_SPAN = 14;
    private static final String TAG = "TextUtils";
    public static final int TEXT_APPEARANCE_SPAN = 17;
    public static final int TYPEFACE_SPAN = 13;
    public static final int UNDERLINE_SPAN = 6;
    public static final int URL_SPAN = 11;
    private static final char ZWNBS_CHAR = 65279;
    public static final Parcelable.Creator<CharSequence> CHAR_SEQUENCE_CREATOR = new Parcelable.Creator<CharSequence>() { // from class: android.text.TextUtils.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CharSequence createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            String string = parcel.readString();
            if (string == null) {
                return null;
            }
            if (i2 == 1) {
                return string;
            }
            SpannableString spannableString = new SpannableString(string);
            while (true) {
                int i3 = parcel.readInt();
                if (i3 == 0) {
                    return spannableString;
                }
                switch (i3) {
                    case 1:
                        TextUtils.readSpan(parcel, spannableString, new AlignmentSpan.Standard(parcel));
                        break;
                    case 2:
                        TextUtils.readSpan(parcel, spannableString, new ForegroundColorSpan(parcel));
                        break;
                    case 3:
                        TextUtils.readSpan(parcel, spannableString, new RelativeSizeSpan(parcel));
                        break;
                    case 4:
                        TextUtils.readSpan(parcel, spannableString, new ScaleXSpan(parcel));
                        break;
                    case 5:
                        TextUtils.readSpan(parcel, spannableString, new StrikethroughSpan(parcel));
                        break;
                    case 6:
                        TextUtils.readSpan(parcel, spannableString, new UnderlineSpan(parcel));
                        break;
                    case 7:
                        TextUtils.readSpan(parcel, spannableString, new StyleSpan(parcel));
                        break;
                    case 8:
                        TextUtils.readSpan(parcel, spannableString, new BulletSpan(parcel));
                        break;
                    case 9:
                        TextUtils.readSpan(parcel, spannableString, new QuoteSpan(parcel));
                        break;
                    case 10:
                        TextUtils.readSpan(parcel, spannableString, new LeadingMarginSpan.Standard(parcel));
                        break;
                    case 11:
                        TextUtils.readSpan(parcel, spannableString, new URLSpan(parcel));
                        break;
                    case 12:
                        TextUtils.readSpan(parcel, spannableString, new BackgroundColorSpan(parcel));
                        break;
                    case 13:
                        TextUtils.readSpan(parcel, spannableString, new TypefaceSpan(parcel));
                        break;
                    case 14:
                        TextUtils.readSpan(parcel, spannableString, new SuperscriptSpan(parcel));
                        break;
                    case 15:
                        TextUtils.readSpan(parcel, spannableString, new SubscriptSpan(parcel));
                        break;
                    case 16:
                        TextUtils.readSpan(parcel, spannableString, new AbsoluteSizeSpan(parcel));
                        break;
                    case 17:
                        TextUtils.readSpan(parcel, spannableString, new TextAppearanceSpan(parcel));
                        break;
                    case 18:
                        TextUtils.readSpan(parcel, spannableString, new Annotation(parcel));
                        break;
                    case 19:
                        TextUtils.readSpan(parcel, spannableString, new SuggestionSpan(parcel));
                        break;
                    case 20:
                        TextUtils.readSpan(parcel, spannableString, new SpellCheckSpan(parcel));
                        break;
                    case 21:
                        TextUtils.readSpan(parcel, spannableString, new SuggestionRangeSpan(parcel));
                        break;
                    case 22:
                        TextUtils.readSpan(parcel, spannableString, new EasyEditSpan(parcel));
                        break;
                    case 23:
                        TextUtils.readSpan(parcel, spannableString, new LocaleSpan(parcel));
                        break;
                    default:
                        throw new RuntimeException("bogus span encoding " + i3);
                }
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CharSequence[] newArray(int i2) {
            return new CharSequence[i2];
        }
    };
    private static Object sLock = new Object();
    private static char[] sTemp = null;
    private static String[] EMPTY_STRING_ARRAY = new String[0];
    private static String ARAB_SCRIPT_SUBTAG = "Arab";
    private static String HEBR_SCRIPT_SUBTAG = "Hebr";

    public interface EllipsizeCallback {
        void ellipsized(int i2, int i3);
    }

    public static class Reverser implements CharSequence, GetChars {
        private int mEnd;
        private CharSequence mSource;
        private int mStart;

        public Reverser(CharSequence charSequence, int i2, int i3) {
            this.mSource = charSequence;
            this.mStart = i2;
            this.mEnd = i3;
        }

        @Override // java.lang.CharSequence
        public char charAt(int i2) {
            return AndroidCharacter.getMirror(this.mSource.charAt((this.mEnd - 1) - i2));
        }

        @Override // android.text.GetChars
        public void getChars(int i2, int i3, char[] cArr, int i4) {
            CharSequence charSequence = this.mSource;
            int i5 = this.mStart;
            TextUtils.getChars(charSequence, i2 + i5, i5 + i3, cArr, i4);
            int i6 = i3 - i2;
            AndroidCharacter.mirror(cArr, 0, i6);
            int i7 = i6 / 2;
            for (int i8 = 0; i8 < i7; i8++) {
                int i9 = i4 + i8;
                char c2 = cArr[i9];
                int i10 = ((i4 + i6) - i8) - 1;
                cArr[i9] = cArr[i10];
                cArr[i10] = c2;
            }
        }

        @Override // java.lang.CharSequence
        public int length() {
            return this.mEnd - this.mStart;
        }

        @Override // java.lang.CharSequence
        public CharSequence subSequence(int i2, int i3) {
            char[] cArr = new char[i3 - i2];
            getChars(i2, i3, cArr, 0);
            return new String(cArr);
        }

        @Override // java.lang.CharSequence
        public String toString() {
            return subSequence(0, length()).toString();
        }
    }

    public static class SimpleStringSplitter implements StringSplitter, Iterator<String> {
        private char mDelimiter;
        private int mLength;
        private int mPosition;
        private String mString;

        public SimpleStringSplitter(char c2) {
            this.mDelimiter = c2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.mPosition < this.mLength;
        }

        @Override // java.lang.Iterable
        public Iterator<String> iterator() {
            return this;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // android.text.TextUtils.StringSplitter
        public void setString(String str) {
            this.mString = str;
            this.mPosition = 0;
            this.mLength = str.length();
        }

        @Override // java.util.Iterator
        public String next() {
            int iIndexOf = this.mString.indexOf(this.mDelimiter, this.mPosition);
            if (iIndexOf == -1) {
                iIndexOf = this.mLength;
            }
            String strSubstring = this.mString.substring(this.mPosition, iIndexOf);
            this.mPosition = iIndexOf + 1;
            return strSubstring;
        }
    }

    public interface StringSplitter extends Iterable<String> {
        void setString(String str);
    }

    public enum TruncateAt {
        START,
        MIDDLE,
        END,
        MARQUEE,
        END_SMALL
    }

    private TextUtils() {
    }

    public static CharSequence commaEllipsize(CharSequence charSequence, TextPaint textPaint, float f2, String str, String str2) {
        return commaEllipsize(charSequence, textPaint, f2, str, str2, TextDirectionHeuristics.FIRSTSTRONG_LTR);
    }

    public static CharSequence concat(CharSequence... charSequenceArr) {
        if (charSequenceArr.length == 0) {
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
        boolean z2 = true;
        if (charSequenceArr.length == 1) {
            return charSequenceArr[0];
        }
        int i2 = 0;
        while (true) {
            if (i2 >= charSequenceArr.length) {
                z2 = false;
                break;
            }
            if (charSequenceArr[i2] instanceof Spanned) {
                break;
            }
            i2++;
        }
        StringBuilder sb = new StringBuilder();
        for (CharSequence charSequence : charSequenceArr) {
            sb.append(charSequence);
        }
        if (!z2) {
            return sb.toString();
        }
        SpannableString spannableString = new SpannableString(sb);
        int i3 = 0;
        for (int i4 = 0; i4 < charSequenceArr.length; i4++) {
            int length = charSequenceArr[i4].length();
            if (charSequenceArr[i4] instanceof Spanned) {
                copySpansFrom((Spanned) charSequenceArr[i4], 0, length, Object.class, spannableString, i3);
            }
            i3 += length;
        }
        return new SpannedString(spannableString);
    }

    public static void copySpansFrom(Spanned spanned, int i2, int i3, Class cls, Spannable spannable, int i4) {
        if (cls == null) {
            cls = Object.class;
        }
        Object[] spans = spanned.getSpans(i2, i3, cls);
        for (int i5 = 0; i5 < spans.length; i5++) {
            int spanStart = spanned.getSpanStart(spans[i5]);
            int spanEnd = spanned.getSpanEnd(spans[i5]);
            int spanFlags = spanned.getSpanFlags(spans[i5]);
            if (spanStart < i2) {
                spanStart = i2;
            }
            if (spanEnd > i3) {
                spanEnd = i3;
            }
            spannable.setSpan(spans[i5], (spanStart - i2) + i4, (spanEnd - i2) + i4, spanFlags);
        }
    }

    public static boolean delimitedStringContains(String str, char c2, String str2) {
        if (!isEmpty(str) && !isEmpty(str2)) {
            int length = str.length();
            int iIndexOf = -1;
            while (true) {
                iIndexOf = str.indexOf(str2, iIndexOf + 1);
                if (iIndexOf == -1) {
                    break;
                }
                if (iIndexOf <= 0 || str.charAt(iIndexOf - 1) == c2) {
                    int length2 = str2.length() + iIndexOf;
                    if (length2 == length || str.charAt(length2) == c2) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean doesNotNeedBidi(CharSequence charSequence, int i2, int i3) {
        while (i2 < i3) {
            if (charSequence.charAt(i2) >= 1424) {
                return false;
            }
            i2++;
        }
        return true;
    }

    public static void dumpSpans(CharSequence charSequence, Printer printer, String str) {
        if (!(charSequence instanceof Spanned)) {
            printer.println(str + ((Object) charSequence) + ": (no spans)");
            return;
        }
        Spanned spanned = (Spanned) charSequence;
        for (Object obj : spanned.getSpans(0, charSequence.length(), Object.class)) {
            printer.println(str + ((Object) charSequence.subSequence(spanned.getSpanStart(obj), spanned.getSpanEnd(obj))) + ": " + Integer.toHexString(System.identityHashCode(obj)) + " " + obj.getClass().getCanonicalName() + " (" + spanned.getSpanStart(obj) + "-" + spanned.getSpanEnd(obj) + ") fl=#" + spanned.getSpanFlags(obj));
        }
    }

    public static CharSequence ellipsize(CharSequence charSequence, TextPaint textPaint, float f2, TruncateAt truncateAt) {
        return ellipsize(charSequence, textPaint, f2, truncateAt, false, null);
    }

    public static boolean equals(CharSequence charSequence, CharSequence charSequence2) {
        int length;
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || (length = charSequence.length()) != charSequence2.length()) {
            return false;
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return charSequence.equals(charSequence2);
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (charSequence.charAt(i2) != charSequence2.charAt(i2)) {
                return false;
            }
        }
        return true;
    }

    public static CharSequence expandTemplate(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (charSequenceArr.length > 9) {
            throw new IllegalArgumentException("max of 9 values are supported");
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        int length = 0;
        while (length < spannableStringBuilder.length()) {
            try {
                if (spannableStringBuilder.charAt(length) == '^') {
                    int i2 = length + 1;
                    char cCharAt = spannableStringBuilder.charAt(i2);
                    if (cCharAt == '^') {
                        spannableStringBuilder.delete(i2, length + 2);
                        length = i2;
                    } else if (Character.isDigit(cCharAt)) {
                        int numericValue = Character.getNumericValue(cCharAt) - 1;
                        if (numericValue < 0) {
                            throw new IllegalArgumentException("template requests value ^" + (numericValue + 1));
                        }
                        if (numericValue >= charSequenceArr.length) {
                            throw new IllegalArgumentException("template requests value ^" + (numericValue + 1) + "; only " + charSequenceArr.length + " provided");
                        }
                        spannableStringBuilder.replace(length, length + 2, charSequenceArr[numericValue]);
                        length += charSequenceArr[numericValue].length();
                    }
                }
                length++;
            } catch (IndexOutOfBoundsException unused) {
            }
        }
        return spannableStringBuilder;
    }

    public static int getCapsMode(CharSequence charSequence, int i2, int i3) {
        char cCharAt;
        char cCharAt2;
        if (i2 < 0) {
            return 0;
        }
        int i4 = (i3 & 4096) != 0 ? 4096 : 0;
        if ((i3 & AudioSystem.DEVICE_OUT_ALL_USB) == 0) {
            return i4;
        }
        while (i2 > 0 && ((cCharAt2 = charSequence.charAt(i2 - 1)) == '\"' || cCharAt2 == '\'' || Character.getType(cCharAt2) == 21)) {
            i2--;
        }
        int i5 = i2;
        while (i5 > 0) {
            char cCharAt3 = charSequence.charAt(i5 - 1);
            if (cCharAt3 != ' ' && cCharAt3 != '\t') {
                break;
            }
            i5--;
        }
        if (i5 == 0 || charSequence.charAt(i5 - 1) == '\n') {
            return i4 | 8192;
        }
        if ((i3 & 16384) == 0) {
            return i2 != i5 ? i4 | 8192 : i4;
        }
        if (i2 == i5) {
            return i4;
        }
        while (i5 > 0) {
            char cCharAt4 = charSequence.charAt(i5 - 1);
            if (cCharAt4 != '\"' && cCharAt4 != '\'' && Character.getType(cCharAt4) != 22) {
                break;
            }
            i5--;
        }
        if (i5 <= 0 || !((cCharAt = charSequence.charAt(i5 - 1)) == '.' || cCharAt == '?' || cCharAt == '!')) {
            return i4;
        }
        if (cCharAt == '.') {
            for (int i6 = i5 - 2; i6 >= 0; i6--) {
                char cCharAt5 = charSequence.charAt(i6);
                if (cCharAt5 == '.') {
                    return i4;
                }
                if (!Character.isLetter(cCharAt5)) {
                    break;
                }
            }
        }
        return i4 | 16384;
    }

    public static void getChars(CharSequence charSequence, int i2, int i3, char[] cArr, int i4) {
        Class<?> cls = charSequence.getClass();
        if (cls == String.class) {
            ((String) charSequence).getChars(i2, i3, cArr, i4);
            return;
        }
        if (cls == StringBuffer.class) {
            ((StringBuffer) charSequence).getChars(i2, i3, cArr, i4);
            return;
        }
        if (cls == StringBuilder.class) {
            ((StringBuilder) charSequence).getChars(i2, i3, cArr, i4);
            return;
        }
        if (charSequence instanceof GetChars) {
            ((GetChars) charSequence).getChars(i2, i3, cArr, i4);
            return;
        }
        while (i2 < i3) {
            cArr[i4] = charSequence.charAt(i2);
            i2++;
            i4++;
        }
    }

    private static int getLayoutDirectionFromFirstChar(Locale locale) {
        byte directionality = Character.getDirectionality(locale.getDisplayName(locale).charAt(0));
        return (directionality == 1 || directionality == 2) ? 1 : 0;
    }

    public static int getLayoutDirectionFromLocale(Locale locale) {
        if (locale != null && !locale.equals(Locale.ROOT)) {
            String script = ICU.getScript(ICU.addLikelySubtags(locale.toString()));
            if (script == null) {
                return getLayoutDirectionFromFirstChar(locale);
            }
            if (script.equalsIgnoreCase(ARAB_SCRIPT_SUBTAG) || script.equalsIgnoreCase(HEBR_SCRIPT_SUBTAG)) {
                return 1;
            }
        }
        return SystemProperties.getBoolean(Settings.Global.DEVELOPMENT_FORCE_RTL, false) ? 1 : 0;
    }

    public static int getOffsetAfter(CharSequence charSequence, int i2) {
        int i3;
        int length = charSequence.length();
        if (i2 == length || i2 == length - 1) {
            return length;
        }
        char cCharAt = charSequence.charAt(i2);
        if (cCharAt < 55296 || cCharAt > 56319) {
            i3 = i2 + 1;
        } else {
            i3 = i2 + 1;
            char cCharAt2 = charSequence.charAt(i3);
            if (cCharAt2 >= 56320 && cCharAt2 <= 57343) {
                i3 = i2 + 2;
            }
        }
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            ReplacementSpan[] replacementSpanArr = (ReplacementSpan[]) spanned.getSpans(i3, i3, ReplacementSpan.class);
            for (int i4 = 0; i4 < replacementSpanArr.length; i4++) {
                int spanStart = spanned.getSpanStart(replacementSpanArr[i4]);
                int spanEnd = spanned.getSpanEnd(replacementSpanArr[i4]);
                if (spanStart < i3 && spanEnd > i3) {
                    i3 = spanEnd;
                }
            }
        }
        return i3;
    }

    public static int getOffsetBefore(CharSequence charSequence, int i2) {
        char cCharAt;
        if (i2 == 0 || i2 == 1) {
            return 0;
        }
        char cCharAt2 = charSequence.charAt(i2 - 1);
        int i3 = (cCharAt2 < 56320 || cCharAt2 > 57343 || (cCharAt = charSequence.charAt(i2 + (-2))) < 55296 || cCharAt > 56319) ? i2 - 1 : i2 - 2;
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            ReplacementSpan[] replacementSpanArr = (ReplacementSpan[]) spanned.getSpans(i3, i3, ReplacementSpan.class);
            for (int i4 = 0; i4 < replacementSpanArr.length; i4++) {
                int spanStart = spanned.getSpanStart(replacementSpanArr[i4]);
                int spanEnd = spanned.getSpanEnd(replacementSpanArr[i4]);
                if (spanStart < i3 && spanEnd > i3) {
                    i3 = spanStart;
                }
            }
        }
        return i3;
    }

    public static CharSequence getReverse(CharSequence charSequence, int i2, int i3) {
        return new Reverser(charSequence, i2, i3);
    }

    public static int getTrimmedLength(CharSequence charSequence) {
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) <= ' ') {
            i2++;
        }
        while (length > i2 && charSequence.charAt(length - 1) <= ' ') {
            length--;
        }
        return length - i2;
    }

    public static String htmlEncode(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\"') {
                sb.append("&quot;");
            } else if (cCharAt == '<') {
                sb.append("&lt;");
            } else if (cCharAt == '>') {
                sb.append("&gt;");
            } else if (cCharAt == '&') {
                sb.append("&amp;");
            } else if (cCharAt != '\'') {
                sb.append(cCharAt);
            } else {
                sb.append("&#39;");
            }
        }
        return sb.toString();
    }

    public static int indexOf(CharSequence charSequence, char c2) {
        return indexOf(charSequence, c2, 0);
    }

    public static boolean isDigitsOnly(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isDigit(charSequence.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean isGraphic(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            int type = Character.getType(charSequence.charAt(i2));
            if (type != 15 && type != 16 && type != 19 && type != 0 && type != 13 && type != 14 && type != 12) {
                return true;
            }
        }
        return false;
    }

    public static boolean isPrintableAscii(char c2) {
        return (' ' <= c2 && c2 <= '~') || c2 == '\r' || c2 == '\n';
    }

    public static boolean isPrintableAsciiOnly(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!isPrintableAscii(charSequence.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static CharSequence join(Iterable<CharSequence> iterable) {
        return join(Resources.getSystem().getText(17040701), iterable);
    }

    public static int lastIndexOf(CharSequence charSequence, char c2) {
        return lastIndexOf(charSequence, c2, charSequence.length() - 1);
    }

    public static char[] obtain(int i2) {
        char[] cArr;
        synchronized (sLock) {
            cArr = sTemp;
            sTemp = null;
        }
        return (cArr == null || cArr.length < i2) ? new char[a.f(i2)] : cArr;
    }

    public static long packRangeInLong(int i2, int i3) {
        return ((long) i3) | (((long) i2) << 32);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void readSpan(Parcel parcel, Spannable spannable, Object obj) {
        spannable.setSpan(obj, parcel.readInt(), parcel.readInt(), parcel.readInt());
    }

    public static void recycle(char[] cArr) {
        if (cArr.length > 1000) {
            return;
        }
        synchronized (sLock) {
            sTemp = cArr;
        }
    }

    public static boolean regionMatches(CharSequence charSequence, int i2, CharSequence charSequence2, int i3, int i4) {
        char[] cArrObtain = obtain(i4 * 2);
        boolean z2 = false;
        getChars(charSequence, i2, i2 + i4, cArrObtain, 0);
        getChars(charSequence2, i3, i3 + i4, cArrObtain, i4);
        for (int i5 = 0; i5 < i4; i5++) {
            if (cArrObtain[i5] != cArrObtain[i5 + i4]) {
                recycle(cArrObtain);
                return z2;
            }
        }
        z2 = true;
        recycle(cArrObtain);
        return z2;
    }

    public static <T> T[] removeEmptySpans(T[] tArr, Spanned spanned, Class<T> cls) {
        Object[] objArr = null;
        int i2 = 0;
        for (int i3 = 0; i3 < tArr.length; i3++) {
            T t2 = tArr[i3];
            if (spanned.getSpanStart(t2) == spanned.getSpanEnd(t2)) {
                if (objArr == null) {
                    objArr = (Object[]) Array.newInstance((Class<?>) cls, tArr.length - 1);
                    System.arraycopy(tArr, 0, objArr, 0, i3);
                    i2 = i3;
                }
            } else if (objArr != null) {
                objArr[i2] = t2;
                i2++;
            }
        }
        if (objArr == null) {
            return tArr;
        }
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i2));
        System.arraycopy(objArr, 0, tArr2, 0, i2);
        return tArr2;
    }

    public static CharSequence replace(CharSequence charSequence, String[] strArr, CharSequence[] charSequenceArr) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        for (int i2 = 0; i2 < strArr.length; i2++) {
            int iIndexOf = indexOf(spannableStringBuilder, strArr[i2]);
            if (iIndexOf >= 0) {
                spannableStringBuilder.setSpan(strArr[i2], iIndexOf, strArr[i2].length() + iIndexOf, 33);
            }
        }
        for (int i3 = 0; i3 < strArr.length; i3++) {
            int spanStart = spannableStringBuilder.getSpanStart(strArr[i3]);
            int spanEnd = spannableStringBuilder.getSpanEnd(strArr[i3]);
            if (spanStart >= 0) {
                spannableStringBuilder.replace(spanStart, spanEnd, charSequenceArr[i3]);
            }
        }
        return spannableStringBuilder;
    }

    private static float setPara(MeasuredText measuredText, TextPaint textPaint, CharSequence charSequence, int i2, int i3, TextDirectionHeuristic textDirectionHeuristic) {
        measuredText.setPara(charSequence, i2, i3, textDirectionHeuristic);
        Spanned spanned = charSequence instanceof Spanned ? (Spanned) charSequence : null;
        int i4 = i3 - i2;
        if (spanned == null) {
            return measuredText.addStyleRun(textPaint, i4, null);
        }
        float fAddStyleRun = 0.0f;
        int i5 = 0;
        while (i5 < i4) {
            int iNextSpanTransition = spanned.nextSpanTransition(i5, i4, MetricAffectingSpan.class);
            fAddStyleRun += measuredText.addStyleRun(textPaint, (MetricAffectingSpan[]) removeEmptySpans((MetricAffectingSpan[]) spanned.getSpans(i5, iNextSpanTransition, MetricAffectingSpan.class), spanned, MetricAffectingSpan.class), iNextSpanTransition - i5, null);
            i5 = iNextSpanTransition;
        }
        return fAddStyleRun;
    }

    public static String[] split(String str, String str2) {
        return str.length() == 0 ? EMPTY_STRING_ARRAY : str.split(str2, -1);
    }

    public static CharSequence stringOrSpannedString(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        if (charSequence instanceof SpannedString) {
            return charSequence;
        }
        return charSequence instanceof Spanned ? new SpannedString(charSequence) : charSequence.toString();
    }

    public static String substring(CharSequence charSequence, int i2, int i3) {
        if (charSequence instanceof String) {
            return ((String) charSequence).substring(i2, i3);
        }
        if (charSequence instanceof StringBuilder) {
            return ((StringBuilder) charSequence).substring(i2, i3);
        }
        if (charSequence instanceof StringBuffer) {
            return ((StringBuffer) charSequence).substring(i2, i3);
        }
        int i4 = i3 - i2;
        char[] cArrObtain = obtain(i4);
        getChars(charSequence, i2, i3, cArrObtain, 0);
        String str = new String(cArrObtain, 0, i4);
        recycle(cArrObtain);
        return str;
    }

    public static int unpackRangeEndFromLong(long j2) {
        return (int) (j2 & ExpandableListView.PACKED_POSITION_VALUE_NULL);
    }

    public static int unpackRangeStartFromLong(long j2) {
        return (int) (j2 >>> 32);
    }

    public static void writeToParcel(CharSequence charSequence, Parcel parcel, int i2) {
        if (!(charSequence instanceof Spanned)) {
            parcel.writeInt(1);
            if (charSequence != null) {
                parcel.writeString(charSequence.toString());
                return;
            } else {
                parcel.writeString(null);
                return;
            }
        }
        parcel.writeInt(0);
        parcel.writeString(charSequence.toString());
        Spanned spanned = (Spanned) charSequence;
        Object[] spans = spanned.getSpans(0, charSequence.length(), Object.class);
        for (int i3 = 0; i3 < spans.length; i3++) {
            Object obj = spans[i3];
            Object underlying = spans[i3];
            if (underlying instanceof CharacterStyle) {
                underlying = ((CharacterStyle) underlying).getUnderlying();
            }
            if (underlying instanceof ParcelableSpan) {
                ParcelableSpan parcelableSpan = (ParcelableSpan) underlying;
                int spanTypeId = parcelableSpan.getSpanTypeId();
                if (spanTypeId < 1 || spanTypeId > 23) {
                    Log.e(TAG, "external class \"" + parcelableSpan.getClass().getSimpleName() + "\" is attempting to use the frameworks-only ParcelableSpan interface");
                } else {
                    parcel.writeInt(spanTypeId);
                    parcelableSpan.writeToParcel(parcel, i2);
                    writeWhere(parcel, spanned, obj);
                }
            }
        }
        parcel.writeInt(0);
    }

    private static void writeWhere(Parcel parcel, Spanned spanned, Object obj) {
        parcel.writeInt(spanned.getSpanStart(obj));
        parcel.writeInt(spanned.getSpanEnd(obj));
        parcel.writeInt(spanned.getSpanFlags(obj));
    }

    public static CharSequence commaEllipsize(CharSequence charSequence, TextPaint textPaint, float f2, String str, String str2, TextDirectionHeuristic textDirectionHeuristic) {
        char c2;
        char[] cArr;
        String string;
        MeasuredText measuredTextObtain = MeasuredText.obtain();
        try {
            int length = charSequence.length();
            if (setPara(measuredTextObtain, textPaint, charSequence, 0, length, textDirectionHeuristic) <= f2) {
                return charSequence;
            }
            char[] cArr2 = measuredTextObtain.mChars;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                c2 = PhoneNumberUtils.PAUSE;
                if (i3 >= length) {
                    break;
                }
                if (cArr2[i3] == ',') {
                    i4++;
                }
                i3++;
            }
            int i5 = 1;
            int i6 = i4 + 1;
            String str3 = ProxyProperties.LOCAL_EXCL_LIST;
            float[] fArr = measuredTextObtain.mWidths;
            MeasuredText measuredTextObtain2 = MeasuredText.obtain();
            int i7 = 0;
            int i8 = 0;
            int i9 = 0;
            while (i7 < length) {
                i8 = (int) (i8 + fArr[i7]);
                if (cArr2[i7] == c2) {
                    i6--;
                    if (i6 == i5) {
                        string = " " + str;
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append(" ");
                        Object[] objArr = new Object[i5];
                        objArr[i2] = Integer.valueOf(i6);
                        sb.append(String.format(str2, objArr));
                        string = sb.toString();
                    }
                    measuredTextObtain2.setPara(string, i2, string.length(), textDirectionHeuristic);
                    cArr = cArr2;
                    if (i8 + measuredTextObtain2.addStyleRun(textPaint, measuredTextObtain2.mLen, null) <= f2) {
                        i9 = i7 + 1;
                        str3 = string;
                    }
                } else {
                    cArr = cArr2;
                }
                i7++;
                cArr2 = cArr;
                i2 = 0;
                i5 = 1;
                c2 = PhoneNumberUtils.PAUSE;
            }
            MeasuredText.recycle(measuredTextObtain2);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str3);
            spannableStringBuilder.insert(0, charSequence, 0, i9);
            return spannableStringBuilder;
        } finally {
            MeasuredText.recycle(measuredTextObtain);
        }
    }

    public static boolean doesNotNeedBidi(char[] cArr, int i2, int i3) {
        int i4 = i3 + i2;
        while (i2 < i4) {
            if (cArr[i2] >= 1424) {
                return false;
            }
            i2++;
        }
        return true;
    }

    public static CharSequence ellipsize(CharSequence charSequence, TextPaint textPaint, float f2, TruncateAt truncateAt, boolean z2, EllipsizeCallback ellipsizeCallback) {
        Resources system;
        int i2;
        if (truncateAt == TruncateAt.END_SMALL) {
            system = Resources.getSystem();
            i2 = 17039443;
        } else {
            system = Resources.getSystem();
            i2 = 17039442;
        }
        return ellipsize(charSequence, textPaint, f2, truncateAt, z2, ellipsizeCallback, TextDirectionHeuristics.FIRSTSTRONG_LTR, system.getString(i2));
    }

    public static int indexOf(CharSequence charSequence, char c2, int i2) {
        return charSequence.getClass() == String.class ? ((String) charSequence).indexOf(c2, i2) : indexOf(charSequence, c2, i2, charSequence.length());
    }

    public static int lastIndexOf(CharSequence charSequence, char c2, int i2) {
        return charSequence.getClass() == String.class ? ((String) charSequence).lastIndexOf(c2, i2) : lastIndexOf(charSequence, c2, 0, i2);
    }

    public static boolean isGraphic(char c2) {
        int type = Character.getType(c2);
        return (type == 15 || type == 16 || type == 19 || type == 0 || type == 13 || type == 14 || type == 12) ? false : true;
    }

    public static String join(CharSequence charSequence, Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        boolean z2 = true;
        for (Object obj : objArr) {
            if (z2) {
                z2 = false;
            } else {
                sb.append(charSequence);
            }
            sb.append(obj);
        }
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0060 A[Catch: all -> 0x00e0, TryCatch #0 {all -> 0x00e0, blocks: (B:3:0x0009, B:6:0x001c, B:9:0x0023, B:24:0x0060, B:25:0x0063, B:27:0x0069, B:29:0x006e, B:32:0x0076, B:34:0x0081, B:35:0x0089, B:39:0x0094, B:47:0x00b2, B:50:0x00ce, B:13:0x0030, B:15:0x0034, B:16:0x003b, B:18:0x0040, B:21:0x0045, B:22:0x0059), top: B:56:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0069 A[Catch: all -> 0x00e0, TryCatch #0 {all -> 0x00e0, blocks: (B:3:0x0009, B:6:0x001c, B:9:0x0023, B:24:0x0060, B:25:0x0063, B:27:0x0069, B:29:0x006e, B:32:0x0076, B:34:0x0081, B:35:0x0089, B:39:0x0094, B:47:0x00b2, B:50:0x00ce, B:13:0x0030, B:15:0x0034, B:16:0x003b, B:18:0x0040, B:21:0x0045, B:22:0x0059), top: B:56:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x006d  */
    /* JADX WARN: Code duplicated, block: B:31:0x0074 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0076 A[Catch: all -> 0x00e0, TryCatch #0 {all -> 0x00e0, blocks: (B:3:0x0009, B:6:0x001c, B:9:0x0023, B:24:0x0060, B:25:0x0063, B:27:0x0069, B:29:0x006e, B:32:0x0076, B:34:0x0081, B:35:0x0089, B:39:0x0094, B:47:0x00b2, B:50:0x00ce, B:13:0x0030, B:15:0x0034, B:16:0x003b, B:18:0x0040, B:21:0x0045, B:22:0x0059), top: B:56:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0081 A[Catch: all -> 0x00e0, LOOP:0: B:33:0x007f->B:34:0x0081, LOOP_END, TryCatch #0 {all -> 0x00e0, blocks: (B:3:0x0009, B:6:0x001c, B:9:0x0023, B:24:0x0060, B:25:0x0063, B:27:0x0069, B:29:0x006e, B:32:0x0076, B:34:0x0081, B:35:0x0089, B:39:0x0094, B:47:0x00b2, B:50:0x00ce, B:13:0x0030, B:15:0x0034, B:16:0x003b, B:18:0x0040, B:21:0x0045, B:22:0x0059), top: B:56:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0090 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:39:0x0094 A[Catch: all -> 0x00e0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00e0, blocks: (B:3:0x0009, B:6:0x001c, B:9:0x0023, B:24:0x0060, B:25:0x0063, B:27:0x0069, B:29:0x006e, B:32:0x0076, B:34:0x0081, B:35:0x0089, B:39:0x0094, B:47:0x00b2, B:50:0x00ce, B:13:0x0030, B:15:0x0034, B:16:0x003b, B:18:0x0040, B:21:0x0045, B:22:0x0059), top: B:56:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00a8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x00b2 A[Catch: all -> 0x00e0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00e0, blocks: (B:3:0x0009, B:6:0x001c, B:9:0x0023, B:24:0x0060, B:25:0x0063, B:27:0x0069, B:29:0x006e, B:32:0x0076, B:34:0x0081, B:35:0x0089, B:39:0x0094, B:47:0x00b2, B:50:0x00ce, B:13:0x0030, B:15:0x0034, B:16:0x003b, B:18:0x0040, B:21:0x0045, B:22:0x0059), top: B:56:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00ce A[Catch: all -> 0x00e0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00e0, blocks: (B:3:0x0009, B:6:0x001c, B:9:0x0023, B:24:0x0060, B:25:0x0063, B:27:0x0069, B:29:0x006e, B:32:0x0076, B:34:0x0081, B:35:0x0089, B:39:0x0094, B:47:0x00b2, B:50:0x00ce, B:13:0x0030, B:15:0x0034, B:16:0x003b, B:18:0x0040, B:21:0x0045, B:22:0x0059), top: B:56:0x0009 }] */
    public static CharSequence ellipsize(CharSequence charSequence, TextPaint textPaint, float f2, TruncateAt truncateAt, boolean z2, EllipsizeCallback ellipsizeCallback, TextDirectionHeuristic textDirectionHeuristic, String str) {
        int iBreakText;
        int iBreakText2;
        char[] cArr;
        Spanned spanned;
        int i2;
        String str2;
        int length = charSequence.length();
        MeasuredText measuredTextObtain = MeasuredText.obtain();
        try {
            if (setPara(measuredTextObtain, textPaint, charSequence, 0, charSequence.length(), textDirectionHeuristic) <= f2) {
                if (ellipsizeCallback != null) {
                    ellipsizeCallback.ellipsized(0, 0);
                }
                return charSequence;
            }
            float fMeasureText = f2 - textPaint.measureText(str);
            if (fMeasureText >= 0.0f) {
                if (truncateAt == TruncateAt.START) {
                    iBreakText2 = length - measuredTextObtain.breakText(length, false, fMeasureText);
                } else if (truncateAt != TruncateAt.END && truncateAt != TruncateAt.END_SMALL) {
                    iBreakText2 = length - measuredTextObtain.breakText(length, false, fMeasureText / 2.0f);
                    iBreakText = measuredTextObtain.breakText(iBreakText2, true, fMeasureText - measuredTextObtain.measure(iBreakText2, length));
                } else {
                    iBreakText = measuredTextObtain.breakText(length, true, fMeasureText);
                    iBreakText2 = length;
                }
                if (ellipsizeCallback != null) {
                    ellipsizeCallback.ellipsized(iBreakText, iBreakText2);
                }
                cArr = measuredTextObtain.mChars;
                if (charSequence instanceof Spanned) {
                    spanned = (Spanned) charSequence;
                } else {
                    spanned = null;
                }
                i2 = length - (iBreakText2 - iBreakText);
                if (z2) {
                    if (i2 > 0) {
                        cArr[iBreakText] = str.charAt(0);
                        iBreakText++;
                    }
                    while (iBreakText < iBreakText2) {
                        cArr[iBreakText] = ZWNBS_CHAR;
                        iBreakText++;
                    }
                    str2 = new String(cArr, 0, length);
                    if (spanned == null) {
                        return str2;
                    }
                    SpannableString spannableString = new SpannableString(str2);
                    copySpansFrom(spanned, 0, length, Object.class, spannableString, 0);
                    return spannableString;
                }
                if (i2 == 0) {
                    return ProxyProperties.LOCAL_EXCL_LIST;
                }
                if (spanned == null) {
                    StringBuilder sb = new StringBuilder(i2 + str.length());
                    sb.append(cArr, 0, iBreakText);
                    sb.append(str);
                    sb.append(cArr, iBreakText2, length - iBreakText2);
                    return sb.toString();
                }
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append(charSequence, 0, iBreakText);
                spannableStringBuilder.append((CharSequence) str);
                spannableStringBuilder.append(charSequence, iBreakText2, length);
                return spannableStringBuilder;
            }
            iBreakText2 = length;
            iBreakText = 0;
            if (ellipsizeCallback != null) {
                ellipsizeCallback.ellipsized(iBreakText, iBreakText2);
            }
            cArr = measuredTextObtain.mChars;
            if (charSequence instanceof Spanned) {
                spanned = (Spanned) charSequence;
            } else {
                spanned = null;
            }
            i2 = length - (iBreakText2 - iBreakText);
            if (z2) {
                if (i2 > 0) {
                    cArr[iBreakText] = str.charAt(0);
                    iBreakText++;
                }
                while (iBreakText < iBreakText2) {
                    cArr[iBreakText] = ZWNBS_CHAR;
                    iBreakText++;
                }
                str2 = new String(cArr, 0, length);
                if (spanned == null) {
                    return str2;
                }
                SpannableString spannableString2 = new SpannableString(str2);
                copySpansFrom(spanned, 0, length, Object.class, spannableString2, 0);
                return spannableString2;
            }
            if (i2 == 0) {
                return ProxyProperties.LOCAL_EXCL_LIST;
            }
            if (spanned == null) {
                StringBuilder sb2 = new StringBuilder(i2 + str.length());
                sb2.append(cArr, 0, iBreakText);
                sb2.append(str);
                sb2.append(cArr, iBreakText2, length - iBreakText2);
                return sb2.toString();
            }
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
            spannableStringBuilder2.append(charSequence, 0, iBreakText);
            spannableStringBuilder2.append((CharSequence) str);
            spannableStringBuilder2.append(charSequence, iBreakText2, length);
            return spannableStringBuilder2;
        } finally {
            MeasuredText.recycle(measuredTextObtain);
        }
    }

    public static String[] split(String str, Pattern pattern) {
        if (str.length() == 0) {
            return EMPTY_STRING_ARRAY;
        }
        return pattern.split(str, -1);
    }

    public static int indexOf(CharSequence charSequence, char c2, int i2, int i3) {
        Class<?> cls = charSequence.getClass();
        if (!(charSequence instanceof GetChars) && cls != StringBuffer.class && cls != StringBuilder.class && cls != String.class) {
            while (i2 < i3) {
                if (charSequence.charAt(i2) == c2) {
                    return i2;
                }
                i2++;
            }
            return -1;
        }
        char[] cArrObtain = obtain(500);
        while (i2 < i3) {
            int i4 = i2 + 500;
            if (i4 > i3) {
                i4 = i3;
            }
            getChars(charSequence, i2, i4, cArrObtain, 0);
            int i5 = i4 - i2;
            for (int i6 = 0; i6 < i5; i6++) {
                if (cArrObtain[i6] == c2) {
                    recycle(cArrObtain);
                    return i6 + i2;
                }
            }
            i2 = i4;
        }
        recycle(cArrObtain);
        return -1;
    }

    public static int lastIndexOf(CharSequence charSequence, char c2, int i2, int i3) {
        if (i3 < 0) {
            return -1;
        }
        if (i3 >= charSequence.length()) {
            i3 = charSequence.length() - 1;
        }
        int i4 = i3 + 1;
        Class<?> cls = charSequence.getClass();
        if (!(charSequence instanceof GetChars) && cls != StringBuffer.class && cls != StringBuilder.class && cls != String.class) {
            for (int i5 = i4 - 1; i5 >= i2; i5--) {
                if (charSequence.charAt(i5) == c2) {
                    return i5;
                }
            }
            return -1;
        }
        char[] cArrObtain = obtain(500);
        while (i2 < i4) {
            int i6 = i4 - 500;
            if (i6 < i2) {
                i6 = i2;
            }
            getChars(charSequence, i6, i4, cArrObtain, 0);
            for (int i7 = (i4 - i6) - 1; i7 >= 0; i7--) {
                if (cArrObtain[i7] == c2) {
                    recycle(cArrObtain);
                    return i7 + i6;
                }
            }
            i4 = i6;
        }
        recycle(cArrObtain);
        return -1;
    }

    public static String join(CharSequence charSequence, Iterable iterable) {
        StringBuilder sb = new StringBuilder();
        boolean z2 = true;
        for (Object obj : iterable) {
            if (z2) {
                z2 = false;
            } else {
                sb.append(charSequence);
            }
            sb.append(obj);
        }
        return sb.toString();
    }

    public static int indexOf(CharSequence charSequence, CharSequence charSequence2) {
        return indexOf(charSequence, charSequence2, 0, charSequence.length());
    }

    public static int indexOf(CharSequence charSequence, CharSequence charSequence2, int i2) {
        return indexOf(charSequence, charSequence2, i2, charSequence.length());
    }

    public static int indexOf(CharSequence charSequence, CharSequence charSequence2, int i2, int i3) {
        int length = charSequence2.length();
        if (length == 0) {
            return i2;
        }
        char cCharAt = charSequence2.charAt(0);
        while (true) {
            int iIndexOf = indexOf(charSequence, cCharAt, i2);
            if (iIndexOf > i3 - length || iIndexOf < 0) {
                return -1;
            }
            if (regionMatches(charSequence, iIndexOf, charSequence2, 0, length)) {
                return iIndexOf;
            }
            i2 = iIndexOf + 1;
        }
    }
}
