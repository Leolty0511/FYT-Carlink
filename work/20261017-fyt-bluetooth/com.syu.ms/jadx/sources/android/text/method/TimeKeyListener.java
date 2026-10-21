package android.text.method;

import android.text.format.DateFormat;

/* JADX INFO: loaded from: classes.dex */
public class TimeKeyListener extends NumberKeyListener {
    public static final char[] CHARACTERS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', DateFormat.AM_PM, DateFormat.MINUTE, 'p', ':'};
    private static TimeKeyListener sInstance;

    public static TimeKeyListener getInstance() {
        TimeKeyListener timeKeyListener = sInstance;
        if (timeKeyListener != null) {
            return timeKeyListener;
        }
        TimeKeyListener timeKeyListener2 = new TimeKeyListener();
        sInstance = timeKeyListener2;
        return timeKeyListener2;
    }

    @Override // android.text.method.NumberKeyListener
    public char[] getAcceptedChars() {
        return CHARACTERS;
    }

    @Override // android.text.method.KeyListener
    public int getInputType() {
        return 36;
    }
}
