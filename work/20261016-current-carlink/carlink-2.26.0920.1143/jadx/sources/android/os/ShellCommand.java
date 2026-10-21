package android.os;

import com.android.internal.content.NativeLibraryHelper;
import com.android.internal.util.FastPrintWriter;
import java.io.BufferedInputStream;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public abstract class ShellCommand {
    static final boolean DEBUG = false;
    static final String TAG = "ShellCommand";
    private int mArgPos;
    private String[] mArgs;
    private String mCmd;
    private String mCurArgData;
    private FileDescriptor mErr;
    private FastPrintWriter mErrPrintWriter;
    private FileOutputStream mFileErr;
    private FileInputStream mFileIn;
    private FileOutputStream mFileOut;
    private FileDescriptor mIn;
    private InputStream mInputStream;
    private FileDescriptor mOut;
    private FastPrintWriter mOutPrintWriter;
    private ResultReceiver mResultReceiver;
    private ShellCallback mShellCallback;
    private Binder mTarget;

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0036, code lost:
    
        if (r0 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0038, code lost:
    
        r0.flush();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int exec(android.os.Binder r14, java.io.FileDescriptor r15, java.io.FileDescriptor r16, java.io.FileDescriptor r17, java.lang.String[] r18, android.os.ShellCallback r19, android.os.ResultReceiver r20) {
        /*
            r13 = this;
            r9 = r13
            r0 = r18
            java.lang.String r10 = "Security exception: "
            r1 = 0
            r11 = 0
            if (r0 == 0) goto L12
            int r2 = r0.length
            if (r2 <= 0) goto L12
            r1 = r0[r1]
            r2 = 1
            r12 = r1
            r8 = r2
            goto L14
        L12:
            r8 = r1
            r12 = r11
        L14:
            r1 = r13
            r2 = r14
            r3 = r15
            r4 = r16
            r5 = r17
            r6 = r18
            r7 = r19
            r1.init(r2, r3, r4, r5, r6, r7, r8)
            r9.mCmd = r12
            r0 = r20
            r9.mResultReceiver = r0
            r1 = -1
            int r1 = r13.onCommand(r12)     // Catch: java.lang.Throwable -> L41 java.lang.SecurityException -> L5e
            com.android.internal.util.FastPrintWriter r0 = r9.mOutPrintWriter
            if (r0 == 0) goto L34
            r0.flush()
        L34:
            com.android.internal.util.FastPrintWriter r0 = r9.mErrPrintWriter
            if (r0 == 0) goto L3b
        L38:
            r0.flush()
        L3b:
            android.os.ResultReceiver r0 = r9.mResultReceiver
            r0.send(r1, r11)
            goto L89
        L41:
            r0 = move-exception
            r2 = r0
            java.io.PrintWriter r0 = r13.getErrPrintWriter()     // Catch: java.lang.Throwable -> L8a
            r0.println()     // Catch: java.lang.Throwable -> L8a
            java.lang.String r3 = "Exception occurred while executing:"
            r0.println(r3)     // Catch: java.lang.Throwable -> L8a
            r2.printStackTrace(r0)     // Catch: java.lang.Throwable -> L8a
            com.android.internal.util.FastPrintWriter r0 = r9.mOutPrintWriter
            if (r0 == 0) goto L59
            r0.flush()
        L59:
            com.android.internal.util.FastPrintWriter r0 = r9.mErrPrintWriter
            if (r0 == 0) goto L3b
            goto L38
        L5e:
            r0 = move-exception
            r2 = r0
            java.io.PrintWriter r0 = r13.getErrPrintWriter()     // Catch: java.lang.Throwable -> L8a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8a
            r3.<init>(r10)     // Catch: java.lang.Throwable -> L8a
            java.lang.String r4 = r2.getMessage()     // Catch: java.lang.Throwable -> L8a
            r3.append(r4)     // Catch: java.lang.Throwable -> L8a
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L8a
            r0.println(r3)     // Catch: java.lang.Throwable -> L8a
            r0.println()     // Catch: java.lang.Throwable -> L8a
            r2.printStackTrace(r0)     // Catch: java.lang.Throwable -> L8a
            com.android.internal.util.FastPrintWriter r0 = r9.mOutPrintWriter
            if (r0 == 0) goto L84
            r0.flush()
        L84:
            com.android.internal.util.FastPrintWriter r0 = r9.mErrPrintWriter
            if (r0 == 0) goto L3b
            goto L38
        L89:
            return r1
        L8a:
            r0 = move-exception
            com.android.internal.util.FastPrintWriter r2 = r9.mOutPrintWriter
            if (r2 == 0) goto L92
            r2.flush()
        L92:
            com.android.internal.util.FastPrintWriter r2 = r9.mErrPrintWriter
            if (r2 == 0) goto L99
            r2.flush()
        L99:
            android.os.ResultReceiver r2 = r9.mResultReceiver
            r2.send(r1, r11)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.os.ShellCommand.exec(android.os.Binder, java.io.FileDescriptor, java.io.FileDescriptor, java.io.FileDescriptor, java.lang.String[], android.os.ShellCallback, android.os.ResultReceiver):int");
    }

    public InputStream getBufferedInputStream() {
        if (this.mInputStream == null) {
            this.mInputStream = new BufferedInputStream(getRawInputStream());
        }
        return this.mInputStream;
    }

    public PrintWriter getErrPrintWriter() {
        if (this.mErr == null) {
            return getOutPrintWriter();
        }
        if (this.mErrPrintWriter == null) {
            this.mErrPrintWriter = new FastPrintWriter(getRawErrorStream());
        }
        return this.mErrPrintWriter;
    }

    public String getNextArg() {
        String str = this.mCurArgData;
        if (str != null) {
            this.mCurArgData = null;
            return str;
        }
        int i2 = this.mArgPos;
        String[] strArr = this.mArgs;
        if (i2 >= strArr.length) {
            return null;
        }
        this.mArgPos = i2 + 1;
        return strArr[i2];
    }

    public String getNextArgRequired() {
        String nextArg = getNextArg();
        if (nextArg != null) {
            return nextArg;
        }
        throw new IllegalArgumentException(android.accessibilityservice.c.k("Argument expected after \"", this.mArgs[this.mArgPos - 1], "\""));
    }

    public String getNextOption() {
        if (this.mCurArgData != null) {
            throw new IllegalArgumentException(android.accessibilityservice.c.k("No argument expected after \"", this.mArgs[this.mArgPos - 1], "\""));
        }
        int i2 = this.mArgPos;
        String[] strArr = this.mArgs;
        if (i2 >= strArr.length) {
            return null;
        }
        String str = strArr[i2];
        if (!str.startsWith(NativeLibraryHelper.CLEAR_ABI_OVERRIDE)) {
            return null;
        }
        this.mArgPos++;
        if (str.equals("--")) {
            return null;
        }
        if (str.length() <= 1 || str.charAt(1) == '-') {
            this.mCurArgData = null;
            return str;
        }
        if (str.length() > 2) {
            this.mCurArgData = str.substring(2);
            return str.substring(0, 2);
        }
        this.mCurArgData = null;
        return str;
    }

    public PrintWriter getOutPrintWriter() {
        if (this.mOutPrintWriter == null) {
            this.mOutPrintWriter = new FastPrintWriter(getRawOutputStream());
        }
        return this.mOutPrintWriter;
    }

    public OutputStream getRawErrorStream() {
        if (this.mFileErr == null) {
            this.mFileErr = new FileOutputStream(this.mErr);
        }
        return this.mFileErr;
    }

    public InputStream getRawInputStream() {
        if (this.mFileIn == null) {
            this.mFileIn = new FileInputStream(this.mIn);
        }
        return this.mFileIn;
    }

    public OutputStream getRawOutputStream() {
        if (this.mFileOut == null) {
            this.mFileOut = new FileOutputStream(this.mOut);
        }
        return this.mFileOut;
    }

    public ShellCallback getShellCallback() {
        return this.mShellCallback;
    }

    public int handleDefaultCommands(String str) {
        if ("dump".equals(str)) {
            String[] strArr = this.mArgs;
            String[] strArr2 = new String[strArr.length - 1];
            System.arraycopy(strArr, 1, strArr2, 0, strArr.length - 1);
            this.mTarget.doDump(this.mOut, getOutPrintWriter(), strArr2);
            return 0;
        }
        if (str == null || "help".equals(str) || "-h".equals(str)) {
            onHelp();
            return -1;
        }
        getOutPrintWriter().println("Unknown command: ".concat(str));
        return -1;
    }

    public void init(Binder binder, FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, FileDescriptor fileDescriptor3, String[] strArr, ShellCallback shellCallback, int i2) {
        this.mTarget = binder;
        this.mIn = fileDescriptor;
        this.mOut = fileDescriptor2;
        this.mErr = fileDescriptor3;
        this.mArgs = strArr;
        this.mShellCallback = shellCallback;
        this.mResultReceiver = null;
        this.mCmd = null;
        this.mArgPos = i2;
        this.mCurArgData = null;
        this.mFileIn = null;
        this.mFileOut = null;
        this.mFileErr = null;
        this.mOutPrintWriter = null;
        this.mErrPrintWriter = null;
        this.mInputStream = null;
    }

    public abstract int onCommand(String str);

    public abstract void onHelp();

    public ParcelFileDescriptor openOutputFileForSystem(String str) {
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenOutputFile = getShellCallback().openOutputFile(str, "u:r:system_server:s0");
            if (parcelFileDescriptorOpenOutputFile != null) {
                return parcelFileDescriptorOpenOutputFile;
            }
        } catch (RuntimeException e2) {
            getErrPrintWriter().println("Failure opening file: " + e2.getMessage());
        }
        getErrPrintWriter().println("Error: Unable to open file: " + str);
        getErrPrintWriter().println("Consider using a file under /data/local/tmp/");
        return null;
    }

    public String peekNextArg() {
        String str = this.mCurArgData;
        if (str != null) {
            return str;
        }
        int i2 = this.mArgPos;
        String[] strArr = this.mArgs;
        if (i2 < strArr.length) {
            return strArr[i2];
        }
        return null;
    }
}
