package android.util;

import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public class LogWriter extends Writer {
    private final int mBuffer;
    private StringBuilder mBuilder;
    private final int mPriority;
    private final String mTag;

    public LogWriter(int i2, String str) {
        this.mBuilder = new StringBuilder(128);
        this.mPriority = i2;
        this.mTag = str;
        this.mBuffer = 0;
    }

    private void flushBuilder() {
        if (this.mBuilder.length() > 0) {
            Log.println_native(this.mBuffer, this.mPriority, this.mTag, this.mBuilder.toString());
            StringBuilder sb = this.mBuilder;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        flushBuilder();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        flushBuilder();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            char c2 = cArr[i2 + i4];
            if (c2 == '\n') {
                flushBuilder();
            } else {
                this.mBuilder.append(c2);
            }
        }
    }

    public LogWriter(int i2, String str, int i3) {
        this.mBuilder = new StringBuilder(128);
        this.mPriority = i2;
        this.mTag = str;
        this.mBuffer = i3;
    }
}
