package android.content.res;

import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.provider.CalendarContract;
import android.text.Annotation;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.BulletSpan;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.text.style.LineHeightSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.TextAppearanceSpan;
import android.text.style.TypefaceSpan;
import android.text.style.URLSpan;
import android.text.style.UnderlineSpan;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
final class StringBlock {
    private static final String TAG = "AssetManager";
    private static final boolean localLOGV = false;
    private final int mNative;
    private SparseArray<CharSequence> mSparseStrings;
    private CharSequence[] mStrings;
    private final boolean mUseSparse;
    public StyleIDs mStyleIDs = null;
    private final boolean mOwnsNative = false;

    public static class Height implements LineHeightSpan.WithDensity {
        private static float sProportion;
        private int mSize;

        public Height(int i2) {
            this.mSize = i2;
        }

        @Override // android.text.style.LineHeightSpan
        public void chooseHeight(CharSequence charSequence, int i2, int i3, int i4, int i5, Paint.FontMetricsInt fontMetricsInt) {
            chooseHeight(charSequence, i2, i3, i4, i5, fontMetricsInt, null);
        }

        @Override // android.text.style.LineHeightSpan.WithDensity
        public void chooseHeight(CharSequence charSequence, int i2, int i3, int i4, int i5, Paint.FontMetricsInt fontMetricsInt, TextPaint textPaint) {
            int i6 = this.mSize;
            if (textPaint != null) {
                i6 = (int) (i6 * textPaint.density);
            }
            int i7 = fontMetricsInt.bottom;
            if (i7 - fontMetricsInt.top < i6) {
                fontMetricsInt.top = i7 - i6;
                fontMetricsInt.ascent -= i6;
                return;
            }
            if (sProportion == 0.0f) {
                Paint paint = new Paint();
                paint.setTextSize(100.0f);
                Rect rect = new Rect();
                paint.getTextBounds("ABCDEFG", 0, 7, rect);
                sProportion = rect.top / paint.ascent();
            }
            int iCeil = (int) Math.ceil((-fontMetricsInt.top) * sProportion);
            int i8 = fontMetricsInt.descent;
            if (i6 - i8 >= iCeil) {
                fontMetricsInt.top = fontMetricsInt.bottom - i6;
                fontMetricsInt.ascent = i8 - i6;
                return;
            }
            if (i6 < iCeil) {
                int i9 = -i6;
                fontMetricsInt.ascent = i9;
                fontMetricsInt.top = i9;
                fontMetricsInt.descent = 0;
                fontMetricsInt.bottom = 0;
                return;
            }
            int i10 = -iCeil;
            fontMetricsInt.ascent = i10;
            fontMetricsInt.top = i10;
            int i11 = i10 + i6;
            fontMetricsInt.descent = i11;
            fontMetricsInt.bottom = i11;
        }
    }

    public static final class StyleIDs {
        private int boldId = -1;
        private int italicId = -1;
        private int underlineId = -1;
        private int ttId = -1;
        private int bigId = -1;
        private int smallId = -1;
        private int subId = -1;
        private int supId = -1;
        private int strikeId = -1;
        private int listItemId = -1;
        private int marqueeId = -1;
    }

    public StringBlock(byte[] bArr, boolean z2) {
        this.mNative = nativeCreate(bArr, 0, bArr.length);
        this.mUseSparse = z2;
    }

    private static void addParagraphSpan(Spannable spannable, Object obj, int i2, int i3) {
        int length = spannable.length();
        if (i2 != 0 && i2 != length && spannable.charAt(i2 - 1) != '\n') {
            do {
                i2--;
                if (i2 <= 0) {
                    break;
                }
            } while (spannable.charAt(i2 - 1) != '\n');
        }
        if (i3 != 0 && i3 != length && spannable.charAt(i3 - 1) != '\n') {
            do {
                i3++;
                if (i3 >= length) {
                    break;
                }
            } while (spannable.charAt(i3 - 1) != '\n');
        }
        spannable.setSpan(obj, i2, i3, 51);
    }

