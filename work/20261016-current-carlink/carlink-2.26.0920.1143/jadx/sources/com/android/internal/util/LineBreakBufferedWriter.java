package com.android.internal.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class LineBreakBufferedWriter extends PrintWriter {
    private char[] buffer;
    private int bufferIndex;
    private final int bufferSize;
    private int lastNewline;
    private final String lineSeparator;

    public LineBreakBufferedWriter(Writer writer, int i2) {
        this(writer, i2, 16);
    }

    private void appendToBuffer(char[] cArr, int i2, int i3) {
        int i4 = this.bufferIndex;
        if (i4 + i3 > this.buffer.length) {
            ensureCapacity(i4 + i3);
        }
        System.arraycopy(cArr, i2, this.buffer, this.bufferIndex, i3);
        this.bufferIndex += i3;
    }

    private void ensureCapacity(int i2) {
        char[] cArr = this.buffer;
        int length = (cArr.length * 2) + 2;
        if (length >= i2) {
            i2 = length;
        }
        this.buffer = Arrays.copyOf(cArr, i2);
    }

    private void removeFromBuffer(int i2) {
        int i3 = this.bufferIndex;
        int i4 = i3 - i2;
        if (i4 <= 0) {
            this.bufferIndex = 0;
            return;
        }
        char[] cArr = this.buffer;
        System.arraycopy(cArr, i3 - i4, cArr, 0, i4);
        this.bufferIndex = i4;
    }

    private void writeBuffer(int i2) {
        if (i2 > 0) {
            super.write(this.buffer, 0, i2);
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer, java.io.Flushable
    public void flush() {
        writeBuffer(this.bufferIndex);
        this.bufferIndex = 0;
        super.flush();
    }

    @Override // java.io.PrintWriter
    public void println() throws IOException {
        write(this.lineSeparator);
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(int i2) {
        int i3 = this.bufferIndex;
        char[] cArr = this.buffer;
        if (i3 >= cArr.length) {
            write(new char[]{(char) i2}, 0, 1);
            return;
        }
        char c = (char) i2;
        cArr[i3] = c;
        int i4 = i3 + 1;
        this.bufferIndex = i4;
        if (c == '\n') {
            this.lastNewline = i4;
        }
    }

    public LineBreakBufferedWriter(Writer writer, int i2, int i3) {
        super(writer);
        this.lastNewline = -1;
        this.buffer = new char[Math.min(i3, i2)];
        this.bufferIndex = 0;
        this.bufferSize = i2;
        this.lineSeparator = System.getProperty("line.separator");
    }

    private void appendToBuffer(String str, int i2, int i3) {
        int i4 = this.bufferIndex;
        if (i4 + i3 > this.buffer.length) {
            ensureCapacity(i4 + i3);
        }
        str.getChars(i2, i2 + i3, this.buffer, this.bufferIndex);
        this.bufferIndex += i3;
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(char[] cArr, int i2, int i3) {
        while (true) {
            int i4 = this.bufferIndex;
            int i5 = i4 + i3;
            int i6 = this.bufferSize;
            if (i5 <= i6) {
                break;
            }
            int i7 = i6 - i4;
            int i8 = -1;
            for (int i9 = 0; i9 < i7; i9++) {
                if (cArr[i2 + i9] == '\n') {
                    if (this.bufferIndex + i9 >= this.bufferSize) {
                        break;
                    } else {
                        i8 = i9;
                    }
                }
            }
            if (i8 != -1) {
                appendToBuffer(cArr, i2, i8);
                writeBuffer(this.bufferIndex);
                this.bufferIndex = 0;
                this.lastNewline = -1;
                int i10 = i8 + 1;
                i2 += i10;
                i3 -= i10;
            } else {
                int i11 = this.lastNewline;
                if (i11 != -1) {
                    writeBuffer(i11);
                    removeFromBuffer(this.lastNewline + 1);
                    this.lastNewline = -1;
                } else {
                    int i12 = this.bufferSize - this.bufferIndex;
                    appendToBuffer(cArr, i2, i12);
                    writeBuffer(this.bufferIndex);
                    this.bufferIndex = 0;
                    i2 += i12;
                    i3 -= i12;
                }
            }
        }
        if (i3 > 0) {
            appendToBuffer(cArr, i2, i3);
            for (int i13 = i3 - 1; i13 >= 0; i13--) {
                if (cArr[i2 + i13] == '\n') {
                    this.lastNewline = (this.bufferIndex - i3) + i13;
                    return;
                }
            }
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(String str, int i2, int i3) {
        while (true) {
            int i4 = this.bufferIndex;
            int i5 = i4 + i3;
            int i6 = this.bufferSize;
            if (i5 <= i6) {
                break;
            }
            int i7 = i6 - i4;
            int i8 = -1;
            for (int i9 = 0; i9 < i7; i9++) {
                if (str.charAt(i2 + i9) == '\n') {
                    if (this.bufferIndex + i9 >= this.bufferSize) {
                        break;
                    } else {
                        i8 = i9;
                    }
                }
            }
            if (i8 != -1) {
                appendToBuffer(str, i2, i8);
                writeBuffer(this.bufferIndex);
                this.bufferIndex = 0;
                this.lastNewline = -1;
                int i10 = i8 + 1;
                i2 += i10;
                i3 -= i10;
            } else {
                int i11 = this.lastNewline;
                if (i11 != -1) {
                    writeBuffer(i11);
                    removeFromBuffer(this.lastNewline + 1);
                    this.lastNewline = -1;
                } else {
                    int i12 = this.bufferSize - this.bufferIndex;
                    appendToBuffer(str, i2, i12);
                    writeBuffer(this.bufferIndex);
                    this.bufferIndex = 0;
                    i2 += i12;
                    i3 -= i12;
                }
            }
        }
        if (i3 > 0) {
            appendToBuffer(str, i2, i3);
            for (int i13 = i3 - 1; i13 >= 0; i13--) {
                if (str.charAt(i2 + i13) == '\n') {
                    this.lastNewline = (this.bufferIndex - i3) + i13;
                    return;
                }
            }
        }
    }
}
