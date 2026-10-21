package android.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.net.ProxyProperties;
import android.util.Log;
import java.lang.reflect.Array;
import u.a;

/* JADX INFO: loaded from: classes.dex */
public class SpannableStringBuilder implements CharSequence, GetChars, Spannable, Editable, Appendable, GraphicsOperations {
    private static final int END_MASK = 15;
    private static final int MARK = 1;
    private static final InputFilter[] NO_FILTERS = new InputFilter[0];
    private static final int PARAGRAPH = 3;
    private static final int POINT = 2;
    private static final int SPAN_END_AT_END = 32768;
    private static final int SPAN_END_AT_START = 16384;
    private static final int SPAN_START_AT_END = 8192;
    private static final int SPAN_START_AT_START = 4096;
    private static final int SPAN_START_END_MASK = 61440;
    private static final int START_MASK = 240;
    private static final int START_SHIFT = 4;
    private InputFilter[] mFilters;
    private int mGapLength;
    private int mGapStart;
    private int mSpanCount;
    private int mSpanCountBeforeAdd;
    private int[] mSpanEnds;
    private int[] mSpanFlags;
    private int[] mSpanStarts;
    private Object[] mSpans;
    private char[] mText;

    public SpannableStringBuilder() {
        this(ProxyProperties.LOCAL_EXCL_LIST);
    }