    private CharSequence applyStyles(String str, int[] iArr, StyleIDs styleIDs) {
        if (iArr.length == 0) {
            return str;
        }
        SpannableString spannableString = new SpannableString(str);
        for (int i2 = 0; i2 < iArr.length; i2 += 3) {
            int i3 = iArr[i2];
            if (i3 == styleIDs.boldId) {
                spannableString.setSpan(new StyleSpan(1), iArr[i2 + 1], iArr[i2 + 2] + 1, 33);
            } else if (i3 == styleIDs.italicId) {
                spannableString.setSpan(new StyleSpan(2), iArr[i2 + 1], iArr[i2 + 2] + 1, 33);
            } else if (i3 == styleIDs.underlineId) {
                spannableString.setSpan(new UnderlineSpan(), iArr[i2 + 1], iArr[i2 + 2] + 1, 33);
            } else if (i3 == styleIDs.ttId) {
                spannableString.setSpan(new TypefaceSpan("monospace"), iArr[i2 + 1], iArr[i2 + 2] + 1, 33);
            } else if (i3 == styleIDs.bigId) {
                spannableString.setSpan(new RelativeSizeSpan(1.25f), iArr[i2 + 1], iArr[i2 + 2] + 1, 33);
            } else if (i3 == styleIDs.smallId) {
                spannableString.setSpan(new RelativeSizeSpan(0.8f), iArr[i2 + 1], iArr[i2 + 2] + 1, 33);
            } else if (i3 == styleIDs.subId) {
                spannableString.setSpan(new SubscriptSpan(), iArr[i2 + 1], iArr[i2 + 2] + 1, 33);
            } else if (i3 == styleIDs.supId) {
                spannableString.setSpan(new SuperscriptSpan(), iArr[i2 + 1], iArr[i2 + 2] + 1, 33);
            } else if (i3 == styleIDs.strikeId) {
                spannableString.setSpan(new StrikethroughSpan(), iArr[i2 + 1], iArr[i2 + 2] + 1, 33);
            } else if (i3 == styleIDs.listItemId) {
                addParagraphSpan(spannableString, new BulletSpan(10), iArr[i2 + 1], iArr[i2 + 2] + 1);
            } else if (i3 == styleIDs.marqueeId) {
                spannableString.setSpan(TextUtils.TruncateAt.MARQUEE, iArr[i2 + 1], iArr[i2 + 2] + 1, 18);
            } else {
                String strNativeGetString = nativeGetString(this.mNative, i3);
                if (strNativeGetString.startsWith("font;")) {
                    String strSubtag = subtag(strNativeGetString, ";height=");
                    if (strSubtag != null) {
                        addParagraphSpan(spannableString, new Height(Integer.parseInt(strSubtag)), iArr[i2 + 1], iArr[i2 + 2] + 1);
                    }
                    String strSubtag2 = subtag(strNativeGetString, ";size=");
                    if (strSubtag2 != null) {
                        spannableString.setSpan(new AbsoluteSizeSpan(Integer.parseInt(strSubtag2), true), iArr[i2 + 1], iArr[i2 + 2] + 1, 33);
                    }
                    String strSubtag3 = subtag(strNativeGetString, ";fgcolor=");
                    if (strSubtag3 != null) {
                        spannableString.setSpan(getColor(strSubtag3, true), iArr[i2 + 1], iArr[i2 + 2] + 1, 33);
                    }
                    String strSubtag4 = subtag(strNativeGetString, ";color=");
                    if (strSubtag4 != null) {
                        spannableString.setSpan(getColor(strSubtag4, true), iArr[i2 + 1], iArr[i2 + 2] + 1, 33);
                    }
                    String strSubtag5 = subtag(strNativeGetString, ";bgcolor=");
                    if (strSubtag5 != null) {
                        spannableString.setSpan(getColor(strSubtag5, false), iArr[i2 + 1], iArr[i2 + 2] + 1, 33);
                    }
                    String strSubtag6 = subtag(strNativeGetString, ";face=");
                    if (strSubtag6 != null) {
                        spannableString.setSpan(new TypefaceSpan(strSubtag6), iArr[i2 + 1], iArr[i2 + 2] + 1, 33);
                    }
                } else if (strNativeGetString.startsWith("a;")) {
                    String strSubtag7 = subtag(strNativeGetString, ";href=");
                    if (strSubtag7 != null) {
                        spannableString.setSpan(new URLSpan(strSubtag7), iArr[i2 + 1], iArr[i2 + 2] + 1, 33);
                    }
                } else if (strNativeGetString.startsWith("annotation;")) {
                    int length = strNativeGetString.length();
                    int iIndexOf = strNativeGetString.indexOf(59);
                    while (iIndexOf < length) {
                        int iIndexOf2 = strNativeGetString.indexOf(61, iIndexOf);
                        if (iIndexOf2 < 0) {
                            break;
                        }
                        int iIndexOf3 = strNativeGetString.indexOf(59, iIndexOf2);
                        if (iIndexOf3 < 0) {
                            iIndexOf3 = length;
                        }
                        spannableString.setSpan(new Annotation(strNativeGetString.substring(iIndexOf + 1, iIndexOf2), strNativeGetString.substring(iIndexOf2 + 1, iIndexOf3)), iArr[i2 + 1], iArr[i2 + 2] + 1, 33);
                        iIndexOf = iIndexOf3;
                    }
                }
            }
        }
        return new SpannedString(spannableString);
    }

    private static CharacterStyle getColor(String str, boolean z2) {
        int htmlColor = -16777216;
        if (!TextUtils.isEmpty(str)) {
            if (str.startsWith("@")) {
                Resources system = Resources.getSystem();
                int identifier = system.getIdentifier(str.substring(1), CalendarContract.ColorsColumns.COLOR, "android");
                if (identifier != 0) {
                    ColorStateList colorStateList = system.getColorStateList(identifier);
                    if (z2) {
                        return new TextAppearanceSpan(null, 0, 0, colorStateList, null);
                    }
                    htmlColor = colorStateList.getDefaultColor();
                }
            } else {
                htmlColor = Color.getHtmlColor(str);
            }
        }
        return z2 ? new ForegroundColorSpan(htmlColor) : new BackgroundColorSpan(htmlColor);
    }

