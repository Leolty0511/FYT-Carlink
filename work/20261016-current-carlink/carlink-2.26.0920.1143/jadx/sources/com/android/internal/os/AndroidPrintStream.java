package com.android.internal.os;

import android.os.DropBoxManager;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
class AndroidPrintStream extends LoggingPrintStream {
    private final int priority;
    private final String tag;

    public AndroidPrintStream(int i2, String str) {
        if (str == null) {
            throw new NullPointerException(DropBoxManager.EXTRA_TAG);
        }
        this.priority = i2;
        this.tag = str;
    }

    @Override // com.android.internal.os.LoggingPrintStream
    public void log(String str) {
        Log.println(this.priority, this.tag, str);
    }
}
