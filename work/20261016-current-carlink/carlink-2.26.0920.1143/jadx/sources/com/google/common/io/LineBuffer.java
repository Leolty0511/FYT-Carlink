package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
@J2ktIncompatible
@GwtIncompatible
abstract class LineBuffer {
    private StringBuilder line = new StringBuilder();
    private boolean sawReturn;

    @CanIgnoreReturnValue
    private boolean finishLine(boolean z2) {
        String str;
        if (this.sawReturn) {
            str = z2 ? "\r\n" : "\r";
        } else {
            str = z2 ? "\n" : "";
        }
        handleLine(this.line.toString(), str);
        this.line = new StringBuilder();
        this.sawReturn = false;
        return z2;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001a  */
    public void add(char[] cArr, int i2, int i3) {
        int i4;
        if (!this.sawReturn || i3 <= 0) {
            i4 = i2;
        } else {
            if (finishLine(cArr[i2] == '\n')) {
                i4 = i2 + 1;
            } else {
                i4 = i2;
            }
        }
        int i5 = i2 + i3;
        int i6 = i4;
        while (i4 < i5) {
            char c = cArr[i4];
            if (c != '\n') {
                if (c == '\r') {
                    this.line.append(cArr, i6, i4 - i6);
                    this.sawReturn = true;
                    int i7 = i4 + 1;
                    if (i7 < i5) {
                        if (finishLine(cArr[i7] == '\n')) {
                            i4 = i7;
                        }
                    }
                }
                i4++;
            } else {
                this.line.append(cArr, i6, i4 - i6);
                finishLine(true);
            }
            i6 = i4 + 1;
            i4++;
        }
        this.line.append(cArr, i6, i5 - i6);
    }

    public void finish() {
        if (this.sawReturn || this.line.length() > 0) {
            finishLine(false);
        }
    }

    public abstract void handleLine(String str, String str2);
}
