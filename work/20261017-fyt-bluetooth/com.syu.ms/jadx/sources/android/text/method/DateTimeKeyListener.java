package android.text.method;

import android.net.http.CharArrayBuffers;
import android.text.format.DateFormat;

/* JADX INFO: loaded from: classes.dex */
public class DateTimeKeyListener extends NumberKeyListener {
    public static final char[] CHARACTERS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', DateFormat.AM_PM, DateFormat.MINUTE, 'p', ':', '/', '-', CharArrayBuffers.uppercaseAddon};
    private static DateTimeKeyListener sInstance;

    public static DateTimeKeyListener getInstance() {
        DateTimeKeyListener dateTimeKeyListener = sInstance;
        if (dateTimeKeyListener != null) {
            return dateTimeKeyListener;
        }
        DateTimeKeyListener dateTimeKeyListener2 = new DateTimeKeyListener();
        sInstance = dateTimeKeyListener2;
        return dateTimeKeyListener2;
    }

    @Override // android.text.method.NumberKeyListener
    public char[] getAcceptedChars() {
        return CHARACTERS;
    }

    @Override // android.text.method.KeyListener
    public int getInputType() {
        return 4;
    }
}
