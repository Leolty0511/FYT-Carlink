package android.text.method;

/* JADX INFO: loaded from: classes.dex */
public class DateKeyListener extends NumberKeyListener {
    public static final char[] CHARACTERS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '/', '-', '.'};
    private static DateKeyListener sInstance;

    public static DateKeyListener getInstance() {
        DateKeyListener dateKeyListener = sInstance;
        if (dateKeyListener != null) {
            return dateKeyListener;
        }
        DateKeyListener dateKeyListener2 = new DateKeyListener();
        sInstance = dateKeyListener2;
        return dateKeyListener2;
    }

    @Override // android.text.method.NumberKeyListener
    public char[] getAcceptedChars() {
        return CHARACTERS;
    }

    @Override // android.text.method.KeyListener
    public int getInputType() {
        return 20;
    }
}
