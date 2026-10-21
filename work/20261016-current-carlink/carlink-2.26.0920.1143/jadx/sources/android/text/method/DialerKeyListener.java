package android.text.method;

import android.text.Spannable;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes2.dex */
public class DialerKeyListener extends NumberKeyListener {
    public static final char[] CHARACTERS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '#', '*', '+', '-', '(', ')', ',', '/', 'N', '.', ' ', ';'};
    private static DialerKeyListener sInstance;

    public static DialerKeyListener getInstance() {
        DialerKeyListener dialerKeyListener = sInstance;
        if (dialerKeyListener != null) {
            return dialerKeyListener;
        }
        DialerKeyListener dialerKeyListener2 = new DialerKeyListener();
        sInstance = dialerKeyListener2;
        return dialerKeyListener2;
    }

    @Override // android.text.method.NumberKeyListener
    public char[] getAcceptedChars() {
        return CHARACTERS;
    }

    @Override // android.text.method.KeyListener
    public int getInputType() {
        return 3;
    }

    @Override // android.text.method.NumberKeyListener
    public int lookup(KeyEvent keyEvent, Spannable spannable) {
        int metaState = MetaKeyKeyListener.getMetaState(spannable, keyEvent);
        char number = keyEvent.getNumber();
        if ((metaState & 3) == 0 && number != 0) {
            return number;
        }
        int iLookup = super.lookup(keyEvent, spannable);
        if (iLookup != 0) {
            return iLookup;
        }
        if (metaState != 0) {
            KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
            char[] acceptedChars = getAcceptedChars();
            if (keyEvent.getKeyData(keyData)) {
                int i2 = 1;
                while (true) {
                    char[] cArr = keyData.meta;
                    if (i2 < cArr.length) {
                        if (NumberKeyListener.ok(acceptedChars, cArr[i2])) {
                            return keyData.meta[i2];
                        }
                        i2++;
                    }
                }
            }
        }
        return number;
    }
}
