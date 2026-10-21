package util.log;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ProxyProperties;
import android.os.Environment;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"SimpleDateFormat"})
public class LogRecorder extends BroadcastReceiver {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static LogRecorder f17690h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f17695e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f17697g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SimpleDateFormat f17691a = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SimpleDateFormat f17692b = new SimpleDateFormat("yyyy-MM-dd");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f17693c = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f17694d = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public a f17696f = null;

    public class a extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Process f17698a;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f17702e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public FileOutputStream f17703f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public BufferedReader f17699b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f17700c = true;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f17701d = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f17704g = 0;

        public a() {
            this.f17702e = null;
            this.f17703f = null;
            try {
                this.f17703f = new FileOutputStream(new File(LogRecorder.this.f17694d, LogRecorder.this.f17691a.format(new Date()) + ".log"));
            } catch (FileNotFoundException e2) {
                e2.printStackTrace();
            }
            this.f17702e = "logcat  *:I | grep " + LogRecorder.this.f17697g;
        }

        public void a(boolean z2) {
            this.f17701d = z2;
            if (z2) {
                this.f17702e = "logcat  *:I";
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            String line;
            while (this.f17700c) {
                try {
                    try {
                        this.f17698a = Runtime.getRuntime().exec(this.f17702e);
                        LogRecorder.this.f17695e = SystemClock.elapsedRealtime();
                        this.f17699b = new BufferedReader(new InputStreamReader(this.f17698a.getInputStream()), 1024);
                        while (this.f17700c && (line = this.f17699b.readLine()) != null) {
                            if (this.f17703f == null) {
                                this.f17703f = new FileOutputStream(new File(LogRecorder.this.f17694d, LogRecorder.this.f17691a.format(new Date()) + ".log"));
                            }
                            if (!this.f17700c) {
                                break;
                            }
                            int length = line.length();
                            if (length != 0 && this.f17703f != null) {
                                if (line.contains(LogRecorder.this.f17697g + ProxyProperties.LOCAL_EXCL_LIST) || this.f17701d) {
                                    this.f17703f.write((line + "\n").getBytes());
                                    this.f17704g = this.f17704g + length;
                                    if (SystemClock.elapsedRealtime() - LogRecorder.this.f17695e >= 3000) {
                                        this.f17703f.flush();
                                        LogRecorder.this.f17695e = SystemClock.elapsedRealtime();
                                    }
                                    if (length >= 524288) {
                                        this.f17703f.flush();
                                        this.f17703f.close();
                                        this.f17703f = null;
                                        this.f17704g = 0;
                                    }
                                }
                            }
                        }
                        Process process = this.f17698a;
                        if (process != null) {
                            process.destroy();
                            this.f17698a = null;
                        }
                        BufferedReader bufferedReader = this.f17699b;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                                this.f17699b = null;
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                            this.f17699b = null;
                        }
                        FileOutputStream fileOutputStream = this.f17703f;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e3) {
                                e = e3;
                                e.printStackTrace();
                            }
                            this.f17703f = null;
                        }
                    } catch (Throwable th) {
                        Process process2 = this.f17698a;
                        if (process2 != null) {
                            process2.destroy();
                            this.f17698a = null;
                        }
                        BufferedReader bufferedReader2 = this.f17699b;
                        if (bufferedReader2 != null) {
                            try {
                                bufferedReader2.close();
                                this.f17699b = null;
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                            this.f17699b = null;
                        }
                        FileOutputStream fileOutputStream2 = this.f17703f;
                        if (fileOutputStream2 == null) {
                            throw th;
                        }
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                        this.f17703f = null;
                        throw th;
                    }
                } catch (Exception e6) {
                    e6.printStackTrace();
                    Process process3 = this.f17698a;
                    if (process3 != null) {
                        process3.destroy();
                        this.f17698a = null;
                    }
                    BufferedReader bufferedReader3 = this.f17699b;
                    if (bufferedReader3 != null) {
                        try {
                            bufferedReader3.close();
                            this.f17699b = null;
                        } catch (IOException e7) {
                            e7.printStackTrace();
                        }
                        this.f17699b = null;
                    }
                    FileOutputStream fileOutputStream3 = this.f17703f;
                    if (fileOutputStream3 != null) {
                        try {
                            fileOutputStream3.close();
                        } catch (IOException e8) {
                            e = e8;
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    public LogRecorder(Context context) {
        c0(context);
        this.f17697g = Process.myPid();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Intent.ACTION_MEDIA_MOUNTED);
        intentFilter.addAction(Intent.ACTION_MEDIA_UNMOUNTED);
        intentFilter.addDataScheme(ContentResolver.SCHEME_FILE);
        context.registerReceiver(this, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction(Intent.ACTION_DATE_CHANGED);
        context.registerReceiver(this, intentFilter2);
    }

    public static LogRecorder b0(Context context) {
        if (f17690h == null) {
            f17690h = new LogRecorder(context);
        }
        return f17690h;
    }

    public void Z() {
        for (File file : new File(this.f17693c).listFiles()) {
            if (file.isDirectory() && a0(file.getName())) {
                file.delete();
            }
        }
    }

    public boolean a0(String str) {
        Calendar calendar = Calendar.getInstance();
        calendar.add(5, -5);
        try {
            return this.f17692b.parse(str).before(calendar.getTime());
        } catch (ParseException unused) {
            return false;
        }
    }

    public void c0(Context context) {
        String strReplace = context.getPackageName().replace(".", "_");
        if (Environment.getExternalStorageState().equals(Environment.MEDIA_MOUNTED)) {
            StringBuilder sb = new StringBuilder();
            sb.append(Environment.getExternalStorageDirectory().getAbsolutePath());
            String str = File.separator;
            sb.append(str);
            sb.append("record_debug");
            sb.append(str);
            sb.append(strReplace);
            this.f17693c = sb.toString();
            this.f17694d = this.f17693c + str + this.f17692b.format(new Date());
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(context.getFilesDir().getAbsolutePath());
            String str2 = File.separator;
            sb2.append(str2);
            sb2.append("record_debug");
            sb2.append(str2);
            sb2.append(strReplace);
            this.f17693c = sb2.toString();
            this.f17694d = this.f17693c + str2 + this.f17692b.format(new Date());
        }
        File file = new File(this.f17694d);
        if (file.exists()) {
            Z();
        } else {
            file.mkdirs();
        }
    }

    public void d0(boolean z2) {
        if (this.f17696f == null) {
            this.f17696f = new a();
        }
        this.f17696f.a(z2);
        this.f17696f.start();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent == null ? ProxyProperties.LOCAL_EXCL_LIST : intent.getAction();
        Log.e("LogRecord", "  onReceive :  " + intent.toString());
        if (Intent.ACTION_MEDIA_UNMOUNTED.equals(action) || Intent.ACTION_MEDIA_MOUNTED.equals(action) || Intent.ACTION_TIME_TICK.equals(action) || !Intent.ACTION_DATE_CHANGED.equals(action)) {
            return;
        }
        this.f17694d = this.f17692b.format(new Date());
    }
}
