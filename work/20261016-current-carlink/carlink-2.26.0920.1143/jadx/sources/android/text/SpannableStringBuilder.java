package android.text;

import android.accessibilityservice.c;
import android.app.ActivityManager;
import android.app.m;
import android.graphics.BaseCanvas;
import android.graphics.Paint;
import android.net.wifi.WifiEnterpriseConfig;
import android.util.Log;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;
import java.lang.reflect.Array;
import java.util.IdentityHashMap;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes2.dex */
public class SpannableStringBuilder implements CharSequence, GetChars, Spannable, Editable, Appendable, GraphicsOperations {
    private static final int END_MASK = 15;
    private static final int MARK = 1;
    private static final int PARAGRAPH = 3;
    private static final int POINT = 2;
    private static final int SPAN_ADDED = 2048;
    private static final int SPAN_END_AT_END = 32768;
    private static final int SPAN_END_AT_START = 16384;
    private static final int SPAN_START_AT_END = 8192;
    private static final int SPAN_START_AT_START = 4096;
    private static final int SPAN_START_END_MASK = 61440;
    private static final int START_MASK = 240;
    private static final int START_SHIFT = 4;
    private static final String TAG = "SpannableStringBuilder";
    private InputFilter[] mFilters;
    private int mGapLength;
    private int mGapStart;
    private IdentityHashMap<Object, Integer> mIndexOfSpan;
    private int mLowWaterMark;
    private int mSpanCount;
    private int[] mSpanEnds;
    private int[] mSpanFlags;
    private int mSpanInsertCount;
    private int[] mSpanMax;
    private int[] mSpanOrder;
    private int[] mSpanStarts;
    private Object[] mSpans;
    private char[] mText;
    private int mTextWatcherDepth;
    private static final InputFilter[] NO_FILTERS = new InputFilter[0];

