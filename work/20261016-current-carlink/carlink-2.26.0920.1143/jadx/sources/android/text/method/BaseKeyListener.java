package android.text.method;

import android.accessibilityservice.c;
import android.graphics.Paint;
import android.icu.lang.UCharacter;
import android.mtp.MtpConstants;
import android.text.Editable;
import android.text.Emoji;
import android.text.Layout;
import android.text.NoCopySpan;
import android.text.Selection;
import android.text.Spanned;
import android.text.style.ReplacementSpan;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import com.android.internal.annotations.GuardedBy;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseKeyListener extends MetaKeyKeyListener implements KeyListener {
    private static final int CARRIAGE_RETURN = 13;
    private static final int LINE_FEED = 10;
    static final Object OLD_SEL_START = new NoCopySpan.Concrete();

    @GuardedBy("mLock")
    static Paint sCachedPaint = null;
    private final Object mLock = new Object();

    /* JADX INFO: renamed from: android.text.method.BaseKeyListener$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$text$method$TextKeyListener$Capitalize;

        static {
            int[] iArr = new int[TextKeyListener.Capitalize.values().length];
            $SwitchMap$android$text$method$TextKeyListener$Capitalize = iArr;
            try {
                iArr[TextKeyListener.Capitalize.CHARACTERS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$text$method$TextKeyListener$Capitalize[TextKeyListener.Capitalize.WORDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$text$method$TextKeyListener$Capitalize[TextKeyListener.Capitalize.SENTENCES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static int adjustReplacementSpan(CharSequence charSequence, int i2, boolean z2) {
        if (!(charSequence instanceof Spanned)) {
            return i2;
        }
        Spanned spanned = (Spanned) charSequence;
        ReplacementSpan[] replacementSpanArr = (ReplacementSpan[]) spanned.getSpans(i2, i2, ReplacementSpan.class);
        for (int i3 = 0; i3 < replacementSpanArr.length; i3++) {
            int spanStart = spanned.getSpanStart(replacementSpanArr[i3]);
            int spanEnd = spanned.getSpanEnd(replacementSpanArr[i3]);
            if (spanStart < i2 && spanEnd > i2) {
                if (!z2) {
                    spanStart = spanEnd;
                }
                i2 = spanStart;
            }
        }
        return i2;
    }

    private boolean backspaceOrForwardDelete(View view, Editable editable, int i2, KeyEvent keyEvent, boolean z2) {
        int offsetForBackspaceKey;
        Paint paint;
        Paint paint2;
        if (!KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState() & (-28916))) {
            return false;
        }
        if (deleteSelection(view, editable)) {
            return true;
        }
        boolean z3 = (keyEvent.getMetaState() & 4096) != 0;
        boolean z4 = MetaKeyKeyListener.getMetaState(editable, 1, keyEvent) == 1;
        boolean z5 = MetaKeyKeyListener.getMetaState(editable, 2, keyEvent) == 1;
        if (z3) {
            if (z5 || z4) {
                return false;
            }
            return deleteUntilWordBoundary(view, editable, z2);
        }
        if (z5 && deleteLine(view, editable)) {
            return true;
        }
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (z2) {
            if (view instanceof TextView) {
                paint2 = ((TextView) view).getPaint();
            } else {
                synchronized (this.mLock) {
                    if (sCachedPaint == null) {
                        sCachedPaint = new Paint();
                    }
                    paint = sCachedPaint;
                }
                paint2 = paint;
            }
            offsetForBackspaceKey = getOffsetForForwardDeleteKey(editable, selectionEnd, paint2);
        } else {
            offsetForBackspaceKey = getOffsetForBackspaceKey(editable, selectionEnd);
        }
        if (selectionEnd == offsetForBackspaceKey) {
            return false;
        }
        editable.delete(Math.min(selectionEnd, offsetForBackspaceKey), Math.max(selectionEnd, offsetForBackspaceKey));
        return true;
    }

    private boolean deleteLine(View view, Editable editable) {
        Layout layout;
        int lineForOffset;
        int lineStart;
        int lineEnd;
        if (!(view instanceof TextView) || (layout = ((TextView) view).getLayout()) == null || (lineEnd = layout.getLineEnd(lineForOffset)) == (lineStart = layout.getLineStart((lineForOffset = layout.getLineForOffset(Selection.getSelectionStart(editable)))))) {
            return false;
        }
        editable.delete(lineStart, lineEnd);
        return true;
    }

    private boolean deleteSelection(View view, Editable editable) {
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionEnd < selectionStart) {
            selectionEnd = selectionStart;
            selectionStart = selectionEnd;
        }
        if (selectionStart == selectionEnd) {
            return false;
        }
        editable.delete(selectionStart, selectionEnd);
        return true;
    }

    private boolean deleteUntilWordBoundary(View view, Editable editable, boolean z2) {
        int iFollowing;
        int selectionStart = Selection.getSelectionStart(editable);
        if (selectionStart != Selection.getSelectionEnd(editable)) {
            return false;
        }
        if ((!z2 && selectionStart == 0) || (z2 && selectionStart == editable.length())) {
            return false;
        }
        WordIterator wordIterator = view instanceof TextView ? ((TextView) view).getWordIterator() : null;
        if (wordIterator == null) {
            wordIterator = new WordIterator();
        }
        if (z2) {
            wordIterator.setCharSequence(editable, selectionStart, editable.length());
            iFollowing = wordIterator.following(selectionStart);
            if (iFollowing == -1) {
                iFollowing = editable.length();
            }
        } else {
            wordIterator.setCharSequence(editable, 0, selectionStart);
            int iPreceding = wordIterator.preceding(selectionStart);
            if (iPreceding == -1) {
                iFollowing = selectionStart;
                selectionStart = 0;
            } else {
                selectionStart = iPreceding;
                iFollowing = selectionStart;
            }
        }
        editable.delete(selectionStart, iFollowing);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:89:0x0135 A[PHI: r4
  0x0135: PHI (r4v12 int) = 
  (r4v2 int)
  (r4v1 int)
  (r4v3 int)
  (r4v1 int)
  (r4v1 int)
  (r4v1 int)
  (r4v1 int)
  (r4v1 int)
  (r4v1 int)
  (r4v1 int)
  (r4v1 int)
  (r4v1 int)
  (r4v1 int)
  (r4v1 int)
  (r4v13 int)
  (r4v15 int)
 binds: [B:87:0x0130, B:66:0x00fb, B:67:0x00fd, B:63:0x00f3, B:56:0x00db, B:53:0x00d0, B:47:0x00b8, B:42:0x00a7, B:44:0x00ad, B:35:0x008f, B:32:0x0083, B:24:0x005e, B:21:0x0052, B:18:0x0048, B:65:0x00f9, B:16:0x0041] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:91:0x0138 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:95:0x013a A[SYNTHETIC] */
    private static int getOffsetForBackspaceKey(CharSequence charSequence, int i2) {
        int iCharCount;
        int iCharCount2;
        int iCharCount3;
        if (i2 <= 1) {
            return 0;
        }
        int iCharCount4 = i2;
        int i3 = 0;
        int iCharCount5 = 0;
        int iCharCount6 = 0;
        do {
            int iCodePointBefore = Character.codePointBefore(charSequence, iCharCount4);
            iCharCount4 -= Character.charCount(iCodePointBefore);
            switch (i3) {
                case 0:
                    iCharCount5 = Character.charCount(iCodePointBefore);
                    if (iCodePointBefore == 10) {
                        i3 = 1;
                    } else if (isVariationSelector(iCodePointBefore)) {
                        i3 = 6;
                    } else if (Emoji.isRegionalIndicatorSymbol(iCodePointBefore)) {
                        i3 = 10;
                    } else if (Emoji.isEmojiModifier(iCodePointBefore)) {
                        i3 = 4;
                    } else if (iCodePointBefore == Emoji.COMBINING_ENCLOSING_KEYCAP) {
                        i3 = 2;
                    } else if (Emoji.isEmoji(iCodePointBefore)) {
                        i3 = 7;
                    } else if (iCodePointBefore == Emoji.CANCEL_TAG) {
                        i3 = 12;
                    } else {
                        i3 = 13;
                    }
                    if (iCharCount4 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i2 - iCharCount5, true);
                case 1:
                    if (iCodePointBefore == 13) {
                        iCharCount5++;
                    }
                    i3 = 13;
                    if (iCharCount4 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i2 - iCharCount5, true);
                case 2:
                    if (isVariationSelector(iCodePointBefore)) {
                        iCharCount6 = Character.charCount(iCodePointBefore);
                        i3 = 3;
                    } else {
                        if (Emoji.isKeycapBase(iCodePointBefore)) {
                            iCharCount = Character.charCount(iCodePointBefore);
                            iCharCount5 += iCharCount;
                        }
                        i3 = 13;
                    }
                    if (iCharCount4 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i2 - iCharCount5, true);
                case 3:
                    if (Emoji.isKeycapBase(iCodePointBefore)) {
                        iCharCount2 = Character.charCount(iCodePointBefore);
                        iCharCount = iCharCount2 + iCharCount6;
                        iCharCount5 += iCharCount;
                    }
                    i3 = 13;
                    if (iCharCount4 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i2 - iCharCount5, true);
                case 4:
                    if (isVariationSelector(iCodePointBefore)) {
                        iCharCount6 = Character.charCount(iCodePointBefore);
                        i3 = 5;
                    } else {
                        if (Emoji.isEmojiModifierBase(iCodePointBefore)) {
                            iCharCount = Character.charCount(iCodePointBefore);
                            iCharCount5 += iCharCount;
                        }
                        i3 = 13;
                    }
                    if (iCharCount4 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i2 - iCharCount5, true);
                case 5:
                    if (Emoji.isEmojiModifierBase(iCodePointBefore)) {
                        iCharCount2 = Character.charCount(iCodePointBefore);
                        iCharCount = iCharCount2 + iCharCount6;
                        iCharCount5 += iCharCount;
                    }
                    i3 = 13;
                    if (iCharCount4 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i2 - iCharCount5, true);
                case 6:
                    if (Emoji.isEmoji(iCodePointBefore)) {
                        iCharCount3 = Character.charCount(iCodePointBefore) + iCharCount5;
                        iCharCount5 = iCharCount3;
                        i3 = 7;
                        if (iCharCount4 > 0) {
                        }
                        return adjustReplacementSpan(charSequence, i2 - iCharCount5, true);
                    }
                    if (!isVariationSelector(iCodePointBefore) && UCharacter.getCombiningClass(iCodePointBefore) == 0) {
                        iCharCount = Character.charCount(iCodePointBefore);
                        iCharCount5 += iCharCount;
                    }
                    i3 = 13;
                    if (iCharCount4 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i2 - iCharCount5, true);
                case 7:
                    if (iCodePointBefore == Emoji.ZERO_WIDTH_JOINER) {
                        i3 = 8;
                    } else {
                        i3 = 13;
                    }
                    if (iCharCount4 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i2 - iCharCount5, true);
                case 8:
                    if (Emoji.isEmoji(iCodePointBefore)) {
                        iCharCount3 = Character.charCount(iCodePointBefore) + 1 + iCharCount5;
                        if (Emoji.isEmojiModifier(iCodePointBefore)) {
                            iCharCount5 = iCharCount3;
                            i3 = 4;
                        }
                        iCharCount5 = iCharCount3;
                        i3 = 7;
                    } else if (isVariationSelector(iCodePointBefore)) {
                        iCharCount6 = Character.charCount(iCodePointBefore);
                        i3 = 9;
                    } else {
                        i3 = 13;
                    }
                    if (iCharCount4 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i2 - iCharCount5, true);
                case 9:
                    if (Emoji.isEmoji(iCodePointBefore)) {
                        iCharCount3 = Character.charCount(iCodePointBefore) + iCharCount6 + 1 + iCharCount5;
                        iCharCount6 = 0;
                        iCharCount5 = iCharCount3;
                        i3 = 7;
                    } else {
                        i3 = 13;
                    }
                    if (iCharCount4 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i2 - iCharCount5, true);
                case 10:
                    if (Emoji.isRegionalIndicatorSymbol(iCodePointBefore)) {
                        iCharCount5 += 2;
                        i3 = 11;
                    } else {
                        i3 = 13;
                    }
                    if (iCharCount4 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i2 - iCharCount5, true);
                case 11:
                    if (Emoji.isRegionalIndicatorSymbol(iCodePointBefore)) {
                        iCharCount5 -= 2;
                        i3 = 10;
                    } else {
                        i3 = 13;
                    }
                    if (iCharCount4 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i2 - iCharCount5, true);
                case 12:
                    if (Emoji.isTagSpecChar(iCodePointBefore)) {
                        iCharCount5 += 2;
                    } else {
                        if (Emoji.isEmoji(iCodePointBefore)) {
                            iCharCount = Character.charCount(iCodePointBefore);
                            iCharCount5 += iCharCount;
                        } else {
                            iCharCount5 = 2;
                        }
                        i3 = 13;
                    }
                    if (iCharCount4 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i2 - iCharCount5, true);
                default:
                    throw new IllegalArgumentException(c.e("state ", i3, " is unknown"));
            }
        } while (i3 != 13);
        return adjustReplacementSpan(charSequence, i2 - iCharCount5, true);
    }

    private static int getOffsetForForwardDeleteKey(CharSequence charSequence, int i2, Paint paint) {
        int length = charSequence.length();
        return i2 >= length + (-1) ? length : adjustReplacementSpan(charSequence, paint.getTextRunCursor(charSequence, i2, length, 0, i2, 0), false);
    }

    private static boolean isVariationSelector(int i2) {
        return UCharacter.hasBinaryProperty(i2, 36);
    }

    public static int makeTextContentType(TextKeyListener.Capitalize capitalize, boolean z2) {
        int i2 = AnonymousClass1.$SwitchMap$android$text$method$TextKeyListener$Capitalize[capitalize.ordinal()];
        int i3 = 1;
        if (i2 == 1) {
            i3 = 4097;
        } else if (i2 == 2) {
            i3 = MtpConstants.RESPONSE_OK;
        } else if (i2 == 3) {
            i3 = 16385;
        }
        return z2 ? i3 | 32768 : i3;
    }

    public boolean backspace(View view, Editable editable, int i2, KeyEvent keyEvent) {
        return backspaceOrForwardDelete(view, editable, i2, keyEvent, false);
    }

    public boolean forwardDelete(View view, Editable editable, int i2, KeyEvent keyEvent) {
        return backspaceOrForwardDelete(view, editable, i2, keyEvent, true);
    }

    @Override // android.text.method.MetaKeyKeyListener, android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable editable, int i2, KeyEvent keyEvent) {
        boolean zBackspace;
        if (i2 != 67) {
            zBackspace = i2 != 112 ? false : forwardDelete(view, editable, i2, keyEvent);
        } else {
            zBackspace = backspace(view, editable, i2, keyEvent);
        }
        if (!zBackspace) {
            return super.onKeyDown(view, editable, i2, keyEvent);
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return true;
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 2 || keyEvent.getKeyCode() != 0) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionEnd < selectionStart) {
            selectionEnd = selectionStart;
            selectionStart = selectionEnd;
        }
        String characters = keyEvent.getCharacters();
        if (characters == null) {
            return false;
        }
        editable.replace(selectionStart, selectionEnd, characters);
        return true;
    }
}
