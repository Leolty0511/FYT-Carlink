package u;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public static int a(CharSequence charSequence, CharSequence charSequence2) {
        int length = charSequence.length();
        int length2 = charSequence2.length();
        int i2 = length < length2 ? length : length2;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i3 + 1;
            int i6 = i4 + 1;
            int lowerCase = Character.toLowerCase(charSequence.charAt(i3)) - Character.toLowerCase(charSequence2.charAt(i4));
            if (lowerCase != 0) {
                return lowerCase;
            }
            i3 = i5;
            i4 = i6;
        }
        return length - length2;
    }
}
