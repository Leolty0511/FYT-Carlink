package android.text;

import android.icu.lang.UCharacter;

/* JADX INFO: loaded from: classes2.dex */
public class Emoji {
    public static int CANCEL_TAG = 917631;
    public static int COMBINING_ENCLOSING_KEYCAP = 8419;
    public static int VARIATION_SELECTOR_16 = 65039;
    public static int ZERO_WIDTH_JOINER = 8205;

    public static boolean isEmoji(int i2) {
        return isNewEmoji(i2) || UCharacter.hasBinaryProperty(i2, 57);
    }

    public static boolean isEmojiModifier(int i2) {
        return UCharacter.hasBinaryProperty(i2, 59);
    }

    public static boolean isEmojiModifierBase(int i2) {
        if (i2 == 129309 || i2 == 129340 || i2 == 129311) {
            return true;
        }
        if (129329 <= i2 && i2 <= 129330) {
            return true;
        }
        if (129489 > i2 || i2 > 129501) {
            return UCharacter.hasBinaryProperty(i2, 60);
        }
        return true;
    }

    public static boolean isKeycapBase(int i2) {
        return (48 <= i2 && i2 <= 57) || i2 == 35 || i2 == 42;
    }

    public static boolean isNewEmoji(int i2) {
        if (i2 < 128759 || i2 > 129510) {
            return false;
        }
        return (128759 <= i2 && i2 <= 128760) || i2 == 129311 || (129320 <= i2 && i2 <= 129327) || ((129329 <= i2 && i2 <= 129330) || i2 == 129356 || ((129375 <= i2 && i2 <= 129387) || ((129426 <= i2 && i2 <= 129431) || (129488 <= i2 && i2 <= 129510))));
    }

    public static boolean isRegionalIndicatorSymbol(int i2) {
        return 127462 <= i2 && i2 <= 127487;
    }

    public static boolean isTagSpecChar(int i2) {
        return 917536 <= i2 && i2 <= 917630;
    }
}
