package com.android.internal.util;

import android.accessibilityservice.c;
import android.net.wifi.WifiEnterpriseConfig;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class IndentingPrintWriter extends PrintWriter {
    private char[] mCurrentIndent;
    private int mCurrentLength;
    private boolean mEmptyLine;
    private StringBuilder mIndentBuilder;
    private char[] mSingleChar;
    private final String mSingleIndent;
    private final int mWrapLength;

    public IndentingPrintWriter(Writer writer, String str) {
        this(writer, str, -1);
    }

    private void maybeWriteIndent() {
        if (this.mEmptyLine) {
            this.mEmptyLine = false;
            if (this.mIndentBuilder.length() != 0) {
                if (this.mCurrentIndent == null) {
                    this.mCurrentIndent = this.mIndentBuilder.toString().toCharArray();
                }
                char[] cArr = this.mCurrentIndent;
                super.write(cArr, 0, cArr.length);
            }
        }
    }

    public void decreaseIndent() {
        this.mIndentBuilder.delete(0, this.mSingleIndent.length());
        this.mCurrentIndent = null;
    }

    public void increaseIndent() {
        this.mIndentBuilder.append(this.mSingleIndent);
        this.mCurrentIndent = null;
    }

    public void printHexPair(String str, int i2) {
        StringBuilder sbU = c.u(str, "=0x");
        sbU.append(Integer.toHexString(i2));
        sbU.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        print(sbU.toString());
    }

    public void printPair(String str, Object obj) {
        StringBuilder sbU = c.u(str, "=");
        sbU.append(String.valueOf(obj));
        sbU.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        print(sbU.toString());
    }

    @Override // java.io.PrintWriter
    public void println() {
        write(10);
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(int i2) {
        char[] cArr = this.mSingleChar;
        cArr[0] = (char) i2;
        write(cArr, 0, 1);
    }

    public IndentingPrintWriter(Writer writer, String str, int i2) {
        super(writer);
        this.mIndentBuilder = new StringBuilder();
        this.mEmptyLine = true;
        this.mSingleChar = new char[1];
        this.mSingleIndent = str;
        this.mWrapLength = i2;
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(String str, int i2, int i3) {
        char[] cArr = new char[i3];
        str.getChars(i2, i3 - i2, cArr, 0);
        write(cArr, 0, i3);
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(char[] cArr, int i2, int i3) {
        int length = this.mIndentBuilder.length();
        int i4 = i3 + i2;
        int i5 = i2;
        while (i2 < i4) {
            int i6 = i2 + 1;
            char c = cArr[i2];
            this.mCurrentLength++;
            if (c == '\n') {
                maybeWriteIndent();
                super.write(cArr, i5, i6 - i5);
                this.mEmptyLine = true;
                this.mCurrentLength = 0;
                i5 = i6;
            }
            int i7 = this.mWrapLength;
            if (i7 > 0 && this.mCurrentLength >= i7 - length) {
                if (!this.mEmptyLine) {
                    super.write(10);
                    this.mEmptyLine = true;
                    this.mCurrentLength = i6 - i5;
                } else {
                    maybeWriteIndent();
                    super.write(cArr, i5, i6 - i5);
                    super.write(10);
                    this.mEmptyLine = true;
                    this.mCurrentLength = 0;
                    i5 = i6;
                }
            }
            i2 = i6;
        }
        if (i5 != i2) {
            maybeWriteIndent();
            super.write(cArr, i5, i2 - i5);
        }
    }

    public void printPair(String str, Object[] objArr) {
        StringBuilder sbU = c.u(str, "=");
        sbU.append(Arrays.toString(objArr));
        sbU.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        print(sbU.toString());
    }
}