    private void change(int i2, int i3, CharSequence charSequence, int i4, int i5) {
        int i6;
        int i7;
        int i8 = i3 - i2;
        int i9 = i5 - i4;
        int i10 = i9 - i8;
        int i11 = this.mSpanCount - 1;
        while (true) {
            int i12 = 0;
            if (i11 < 0) {
                break;
            }
            int i13 = this.mSpanStarts[i11];
            int i14 = this.mGapStart;
            if (i13 > i14) {
                i13 -= this.mGapLength;
            }
            int i15 = this.mSpanEnds[i11];
            if (i15 > i14) {
                i15 -= this.mGapLength;
            }
            if ((this.mSpanFlags[i11] & 51) == 51) {
                int length = length();
                if (i13 <= i2 || i13 > i3) {
                    i6 = i13;
                } else {
                    int i16 = i3;
                    while (i16 < length && (i16 <= i3 || charAt(i16 - 1) != '\n')) {
                        i16++;
                    }
                    i6 = i16;
                }
                if (i15 <= i2 || i15 > i3) {
                    i7 = i15;
                } else {
                    int i17 = i3;
                    while (i17 < length && (i17 <= i3 || charAt(i17 - 1) != '\n')) {
                        i17++;
                    }
                    i7 = i17;
                }
                if (i6 != i13 || i7 != i15) {
                    setSpan(false, this.mSpans[i11], i6, i7, this.mSpanFlags[i11]);
                }
                i15 = i7;
                i13 = i6;
            }
            if (i13 == i2) {
                i12 = 4096;
            } else if (i13 == i3 + i10) {
                i12 = 8192;
            }
            int i18 = i12;
            if (i15 == i2) {
                i18 |= 16384;
            } else if (i15 == i3 + i10) {
                i18 |= 32768;
            }
            int[] iArr = this.mSpanFlags;
            iArr[i11] = i18 | iArr[i11];
            i11--;
        }
        moveGapTo(i3);
        int i19 = this.mGapLength;
        if (i10 >= i19) {
            resizeFor((this.mText.length + i10) - i19);
        }
        boolean z2 = i9 == 0;
        if (i8 > 0) {
            int i20 = 0;
            while (i20 < this.mSpanCount) {
                if ((this.mSpanFlags[i20] & 33) == 33) {
                    int[] iArr2 = this.mSpanStarts;
                    if (iArr2[i20] >= i2) {
                        int i21 = iArr2[i20];
                        int i22 = this.mGapStart;
                        int i23 = this.mGapLength;
                        if (i21 < i22 + i23) {
                            int[] iArr3 = this.mSpanEnds;
                            if (iArr3[i20] >= i2 && iArr3[i20] < i23 + i22 && (z2 || iArr2[i20] > i2 || iArr3[i20] < i22)) {
                                removeSpan(i20);
                            }
                        }
                    }
                }
                i20++;
            }
        }
        this.mGapStart += i10;
        int i24 = this.mGapLength - i10;
        this.mGapLength = i24;
        if (i24 < 1) {
            new Exception("mGapLength < 1").printStackTrace();
        }
        TextUtils.getChars(charSequence, i4, i5, this.mText, i2);
        if (i8 > 0) {
            boolean z3 = this.mGapStart + this.mGapLength == this.mText.length;
            for (int i25 = 0; i25 < this.mSpanCount; i25++) {
                int i26 = (this.mSpanFlags[i25] & 240) >> 4;
                int[] iArr4 = this.mSpanStarts;
                boolean z4 = z3;
                iArr4[i25] = updatedIntervalBound(iArr4[i25], i2, i10, i26, z4, z2);
                int i27 = this.mSpanFlags[i25] & 15;
                int[] iArr5 = this.mSpanEnds;
                iArr5[i25] = updatedIntervalBound(iArr5[i25], i2, i10, i27, z4, z2);
            }
        }
        this.mSpanCountBeforeAdd = this.mSpanCount;
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            Object[] spans = spanned.getSpans(i4, i5, Object.class);
            for (int i28 = 0; i28 < spans.length; i28++) {
                int spanStart = spanned.getSpanStart(spans[i28]);
                int spanEnd = spanned.getSpanEnd(spans[i28]);
                if (spanStart < i4) {
                    spanStart = i4;
                }
                if (spanEnd > i5) {
                    spanEnd = i5;
                }
                if (getSpanStart(spans[i28]) < 0) {
                    setSpan(false, spans[i28], (spanStart - i4) + i2, (spanEnd - i4) + i2, spanned.getSpanFlags(spans[i28]));
                }
            }
        }
    }

    private void checkRange(String str, int i2, int i3) {
        if (i3 < i2) {
            throw new IndexOutOfBoundsException(str + " " + region(i2, i3) + " has end before start");
        }
        int length = length();
        if (i2 > length || i3 > length) {
            throw new IndexOutOfBoundsException(str + " " + region(i2, i3) + " ends beyond length " + length);
        }
        if (i2 < 0 || i3 < 0) {
            throw new IndexOutOfBoundsException(str + " " + region(i2, i3) + " starts before 0");
        }
    }

    private static boolean hasNonExclusiveExclusiveSpanAt(CharSequence charSequence, int i2) {
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            for (Object obj : spanned.getSpans(i2, i2, Object.class)) {
                if (spanned.getSpanFlags(obj) != 33) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x005a  */
    /* JADX WARN: Code duplicated, block: B:31:0x005f  */
    /* JADX WARN: Code duplicated, block: B:33:0x0063  */
    private void moveGapTo(int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        if (i2 == this.mGapStart) {
            return;
        }
        boolean z2 = i2 == length();
        int i7 = this.mGapStart;
        if (i2 < i7) {
            int i8 = i7 - i2;
            char[] cArr = this.mText;
            System.arraycopy(cArr, i2, cArr, (i7 + this.mGapLength) - i8, i8);
        } else {
            int i9 = i2 - i7;
            char[] cArr2 = this.mText;
            System.arraycopy(cArr2, (this.mGapLength + i2) - i9, cArr2, i7, i9);
        }
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            int[] iArr = this.mSpanStarts;
            int i11 = iArr[i10];
            int[] iArr2 = this.mSpanEnds;
            int i12 = iArr2[i10];
            int i13 = this.mGapStart;
            if (i11 > i13) {
                i11 -= this.mGapLength;
            }
            if (i11 > i2) {
                i4 = this.mGapLength;
            } else {
                if (i11 == i2 && ((i3 = (this.mSpanFlags[i10] & 240) >> 4) == 2 || (z2 && i3 == 3))) {
                    i4 = this.mGapLength;
                }
                if (i12 > i13) {
                    i12 -= this.mGapLength;
                }
                if (i12 > i2) {
                    i6 = this.mGapLength;
                } else {
                    if (i12 != i2 && ((i5 = this.mSpanFlags[i10] & 15) == 2 || (z2 && i5 == 3))) {
                        i6 = this.mGapLength;
                    }
                    iArr[i10] = i11;
                    iArr2[i10] = i12;
                }
                i12 += i6;
                iArr[i10] = i11;
                iArr2[i10] = i12;
            }
            i11 += i4;
            if (i12 > i13) {
                i12 -= this.mGapLength;
            }
            if (i12 > i2) {
                i6 = this.mGapLength;
            } else {
                if (i12 != i2) {
                }
                iArr[i10] = i11;
                iArr2[i10] = i12;
            }
            i12 += i6;
            iArr[i10] = i11;
            iArr2[i10] = i12;
        }
        this.mGapStart = i2;
    }

    private static String region(int i2, int i3) {
        return "(" + i2 + " ... " + i3 + ")";
    }

    private void removeSpan(int i2) {
        Object[] objArr = this.mSpans;
        Object obj = objArr[i2];
        int i3 = this.mSpanStarts[i2];
        int i4 = this.mSpanEnds[i2];
        int i5 = this.mGapStart;
        if (i3 > i5) {
            i3 -= this.mGapLength;
        }
        if (i4 > i5) {
            i4 -= this.mGapLength;
        }
        int i6 = i2 + 1;
        int i7 = this.mSpanCount - i6;
        System.arraycopy(objArr, i6, objArr, i2, i7);
        int[] iArr = this.mSpanStarts;
        System.arraycopy(iArr, i6, iArr, i2, i7);
        int[] iArr2 = this.mSpanEnds;
        System.arraycopy(iArr2, i6, iArr2, i2, i7);
        int[] iArr3 = this.mSpanFlags;
        System.arraycopy(iArr3, i6, iArr3, i2, i7);
        int i8 = this.mSpanCount - 1;
        this.mSpanCount = i8;
        this.mSpans[i8] = null;
        sendSpanRemoved(obj, i3, i4);
    }

    private void resizeFor(int i2) {
        int length = this.mText.length;
        int iF = a.f(i2 + 1);
        int i3 = iF - length;
        if (i3 == 0) {
            return;
        }
        char[] cArr = new char[iF];
        System.arraycopy(this.mText, 0, cArr, 0, this.mGapStart);
        int i4 = length - (this.mGapStart + this.mGapLength);
        System.arraycopy(this.mText, length - i4, cArr, iF - i4, i4);
        this.mText = cArr;
        int i5 = this.mGapLength + i3;
        this.mGapLength = i5;
        if (i5 < 1) {
            new Exception("mGapLength < 1").printStackTrace();
        }
        for (int i6 = 0; i6 < this.mSpanCount; i6++) {
            int[] iArr = this.mSpanStarts;
            int i7 = iArr[i6];
            int i8 = this.mGapStart;
            if (i7 > i8) {
                iArr[i6] = iArr[i6] + i3;
            }
            int[] iArr2 = this.mSpanEnds;
            if (iArr2[i6] > i8) {
                iArr2[i6] = iArr2[i6] + i3;
            }
        }
    }

    private void sendAfterTextChanged(TextWatcher[] textWatcherArr) {
        for (TextWatcher textWatcher : textWatcherArr) {
            textWatcher.afterTextChanged(this);
        }
    }

    private void sendBeforeTextChanged(TextWatcher[] textWatcherArr, int i2, int i3, int i4) {
        for (TextWatcher textWatcher : textWatcherArr) {
            textWatcher.beforeTextChanged(this, i2, i3, i4);
        }
    }

    private void sendSpanAdded(Object obj, int i2, int i3) {
        for (SpanWatcher spanWatcher : (SpanWatcher[]) getSpans(i2, i3, SpanWatcher.class)) {
            spanWatcher.onSpanAdded(this, obj, i2, i3);
        }
    }

    private void sendSpanChanged(Object obj, int i2, int i3, int i4, int i5) {
        for (SpanWatcher spanWatcher : (SpanWatcher[]) getSpans(Math.min(i2, i4), Math.min(Math.max(i3, i5), length()), SpanWatcher.class)) {
            spanWatcher.onSpanChanged(this, obj, i2, i3, i4, i5);
        }
    }

    private void sendSpanRemoved(Object obj, int i2, int i3) {
        for (SpanWatcher spanWatcher : (SpanWatcher[]) getSpans(i2, i3, SpanWatcher.class)) {
            spanWatcher.onSpanRemoved(this, obj, i2, i3);
        }
    }

    private void sendTextChanged(TextWatcher[] textWatcherArr, int i2, int i3, int i4) {
        for (TextWatcher textWatcher : textWatcherArr) {
            textWatcher.onTextChanged(this, i2, i3, i4);
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0044 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x0046  */
    /* JADX WARN: Code duplicated, block: B:28:0x004a  */
    /* JADX WARN: Code duplicated, block: B:29:0x004c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:39:0x0061  */
    /* JADX WARN: Code duplicated, block: B:52:0x0069 A[SYNTHETIC] */
    private void sendToSpanWatchers(int i2, int i3, int i4) {
        int i5;
        boolean z2;
        int i6;
        int i7;
        int i8 = 0;
        while (true) {
            i5 = this.mSpanCountBeforeAdd;
            if (i8 >= i5) {
                break;
            }
            int i9 = this.mSpanStarts[i8];
            int i10 = this.mSpanEnds[i8];
            int i11 = this.mGapStart;
            if (i9 > i11) {
                i9 -= this.mGapLength;
            }
            int i12 = i9;
            if (i10 > i11) {
                i10 -= this.mGapLength;
            }
            int i13 = i10;
            int i14 = this.mSpanFlags[i8];
            int i15 = i3 + i4;
            boolean z3 = true;
            if (i12 > i15) {
                if (i4 != 0) {
                    i6 = i12 - i4;
                    z2 = true;
                }
                if (i13 > i15) {
                    if (i4 != 0) {
                        i7 = i13 - i4;
                    }
                    if (z3) {
                        sendSpanChanged(this.mSpans[i8], i6, i7, i12, i13);
                    }
                    int[] iArr = this.mSpanFlags;
                    iArr[i8] = iArr[i8] & (-61441);
                    i8++;
                } else {
                    if (i13 >= i2 || ((i13 == i2 && (i14 & 16384) == 16384) || (i13 == i15 && (i14 & 32768) == 32768))) {
                    }
                    i7 = i13;
                    if (z3) {
                        sendSpanChanged(this.mSpans[i8], i6, i7, i12, i13);
                    }
                    int[] iArr2 = this.mSpanFlags;
                    iArr2[i8] = iArr2[i8] & (-61441);
                    i8++;
                }
                z3 = z2;
                i7 = i13;
                if (z3) {
                    sendSpanChanged(this.mSpans[i8], i6, i7, i12, i13);
                }
                int[] iArr3 = this.mSpanFlags;
                iArr3[i8] = iArr3[i8] & (-61441);
                i8++;
            } else {
                if (i12 >= i2 && ((i12 != i2 || (i14 & 4096) != 4096) && (i12 != i15 || (i14 & 8192) != 8192))) {
                    z2 = true;
                }
                i6 = i12;
                if (i13 > i15) {
                    if (i4 != 0) {
                        i7 = i13 - i4;
                    }
                    if (z3) {
                        sendSpanChanged(this.mSpans[i8], i6, i7, i12, i13);
                    }
                    int[] iArr4 = this.mSpanFlags;
                    iArr4[i8] = iArr4[i8] & (-61441);
                    i8++;
                } else {
                    if (i13 >= i2) {
                    }
                    i7 = i13;
                    if (z3) {
                        sendSpanChanged(this.mSpans[i8], i6, i7, i12, i13);
                    }
                    int[] iArr5 = this.mSpanFlags;
                    iArr5[i8] = iArr5[i8] & (-61441);
                    i8++;
                }
                z3 = z2;
                i7 = i13;
                if (z3) {
                    sendSpanChanged(this.mSpans[i8], i6, i7, i12, i13);
                }
                int[] iArr6 = this.mSpanFlags;
                iArr6[i8] = iArr6[i8] & (-61441);
                i8++;
            }
            z2 = false;
            i6 = i12;
            if (i13 > i15) {
                if (i4 != 0) {
                    i7 = i13 - i4;
                }
                if (z3) {
                    sendSpanChanged(this.mSpans[i8], i6, i7, i12, i13);
                }
                int[] iArr7 = this.mSpanFlags;
                iArr7[i8] = iArr7[i8] & (-61441);
                i8++;
            } else {
                if (i13 >= i2) {
                }
                i7 = i13;
                if (z3) {
                    sendSpanChanged(this.mSpans[i8], i6, i7, i12, i13);
                }
                int[] iArr8 = this.mSpanFlags;
                iArr8[i8] = iArr8[i8] & (-61441);
                i8++;
            }
            z3 = z2;
            i7 = i13;
            if (z3) {
                sendSpanChanged(this.mSpans[i8], i6, i7, i12, i13);
            }
            int[] iArr9 = this.mSpanFlags;
            iArr9[i8] = iArr9[i8] & (-61441);
            i8++;
        }
        while (i5 < this.mSpanCount) {
            int i16 = this.mSpanStarts[i5];
            int i17 = this.mSpanEnds[i5];
            int i18 = this.mGapStart;
            if (i16 > i18) {
                i16 -= this.mGapLength;
            }
            if (i17 > i18) {
                i17 -= this.mGapLength;
            }
            sendSpanAdded(this.mSpans[i5], i16, i17);
            i5++;
        }
    }

    private int updatedIntervalBound(int i2, int i3, int i4, int i5, boolean z2, boolean z3) {
        if (i2 >= i3) {
            int i6 = this.mGapStart;
            int i7 = this.mGapLength;
            if (i2 < i6 + i7) {
                if (i5 == 2) {
                    if (z3 || i2 > i3) {
                        return i6 + i7;
                    }
                } else {
                    if (i5 != 3) {
                        return (z3 || i2 < i6 - i4) ? i3 : i6;
                    }
                    if (z2) {
                        return i6 + i7;
                    }
                }
            }
        }
        return i2;
    }

    public static SpannableStringBuilder valueOf(CharSequence charSequence) {
        return charSequence instanceof SpannableStringBuilder ? (SpannableStringBuilder) charSequence : new SpannableStringBuilder(charSequence);
    }

    @Override // java.lang.CharSequence
    public char charAt(int i2) {
        int length = length();
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("charAt: " + i2 + " < 0");
        }
        if (i2 < length) {
            return i2 >= this.mGapStart ? this.mText[i2 + this.mGapLength] : this.mText[i2];
        }
        throw new IndexOutOfBoundsException("charAt: " + i2 + " >= length " + length);
    }

    @Override // android.text.Editable
    public void clear() {
        replace(0, length(), ProxyProperties.LOCAL_EXCL_LIST, 0, 0);
    }

    @Override // android.text.Editable
    public void clearSpans() {
        for (int i2 = this.mSpanCount - 1; i2 >= 0; i2--) {
            Object[] objArr = this.mSpans;
            Object obj = objArr[i2];
            int i3 = this.mSpanStarts[i2];
            int i4 = this.mSpanEnds[i2];
            int i5 = this.mGapStart;
            if (i3 > i5) {
                i3 -= this.mGapLength;
            }
            if (i4 > i5) {
                i4 -= this.mGapLength;
            }
            this.mSpanCount = i2;
            objArr[i2] = null;
            sendSpanRemoved(obj, i3, i4);
        }
    }

    @Override // android.text.GraphicsOperations
    public void drawText(Canvas canvas, int i2, int i3, float f2, float f3, Paint paint) {
        checkRange("drawText", i2, i3);
        int i4 = this.mGapStart;
        if (i3 <= i4) {
            canvas.drawText(this.mText, i2, i3 - i2, f2, f3, paint);
            return;
        }
        if (i2 >= i4) {
            canvas.drawText(this.mText, i2 + this.mGapLength, i3 - i2, f2, f3, paint);
            return;
        }
        int i5 = i3 - i2;
        char[] cArrObtain = TextUtils.obtain(i5);
        getChars(i2, i3, cArrObtain, 0);
        canvas.drawText(cArrObtain, 0, i5, f2, f3, paint);
        TextUtils.recycle(cArrObtain);
    }

    @Override // android.text.GraphicsOperations
    public void drawTextRun(Canvas canvas, int i2, int i3, int i4, int i5, float f2, float f3, int i6, Paint paint) {
        checkRange("drawTextRun", i2, i3);
        int i7 = i5 - i4;
        int i8 = i3 - i2;
        int i9 = this.mGapStart;
        if (i5 <= i9) {
            canvas.drawTextRun(this.mText, i2, i8, i4, i7, f2, f3, i6, paint);
            return;
        }
        if (i4 >= i9) {
            char[] cArr = this.mText;
            int i10 = this.mGapLength;
            canvas.drawTextRun(cArr, i2 + i10, i8, i4 + i10, i7, f2, f3, i6, paint);
        } else {
            char[] cArrObtain = TextUtils.obtain(i7);
            getChars(i4, i5, cArrObtain, 0);
            canvas.drawTextRun(cArrObtain, i2 - i4, i8, 0, i7, f2, f3, i6, paint);
            TextUtils.recycle(cArrObtain);
        }
    }

    public boolean equals(Object obj) {
        if ((obj instanceof Spanned) && toString().equals(obj.toString())) {
            Spanned spanned = (Spanned) obj;
            Object[] spans = spanned.getSpans(0, spanned.length(), Object.class);
            if (this.mSpanCount == spans.length) {
                for (int i2 = 0; i2 < this.mSpanCount; i2++) {
                    Object obj2 = this.mSpans[i2];
                    Object obj3 = spans[i2];
                    if (obj2 == this) {
                        if (spanned != obj3 || getSpanStart(obj2) != spanned.getSpanStart(obj3) || getSpanEnd(obj2) != spanned.getSpanEnd(obj3) || getSpanFlags(obj2) != spanned.getSpanFlags(obj3)) {
                            return false;
                        }
                    } else if (!obj2.equals(obj3) || getSpanStart(obj2) != spanned.getSpanStart(obj3) || getSpanEnd(obj2) != spanned.getSpanEnd(obj3) || getSpanFlags(obj2) != spanned.getSpanFlags(obj3)) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // android.text.GetChars
    public void getChars(int i2, int i3, char[] cArr, int i4) {
        checkRange("getChars", i2, i3);
        int i5 = this.mGapStart;
        if (i3 <= i5) {
            System.arraycopy(this.mText, i2, cArr, i4, i3 - i2);
            return;
        }
        if (i2 >= i5) {
            System.arraycopy(this.mText, this.mGapLength + i2, cArr, i4, i3 - i2);
            return;
        }
        System.arraycopy(this.mText, i2, cArr, i4, i5 - i2);
        char[] cArr2 = this.mText;
        int i6 = this.mGapStart;
        System.arraycopy(cArr2, this.mGapLength + i6, cArr, i4 + (i6 - i2), i3 - i6);
    }

    @Override // android.text.Editable
    public InputFilter[] getFilters() {
        return this.mFilters;
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        int i2 = this.mSpanCount;
        Object[] objArr = this.mSpans;
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            if (objArr[i3] == obj) {
                int i4 = this.mSpanEnds[i3];
                return i4 > this.mGapStart ? i4 - this.mGapLength : i4;
            }
        }
        return -1;
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        int i2 = this.mSpanCount;
        Object[] objArr = this.mSpans;
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            if (objArr[i3] == obj) {
                return this.mSpanFlags[i3];
            }
        }
        return 0;
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        int i2 = this.mSpanCount;
        Object[] objArr = this.mSpans;
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            if (objArr[i3] == obj) {
                int i4 = this.mSpanStarts[i3];
                return i4 > this.mGapStart ? i4 - this.mGapLength : i4;
            }
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.text.Spanned
    public <T> T[] getSpans(int i2, int i3, Class<T> cls) {
        int[] iArr;
        if (cls == null) {
            return (T[]) a.d(cls);
        }
        int i4 = this.mSpanCount;
        Object[] objArr = this.mSpans;
        int[] iArr2 = this.mSpanStarts;
        int[] iArr3 = this.mSpanEnds;
        int[] iArr4 = this.mSpanFlags;
        int i5 = this.mGapStart;
        int i6 = this.mGapLength;
        Object[] objArr2 = (T[]) null;
        Object obj = null;
        int i7 = 0;
        int i8 = 0;
        while (i7 < i4) {
            int i9 = iArr2[i7];
            if (i9 > i5) {
                i9 -= i6;
            }
            if (i9 > i3) {
                iArr = iArr2;
            } else {
                iArr = iArr2;
                int i10 = iArr3[i7];
                if (i10 > i5) {
                    i10 -= i6;
                }
                if (i10 >= i2 && ((i9 == i10 || i2 == i3 || (i9 != i3 && i10 != i2)) && cls.isInstance(objArr[i7]))) {
                    if (i8 == 0) {
                        i8++;
                        obj = objArr[i7];
                    } else {
                        if (i8 == 1) {
                            objArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, (i4 - i7) + 1));
                            objArr2[0] = obj;
                        }
                        int i11 = iArr4[i7] & Spanned.SPAN_PRIORITY;
                        if (i11 != 0) {
                            int i12 = 0;
                            while (i12 < i8 && i11 <= (getSpanFlags(objArr2[i12]) & Spanned.SPAN_PRIORITY)) {
                                i12++;
                            }
                            System.arraycopy(objArr2, i12, objArr2, i12 + 1, i8 - i12);
                            objArr2[i12] = objArr[i7];
                            i8++;
                        } else {
                            objArr2[i8] = objArr[i7];
                            i8++;
                        }
                    }
                }
            }
            i7++;
            iArr2 = iArr;
        }
        if (i8 == 0) {
            return (T[]) a.d(cls);
        }
        if (i8 == 1) {
            T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, 1));
            tArr[0] = obj;
            return tArr;
        }
        if (i8 == objArr2.length) {
            return (T[]) objArr2;
        }
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i8));
        System.arraycopy(objArr2, 0, tArr2, 0, i8);
        return tArr2;
    }

    @Override // android.text.GraphicsOperations
    public float getTextRunAdvances(int i2, int i3, int i4, int i5, int i6, float[] fArr, int i7, Paint paint) {
        int i8 = i5 - i4;
        int i9 = i3 - i2;
        int i10 = this.mGapStart;
        if (i3 <= i10) {
            return paint.getTextRunAdvances(this.mText, i2, i9, i4, i8, i6, fArr, i7);
        }
        if (i2 >= i10) {
            char[] cArr = this.mText;
            int i11 = this.mGapLength;
            return paint.getTextRunAdvances(cArr, i2 + i11, i9, i4 + i11, i8, i6, fArr, i7);
        }
        char[] cArrObtain = TextUtils.obtain(i8);
        getChars(i4, i5, cArrObtain, 0);
        float textRunAdvances = paint.getTextRunAdvances(cArrObtain, i2 - i4, i9, 0, i8, i6, fArr, i7);
        TextUtils.recycle(cArrObtain);
        return textRunAdvances;
    }

    @Override // android.text.GraphicsOperations
    @Deprecated
    public int getTextRunCursor(int i2, int i3, int i4, int i5, int i6, Paint paint) {
        int i7 = i3 - i2;
        int i8 = this.mGapStart;
        if (i3 <= i8) {
            return paint.getTextRunCursor(this.mText, i2, i7, i4, i5, i6);
        }
        if (i2 >= i8) {
            char[] cArr = this.mText;
            int i9 = this.mGapLength;
            return paint.getTextRunCursor(cArr, i2 + i9, i7, i4, i5 + i9, i6) - this.mGapLength;
        }
        char[] cArrObtain = TextUtils.obtain(i7);
        getChars(i2, i3, cArrObtain, 0);
        int textRunCursor = i2 + paint.getTextRunCursor(cArrObtain, 0, i7, i4, i5 - i2, i6);
        TextUtils.recycle(cArrObtain);
        return textRunCursor;
    }

    @Override // android.text.GraphicsOperations
    public int getTextWidths(int i2, int i3, float[] fArr, Paint paint) {
        checkRange("getTextWidths", i2, i3);
        int i4 = this.mGapStart;
        if (i3 <= i4) {
            return paint.getTextWidths(this.mText, i2, i3 - i2, fArr);
        }
        if (i2 >= i4) {
            return paint.getTextWidths(this.mText, this.mGapLength + i2, i3 - i2, fArr);
        }
        int i5 = i3 - i2;
        char[] cArrObtain = TextUtils.obtain(i5);
        getChars(i2, i3, cArrObtain, 0);
        int textWidths = paint.getTextWidths(cArrObtain, 0, i5, fArr);
        TextUtils.recycle(cArrObtain);
        return textWidths;
    }

    public int hashCode() {
        int iHashCode = (toString().hashCode() * 31) + this.mSpanCount;
        for (int i2 = 0; i2 < this.mSpanCount; i2++) {
            Object obj = this.mSpans[i2];
            if (obj != this) {
                iHashCode = (iHashCode * 31) + obj.hashCode();
            }
            iHashCode = (((((iHashCode * 31) + getSpanStart(obj)) * 31) + getSpanEnd(obj)) * 31) + getSpanFlags(obj);
        }
        return iHashCode;
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.mText.length - this.mGapLength;
    }

    @Override // android.text.GraphicsOperations
    public float measureText(int i2, int i3, Paint paint) {
        checkRange("measureText", i2, i3);
        int i4 = this.mGapStart;
        if (i3 <= i4) {
            return paint.measureText(this.mText, i2, i3 - i2);
        }
        if (i2 >= i4) {
            return paint.measureText(this.mText, this.mGapLength + i2, i3 - i2);
        }
        int i5 = i3 - i2;
        char[] cArrObtain = TextUtils.obtain(i5);
        getChars(i2, i3, cArrObtain, 0);
        float fMeasureText = paint.measureText(cArrObtain, 0, i5);
        TextUtils.recycle(cArrObtain);
        return fMeasureText;
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i2, int i3, Class cls) {
        int i4 = this.mSpanCount;
        Object[] objArr = this.mSpans;
        int[] iArr = this.mSpanStarts;
        int[] iArr2 = this.mSpanEnds;
        int i5 = this.mGapStart;
        int i6 = this.mGapLength;
        if (cls == null) {
            cls = Object.class;
        }
        for (int i7 = 0; i7 < i4; i7++) {
            int i8 = iArr[i7];
            int i9 = iArr2[i7];
            if (i8 > i5) {
                i8 -= i6;
            }
            if (i9 > i5) {
                i9 -= i6;
            }
            if (i8 > i2 && i8 < i3 && cls.isInstance(objArr[i7])) {
                i3 = i8;
            }
            if (i9 > i2 && i9 < i3 && cls.isInstance(objArr[i7])) {
                i3 = i9;
            }
        }
        return i3;
    }

    @Override // android.text.Editable
    public void setFilters(InputFilter[] inputFilterArr) {
        if (inputFilterArr == null) {
            throw new IllegalArgumentException();
        }
        this.mFilters = inputFilterArr;
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i2, int i3, int i4) {
        setSpan(true, obj, i2, i3, i4);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i2, int i3) {
        return new SpannableStringBuilder(this, i2, i3);
    }

    public String substring(int i2, int i3) {
        char[] cArr = new char[i3 - i2];
        getChars(i2, i3, cArr, 0);
        return new String(cArr);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        int length = length();
        char[] cArr = new char[length];
        getChars(0, length, cArr, 0);
        return new String(cArr);
    }

    public SpannableStringBuilder(CharSequence charSequence) {
        this(charSequence, 0, charSequence.length());
    }

    /* JADX WARN: Code duplicated, block: B:42:0x007c  */
    /* JADX WARN: Code duplicated, block: B:44:0x0080  */
    /* JADX WARN: Code duplicated, block: B:53:0x0098  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:64:0x00c7 A[LOOP:0: B:52:0x0096->B:64:0x00c7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:70:0x011b  */
    /* JADX WARN: Code duplicated, block: B:73:0x009c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:? A[RETURN, SYNTHETIC] */
    private void setSpan(boolean z2, Object obj, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        Object[] objArr;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        checkRange("setSpan", i2, i3);
        int i16 = (i4 & 240) >> 4;
        if (i16 == 3 && i2 != 0 && i2 != length() && charAt(i2 - 1) != '\n') {
            throw new RuntimeException("PARAGRAPH span must start at paragraph boundary");
        }
        int i17 = i4 & 15;
        if (i17 == 3 && i3 != 0 && i3 != length() && charAt(i3 - 1) != '\n') {
            throw new RuntimeException("PARAGRAPH span must end at paragraph boundary");
        }
        if (i16 == 2 && i17 == 1 && i2 == i3) {
            if (z2) {
                Log.e("SpannableStringBuilder", "SPAN_EXCLUSIVE_EXCLUSIVE spans cannot have a zero length");
                return;
            }
            return;
        }
        int i18 = this.mGapStart;
        if (i2 <= i18) {
            if (i2 == i18 && (i16 == 2 || (i16 == 3 && i2 == length()))) {
                i6 = this.mGapLength;
            } else {
                i5 = i2;
            }
            i7 = this.mGapStart;
            if (i3 > i7) {
                if (i3 == i7 || !(i17 == 2 || (i17 == 3 && i3 == length()))) {
                    i8 = i3;
                } else {
                    i9 = this.mGapLength;
                }
                i10 = this.mSpanCount;
                objArr = this.mSpans;
                for (i11 = 0; i11 < i10; i11++) {
                    if (objArr[i11] == obj) {
                        int[] iArr = this.mSpanStarts;
                        i13 = iArr[i11];
                        int[] iArr2 = this.mSpanEnds;
                        i14 = iArr2[i11];
                        i15 = this.mGapStart;
                        if (i13 > i15) {
                            i13 -= this.mGapLength;
                        }
                        if (i14 > i15) {
                            i14 -= this.mGapLength;
                        }
                        iArr[i11] = i5;
                        iArr2[i11] = i8;
                        this.mSpanFlags[i11] = i4;
                        if (z2) {
                            sendSpanChanged(obj, i13, i14, i2, i3);
                            return;
                        }
                        return;
                    }
                }
                i12 = this.mSpanCount;
                if (i12 + 1 >= this.mSpans.length) {
                    int iH = a.h(i12 + 1);
                    Object[] objArr2 = new Object[iH];
                    int[] iArr3 = new int[iH];
                    int[] iArr4 = new int[iH];
                    int[] iArr5 = new int[iH];
                    System.arraycopy(this.mSpans, 0, objArr2, 0, this.mSpanCount);
                    System.arraycopy(this.mSpanStarts, 0, iArr3, 0, this.mSpanCount);
                    System.arraycopy(this.mSpanEnds, 0, iArr4, 0, this.mSpanCount);
                    System.arraycopy(this.mSpanFlags, 0, iArr5, 0, this.mSpanCount);
                    this.mSpans = objArr2;
                    this.mSpanStarts = iArr3;
                    this.mSpanEnds = iArr4;
                    this.mSpanFlags = iArr5;
                }
                Object[] objArr3 = this.mSpans;
                int i19 = this.mSpanCount;
                objArr3[i19] = obj;
                this.mSpanStarts[i19] = i5;
                this.mSpanEnds[i19] = i8;
                this.mSpanFlags[i19] = i4;
                this.mSpanCount = i19 + 1;
                if (z2) {
                    sendSpanAdded(obj, i2, i3);
                }
            }
            i9 = this.mGapLength;
            i8 = i9 + i3;
            i10 = this.mSpanCount;
            objArr = this.mSpans;
            while (i11 < i10) {
                if (objArr[i11] == obj) {
                    int[] iArr6 = this.mSpanStarts;
                    i13 = iArr6[i11];
                    int[] iArr7 = this.mSpanEnds;
                    i14 = iArr7[i11];
                    i15 = this.mGapStart;
                    if (i13 > i15) {
                        i13 -= this.mGapLength;
                    }
                    if (i14 > i15) {
                        i14 -= this.mGapLength;
                    }
                    iArr6[i11] = i5;
                    iArr7[i11] = i8;
                    this.mSpanFlags[i11] = i4;
                    if (z2) {
                        sendSpanChanged(obj, i13, i14, i2, i3);
                        return;
                    }
                    return;
                }
            }
            i12 = this.mSpanCount;
            if (i12 + 1 >= this.mSpans.length) {
                int iH2 = a.h(i12 + 1);
                Object[] objArr4 = new Object[iH2];
                int[] iArr8 = new int[iH2];
                int[] iArr9 = new int[iH2];
                int[] iArr10 = new int[iH2];
                System.arraycopy(this.mSpans, 0, objArr4, 0, this.mSpanCount);
                System.arraycopy(this.mSpanStarts, 0, iArr8, 0, this.mSpanCount);
                System.arraycopy(this.mSpanEnds, 0, iArr9, 0, this.mSpanCount);
                System.arraycopy(this.mSpanFlags, 0, iArr10, 0, this.mSpanCount);
                this.mSpans = objArr4;
                this.mSpanStarts = iArr8;
                this.mSpanEnds = iArr9;
                this.mSpanFlags = iArr10;
            }
            Object[] objArr5 = this.mSpans;
            int i110 = this.mSpanCount;
            objArr5[i110] = obj;
            this.mSpanStarts[i110] = i5;
            this.mSpanEnds[i110] = i8;
            this.mSpanFlags[i110] = i4;
            this.mSpanCount = i110 + 1;
            if (z2) {
                sendSpanAdded(obj, i2, i3);
            }
        }
        i6 = this.mGapLength;
        i5 = i6 + i2;
        i7 = this.mGapStart;
        if (i3 > i7) {
            if (i3 == i7) {
            }
            i8 = i3;
            i10 = this.mSpanCount;
            objArr = this.mSpans;
            while (i11 < i10) {
                if (objArr[i11] == obj) {
                    int[] iArr11 = this.mSpanStarts;
                    i13 = iArr11[i11];
                    int[] iArr12 = this.mSpanEnds;
                    i14 = iArr12[i11];
                    i15 = this.mGapStart;
                    if (i13 > i15) {
                        i13 -= this.mGapLength;
                    }
                    if (i14 > i15) {
                        i14 -= this.mGapLength;
                    }
                    iArr11[i11] = i5;
                    iArr12[i11] = i8;
                    this.mSpanFlags[i11] = i4;
                    if (z2) {
                        sendSpanChanged(obj, i13, i14, i2, i3);
                        return;
                    }
                    return;
                }
            }
            i12 = this.mSpanCount;
            if (i12 + 1 >= this.mSpans.length) {
                int iH3 = a.h(i12 + 1);
                Object[] objArr6 = new Object[iH3];
                int[] iArr13 = new int[iH3];
                int[] iArr14 = new int[iH3];
                int[] iArr15 = new int[iH3];
                System.arraycopy(this.mSpans, 0, objArr6, 0, this.mSpanCount);
                System.arraycopy(this.mSpanStarts, 0, iArr13, 0, this.mSpanCount);
                System.arraycopy(this.mSpanEnds, 0, iArr14, 0, this.mSpanCount);
                System.arraycopy(this.mSpanFlags, 0, iArr15, 0, this.mSpanCount);
                this.mSpans = objArr6;
                this.mSpanStarts = iArr13;
                this.mSpanEnds = iArr14;
                this.mSpanFlags = iArr15;
            }
            Object[] objArr7 = this.mSpans;
            int i111 = this.mSpanCount;
            objArr7[i111] = obj;
            this.mSpanStarts[i111] = i5;
            this.mSpanEnds[i111] = i8;
            this.mSpanFlags[i111] = i4;
            this.mSpanCount = i111 + 1;
            if (z2) {
                sendSpanAdded(obj, i2, i3);
            }
        }
        i9 = this.mGapLength;
        i8 = i9 + i3;
        i10 = this.mSpanCount;
        objArr = this.mSpans;
        while (i11 < i10) {
            if (objArr[i11] == obj) {
                int[] iArr16 = this.mSpanStarts;
                i13 = iArr16[i11];
                int[] iArr17 = this.mSpanEnds;
                i14 = iArr17[i11];
                i15 = this.mGapStart;
                if (i13 > i15) {
                    i13 -= this.mGapLength;
                }
                if (i14 > i15) {
                    i14 -= this.mGapLength;
                }
                iArr16[i11] = i5;
                iArr17[i11] = i8;
                this.mSpanFlags[i11] = i4;
                if (z2) {
                    sendSpanChanged(obj, i13, i14, i2, i3);
                    return;
                }
                return;
            }
        }
        i12 = this.mSpanCount;
        if (i12 + 1 >= this.mSpans.length) {
            int iH4 = a.h(i12 + 1);
            Object[] objArr8 = new Object[iH4];
            int[] iArr18 = new int[iH4];
            int[] iArr19 = new int[iH4];
            int[] iArr110 = new int[iH4];
            System.arraycopy(this.mSpans, 0, objArr8, 0, this.mSpanCount);
            System.arraycopy(this.mSpanStarts, 0, iArr18, 0, this.mSpanCount);
            System.arraycopy(this.mSpanEnds, 0, iArr19, 0, this.mSpanCount);
            System.arraycopy(this.mSpanFlags, 0, iArr110, 0, this.mSpanCount);
            this.mSpans = objArr8;
            this.mSpanStarts = iArr18;
            this.mSpanEnds = iArr19;
            this.mSpanFlags = iArr110;
        }
        Object[] objArr9 = this.mSpans;
        int i112 = this.mSpanCount;
        objArr9[i112] = obj;
        this.mSpanStarts[i112] = i5;
        this.mSpanEnds[i112] = i8;
        this.mSpanFlags[i112] = i4;
        this.mSpanCount = i112 + 1;
        if (z2) {
            sendSpanAdded(obj, i2, i3);
        }
    }

    @Override // android.text.Editable
    public SpannableStringBuilder delete(int i2, int i3) {
        SpannableStringBuilder spannableStringBuilderReplace = replace(i2, i3, ProxyProperties.LOCAL_EXCL_LIST, 0, 0);
        if (this.mGapLength > length() * 2) {
            resizeFor(length());
        }
        return spannableStringBuilderReplace;
    }

    public SpannableStringBuilder(CharSequence charSequence, int i2, int i3) {
        this.mFilters = NO_FILTERS;
        int i4 = i3 - i2;
        if (i4 >= 0) {
            int iF = a.f(i4 + 1);
            char[] cArr = new char[iF];
            this.mText = cArr;
            this.mGapStart = i4;
            this.mGapLength = iF - i4;
            TextUtils.getChars(charSequence, i2, i3, cArr, 0);
            this.mSpanCount = 0;
            int iH = a.h(0);
            this.mSpans = new Object[iH];
            this.mSpanStarts = new int[iH];
            this.mSpanEnds = new int[iH];
            this.mSpanFlags = new int[iH];
            if (charSequence instanceof Spanned) {
                Spanned spanned = (Spanned) charSequence;
                Object[] spans = spanned.getSpans(i2, i3, Object.class);
                for (int i5 = 0; i5 < spans.length; i5++) {
                    if (!(spans[i5] instanceof NoCopySpan)) {
                        int spanStart = spanned.getSpanStart(spans[i5]) - i2;
                        int spanEnd = spanned.getSpanEnd(spans[i5]) - i2;
                        int spanFlags = spanned.getSpanFlags(spans[i5]);
                        spanStart = spanStart < 0 ? 0 : spanStart;
                        int i6 = spanStart > i4 ? i4 : spanStart;
                        spanEnd = spanEnd < 0 ? 0 : spanEnd;
                        setSpan(false, spans[i5], i6, spanEnd > i4 ? i4 : spanEnd, spanFlags);
                    }
                }
                return;
            }
            return;
        }
        throw new StringIndexOutOfBoundsException();
    }

    @Override // android.text.Editable
    public SpannableStringBuilder insert(int i2, CharSequence charSequence, int i3, int i4) {
        return replace(i2, i2, charSequence, i3, i4);
    }

    @Override // android.text.Editable
    public SpannableStringBuilder replace(int i2, int i3, CharSequence charSequence) {
        return replace(i2, i3, charSequence, 0, charSequence.length());
    }

    @Override // android.text.Editable
    public SpannableStringBuilder insert(int i2, CharSequence charSequence) {
        return replace(i2, i2, charSequence, 0, charSequence.length());
    }

    @Override // android.text.Editable
    public SpannableStringBuilder replace(int i2, int i3, CharSequence charSequence, int i4, int i5) {
        int selectionEnd;
        checkRange("replace", i2, i3);
        int length = this.mFilters.length;
        int selectionStart = 0;
        CharSequence charSequence2 = charSequence;
        int i6 = i4;
        int length2 = i5;
        for (int i7 = 0; i7 < length; i7++) {
            CharSequence charSequenceFilter = this.mFilters[i7].filter(charSequence2, i6, length2, this, i2, i3);
            if (charSequenceFilter != null) {
                charSequence2 = charSequenceFilter;
                length2 = charSequenceFilter.length();
                i6 = 0;
            }
        }
        int i8 = i3 - i2;
        int i9 = length2 - i6;
        if (i8 == 0 && i9 == 0 && !hasNonExclusiveExclusiveSpanAt(charSequence2, i6)) {
            return this;
        }
        TextWatcher[] textWatcherArr = (TextWatcher[]) getSpans(i2, i2 + i8, TextWatcher.class);
        sendBeforeTextChanged(textWatcherArr, i2, i8, i9);
        boolean z2 = (i8 == 0 || i9 == 0) ? false : true;
        if (z2) {
            selectionStart = Selection.getSelectionStart(this);
            selectionEnd = Selection.getSelectionEnd(this);
        } else {
            selectionEnd = 0;
        }
        int i10 = selectionEnd;
        change(i2, i3, charSequence2, i6, length2);
        if (z2) {
            if (selectionStart > i2 && selectionStart < i3) {
                int i11 = i2 + (((selectionStart - i2) * i9) / i8);
                setSpan(false, Selection.SELECTION_START, i11, i11, 34);
            }
            if (i10 > i2 && i10 < i3) {
                int i12 = i2 + (((i10 - i2) * i9) / i8);
                setSpan(false, Selection.SELECTION_END, i12, i12, 34);
            }
        }
        sendTextChanged(textWatcherArr, i2, i8, i9);
        sendAfterTextChanged(textWatcherArr);
        sendToSpanWatchers(i2, i3, i9 - i8);
        return this;
    }

    @Override // java.lang.Appendable
    public SpannableStringBuilder append(CharSequence charSequence) {
        int length = length();
        return replace(length, length, charSequence, 0, charSequence.length());
    }

    @Override // java.lang.Appendable
    public SpannableStringBuilder append(CharSequence charSequence, int i2, int i3) {
        int length = length();
        return replace(length, length, charSequence, i2, i3);
    }

    @Override // java.lang.Appendable
    public SpannableStringBuilder append(char c2) {
        return append((CharSequence) String.valueOf(c2));
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        for (int i2 = this.mSpanCount - 1; i2 >= 0; i2--) {
            if (this.mSpans[i2] == obj) {
                removeSpan(i2);
                return;
            }
        }
    }
}
