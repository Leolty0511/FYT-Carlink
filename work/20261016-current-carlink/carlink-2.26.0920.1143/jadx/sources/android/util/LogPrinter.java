package android.util;

/* JADX INFO: loaded from: classes2.dex */
public class LogPrinter implements Printer {
    private final int mBuffer;
    private final int mPriority;
    private final String mTag;

    public LogPrinter(int i2, String str) {
        this.mPriority = i2;
        this.mTag = str;
        this.mBuffer = 0;
    }

    @Override // android.util.Printer
    public void println(String str) {
        Log.println_native(this.mBuffer, this.mPriority, this.mTag, str);
    }

    public LogPrinter(int i2, String str, int i3) {
        this.mPriority = i2;
        this.mTag = str;
        this.mBuffer = i3;
    }
}
