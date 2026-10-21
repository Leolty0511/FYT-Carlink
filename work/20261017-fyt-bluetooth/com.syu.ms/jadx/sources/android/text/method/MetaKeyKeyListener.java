package android.text.method;

import android.text.Editable;
import android.text.NoCopySpan;
import android.text.Spannable;
import android.text.Spanned;
import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class MetaKeyKeyListener {
    private static final int LOCKED = 67108881;
    private static final int LOCKED_RETURN_VALUE = 2;
    public static final int META_ALT_LOCKED = 512;
    private static final long META_ALT_MASK = 565157566611970L;
    public static final int META_ALT_ON = 2;
    private static final long META_ALT_PRESSED = 2199023255552L;
    private static final long META_ALT_RELEASED = 562949953421312L;
    private static final long META_ALT_USED = 8589934592L;
    public static final int META_CAP_LOCKED = 256;
    private static final long META_CAP_PRESSED = 1099511627776L;
    private static final long META_CAP_RELEASED = 281474976710656L;
    private static final long META_CAP_USED = 4294967296L;
    public static final int META_SELECTING = 2048;
    private static final long META_SHIFT_MASK = 282578783305985L;
    public static final int META_SHIFT_ON = 1;
    public static final int META_SYM_LOCKED = 1024;
    private static final long META_SYM_MASK = 1130315133223940L;
    public static final int META_SYM_ON = 4;
    private static final long META_SYM_PRESSED = 4398046511104L;
    private static final long META_SYM_RELEASED = 1125899906842624L;
    private static final long META_SYM_USED = 17179869184L;
    private static final int PRESSED = 16777233;
    private static final int PRESSED_RETURN_VALUE = 1;
    private static final int RELEASED = 33554449;
    private static final int USED = 50331665;
    private static final Object CAP = new NoCopySpan.Concrete();
    private static final Object ALT = new NoCopySpan.Concrete();
    private static final Object SYM = new NoCopySpan.Concrete();
    private static final Object SELECTING = new NoCopySpan.Concrete();

    private static void adjust(Spannable spannable, Object obj) {
        int spanFlags = spannable.getSpanFlags(obj);
        if (spanFlags == PRESSED) {
            spannable.setSpan(obj, 0, 0, USED);
        } else if (spanFlags == RELEASED) {
            spannable.removeSpan(obj);
        }
    }

    public static long adjustMetaAfterKeypress(long j2) {
        if ((META_CAP_PRESSED & j2) != 0) {
            j2 = (j2 & (-282578783305986L)) | 1 | META_CAP_USED;
        } else if ((META_CAP_RELEASED & j2) != 0) {
            j2 &= -282578783305986L;
        }
        if ((META_ALT_PRESSED & j2) != 0) {
            j2 = (j2 & (-565157566611971L)) | 2 | META_ALT_USED;
        } else if ((META_ALT_RELEASED & j2) != 0) {
            j2 &= -565157566611971L;
        }
        if ((META_SYM_PRESSED & j2) != 0) {
            return (j2 & (-1130315133223941L)) | 4 | META_SYM_USED;
        }
        return (META_SYM_RELEASED & j2) != 0 ? j2 & (-1130315133223941L) : j2;
    }

    public static void adjustMetaAfterKeypress(Spannable spannable) {
        adjust(spannable, CAP);
        adjust(spannable, ALT);
        adjust(spannable, SYM);
    }

    private static int getActive(CharSequence charSequence, Object obj, int i2, int i3) {
        if (!(charSequence instanceof Spanned)) {
            return 0;
        }
        int spanFlags = ((Spanned) charSequence).getSpanFlags(obj);
        if (spanFlags == LOCKED) {
            return i3;
        }
        if (spanFlags != 0) {
            return i2;
        }
        return 0;
    }

    public static final int getMetaState(long j2) {
        int i2;
        if ((256 & j2) != 0) {
            i2 = 256;
        } else {
            i2 = (1 & j2) != 0 ? 1 : 0;
        }
        if ((512 & j2) != 0) {
            i2 |= 512;
        } else if ((2 & j2) != 0) {
            i2 |= 2;
        }
        if ((1024 & j2) != 0) {
            return i2 | 1024;
        }
        return (j2 & 4) != 0 ? i2 | 4 : i2;
    }

    public static final int getMetaState(long j2, int i2) {
        if (i2 == 1) {
            if ((256 & j2) != 0) {
                return 2;
            }
            return (j2 & 1) != 0 ? 1 : 0;
        }
        if (i2 == 2) {
            if ((512 & j2) != 0) {
                return 2;
            }
            return (j2 & 2) != 0 ? 1 : 0;
        }
        if (i2 != 4) {
            return 0;
        }
        if ((1024 & j2) != 0) {
            return 2;
        }
        return (j2 & 4) != 0 ? 1 : 0;
    }

    public static final int getMetaState(CharSequence charSequence) {
        return getActive(charSequence, SELECTING, 2048, 2048) | getActive(charSequence, CAP, 1, 256) | getActive(charSequence, ALT, 2, 512) | getActive(charSequence, SYM, 4, 1024);
    }

    public static long handleKeyDown(long j2, int i2, KeyEvent keyEvent) {
        if (i2 == 59 || i2 == 60) {
            return press(j2, 1, META_SHIFT_MASK, 256L, META_CAP_PRESSED, META_CAP_RELEASED, META_CAP_USED);
        }
        if (i2 == 57 || i2 == 58 || i2 == 78) {
            return press(j2, 2, META_ALT_MASK, 512L, META_ALT_PRESSED, META_ALT_RELEASED, META_ALT_USED);
        }
        return i2 == 63 ? press(j2, 4, META_SYM_MASK, 1024L, META_SYM_PRESSED, META_SYM_RELEASED, META_SYM_USED) : j2;
    }

    public static long handleKeyUp(long j2, int i2, KeyEvent keyEvent) {
        if (i2 == 59 || i2 == 60) {
            return release(j2, 1, META_SHIFT_MASK, META_CAP_PRESSED, META_CAP_RELEASED, META_CAP_USED, keyEvent);
        }
        if (i2 == 57 || i2 == 58 || i2 == 78) {
            return release(j2, 2, META_ALT_MASK, META_ALT_PRESSED, META_ALT_RELEASED, META_ALT_USED, keyEvent);
        }
        return i2 == 63 ? release(j2, 4, META_SYM_MASK, META_SYM_PRESSED, META_SYM_RELEASED, META_SYM_USED, keyEvent) : j2;
    }

    public static boolean isMetaTracker(CharSequence charSequence, Object obj) {
        return obj == CAP || obj == ALT || obj == SYM || obj == SELECTING;
    }

    public static boolean isSelectingMetaTracker(CharSequence charSequence, Object obj) {
        return obj == SELECTING;
    }

    private static long press(long j2, int i2, long j3, long j4, long j5, long j6, long j7) {
        if ((j2 & j5) == 0) {
            if ((j2 & j6) != 0) {
                return ((~j3) & j2) | ((long) i2) | j4;
            }
            if ((j2 & j7) == 0) {
                return (j2 & j4) != 0 ? (~j3) & j2 : ((long) i2) | j5 | j2;
            }
        }
        return j2;
    }

    private void press(Editable editable, Object obj) {
        int spanFlags = editable.getSpanFlags(obj);
        if (spanFlags == PRESSED) {
            return;
        }
        if (spanFlags == RELEASED) {
            editable.setSpan(obj, 0, 0, LOCKED);
        } else {
            if (spanFlags == USED) {
                return;
            }
            if (spanFlags == LOCKED) {
                editable.removeSpan(obj);
            } else {
                editable.setSpan(obj, 0, 0, PRESSED);
            }
        }
    }

    private void release(Editable editable, Object obj, KeyEvent keyEvent) {
        int spanFlags = editable.getSpanFlags(obj);
        if (keyEvent.getKeyCharacterMap().getModifierBehavior() != 1) {
            editable.removeSpan(obj);
        } else if (spanFlags == USED) {
            editable.removeSpan(obj);
        } else if (spanFlags == PRESSED) {
            editable.setSpan(obj, 0, 0, RELEASED);
        }
    }

    private static void resetLock(Spannable spannable, Object obj) {
        if (spannable.getSpanFlags(obj) == LOCKED) {
            spannable.removeSpan(obj);
        }
    }

    public static long resetLockedMeta(long j2) {
        if ((256 & j2) != 0) {
            j2 &= -282578783305986L;
        }
        if ((512 & j2) != 0) {
            j2 &= -565157566611971L;
        }
        return (1024 & j2) != 0 ? j2 & (-1130315133223941L) : j2;
    }

    public static void resetLockedMeta(Spannable spannable) {
        resetLock(spannable, CAP);
        resetLock(spannable, ALT);
        resetLock(spannable, SYM);
        resetLock(spannable, SELECTING);
    }

    public static void resetMetaState(Spannable spannable) {
        spannable.removeSpan(CAP);
        spannable.removeSpan(ALT);
        spannable.removeSpan(SYM);
        spannable.removeSpan(SELECTING);
    }

    public static void startSelecting(View view, Spannable spannable) {
        spannable.setSpan(SELECTING, 0, 0, PRESSED);
    }

    public static void stopSelecting(View view, Spannable spannable) {
        spannable.removeSpan(SELECTING);
    }

    public long clearMetaKeyState(long j2, int i2) {
        if ((i2 & 1) != 0 && (256 & j2) != 0) {
            j2 &= -282578783305986L;
        }
        if ((i2 & 2) != 0 && (512 & j2) != 0) {
            j2 &= -565157566611971L;
        }
        return ((i2 & 4) == 0 || (1024 & j2) == 0) ? j2 : j2 & (-1130315133223941L);
    }

    public void clearMetaKeyState(View view, Editable editable, int i2) {
        clearMetaKeyState(editable, i2);
    }

    public boolean onKeyDown(View view, Editable editable, int i2, KeyEvent keyEvent) {
        if (i2 == 59 || i2 == 60) {
            press(editable, CAP);
            return true;
        }
        if (i2 == 57 || i2 == 58 || i2 == 78) {
            press(editable, ALT);
            return true;
        }
        if (i2 != 63) {
            return false;
        }
        press(editable, SYM);
        return true;
    }

    public boolean onKeyUp(View view, Editable editable, int i2, KeyEvent keyEvent) {
        if (i2 == 59 || i2 == 60) {
            release(editable, CAP, keyEvent);
            return true;
        }
        if (i2 == 57 || i2 == 58 || i2 == 78) {
            release(editable, ALT, keyEvent);
            return true;
        }
        if (i2 != 63) {
            return false;
        }
        release(editable, SYM, keyEvent);
        return true;
    }

    public static void clearMetaKeyState(Editable editable, int i2) {
        if ((i2 & 1) != 0) {
            editable.removeSpan(CAP);
        }
        if ((i2 & 2) != 0) {
            editable.removeSpan(ALT);
        }
        if ((i2 & 4) != 0) {
            editable.removeSpan(SYM);
        }
        if ((i2 & 2048) != 0) {
            editable.removeSpan(SELECTING);
        }
    }

    public static final int getMetaState(CharSequence charSequence, KeyEvent keyEvent) {
        int metaState = keyEvent.getMetaState();
        return keyEvent.getKeyCharacterMap().getModifierBehavior() == 1 ? metaState | getMetaState(charSequence) : metaState;
    }

    public static final int getMetaState(CharSequence charSequence, int i2) {
        if (i2 == 1) {
            return getActive(charSequence, CAP, 1, 2);
        }
        if (i2 == 2) {
            return getActive(charSequence, ALT, 1, 2);
        }
        if (i2 == 4) {
            return getActive(charSequence, SYM, 1, 2);
        }
        if (i2 != 2048) {
            return 0;
        }
        return getActive(charSequence, SELECTING, 1, 2);
    }

    private static long release(long j2, int i2, long j3, long j4, long j5, long j6, KeyEvent keyEvent) {
        if (keyEvent.getKeyCharacterMap().getModifierBehavior() == 1 && (j6 & j2) == 0) {
            return (j2 & j4) != 0 ? j2 | ((long) i2) | j5 : j2;
        }
        return j2 & (~j3);
    }

    public static final int getMetaState(CharSequence charSequence, int i2, KeyEvent keyEvent) {
        int metaState = keyEvent.getMetaState();
        if (keyEvent.getKeyCharacterMap().getModifierBehavior() == 1) {
            metaState |= getMetaState(charSequence);
        }
        if (2048 == i2) {
            return (2048 & metaState) != 0 ? 1 : 0;
        }
        return getMetaState(metaState, i2);
    }
}