    @GuardedBy("sCachedIntBuffer")
    private static final int[][] sCachedIntBuffer = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 6, 0);

    public SpannableStringBuilder() {
        this("");
    }

    private int calcMax(int i2) {
        int i3 = i2 & 1;
        int iCalcMax = i3 != 0 ? calcMax(leftChild(i2)) : 0;
        if (i2 < this.mSpanCount) {
            iCalcMax = Math.max(iCalcMax, this.mSpanEnds[i2]);
            if (i3 != 0) {
                iCalcMax = Math.max(iCalcMax, calcMax(rightChild(i2)));
            }
        }
        this.mSpanMax[i2] = iCalcMax;
        return iCalcMax;
    }

    private void change(int i2, int i3, CharSequence charSequence, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9 = i3 - i2;
        int i10 = i5 - i4;
        int i11 = i10 - i9;
        int i12 = 1;
        int i13 = this.mSpanCount - 1;
        boolean z2 = false;
        while (i13 >= 0) {
            int i14 = this.mSpanStarts[i13];
            int i15 = this.mGapStart;
            if (i14 > i15) {
                i14 -= this.mGapLength;
            }
            int i16 = this.mSpanEnds[i13];
            if (i16 > i15) {
                i16 -= this.mGapLength;
            }
            if ((this.mSpanFlags[i13] & 51) == 51) {
                int length = length();
                if (i14 <= i2 || i14 > i3) {
                    i7 = i14;
                } else {
                    int i17 = i3;
                    while (i17 < length && (i17 <= i3 || charAt(i17 - 1) != '\n')) {
                        i17++;
                    }
                    i7 = i17;
                }
                if (i16 <= i2 || i16 > i3) {
                    i8 = i16;
                } else {
                    i8 = i3;
                    while (i8 < length && (i8 <= i3 || charAt(i8 - 1) != '\n')) {
                        i8++;
                        length = length;
                    }
                }
                if (i7 == i14 && i8 == i16) {
                    i16 = i8;
                    i14 = i7;
                    i6 = 1;
                } else {
                    i6 = 1;
                    setSpan(false, this.mSpans[i13], i7, i8, this.mSpanFlags[i13], true);
                    z2 = true;
                    i14 = i7;
                    i16 = i8;
                }
            } else {
                i6 = i12;
            }
            int i18 = i14 == i2 ? 4096 : i14 == i3 + i11 ? 8192 : 0;
            if (i16 == i2) {
                i18 |= 16384;
            } else if (i16 == i3 + i11) {
                i18 |= 32768;
            }
            int[] iArr = this.mSpanFlags;
            iArr[i13] = i18 | iArr[i13];
            i13--;
            i12 = i6;
        }
        int i19 = i12;
        if (z2) {
            restoreInvariants();
        }
        moveGapTo(i3);
        int i20 = this.mGapLength;
        if (i11 >= i20) {
            resizeFor((this.mText.length + i11) - i20);
        }
        boolean z3 = i10 == 0 ? i19 : false;
        if (i9 > 0) {
            while (this.mSpanCount > 0 && removeSpansForChange(i2, i3, z3, treeRoot())) {
            }
        }
        this.mGapStart += i11;
        int i21 = this.mGapLength - i11;
        this.mGapLength = i21;
        if (i21 < i19) {
            new Exception("mGapLength < 1").printStackTrace();
        }
        TextUtils.getChars(charSequence, i4, i5, this.mText, i2);
        if (i9 > 0) {
            int i22 = this.mGapStart + this.mGapLength == this.mText.length ? i19 : 0;
            for (int i23 = 0; i23 < this.mSpanCount; i23++) {
                int i24 = (this.mSpanFlags[i23] & 240) >> 4;
                int[] iArr2 = this.mSpanStarts;
                boolean z4 = i22;
                iArr2[i23] = updatedIntervalBound(iArr2[i23], i2, i11, i24, z4, z3);
                int i25 = this.mSpanFlags[i23] & 15;
                int[] iArr3 = this.mSpanEnds;
                iArr3[i23] = updatedIntervalBound(iArr3[i23], i2, i11, i25, z4, z3);
            }
            restoreInvariants();
        }
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            Object[] spans = spanned.getSpans(i4, i5, Object.class);
            for (int i26 = 0; i26 < spans.length; i26++) {
                int spanStart = spanned.getSpanStart(spans[i26]);
                int spanEnd = spanned.getSpanEnd(spans[i26]);
                if (spanStart < i4) {
                    spanStart = i4;
                }
                if (spanEnd > i5) {
                    spanEnd = i5;
                }
                if (getSpanStart(spans[i26]) < 0) {
                    setSpan(false, spans[i26], (spanStart - i4) + i2, (spanEnd - i4) + i2, spanned.getSpanFlags(spans[i26]) | 2048, false);
                }
            }
            restoreInvariants();
        }
    }

    private void checkRange(String str, int i2, int i3) {
        if (i3 < i2) {
            throw new IndexOutOfBoundsException(c.n(c.u(str, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER), region(i2, i3), " has end before start"));
        }
        int length = length();
        if (i2 > length || i3 > length) {
            Log.w(TAG, "checkRange " + region(i2, i3) + ", Text: " + String.valueOf(this.mText));
            if (!ActivityManager.isUserAMonkey()) {
                StringBuilder sbU = c.u(str, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                sbU.append(region(i2, i3));
                sbU.append(" ends beyond length ");
                sbU.append(length);
                throw new IndexOutOfBoundsException(sbU.toString());
            }
            Throwable th = new Throwable();
            th.fillInStackTrace();
            Log.w(TAG, "Throw", th);
        }
        if (i2 < 0 || i3 < 0) {
            throw new IndexOutOfBoundsException(c.n(c.u(str, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER), region(i2, i3), " starts before 0"));
        }
    }

    private static int[] checkSortBuffer(int[] iArr, int i2) {
        return (iArr == null || i2 > iArr.length) ? ArrayUtils.newUnpaddedIntArray(GrowingArrayUtils.growSize(i2)) : iArr;
    }

    private final int compareSpans(int i2, int i3, int[] iArr, int[] iArr2) {
        int i4 = iArr[i2];
        int i5 = iArr[i3];
        return i4 == i5 ? Integer.compare(iArr2[i2], iArr2[i3]) : Integer.compare(i5, i4);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001a  */
    private int countSpans(int i2, int i3, Class cls, int i4) {
        int iCountSpans;
        int i5 = i4 & 1;
        if (i5 == 0) {
            iCountSpans = 0;
        } else {
            int iLeftChild = leftChild(i4);
            int i6 = this.mSpanMax[iLeftChild];
            if (i6 > this.mGapStart) {
                i6 -= this.mGapLength;
            }
            if (i6 >= i2) {
                iCountSpans = countSpans(i2, i3, cls, iLeftChild);
            } else {
                iCountSpans = 0;
            }
        }
        if (i4 >= this.mSpanCount) {
            return iCountSpans;
        }
        int i7 = this.mSpanStarts[i4];
        int i8 = this.mGapStart;
        if (i7 > i8) {
            i7 -= this.mGapLength;
        }
        if (i7 > i3) {
            return iCountSpans;
        }
        int i9 = this.mSpanEnds[i4];
        if (i9 > i8) {
            i9 -= this.mGapLength;
        }
        if (i9 >= i2 && ((i7 == i9 || i2 == i3 || (i7 != i3 && i9 != i2)) && (Object.class == cls || cls.isInstance(this.mSpans[i4])))) {
            iCountSpans++;
        }
        return i5 != 0 ? iCountSpans + countSpans(i2, i3, cls, rightChild(i4)) : iCountSpans;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0038  */
    /* JADX WARN: Multi-variable type inference failed */
    private <T> int getSpansRec(int i2, int i3, Class<T> cls, int i4, T[] tArr, int[] iArr, int[] iArr2, int i5, boolean z2) {
        int spansRec;
        int i6;
        int i7 = i4 & 1;
        if (i7 == 0) {
            spansRec = i5;
        } else {
            int iLeftChild = leftChild(i4);
            int i8 = this.mSpanMax[iLeftChild];
            if (i8 > this.mGapStart) {
                i8 -= this.mGapLength;
            }
            if (i8 >= i2) {
                spansRec = getSpansRec(i2, i3, cls, iLeftChild, tArr, iArr, iArr2, i5, z2);
            } else {
                spansRec = i5;
            }
        }
        if (i4 >= this.mSpanCount) {
            return spansRec;
        }
        int i9 = this.mSpanStarts[i4];
        int i10 = this.mGapStart;
        if (i9 > i10) {
            i9 -= this.mGapLength;
        }
        if (i9 > i3) {
            return spansRec;
        }
        int i11 = this.mSpanEnds[i4];
        if (i11 > i10) {
            i11 -= this.mGapLength;
        }
        if (i11 >= i2 && ((i9 == i11 || i2 == i3 || (i9 != i3 && i11 != i2)) && (Object.class == cls || cls.isInstance(this.mSpans[i4])))) {
            int i12 = this.mSpanFlags[i4] & 16711680;
            if (z2) {
                iArr[spansRec] = i12;
                iArr2[spansRec] = this.mSpanOrder[i4];
            } else {
                if (i12 != 0) {
                    i6 = 0;
                    while (i6 < spansRec && i12 <= (getSpanFlags(tArr[i6]) & 16711680)) {
                        i6++;
                    }
                    System.arraycopy(tArr, i6, tArr, i6 + 1, spansRec - i6);
                }
                tArr[i6] = this.mSpans[i4];
                spansRec++;
            }
            i6 = spansRec;
            tArr[i6] = this.mSpans[i4];
            spansRec++;
        }
        int i13 = spansRec;
        return (i13 >= tArr.length || i7 == 0) ? i13 : getSpansRec(i2, i3, cls, rightChild(i4), tArr, iArr, iArr2, i13, z2);
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

    private void invalidateIndex(int i2) {
        this.mLowWaterMark = Math.min(i2, this.mLowWaterMark);
    }

    private boolean isInvalidParagraph(int i2, int i3) {
        return (i3 != 3 || i2 == 0 || i2 == length() || charAt(i2 - 1) == '\n') ? false : true;
    }

    private static int leftChild(int i2) {
        return i2 - (((i2 + 1) & (~i2)) >> 1);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x005e  */
    /* JADX WARN: Code duplicated, block: B:33:0x0063  */
    /* JADX WARN: Code duplicated, block: B:35:0x0067  */
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
        if (this.mSpanCount != 0) {
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
            calcMax(treeRoot());
        }
        this.mGapStart = i2;
    }

    private int nextSpanTransitionRec(int i2, int i3, Class cls, int i4) {
        int i5 = i4 & 1;
        if (i5 != 0) {
            int iLeftChild = leftChild(i4);
            if (resolveGap(this.mSpanMax[iLeftChild]) > i2) {
                i3 = nextSpanTransitionRec(i2, i3, cls, iLeftChild);
            }
        }
        if (i4 >= this.mSpanCount) {
            return i3;
        }
        int iResolveGap = resolveGap(this.mSpanStarts[i4]);
        int iResolveGap2 = resolveGap(this.mSpanEnds[i4]);
        if (iResolveGap > i2 && iResolveGap < i3 && cls.isInstance(this.mSpans[i4])) {
            i3 = iResolveGap;
        }
        if (iResolveGap2 > i2 && iResolveGap2 < i3 && cls.isInstance(this.mSpans[i4])) {
            i3 = iResolveGap2;
        }
        return (iResolveGap >= i3 || i5 == 0) ? i3 : nextSpanTransitionRec(i2, i3, cls, rightChild(i4));
    }

    private static int[] obtain(int i2) {
        int[] iArr;
        int[][] iArr2 = sCachedIntBuffer;
        synchronized (iArr2) {
            int length = iArr2.length - 1;
            int i3 = -1;
            while (true) {
                if (length < 0) {
                    length = i3;
                    break;
                }
                int[] iArr3 = sCachedIntBuffer[length];
                if (iArr3 != null) {
                    if (iArr3.length >= i2) {
                        break;
                    }
                    if (i3 == -1) {
                        i3 = length;
                    }
                }
                length--;
            }
            iArr = null;
            if (length != -1) {
                int[][] iArr4 = sCachedIntBuffer;
                int[] iArr5 = iArr4[length];
                iArr4[length] = null;
                iArr = iArr5;
            }
        }
        return checkSortBuffer(iArr, i2);
    }

    private static void recycle(int[] iArr) {
        int i2;
        synchronized (sCachedIntBuffer) {
            while (true) {
                int[][] iArr2 = sCachedIntBuffer;
                if (i2 < iArr2.length) {
                    int[] iArr3 = iArr2[i2];
                    i2 = (iArr3 != null && iArr.length <= iArr3.length) ? i2 + 1 : 0;
                    iArr2[i2] = iArr;
                    break;
                }
                break;
            }
        }
    }

    private static String region(int i2, int i3) {
        return m.f("(", i2, " ... ", i3, ")");
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
        int[] iArr4 = this.mSpanOrder;
        System.arraycopy(iArr4, i6, iArr4, i2, i7);
        this.mSpanCount--;
        invalidateIndex(i2);
        this.mSpans[this.mSpanCount] = null;
        restoreInvariants();
        sendSpanRemoved(obj, i3, i4);
    }

    private boolean removeSpansForChange(int i2, int i3, boolean z2, int i4) {
        int i5;
        int i6;
        int i7 = i4 & 1;
        if (i7 != 0 && resolveGap(this.mSpanMax[i4]) >= i2 && removeSpansForChange(i2, i3, z2, leftChild(i4))) {
            return true;
        }
        if (i4 >= this.mSpanCount) {
            return false;
        }
        if ((this.mSpanFlags[i4] & 33) == 33 && (i5 = this.mSpanStarts[i4]) >= i2) {
            int i8 = this.mGapStart;
            int i9 = this.mGapLength;
            if (i5 < i8 + i9 && (i6 = this.mSpanEnds[i4]) >= i2 && i6 < i9 + i8 && (z2 || i5 > i2 || i6 < i8)) {
                this.mIndexOfSpan.remove(this.mSpans[i4]);
                removeSpan(i4);
                return true;
            }
        }
        return resolveGap(this.mSpanStarts[i4]) <= i3 && i7 != 0 && removeSpansForChange(i2, i3, z2, rightChild(i4));
    }

    private void resizeFor(int i2) {
        int length = this.mText.length;
        if (i2 + 1 <= length) {
            return;
        }
        char[] cArrNewUnpaddedCharArray = ArrayUtils.newUnpaddedCharArray(GrowingArrayUtils.growSize(i2));
        System.arraycopy(this.mText, 0, cArrNewUnpaddedCharArray, 0, this.mGapStart);
        int length2 = cArrNewUnpaddedCharArray.length;
        int i3 = length2 - length;
        int i4 = length - (this.mGapStart + this.mGapLength);
        System.arraycopy(this.mText, length - i4, cArrNewUnpaddedCharArray, length2 - i4, i4);
        this.mText = cArrNewUnpaddedCharArray;
        int i5 = this.mGapLength + i3;
        this.mGapLength = i5;
        if (i5 < 1) {
            new Exception("mGapLength < 1").printStackTrace();
        }
        if (this.mSpanCount != 0) {
            for (int i6 = 0; i6 < this.mSpanCount; i6++) {
                int[] iArr = this.mSpanStarts;
                int i7 = iArr[i6];
                int i8 = this.mGapStart;
                if (i7 > i8) {
                    iArr[i6] = i7 + i3;
                }
                int[] iArr2 = this.mSpanEnds;
                int i9 = iArr2[i6];
                if (i9 > i8) {
                    iArr2[i6] = i9 + i3;
                }
            }
            calcMax(treeRoot());
        }
    }

    private int resolveGap(int i2) {
        return i2 > this.mGapStart ? i2 - this.mGapLength : i2;
    }

    private void restoreInvariants() {
        Object[] objArr;
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        if (this.mSpanCount == 0) {
            return;
        }
        for (int i2 = 1; i2 < this.mSpanCount; i2++) {
            int[] iArr5 = this.mSpanStarts;
            int i3 = iArr5[i2];
            if (i3 < iArr5[i2 - 1]) {
                Object obj = this.mSpans[i2];
                int i4 = this.mSpanEnds[i2];
                int i5 = this.mSpanFlags[i2];
                int i6 = this.mSpanOrder[i2];
                int i7 = i2;
                do {
                    objArr = this.mSpans;
                    int i8 = i7 - 1;
                    objArr[i7] = objArr[i8];
                    iArr = this.mSpanStarts;
                    iArr[i7] = iArr[i8];
                    iArr2 = this.mSpanEnds;
                    iArr2[i7] = iArr2[i8];
                    iArr3 = this.mSpanFlags;
                    iArr3[i7] = iArr3[i8];
                    iArr4 = this.mSpanOrder;
                    iArr4[i7] = iArr4[i8];
                    i7--;
                    if (i7 <= 0) {
                        break;
                    }
                } while (i3 < iArr[i7 - 1]);
                objArr[i7] = obj;
                iArr[i7] = i3;
                iArr2[i7] = i4;
                iArr3[i7] = i5;
                iArr4[i7] = i6;
                invalidateIndex(i7);
            }
        }
        calcMax(treeRoot());
        if (this.mIndexOfSpan == null) {
            this.mIndexOfSpan = new IdentityHashMap<>();
        }
        for (int i9 = this.mLowWaterMark; i9 < this.mSpanCount; i9++) {
            Integer num = this.mIndexOfSpan.get(this.mSpans[i9]);
            if (num == null || num.intValue() != i9) {
                this.mIndexOfSpan.put(this.mSpans[i9], Integer.valueOf(i9));
            }
        }
        this.mLowWaterMark = Integer.MAX_VALUE;
    }

    private static int rightChild(int i2) {
        return i2 + (((i2 + 1) & (~i2)) >> 1);
    }

    private void sendAfterTextChanged(TextWatcher[] textWatcherArr) {
        this.mTextWatcherDepth++;
        for (TextWatcher textWatcher : textWatcherArr) {
            textWatcher.afterTextChanged(this);
        }
        this.mTextWatcherDepth--;
    }

    private void sendBeforeTextChanged(TextWatcher[] textWatcherArr, int i2, int i3, int i4) {
        this.mTextWatcherDepth++;
        for (TextWatcher textWatcher : textWatcherArr) {
            textWatcher.beforeTextChanged(this, i2, i3, i4);
        }
        this.mTextWatcherDepth--;
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
        this.mTextWatcherDepth++;
        for (TextWatcher textWatcher : textWatcherArr) {
            textWatcher.onTextChanged(this, i2, i3, i4);
        }
        this.mTextWatcherDepth--;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x004a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x004c  */
    /* JADX WARN: Code duplicated, block: B:31:0x0050  */
    /* JADX WARN: Code duplicated, block: B:32:0x0052 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:42:0x0067  */
    private void sendToSpanWatchers(int i2, int i3, int i4) {
        boolean z2;
        int i5;
        int i6;
        for (int i7 = 0; i7 < this.mSpanCount; i7++) {
            int i8 = this.mSpanFlags[i7];
            if ((i8 & 2048) == 0) {
                int i9 = this.mSpanStarts[i7];
                int i10 = this.mSpanEnds[i7];
                int i11 = this.mGapStart;
                if (i9 > i11) {
                    i9 -= this.mGapLength;
                }
                int i12 = i9;
                if (i10 > i11) {
                    i10 -= this.mGapLength;
                }
                int i13 = i10;
                int i14 = i3 + i4;
                boolean z3 = true;
                if (i12 > i14) {
                    if (i4 != 0) {
                        i5 = i12 - i4;
                        z2 = true;
                    }
                    if (i13 > i14) {
                        if (i4 != 0) {
                            i6 = i13 - i4;
                        }
                        if (z3) {
                            sendSpanChanged(this.mSpans[i7], i5, i6, i12, i13);
                        }
                        int[] iArr = this.mSpanFlags;
                        iArr[i7] = iArr[i7] & (-61441);
                    } else {
                        if (i13 >= i2 || ((i13 == i2 && (i8 & 16384) == 16384) || (i13 == i14 && (i8 & 32768) == 32768))) {
                        }
                        i6 = i13;
                        if (z3) {
                            sendSpanChanged(this.mSpans[i7], i5, i6, i12, i13);
                        }
                        int[] iArr2 = this.mSpanFlags;
                        iArr2[i7] = iArr2[i7] & (-61441);
                    }
                    z3 = z2;
                    i6 = i13;
                    if (z3) {
                        sendSpanChanged(this.mSpans[i7], i5, i6, i12, i13);
                    }
                    int[] iArr3 = this.mSpanFlags;
                    iArr3[i7] = iArr3[i7] & (-61441);
                } else {
                    if (i12 >= i2 && ((i12 != i2 || (i8 & 4096) != 4096) && (i12 != i14 || (i8 & 8192) != 8192))) {
                        z2 = true;
                    }
                    i5 = i12;
                    if (i13 > i14) {
                        if (i4 != 0) {
                            i6 = i13 - i4;
                        }
                        if (z3) {
                            sendSpanChanged(this.mSpans[i7], i5, i6, i12, i13);
                        }
                        int[] iArr4 = this.mSpanFlags;
                        iArr4[i7] = iArr4[i7] & (-61441);
                    } else {
                        if (i13 >= i2) {
                        }
                        i6 = i13;
                        if (z3) {
                            sendSpanChanged(this.mSpans[i7], i5, i6, i12, i13);
                        }
                        int[] iArr5 = this.mSpanFlags;
                        iArr5[i7] = iArr5[i7] & (-61441);
                    }
                    z3 = z2;
                    i6 = i13;
                    if (z3) {
                        sendSpanChanged(this.mSpans[i7], i5, i6, i12, i13);
                    }
                    int[] iArr6 = this.mSpanFlags;
                    iArr6[i7] = iArr6[i7] & (-61441);
                }
                z2 = false;
                i5 = i12;
                if (i13 > i14) {
                    if (i4 != 0) {
                        i6 = i13 - i4;
                    }
                    if (z3) {
                        sendSpanChanged(this.mSpans[i7], i5, i6, i12, i13);
                    }
                    int[] iArr7 = this.mSpanFlags;
                    iArr7[i7] = iArr7[i7] & (-61441);
                } else {
                    if (i13 >= i2) {
                    }
                    i6 = i13;
                    if (z3) {
                        sendSpanChanged(this.mSpans[i7], i5, i6, i12, i13);
                    }
                    int[] iArr8 = this.mSpanFlags;
                    iArr8[i7] = iArr8[i7] & (-61441);
                }
                z3 = z2;
                i6 = i13;
                if (z3) {
                    sendSpanChanged(this.mSpans[i7], i5, i6, i12, i13);
                }
                int[] iArr9 = this.mSpanFlags;
                iArr9[i7] = iArr9[i7] & (-61441);
            }
        }
        for (int i15 = 0; i15 < this.mSpanCount; i15++) {
            int[] iArr10 = this.mSpanFlags;
            int i16 = iArr10[i15];
            if ((i16 & 2048) != 0) {
                iArr10[i15] = i16 & (-2049);
                int i17 = this.mSpanStarts[i15];
                int i18 = this.mSpanEnds[i15];
                int i19 = this.mGapStart;
                if (i17 > i19) {
                    i17 -= this.mGapLength;
                }
                if (i18 > i19) {
                    i18 -= this.mGapLength;
                }
                sendSpanAdded(this.mSpans[i15], i17, i18);
            }
        }
    }

    private final <T> void siftDown(int i2, T[] tArr, int i3, int[] iArr, int[] iArr2) {
        int i4 = (i2 * 2) + 1;
        while (i4 < i3) {
            if (i4 < i3 - 1) {
                int i5 = i4 + 1;
                if (compareSpans(i4, i5, iArr, iArr2) < 0) {
                    i4 = i5;
                }
            }
            if (compareSpans(i2, i4, iArr, iArr2) >= 0) {
                return;
            }
            T t2 = tArr[i2];
            tArr[i2] = tArr[i4];
            tArr[i4] = t2;
            int i6 = iArr[i2];
            iArr[i2] = iArr[i4];
            iArr[i4] = i6;
            int i7 = iArr2[i2];
            iArr2[i2] = iArr2[i4];
            iArr2[i4] = i7;
            int i8 = i4;
            i4 = (i4 * 2) + 1;
            i2 = i8;
        }
    }

    private final <T> void sort(T[] tArr, int[] iArr, int[] iArr2) {
        int length = tArr.length;
        for (int i2 = (length / 2) - 1; i2 >= 0; i2--) {
            siftDown(i2, tArr, length, iArr, iArr2);
        }
        for (int i3 = length - 1; i3 > 0; i3--) {
            T t2 = tArr[0];
            tArr[0] = tArr[i3];
            tArr[i3] = t2;
            int i4 = iArr[0];
            iArr[0] = iArr[i3];
            iArr[i3] = i4;
            int i5 = iArr2[0];
            iArr2[0] = iArr2[i3];
            iArr2[i3] = i5;
            siftDown(0, tArr, i3, iArr, iArr2);
        }
    }

    private int treeRoot() {
        return Integer.highestOneBit(this.mSpanCount) - 1;
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
            throw new IndexOutOfBoundsException(c.e("charAt: ", i2, " < 0"));
        }
        if (i2 < length) {
            return i2 >= this.mGapStart ? this.mText[i2 + this.mGapLength] : this.mText[i2];
        }
        throw new IndexOutOfBoundsException(m.e("charAt: ", i2, " >= length ", length));
    }

    @Override // android.text.Editable
    public void clear() {
        replace(0, length(), "", 0, 0);
        this.mSpanInsertCount = 0;
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
        IdentityHashMap<Object, Integer> identityHashMap = this.mIndexOfSpan;
        if (identityHashMap != null) {
            identityHashMap.clear();
        }
        this.mSpanInsertCount = 0;
    }

    @Override // android.text.GraphicsOperations
    public void drawText(BaseCanvas baseCanvas, int i2, int i3, float f2, float f3, Paint paint) {
        checkRange("drawText", i2, i3);
        int i4 = this.mGapStart;
        if (i3 <= i4) {
            baseCanvas.drawText(this.mText, i2, i3 - i2, f2, f3, paint);
            return;
        }
        if (i2 >= i4) {
            baseCanvas.drawText(this.mText, i2 + this.mGapLength, i3 - i2, f2, f3, paint);
            return;
        }
        int i5 = i3 - i2;
        char[] cArrObtain = TextUtils.obtain(i5);
        getChars(i2, i3, cArrObtain, 0);
        baseCanvas.drawText(cArrObtain, 0, i5, f2, f3, paint);
        TextUtils.recycle(cArrObtain);
    }

    @Override // android.text.GraphicsOperations
    public void drawTextRun(BaseCanvas baseCanvas, int i2, int i3, int i4, int i5, float f2, float f3, boolean z2, Paint paint) {
        checkRange("drawTextRun", i2, i3);
        int i6 = i5 - i4;
        int i7 = i3 - i2;
        int i8 = this.mGapStart;
        if (i5 <= i8) {
            baseCanvas.drawTextRun(this.mText, i2, i7, i4, i6, f2, f3, z2, paint);
            return;
        }
        if (i4 >= i8) {
            char[] cArr = this.mText;
            int i9 = this.mGapLength;
            baseCanvas.drawTextRun(cArr, i2 + i9, i7, i4 + i9, i6, f2, f3, z2, paint);
        } else {
            char[] cArrObtain = TextUtils.obtain(i6);
            getChars(i4, i5, cArrObtain, 0);
            baseCanvas.drawTextRun(cArrObtain, i2 - i4, i7, 0, i6, f2, f3, z2, paint);
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
        System.arraycopy(cArr2, this.mGapLength + i6, cArr, (i6 - i2) + i4, i3 - i6);
    }

    @Override // android.text.Editable
    public InputFilter[] getFilters() {
        return this.mFilters;
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        Integer num;
        IdentityHashMap<Object, Integer> identityHashMap = this.mIndexOfSpan;
        if (identityHashMap == null || (num = identityHashMap.get(obj)) == null) {
            return -1;
        }
        return resolveGap(this.mSpanEnds[num.intValue()]);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        Integer num;
        IdentityHashMap<Object, Integer> identityHashMap = this.mIndexOfSpan;
        if (identityHashMap == null || (num = identityHashMap.get(obj)) == null) {
            return 0;
        }
        return this.mSpanFlags[num.intValue()];
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        Integer num;
        IdentityHashMap<Object, Integer> identityHashMap = this.mIndexOfSpan;
        if (identityHashMap == null || (num = identityHashMap.get(obj)) == null) {
            return -1;
        }
        return resolveGap(this.mSpanStarts[num.intValue()]);
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i2, int i3, Class<T> cls) {
        return (T[]) getSpans(i2, i3, cls, true);
    }

    @Override // android.text.GraphicsOperations
    public float getTextRunAdvances(int i2, int i3, int i4, int i5, boolean z2, float[] fArr, int i6, Paint paint) {
        int i7 = i5 - i4;
        int i8 = i3 - i2;
        int i9 = this.mGapStart;
        if (i3 <= i9) {
            return paint.getTextRunAdvances(this.mText, i2, i8, i4, i7, z2, fArr, i6);
        }
        if (i2 >= i9) {
            char[] cArr = this.mText;
            int i10 = this.mGapLength;
            return paint.getTextRunAdvances(cArr, i2 + i10, i8, i4 + i10, i7, z2, fArr, i6);
        }
        char[] cArrObtain = TextUtils.obtain(i7);
        getChars(i4, i5, cArrObtain, 0);
        float textRunAdvances = paint.getTextRunAdvances(cArrObtain, i2 - i4, i8, 0, i7, z2, fArr, i6);
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

    public int getTextWatcherDepth() {
        return this.mTextWatcherDepth;
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
            iHashCode = ((getSpanEnd(obj) + ((getSpanStart(obj) + (iHashCode * 31)) * 31)) * 31) + getSpanFlags(obj);
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
        if (this.mSpanCount == 0) {
            return i3;
        }
        if (cls == null) {
            cls = Object.class;
        }
        return nextSpanTransitionRec(i2, i3, cls, treeRoot());
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
        setSpan(true, obj, i2, i3, i4, true);
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

    /* JADX WARN: Code duplicated, block: B:34:0x0092  */
    /* JADX WARN: Code duplicated, block: B:35:0x0095  */
    /* JADX WARN: Code duplicated, block: B:45:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:58:0x0132  */
    /* JADX WARN: Code duplicated, block: B:60:0x0138  */
    /* JADX WARN: Code duplicated, block: B:64:? A[RETURN, SYNTHETIC] */
    private void setSpan(boolean z2, Object obj, int i2, int i3, int i4, boolean z3) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        IdentityHashMap<Object, Integer> identityHashMap;
        int iTreeRoot;
        Integer num;
        checkRange("setSpan", i2, i3);
        int i10 = (i4 & 240) >> 4;
        if (isInvalidParagraph(i2, i10)) {
            if (z3) {
                StringBuilder sbS = c.s("PARAGRAPH span must start at paragraph boundary (", i2, " follows ");
                sbS.append(charAt(i2 - 1));
                sbS.append(")");
                throw new RuntimeException(sbS.toString());
            }
            return;
        }
        int i11 = i4 & 15;
        if (isInvalidParagraph(i3, i11)) {
            if (z3) {
                StringBuilder sbS2 = c.s("PARAGRAPH span must end at paragraph boundary (", i3, " follows ");
                sbS2.append(charAt(i3 - 1));
                sbS2.append(")");
                throw new RuntimeException(sbS2.toString());
            }
            return;
        }
        if (i10 == 2 && i11 == 1 && i2 == i3) {
            if (z2) {
                Log.e(TAG, "SPAN_EXCLUSIVE_EXCLUSIVE spans cannot have a zero length");
                return;
            }
            return;
        }
        int i12 = this.mGapStart;
        if (i2 <= i12) {
            if (i2 == i12 && (i10 == 2 || (i10 == 3 && i2 == length()))) {
                i6 = this.mGapLength;
            } else {
                i5 = i2;
            }
            i7 = this.mGapStart;
            if (i3 > i7) {
                if (i3 == i7 || !(i11 == 2 || (i11 == 3 && i3 == length()))) {
                    i8 = i3;
                } else {
                    i9 = this.mGapLength;
                }
                identityHashMap = this.mIndexOfSpan;
                if (identityHashMap != null || (num = identityHashMap.get(obj)) == null) {
                    this.mSpans = GrowingArrayUtils.append(this.mSpans, this.mSpanCount, obj);
                    this.mSpanStarts = GrowingArrayUtils.append(this.mSpanStarts, this.mSpanCount, i5);
                    this.mSpanEnds = GrowingArrayUtils.append(this.mSpanEnds, this.mSpanCount, i8);
                    this.mSpanFlags = GrowingArrayUtils.append(this.mSpanFlags, this.mSpanCount, i4);
                    this.mSpanOrder = GrowingArrayUtils.append(this.mSpanOrder, this.mSpanCount, this.mSpanInsertCount);
                    invalidateIndex(this.mSpanCount);
                    this.mSpanCount++;
                    this.mSpanInsertCount++;
                    iTreeRoot = (treeRoot() * 2) + 1;
                    if (this.mSpanMax.length < iTreeRoot) {
                        this.mSpanMax = new int[iTreeRoot];
                    }
                    if (z2) {
                        restoreInvariants();
                        sendSpanAdded(obj, i2, i3);
                    }
                }
                int iIntValue = num.intValue();
                int[] iArr = this.mSpanStarts;
                int i13 = iArr[iIntValue];
                int[] iArr2 = this.mSpanEnds;
                int i14 = iArr2[iIntValue];
                int i15 = this.mGapStart;
                if (i13 > i15) {
                    i13 -= this.mGapLength;
                }
                if (i14 > i15) {
                    i14 -= this.mGapLength;
                }
                iArr[iIntValue] = i5;
                iArr2[iIntValue] = i8;
                this.mSpanFlags[iIntValue] = i4;
                if (z2) {
                    restoreInvariants();
                    sendSpanChanged(obj, i13, i14, i2, i3);
                    return;
                }
                return;
            }
            i9 = this.mGapLength;
            i8 = i9 + i3;
            identityHashMap = this.mIndexOfSpan;
            if (identityHashMap != null) {
            }
            this.mSpans = GrowingArrayUtils.append(this.mSpans, this.mSpanCount, obj);
            this.mSpanStarts = GrowingArrayUtils.append(this.mSpanStarts, this.mSpanCount, i5);
            this.mSpanEnds = GrowingArrayUtils.append(this.mSpanEnds, this.mSpanCount, i8);
            this.mSpanFlags = GrowingArrayUtils.append(this.mSpanFlags, this.mSpanCount, i4);
            this.mSpanOrder = GrowingArrayUtils.append(this.mSpanOrder, this.mSpanCount, this.mSpanInsertCount);
            invalidateIndex(this.mSpanCount);
            this.mSpanCount++;
            this.mSpanInsertCount++;
            iTreeRoot = (treeRoot() * 2) + 1;
            if (this.mSpanMax.length < iTreeRoot) {
                this.mSpanMax = new int[iTreeRoot];
            }
            if (z2) {
                restoreInvariants();
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
            identityHashMap = this.mIndexOfSpan;
            if (identityHashMap != null) {
            }
            this.mSpans = GrowingArrayUtils.append(this.mSpans, this.mSpanCount, obj);
            this.mSpanStarts = GrowingArrayUtils.append(this.mSpanStarts, this.mSpanCount, i5);
            this.mSpanEnds = GrowingArrayUtils.append(this.mSpanEnds, this.mSpanCount, i8);
            this.mSpanFlags = GrowingArrayUtils.append(this.mSpanFlags, this.mSpanCount, i4);
            this.mSpanOrder = GrowingArrayUtils.append(this.mSpanOrder, this.mSpanCount, this.mSpanInsertCount);
            invalidateIndex(this.mSpanCount);
            this.mSpanCount++;
            this.mSpanInsertCount++;
            iTreeRoot = (treeRoot() * 2) + 1;
            if (this.mSpanMax.length < iTreeRoot) {
                this.mSpanMax = new int[iTreeRoot];
            }
            if (z2) {
                restoreInvariants();
                sendSpanAdded(obj, i2, i3);
            }
        }
        i9 = this.mGapLength;
        i8 = i9 + i3;
        identityHashMap = this.mIndexOfSpan;
        if (identityHashMap != null) {
        }
        this.mSpans = GrowingArrayUtils.append(this.mSpans, this.mSpanCount, obj);
        this.mSpanStarts = GrowingArrayUtils.append(this.mSpanStarts, this.mSpanCount, i5);
        this.mSpanEnds = GrowingArrayUtils.append(this.mSpanEnds, this.mSpanCount, i8);
        this.mSpanFlags = GrowingArrayUtils.append(this.mSpanFlags, this.mSpanCount, i4);
        this.mSpanOrder = GrowingArrayUtils.append(this.mSpanOrder, this.mSpanCount, this.mSpanInsertCount);
        invalidateIndex(this.mSpanCount);
        this.mSpanCount++;
        this.mSpanInsertCount++;
        iTreeRoot = (treeRoot() * 2) + 1;
        if (this.mSpanMax.length < iTreeRoot) {
            this.mSpanMax = new int[iTreeRoot];
        }
        if (z2) {
            restoreInvariants();
            sendSpanAdded(obj, i2, i3);
        }
    }

    @Override // android.text.Editable
    public SpannableStringBuilder delete(int i2, int i3) {
        SpannableStringBuilder spannableStringBuilderReplace = replace(i2, i3, "", 0, 0);
        if (this.mGapLength > length() * 2) {
            resizeFor(length());
        }
        return spannableStringBuilderReplace;
    }

    public <T> T[] getSpans(int i2, int i3, Class<T> cls, boolean z2) {
        if (cls == null) {
            return (T[]) ArrayUtils.emptyArray(Object.class);
        }
        if (this.mSpanCount == 0) {
            return (T[]) ArrayUtils.emptyArray(cls);
        }
        int iCountSpans = countSpans(i2, i3, cls, treeRoot());
        if (iCountSpans == 0) {
            return (T[]) ArrayUtils.emptyArray(cls);
        }
        T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, iCountSpans));
        int[] iArrObtain = z2 ? obtain(iCountSpans) : EmptyArray.INT;
        int[] iArrObtain2 = z2 ? obtain(iCountSpans) : EmptyArray.INT;
        getSpansRec(i2, i3, cls, treeRoot(), tArr, iArrObtain, iArrObtain2, 0, z2);
        if (z2) {
            sort(tArr, iArrObtain, iArrObtain2);
            recycle(iArrObtain);
            recycle(iArrObtain2);
        }
        return tArr;
    }

    public SpannableStringBuilder(CharSequence charSequence, int i2, int i3) {
        this.mFilters = NO_FILTERS;
        int i4 = i3 - i2;
        if (i4 >= 0) {
            char[] cArrNewUnpaddedCharArray = ArrayUtils.newUnpaddedCharArray(GrowingArrayUtils.growSize(i4));
            this.mText = cArrNewUnpaddedCharArray;
            this.mGapStart = i4;
            this.mGapLength = cArrNewUnpaddedCharArray.length - i4;
            TextUtils.getChars(charSequence, i2, i3, cArrNewUnpaddedCharArray, 0);
            this.mSpanCount = 0;
            this.mSpanInsertCount = 0;
            this.mSpans = EmptyArray.OBJECT;
            this.mSpanStarts = EmptyArray.INT;
            this.mSpanEnds = EmptyArray.INT;
            this.mSpanFlags = EmptyArray.INT;
            this.mSpanMax = EmptyArray.INT;
            this.mSpanOrder = EmptyArray.INT;
            if (charSequence instanceof Spanned) {
                Spanned spanned = (Spanned) charSequence;
                Object[] spans = spanned.getSpans(i2, i3, Object.class);
                for (int i5 = 0; i5 < spans.length; i5++) {
                    Object obj = spans[i5];
                    if (!(obj instanceof NoCopySpan)) {
                        int spanStart = spanned.getSpanStart(obj) - i2;
                        int spanEnd = spanned.getSpanEnd(spans[i5]) - i2;
                        int spanFlags = spanned.getSpanFlags(spans[i5]);
                        spanStart = spanStart < 0 ? 0 : spanStart;
                        int i6 = spanStart > i4 ? i4 : spanStart;
                        spanEnd = spanEnd < 0 ? 0 : spanEnd;
                        setSpan(false, spans[i5], i6, spanEnd > i4 ? i4 : spanEnd, spanFlags, false);
                    }
                }
                restoreInvariants();
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
        int selectionStart;
        checkRange("replace", i2, i3);
        int length = this.mFilters.length;
        boolean z2 = false;
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
        boolean z3 = true;
        boolean z4 = (i8 == 0 || i9 == 0) ? false : true;
        if (z4) {
            selectionStart = Selection.getSelectionStart(this);
            selectionEnd = Selection.getSelectionEnd(this);
        } else {
            selectionEnd = 0;
            selectionStart = 0;
        }
        CharSequence charSequence3 = charSequence2;
        int i10 = selectionEnd;
        int i11 = i6;
        int i12 = selectionStart;
        change(i2, i3, charSequence3, i11, length2);
        if (z4) {
            if (i12 > i2 && i12 < i3) {
                long j2 = (((long) (i12 - i2)) * ((long) i9)) / ((long) i8);
                int i13 = (int) j2;
                if (j2 == i13) {
                    int i14 = i2 + i13;
                    setSpan(false, Selection.SELECTION_START, i14, i14, 34, true);
                    z2 = true;
                } else {
                    throw new ArithmeticException();
                }
            }
            if (i10 <= i2 || i10 >= i3) {
                z3 = z2;
            } else {
                long j3 = (((long) (i10 - i2)) * ((long) i9)) / ((long) i8);
                int i15 = (int) j3;
                if (j3 == i15) {
                    int i16 = i2 + i15;
                    setSpan(false, Selection.SELECTION_END, i16, i16, 34, true);
                } else {
                    throw new ArithmeticException();
                }
            }
            if (z3) {
                restoreInvariants();
            }
        } else {
            textWatcherArr = textWatcherArr;
        }
        sendTextChanged(textWatcherArr, i2, i8, i9);
        sendAfterTextChanged(textWatcherArr);
        sendToSpanWatchers(i2, i3, i9 - i8);
        return this;
    }

    @Override // android.text.Editable, java.lang.Appendable
    public SpannableStringBuilder append(CharSequence charSequence) {
        int length = length();
        return replace(length, length, charSequence, 0, charSequence.length());
    }

    public SpannableStringBuilder append(CharSequence charSequence, Object obj, int i2) {
        int length = length();
        append(charSequence);
        setSpan(obj, length, length(), i2);
        return this;
    }

    @Override // android.text.Editable, java.lang.Appendable
    public SpannableStringBuilder append(CharSequence charSequence, int i2, int i3) {
        int length = length();
        return replace(length, length, charSequence, i2, i3);
    }

    @Override // android.text.Editable, java.lang.Appendable
    public SpannableStringBuilder append(char c) {
        return append((CharSequence) String.valueOf(c));
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        Integer numRemove;
        IdentityHashMap<Object, Integer> identityHashMap = this.mIndexOfSpan;
        if (identityHashMap == null || (numRemove = identityHashMap.remove(obj)) == null) {
            return;
        }
        removeSpan(numRemove.intValue());
    }
}
