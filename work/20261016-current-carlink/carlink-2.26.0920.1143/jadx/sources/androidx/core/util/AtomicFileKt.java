package androidx.core.util;

import android.annotation.SuppressLint;
import android.app.Instrumentation;
import android.provider.Telephony;
import androidx.annotation.RequiresApi;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import z.l;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ClassVerificationFailure"})
public final class AtomicFileKt {
    @RequiresApi(17)
    public static final byte[] readBytes(android.util.AtomicFile atomicFile) throws IOException {
        t.b.h(atomicFile, "<this>");
        byte[] fully = atomicFile.readFully();
        t.b.g(fully, "readFully()");
        return fully;
    }

    @RequiresApi(17)
    public static final String readText(android.util.AtomicFile atomicFile, Charset charset) throws IOException {
        t.b.h(atomicFile, "<this>");
        t.b.h(charset, Telephony.Mms.Addr.CHARSET);
        byte[] fully = atomicFile.readFully();
        t.b.g(fully, "readFully()");
        return new String(fully, charset);
    }

    public static /* synthetic */ String readText$default(android.util.AtomicFile atomicFile, Charset charset, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = f0.a.f870a;
        }
        return readText(atomicFile, charset);
    }

    @RequiresApi(17)
    public static final void tryWrite(android.util.AtomicFile atomicFile, l lVar) throws IOException {
        t.b.h(atomicFile, "<this>");
        t.b.h(lVar, "block");
        FileOutputStream fileOutputStreamStartWrite = atomicFile.startWrite();
        try {
            t.b.g(fileOutputStreamStartWrite, Instrumentation.REPORT_KEY_STREAMRESULT);
            lVar.invoke(fileOutputStreamStartWrite);
            atomicFile.finishWrite(fileOutputStreamStartWrite);
        } catch (Throwable th) {
            atomicFile.failWrite(fileOutputStreamStartWrite);
            throw th;
        }
    }

    @RequiresApi(17)
    public static final void writeBytes(android.util.AtomicFile atomicFile, byte[] bArr) throws IOException {
        t.b.h(atomicFile, "<this>");
        t.b.h(bArr, "array");
        FileOutputStream fileOutputStreamStartWrite = atomicFile.startWrite();
        try {
            t.b.g(fileOutputStreamStartWrite, Instrumentation.REPORT_KEY_STREAMRESULT);
            fileOutputStreamStartWrite.write(bArr);
            atomicFile.finishWrite(fileOutputStreamStartWrite);
        } catch (Throwable th) {
            atomicFile.failWrite(fileOutputStreamStartWrite);
            throw th;
        }
    }

    @RequiresApi(17)
    public static final void writeText(android.util.AtomicFile atomicFile, String str, Charset charset) throws IOException {
        t.b.h(atomicFile, "<this>");
        t.b.h(str, "text");
        t.b.h(charset, Telephony.Mms.Addr.CHARSET);
        byte[] bytes = str.getBytes(charset);
        t.b.g(bytes, "this as java.lang.String).getBytes(charset)");
        writeBytes(atomicFile, bytes);
    }

    public static /* synthetic */ void writeText$default(android.util.AtomicFile atomicFile, String str, Charset charset, int i2, Object obj) throws IOException {
        if ((i2 & 2) != 0) {
            charset = f0.a.f870a;
        }
        writeText(atomicFile, str, charset);
    }
}
