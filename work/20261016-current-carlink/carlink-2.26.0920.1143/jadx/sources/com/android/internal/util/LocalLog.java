package com.android.internal.util;

import android.util.Slog;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class LocalLog {
    private final String mTag;
    private final int mMaxLines = 20;
    private final ArrayList<String> mLines = new ArrayList<>(20);

    public LocalLog(String str) {
        this.mTag = str;
    }

    public boolean dump(PrintWriter printWriter, String str, String str2) {
        synchronized (this.mLines) {
            if (this.mLines.size() <= 0) {
                return false;
            }
            if (str != null) {
                printWriter.println(str);
            }
            for (int i2 = 0; i2 < this.mLines.size(); i2++) {
                if (str2 != null) {
                    printWriter.print(str2);
                }
                printWriter.println(this.mLines.get(i2));
            }
            return true;
        }
    }

    public void w(String str) {
        synchronized (this.mLines) {
            Slog.w(this.mTag, str);
            if (this.mLines.size() >= 20) {
                this.mLines.remove(0);
            }
            this.mLines.add(str);
        }
    }
}
