package android.text;

import android.accessibilityservice.c;
import android.app.m;
import android.net.wifi.WifiEnterpriseConfig;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;
import java.lang.reflect.Array;
import libcore.util.EmptyArray;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class SpannableStringInternal {
    private static final int COLUMNS = 3;
    static final Object[] EMPTY = new Object[0];
    private static final int END = 1;
    private static final int FLAGS = 2;
    private static final int START = 0;
    private int mSpanCount;
    private int[] mSpanData;
    private Object[] mSpans;
    private String mText;

    /* JADX WARN: Multi-variable type inference failed */
    public SpannableStringInternal(CharSequence charSequence, int i2, int i3) {
        if (i2 == 0 && i3 == charSequence.length()) {
            this.mText = charSequence.toString();
        } else {
            this.mText = charSequence.toString().substring(i2, i3);
        }
        this.mSpans = EmptyArray.OBJECT;
        this.mSpanData = EmptyArray.INT;
        if (charSequence instanceof Spanned) {
            if (charSequence instanceof SpannableStringInternal) {
                copySpans((SpannableStringInternal) charSequence, i2, i3);
            } else {
                copySpans((Spanned) charSequence, i2, i3);
            }
        }
    }

    private void checkRange(String str, int i2, int i3) {
        if (i3 < i2) {
            throw new IndexOutOfBoundsException(c.n(c.u(str, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER), region(i2, i3), " has end before start"));
        }
        int length = length();
        if (i2 <= length && i3 <= length) {
            if (i2 < 0 || i3 < 0) {
                throw new IndexOutOfBoundsException(c.n(c.u(str, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER), region(i2, i3), " starts before 0"));
            }
        } else {
            StringBuilder sbU = c.u(str, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sbU.append(region(i2, i3));
            sbU.append(" ends beyond length ");
            sbU.append(length);
            throw new IndexOutOfBoundsException(sbU.toString());
        }
    }

    private final void copySpans(Spanned spanned, int i2, int i3) {
        Object[] spans = spanned.getSpans(i2, i3, Object.class);
        for (int i4 = 0; i4 < spans.length; i4++) {
            int spanStart = spanned.getSpanStart(spans[i4]);
            int spanEnd = spanned.getSpanEnd(spans[i4]);
            int spanFlags = spanned.getSpanFlags(spans[i4]);
            if (spanStart < i2) {
                spanStart = i2;
            }
            if (spanEnd > i3) {
                spanEnd = i3;
            }
            setSpan(spans[i4], spanStart - i2, spanEnd - i2, spanFlags, false);
        }
    }

    private boolean isIndexFollowsNextLine(int i2) {
        return (i2 == 0 || i2 == length() || charAt(i2 - 1) == '\n') ? false : true;
    }

    private final boolean isOutOfCopyRange(int i2, int i3, int i4, int i5) {
        if (i4 > i3 || i5 < i2) {
            return true;
        }
        if (i4 == i5 || i2 == i3) {
            return false;
        }
        return i4 == i3 || i5 == i2;
    }

    private static String region(int i2, int i3) {
        return m.f("(", i2, " ... ", i3, ")");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void sendSpanAdded(Object obj, int i2, int i3) {
        for (SpanWatcher spanWatcher : (SpanWatcher[]) getSpans(i2, i3, SpanWatcher.class)) {
            spanWatcher.onSpanAdded((Spannable) this, obj, i2, i3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void sendSpanChanged(Object obj, int i2, int i3, int i4, int i5) {
        for (SpanWatcher spanWatcher : (SpanWatcher[]) getSpans(Math.min(i2, i4), Math.max(i3, i5), SpanWatcher.class)) {
            spanWatcher.onSpanChanged((Spannable) this, obj, i2, i3, i4, i5);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void sendSpanRemoved(Object obj, int i2, int i3) {
        for (SpanWatcher spanWatcher : (SpanWatcher[]) getSpans(i2, i3, SpanWatcher.class)) {
            spanWatcher.onSpanRemoved((Spannable) this, obj, i2, i3);
        }
    }

    public final char charAt(int i2) {
        return this.mText.charAt(i2);
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

    public final void getChars(int i2, int i3, char[] cArr, int i4) {
        this.mText.getChars(i2, i3, cArr, i4);
    }

    public int getSpanEnd(Object obj) {
        int i2 = this.mSpanCount;
        Object[] objArr = this.mSpans;
        int[] iArr = this.mSpanData;
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            if (objArr[i3] == obj) {
                return iArr[(i3 * 3) + 1];
            }
        }
        return -1;
    }

    public int getSpanFlags(Object obj) {
        int i2 = this.mSpanCount;
        Object[] objArr = this.mSpans;
        int[] iArr = this.mSpanData;
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            if (objArr[i3] == obj) {
                return iArr[(i3 * 3) + 2];
            }
        }
        return 0;
    }

    public int getSpanStart(Object obj) {
        int i2 = this.mSpanCount;
        Object[] objArr = this.mSpans;
        int[] iArr = this.mSpanData;
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            if (objArr[i3] == obj) {
                return iArr[(i3 * 3) + 0];
            }
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T[] getSpans(int i2, int i3, Class<T> cls) {
        int i4 = this.mSpanCount;
        Object[] objArr = this.mSpans;
        int[] iArr = this.mSpanData;
        Object[] objArr2 = (T[]) null;
        int i5 = 0;
        Object obj = null;
        for (int i6 = 0; i6 < i4; i6++) {
            int i7 = i6 * 3;
            int i8 = iArr[i7 + 0];
            int i9 = iArr[i7 + 1];
            if (i8 <= i3 && i9 >= i2 && ((i8 == i9 || i2 == i3 || (i8 != i3 && i9 != i2)) && (cls == null || cls == Object.class || cls.isInstance(objArr[i6])))) {
                if (i5 == 0) {
                    obj = objArr[i6];
                } else {
                    if (i5 == 1) {
                        objArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, (i4 - i6) + 1));
                        objArr2[0] = obj;
                    }
                    int i10 = iArr[i7 + 2] & 16711680;
                    if (i10 != 0) {
                        int i11 = 0;
                        while (i11 < i5 && i10 <= (getSpanFlags(objArr2[i11]) & 16711680)) {
                            i11++;
                        }
                        System.arraycopy(objArr2, i11, objArr2, i11 + 1, i5 - i11);
                        objArr2[i11] = objArr[i6];
                    } else {
                        objArr2[i5] = objArr[i6];
                        i5++;
                    }
                }
                i5++;
            }
        }
        if (i5 == 0) {
            return (T[]) ArrayUtils.emptyArray(cls);
        }
        if (i5 == 1) {
            T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, 1));
            tArr[0] = obj;
            return tArr;
        }
        if (i5 == objArr2.length) {
            return (T[]) objArr2;
        }
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i5));
        System.arraycopy(objArr2, 0, tArr2, 0, i5);
        return tArr2;
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

    public int length() {
        return this.mText.length();
    }

    public int nextSpanTransition(int i2, int i3, Class cls) {
        int i4 = this.mSpanCount;
        Object[] objArr = this.mSpans;
        int[] iArr = this.mSpanData;
        if (cls == null) {
            cls = Object.class;
        }
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i5 * 3;
            int i7 = iArr[i6 + 0];
            int i8 = iArr[i6 + 1];
            if (i7 > i2 && i7 < i3 && cls.isInstance(objArr[i5])) {
                i3 = i7;
            }
            if (i8 > i2 && i8 < i3 && cls.isInstance(objArr[i5])) {
                i3 = i8;
            }
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeSpan(Object obj) {
        int i2 = this.mSpanCount;
        Object[] objArr = this.mSpans;
        int[] iArr = this.mSpanData;
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            if (objArr[i3] == obj) {
                int i4 = i3 * 3;
                int i5 = iArr[i4 + 0];
                int i6 = iArr[i4 + 1];
                int i7 = i3 + 1;
                int i8 = i2 - i7;
                System.arraycopy(objArr, i7, objArr, i3, i8);
                System.arraycopy(iArr, i7 * 3, iArr, i4, i8 * 3);
                this.mSpanCount--;
                sendSpanRemoved(obj, i5, i6);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSpan(Object obj, int i2, int i3, int i4) {
        setSpan(obj, i2, i3, i4, true);
    }

    public final String toString() {
        return this.mText;
    }

    private void setSpan(Object obj, int i2, int i3, int i4, boolean z2) {
        checkRange("setSpan", i2, i3);
        if ((i4 & 51) == 51) {
            if (isIndexFollowsNextLine(i2)) {
                if (z2) {
                    StringBuilder sbS = c.s("PARAGRAPH span must start at paragraph boundary (", i2, " follows ");
                    sbS.append(charAt(i2 - 1));
                    sbS.append(")");
                    throw new RuntimeException(sbS.toString());
                }
                return;
            }
            if (isIndexFollowsNextLine(i3)) {
                if (z2) {
                    StringBuilder sbS2 = c.s("PARAGRAPH span must end at paragraph boundary (", i3, " follows ");
                    sbS2.append(charAt(i3 - 1));
                    sbS2.append(")");
                    throw new RuntimeException(sbS2.toString());
                }
                return;
            }
        }
        int i5 = this.mSpanCount;
        Object[] objArr = this.mSpans;
        int[] iArr = this.mSpanData;
        for (int i6 = 0; i6 < i5; i6++) {
            if (objArr[i6] == obj) {
                int i7 = i6 * 3;
                int i8 = i7 + 0;
                int i9 = iArr[i8];
                int i10 = i7 + 1;
                int i11 = iArr[i10];
                iArr[i8] = i2;
                iArr[i10] = i3;
                iArr[i7 + 2] = i4;
                sendSpanChanged(obj, i9, i11, i2, i3);
                return;
            }
        }
        int i12 = this.mSpanCount;
        if (i12 + 1 >= this.mSpans.length) {
            Object[] objArrNewUnpaddedObjectArray = ArrayUtils.newUnpaddedObjectArray(GrowingArrayUtils.growSize(i12));
            int[] iArr2 = new int[objArrNewUnpaddedObjectArray.length * 3];
            System.arraycopy(this.mSpans, 0, objArrNewUnpaddedObjectArray, 0, this.mSpanCount);
            System.arraycopy(this.mSpanData, 0, iArr2, 0, this.mSpanCount * 3);
            this.mSpans = objArrNewUnpaddedObjectArray;
            this.mSpanData = iArr2;
        }
        Object[] objArr2 = this.mSpans;
        int i13 = this.mSpanCount;
        objArr2[i13] = obj;
        int[] iArr3 = this.mSpanData;
        iArr3[(i13 * 3) + 0] = i2;
        iArr3[(i13 * 3) + 1] = i3;
        iArr3[(i13 * 3) + 2] = i4;
        this.mSpanCount = i13 + 1;
        if (this instanceof Spannable) {
            sendSpanAdded(obj, i2, i3);
        }
    }

    private final void copySpans(SpannableStringInternal spannableStringInternal, int i2, int i3) {
        if (i2 == 0 && i3 == spannableStringInternal.length()) {
            Object[] objArrNewUnpaddedObjectArray = ArrayUtils.newUnpaddedObjectArray(spannableStringInternal.mSpans.length);
            this.mSpans = objArrNewUnpaddedObjectArray;
            this.mSpanData = new int[spannableStringInternal.mSpanData.length];
            this.mSpanCount = spannableStringInternal.mSpanCount;
            Object[] objArr = spannableStringInternal.mSpans;
            System.arraycopy(objArr, 0, objArrNewUnpaddedObjectArray, 0, objArr.length);
            int[] iArr = spannableStringInternal.mSpanData;
            int[] iArr2 = this.mSpanData;
            System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
            return;
        }
        int[] iArr3 = spannableStringInternal.mSpanData;
        int i4 = spannableStringInternal.mSpanCount;
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6++) {
            int i7 = i6 * 3;
            if (!isOutOfCopyRange(i2, i3, iArr3[i7 + 0], iArr3[i7 + 1])) {
                i5++;
            }
        }
        if (i5 == 0) {
            return;
        }
        Object[] objArr2 = spannableStringInternal.mSpans;
        this.mSpanCount = i5;
        Object[] objArrNewUnpaddedObjectArray2 = ArrayUtils.newUnpaddedObjectArray(i5);
        this.mSpans = objArrNewUnpaddedObjectArray2;
        this.mSpanData = new int[objArrNewUnpaddedObjectArray2.length * 3];
        int i8 = 0;
        for (int i9 = 0; i9 < i4; i9++) {
            int i10 = i9 * 3;
            int i11 = iArr3[i10 + 0];
            int i12 = iArr3[i10 + 1];
            if (!isOutOfCopyRange(i2, i3, i11, i12)) {
                if (i11 < i2) {
                    i11 = i2;
                }
                if (i12 > i3) {
                    i12 = i3;
                }
                this.mSpans[i8] = objArr2[i9];
                int[] iArr4 = this.mSpanData;
                int i13 = i8 * 3;
                iArr4[i13 + 0] = i11 - i2;
                iArr4[i13 + 1] = i12 - i2;
                iArr4[i13 + 2] = iArr3[i10 + 2];
                i8++;
            }
        }
    }
}
