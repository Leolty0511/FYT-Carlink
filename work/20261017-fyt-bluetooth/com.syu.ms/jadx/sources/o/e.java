package o;

import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.SystemProperties;
import android.util.Log;
import dalvik.system.profiler.BinaryHprofWriter;
import dalvik.system.profiler.SamplingProfiler;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.Date;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicBoolean;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f16695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Executor f16696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f16697c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f16698d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final AtomicBoolean f16699e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static SamplingProfiler f16700f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static long f16701g;

    public static class a implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "SamplingProfilerIntegration");
        }
    }

    public static class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f16702a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ PackageInfo f16703b;

        public b(String str, PackageInfo packageInfo) {
            this.f16702a = str;
            this.f16703b = packageInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                e.g(this.f16702a, this.f16703b);
            } finally {
                e.f16699e.set(false);
            }
        }
    }

    static {
        int i2 = SystemProperties.getInt("persist.sys.profiler_ms", 0);
        f16697c = i2;
        f16698d = SystemProperties.getInt("persist.sys.profiler_depth", 4);
        if (i2 <= 0) {
            f16696b = null;
            f16695a = false;
            Log.i("SamplingProfilerIntegration", "Profiling disabled.");
            return;
        }
        File file = new File("/data/snapshots");
        file.mkdirs();
        file.setWritable(true, false);
        file.setExecutable(true, false);
        if (!file.isDirectory()) {
            f16696b = null;
            f16695a = true;
            Log.w("SamplingProfilerIntegration", "Profiling setup failed. Could not create /data/snapshots");
        } else {
            f16696b = Executors.newSingleThreadExecutor(new a());
            f16695a = true;
            Log.i("SamplingProfilerIntegration", "Profiling enabled. Sampling interval ms: " + i2);
        }
    }

    public static void c(String str, PackageInfo packageInfo, PrintStream printStream) {
        printStream.println("Version: 3");
        printStream.println("Process: " + str);
        if (packageInfo != null) {
            printStream.println("Package: " + packageInfo.packageName);
            printStream.println("Package-Version: " + packageInfo.versionCode);
        }
        printStream.println("Build: " + Build.FINGERPRINT);
        printStream.println();
    }

    public static boolean d() {
        return f16695a;
    }

    public static void e() {
        if (f16695a) {
            if (f16700f != null) {
                Log.e("SamplingProfilerIntegration", "SamplingProfilerIntegration already started at " + new Date(f16701g));
                return;
            }
            SamplingProfiler samplingProfiler = new SamplingProfiler(f16698d, SamplingProfiler.newThreadGroupThreadSet(Thread.currentThread().getThreadGroup()));
            f16700f = samplingProfiler;
            samplingProfiler.start(f16697c);
            f16701g = System.currentTimeMillis();
        }
    }

    public static void f(String str, PackageInfo packageInfo) {
        if (f16695a) {
            if (f16700f == null) {
                Log.e("SamplingProfilerIntegration", "SamplingProfilerIntegration is not started");
            } else if (f16699e.compareAndSet(false, true)) {
                f16696b.execute(new b(str, packageInfo));
            }
        }
    }

    public static void g(String str, PackageInfo packageInfo) throws Throwable {
        if (!f16695a) {
            return;
        }
        f16700f.stop();
        String strReplaceAll = str.replaceAll(":", ".");
        String str2 = "/data/snapshots/" + strReplaceAll + "-" + f16701g + ".snapshot";
        long jCurrentTimeMillis = System.currentTimeMillis();
        BufferedOutputStream bufferedOutputStream = null;
        try {
            try {
                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(str2));
                try {
                    PrintStream printStream = new PrintStream(bufferedOutputStream2);
                    c(strReplaceAll, packageInfo, printStream);
                    if (printStream.checkError()) {
                        throw new IOException();
                    }
                    BinaryHprofWriter.write(f16700f.getHprofData(), bufferedOutputStream2);
                    IoUtils.closeQuietly(bufferedOutputStream2);
                    new File(str2).setReadable(true, false);
                    Log.i("SamplingProfilerIntegration", "Wrote snapshot " + str2 + " in " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms.");
                    f16700f.start(f16697c);
                } catch (IOException e2) {
                    e = e2;
                    bufferedOutputStream = bufferedOutputStream2;
                    Log.e("SamplingProfilerIntegration", "Error writing snapshot to " + str2, e);
                    IoUtils.closeQuietly(bufferedOutputStream);
                } catch (Throwable th) {
                    th = th;
                    bufferedOutputStream = bufferedOutputStream2;
                    IoUtils.closeQuietly(bufferedOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e3) {
            e = e3;
        }
    }
}
