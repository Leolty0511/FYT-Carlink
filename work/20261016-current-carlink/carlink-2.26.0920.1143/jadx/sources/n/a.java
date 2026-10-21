package n;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.telecom.Logging.Session;
import android.util.Log;
import com.android.internal.content.NativeLibraryHelper;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static a f1077f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SimpleDateFormat f1078a = new SimpleDateFormat("yyyy-MM-dd-hh-mm-ss");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public HashMap f1079b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Context f1080d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Thread.UncaughtExceptionHandler f1081e;

    public a(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f1080d = applicationContext;
        this.c = applicationContext.getPackageName().replace(".", Session.SESSION_SEPARATION_CHAR_CHILD);
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        boolean z2;
        File[] fileArrListFiles;
        if (th == null) {
            z2 = false;
        } else {
            Context context = this.f1080d;
            if (this.f1079b == null) {
                this.f1079b = new HashMap();
            }
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 1);
                if (packageInfo != null) {
                    String str = packageInfo.versionName;
                    if (str == null) {
                        str = "null";
                    }
                    String str2 = packageInfo.versionCode + "";
                    this.f1079b.put("versionName", str);
                    this.f1079b.put("versionCode", str2);
                }
            } catch (PackageManager.NameNotFoundException e2) {
                Log.e("crash", "an error occured when collect package info:" + e2.toString());
            }
            StringBuffer stringBuffer = new StringBuffer();
            for (Map.Entry entry : this.f1079b.entrySet()) {
                stringBuffer.append(((String) entry.getKey()) + "=" + ((String) entry.getValue()) + "\n");
            }
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
                cause.printStackTrace(printWriter);
            }
            printWriter.close();
            stringBuffer.append(stringWriter.toString());
            try {
                String str3 = "crash-" + this.f1078a.format(new Date()) + NativeLibraryHelper.CLEAR_ABI_OVERRIDE + this.c + ".txt";
                File file = new File("/sdcard/crash");
                if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length >= 30) {
                    file.delete();
                }
                if (!file.exists()) {
                    file.mkdirs();
                }
                FileOutputStream fileOutputStream = new FileOutputStream("/sdcard/crash/" + str3);
                fileOutputStream.write(stringBuffer.toString().getBytes());
                fileOutputStream.close();
            } catch (Exception e3) {
                Log.e("crash", "an error occured while writing file..." + e3.toString());
            }
            z2 = true;
        }
        if (!z2) {
            if (this.f1081e == null) {
                this.f1081e = Thread.getDefaultUncaughtExceptionHandler();
            }
            this.f1081e.uncaughtException(thread, th);
        } else {
            try {
                Thread.sleep(6000L);
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            }
            Process.killProcess(Process.myPid());
            System.exit(1);
        }
    }
}
