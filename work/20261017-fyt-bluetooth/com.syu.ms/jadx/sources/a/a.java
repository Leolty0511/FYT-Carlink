package a;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ProxyProperties;
import android.os.Process;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static a f0g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1a = "/sdcard/crash";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DateFormat f2b = new SimpleDateFormat("yyyy-MM-dd-hh-mm-ss");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public HashMap<String, String> f3c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f4d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Context f5e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Thread.UncaughtExceptionHandler f6f;

    public a(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f5e = applicationContext;
        this.f4d = applicationContext.getPackageName().replace(".", "_");
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public static a b(Context context) {
        if (f0g == null) {
            f0g = new a(context);
        }
        return f0g;
    }

    public void a() {
        if (this.f3c == null) {
            this.f3c = new HashMap<>();
        }
        try {
            PackageInfo packageInfo = this.f5e.getPackageManager().getPackageInfo(this.f5e.getPackageName(), 1);
            if (packageInfo != null) {
                String str = packageInfo.versionName;
                if (str == null) {
                    str = "null";
                }
                String str2 = packageInfo.versionCode + ProxyProperties.LOCAL_EXCL_LIST;
                this.f3c.put("versionName", str);
                this.f3c.put("versionCode", str2);
            }
        } catch (PackageManager.NameNotFoundException e2) {
            Log.e("MS", "an error occured when collect package info/n" + e2.toString());
        }
    }

    public final boolean c(Throwable th) {
        if (th == null) {
            return false;
        }
        a();
        d(th);
        return true;
    }

    public void d(Throwable th) {
        File[] fileArrListFiles;
        StringBuffer stringBuffer = new StringBuffer();
        for (Map.Entry<String, String> entry : this.f3c.entrySet()) {
            stringBuffer.append(entry.getKey() + "=" + entry.getValue() + "\n");
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
            String str = "crash-" + this.f4d + "-" + this.f2b.format(new Date()) + ".txt";
            File file = new File("/sdcard/crash");
            if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length >= 30) {
                file.delete();
            }
            if (!file.exists()) {
                file.mkdirs();
            }
            FileOutputStream fileOutputStream = new FileOutputStream("/sdcard/crash/" + str);
            fileOutputStream.write(stringBuffer.toString().getBytes());
            fileOutputStream.close();
        } catch (Exception e2) {
            Log.e("MS", "an error occured while writing file.../n" + e2.toString());
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        if (c(th)) {
            i.a0(10000L);
            Process.killProcess(Process.myPid());
            System.exit(1);
        } else {
            if (this.f6f == null) {
                this.f6f = Thread.getDefaultUncaughtExceptionHandler();
            }
            this.f6f.uncaughtException(thread, th);
        }
    }
}