    private static native int nativeCreate(byte[] bArr, int i2, int i3);

    private static native void nativeDestroy(int i2);

    private static native int nativeGetSize(int i2);

    private static native String nativeGetString(int i2, int i3);

    private static native int[] nativeGetStyle(int i2, int i3);

    private static String subtag(String str, String str2) {
        int iIndexOf = str.indexOf(str2);
        if (iIndexOf < 0) {
            return null;
        }
        int length = iIndexOf + str2.length();
        int iIndexOf2 = str.indexOf(59, length);
        return iIndexOf2 < 0 ? str.substring(length) : str.substring(length, iIndexOf2);
    }

    public void finalize() {
        try {
            super.finalize();
        } finally {
            if (this.mOwnsNative) {
                nativeDestroy(this.mNative);
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public CharSequence get(int i2) {
        synchronized (this) {
            CharSequence[] charSequenceArr = this.mStrings;
            if (charSequenceArr != null) {
                CharSequence charSequence = charSequenceArr[i2];
                if (charSequence != null) {
                    return charSequence;
                }
            } else {
                SparseArray<CharSequence> sparseArray = this.mSparseStrings;
                if (sparseArray != null) {
                    CharSequence charSequence2 = sparseArray.get(i2);
                    if (charSequence2 != null) {
                        return charSequence2;
                    }
                } else {
                    int iNativeGetSize = nativeGetSize(this.mNative);
                    if (!this.mUseSparse || iNativeGetSize <= 250) {
                        this.mStrings = new CharSequence[iNativeGetSize];
                    } else {
                        this.mSparseStrings = new SparseArray<>();
                    }
                }
            }
            String strNativeGetString = nativeGetString(this.mNative, i2);
            int[] iArrNativeGetStyle = nativeGetStyle(this.mNative, i2);
            String strApplyStyles = strNativeGetString;
            if (iArrNativeGetStyle != null) {
                if (this.mStyleIDs == null) {
                    this.mStyleIDs = new StyleIDs();
                }
                for (int i3 = 0; i3 < iArrNativeGetStyle.length; i3 += 3) {
                    int i4 = iArrNativeGetStyle[i3];
                    if (i4 != this.mStyleIDs.boldId && i4 != this.mStyleIDs.italicId && i4 != this.mStyleIDs.underlineId && i4 != this.mStyleIDs.ttId && i4 != this.mStyleIDs.bigId && i4 != this.mStyleIDs.smallId && i4 != this.mStyleIDs.subId && i4 != this.mStyleIDs.supId && i4 != this.mStyleIDs.strikeId && i4 != this.mStyleIDs.listItemId && i4 != this.mStyleIDs.marqueeId) {
                        String strNativeGetString2 = nativeGetString(this.mNative, i4);
                        if (strNativeGetString2.equals("b")) {
                            this.mStyleIDs.boldId = i4;
                        } else if (strNativeGetString2.equals("i")) {
                            this.mStyleIDs.italicId = i4;
                        } else if (strNativeGetString2.equals("u")) {
                            this.mStyleIDs.underlineId = i4;
                        } else if (strNativeGetString2.equals("tt")) {
                            this.mStyleIDs.ttId = i4;
                        } else if (strNativeGetString2.equals("big")) {
                            this.mStyleIDs.bigId = i4;
                        } else if (strNativeGetString2.equals("small")) {
                            this.mStyleIDs.smallId = i4;
                        } else if (strNativeGetString2.equals("sup")) {
                            this.mStyleIDs.supId = i4;
                        } else if (strNativeGetString2.equals("sub")) {
                            this.mStyleIDs.subId = i4;
                        } else if (strNativeGetString2.equals("strike")) {
                            this.mStyleIDs.strikeId = i4;
                        } else if (strNativeGetString2.equals("li")) {
                            this.mStyleIDs.listItemId = i4;
                        } else if (strNativeGetString2.equals("marquee")) {
                            this.mStyleIDs.marqueeId = i4;
                        }
                    }
                }
                strApplyStyles = applyStyles(strNativeGetString, iArrNativeGetStyle, this.mStyleIDs);
            }
            CharSequence[] charSequenceArr2 = this.mStrings;
            if (charSequenceArr2 != null) {
                charSequenceArr2[i2] = strApplyStyles;
            } else {
                this.mSparseStrings.put(i2, strApplyStyles);
            }
            return strApplyStyles;
        }
    }

    public StringBlock(byte[] bArr, int i2, int i3, boolean z2) {
        this.mNative = nativeCreate(bArr, i2, i3);
        this.mUseSparse = z2;
    }

    public StringBlock(int i2, boolean z2) {
        this.mNative = i2;
        this.mUseSparse = z2;
    }
}
