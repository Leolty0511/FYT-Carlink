package android.os;

import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.telephony.PhoneNumberUtils;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import libcore.io.Libcore;

/* JADX INFO: loaded from: classes.dex */
public class Process {
    public static final String ANDROID_SHARED_MEDIA = "com.android.process.media";
    public static final int BLUETOOTH_UID = 1002;
    public static final int DRM_UID = 1019;
    public static final int FIRST_APPLICATION_UID = 10000;
    public static final int FIRST_ISOLATED_UID = 99000;
    public static final int FIRST_SHARED_APPLICATION_GID = 50000;
    public static final String GOOGLE_SHARED_APP_CONTENT = "com.google.process.content";
    public static final int LAST_APPLICATION_UID = 19999;
    public static final int LAST_ISOLATED_UID = 99999;
    public static final int LAST_SHARED_APPLICATION_GID = 59999;
    private static final String LOG_TAG = "Process";
    public static final int LOG_UID = 1007;
    public static final int MEDIA_RW_GID = 1023;
    public static final int MEDIA_UID = 1013;
    public static final int NFC_UID = 1027;
    public static final int PACKAGE_INFO_GID = 1032;
    public static final int PHONE_UID = 1001;
    public static final int PROC_COMBINE = 256;
    public static final int PROC_OUT_FLOAT = 16384;
    public static final int PROC_OUT_LONG = 8192;
    public static final int PROC_OUT_STRING = 4096;
    public static final int PROC_PARENS = 512;
    public static final int PROC_QUOTES = 1024;
    public static final int PROC_SPACE_TERM = 32;
    public static final int PROC_TAB_TERM = 9;
    public static final int PROC_TERM_MASK = 255;
    public static final int PROC_ZERO_TERM = 0;
    public static final int SCHED_BATCH = 3;
    public static final int SCHED_FIFO = 1;
    public static final int SCHED_IDLE = 5;
    public static final int SCHED_OTHER = 0;
    public static final int SCHED_RR = 2;
    public static final int SHELL_UID = 2000;
    public static final int SIGNAL_KILL = 9;
    public static final int SIGNAL_QUIT = 3;
    public static final int SIGNAL_USR1 = 10;
    public static final int SYSTEM_UID = 1000;
    public static final int THREAD_GROUP_AUDIO_APP = 3;
    public static final int THREAD_GROUP_AUDIO_SYS = 4;
    public static final int THREAD_GROUP_BG_NONINTERACTIVE = 0;
    public static final int THREAD_GROUP_DEFAULT = -1;
    private static final int THREAD_GROUP_FOREGROUND = 1;
    public static final int THREAD_GROUP_SYSTEM = 2;
    public static final int THREAD_PRIORITY_AUDIO = -16;
    public static final int THREAD_PRIORITY_BACKGROUND = 10;
    public static final int THREAD_PRIORITY_DEFAULT = 0;
    public static final int THREAD_PRIORITY_DISPLAY = -4;
    public static final int THREAD_PRIORITY_FOREGROUND = -2;
    public static final int THREAD_PRIORITY_LESS_FAVORABLE = 1;
    public static final int THREAD_PRIORITY_LOWEST = 19;
    public static final int THREAD_PRIORITY_MORE_FAVORABLE = -1;
    public static final int THREAD_PRIORITY_URGENT_AUDIO = -19;
    public static final int THREAD_PRIORITY_URGENT_DISPLAY = -8;
    public static final int VPN_UID = 1016;
    public static final int WIFI_UID = 1010;
    public static final int ZYGOTE_RETRY_MILLIS = 500;
    private static final String ZYGOTE_SOCKET = "zygote";
    public static boolean sPreviousZygoteOpenFailed;
    public static DataInputStream sZygoteInputStream;
    public static LocalSocket sZygoteSocket;
    public static BufferedWriter sZygoteWriter;

    public static final class ProcessStartResult {
        public int pid;
        public boolean usingWrapper;
    }

    public static final native long getElapsedCpuTime();

    public static final native long getFreeMemory();

    public static final native int getGidForName(String str);

    public static final int getParentPid(int i2) {
        long[] jArr = {-1};
        readProcLines("/proc/" + i2 + "/status", new String[]{"PPid:"}, jArr);
        return (int) jArr[0];
    }

    public static final native int[] getPids(String str, int[] iArr);

    public static final native int[] getPidsForCommands(String[] strArr);

    public static final native int getProcessGroup(int i2);

    public static final native long getPss(int i2);

    public static final int getThreadGroupLeader(int i2) {
        long[] jArr = {-1};
        readProcLines("/proc/" + i2 + "/status", new String[]{"Tgid:"}, jArr);
        return (int) jArr[0];
    }

    public static final native int getThreadPriority(int i2);

    public static final native long getTotalMemory();

    public static final native int getUidForName(String str);

    public static final int getUidForPid(int i2) {
        long[] jArr = {-1};
        readProcLines("/proc/" + i2 + "/status", new String[]{"Uid:"}, jArr);
        return (int) jArr[0];
    }

    public static final boolean isIsolated() {
        int appId = UserHandle.getAppId(myUid());
        return appId >= 99000 && appId <= 99999;
    }

    public static final void killProcess(int i2) {
        sendSignal(i2, 9);
    }

    public static final void killProcessQuiet(int i2) {
        sendSignalQuiet(i2, 9);
    }

    public static final int myPid() {
        return Libcore.os.getpid();
    }

    public static final int myPpid() {
        return Libcore.os.getppid();
    }

    public static final int myTid() {
        return Libcore.os.gettid();
    }

    public static final int myUid() {
        return Libcore.os.getuid();
    }

    public static final UserHandle myUserHandle() {
        return new UserHandle(UserHandle.getUserId(myUid()));
    }

    private static void openZygoteSocketIfNeeded() throws ZygoteStartFailedEx {
        int i2 = sPreviousZygoteOpenFailed ? 0 : 10;
        for (int i3 = 0; sZygoteSocket == null && i3 < i2 + 1; i3++) {
            if (i3 > 0) {
                try {
                    Log.i("Zygote", "Zygote not up yet, sleeping...");
                    Thread.sleep(500L);
                } catch (InterruptedException unused) {
                }
            }
            try {
                LocalSocket localSocket = new LocalSocket();
                sZygoteSocket = localSocket;
                localSocket.connect(new LocalSocketAddress(ZYGOTE_SOCKET, LocalSocketAddress.Namespace.RESERVED));
                sZygoteInputStream = new DataInputStream(sZygoteSocket.getInputStream());
                sZygoteWriter = new BufferedWriter(new OutputStreamWriter(sZygoteSocket.getOutputStream()), 256);
                Log.i("Zygote", "Process: zygote socket opened");
                sPreviousZygoteOpenFailed = false;
                break;
            } catch (IOException unused2) {
                LocalSocket localSocket2 = sZygoteSocket;
                if (localSocket2 != null) {
                    try {
                        localSocket2.close();
                    } catch (IOException e2) {
                        Log.e(LOG_TAG, "I/O exception on close after exception", e2);
                    }
                }
                sZygoteSocket = null;
            }
        }
        if (sZygoteSocket != null) {
            return;
        }
        sPreviousZygoteOpenFailed = true;
        throw new ZygoteStartFailedEx("connect failed");
    }

    public static final native boolean parseProcLine(byte[] bArr, int i2, int i3, int[] iArr, String[] strArr, long[] jArr, float[] fArr);

    public static final native boolean readProcFile(String str, int[] iArr, String[] strArr, long[] jArr, float[] fArr);

    public static final native void readProcLines(String str, String[] strArr, long[] jArr);

    public static final native void sendSignal(int i2, int i3);

    public static final native void sendSignalQuiet(int i2, int i3);

    public static final native void setArgV0(String str);

    public static final native void setCanSelfBackground(boolean z2);

    public static final native int setGid(int i2);

    public static final native boolean setOomAdj(int i2, int i3);

    public static final native void setProcessGroup(int i2, int i3);

    public static final native boolean setSwappiness(int i2, boolean z2);

    public static final native void setThreadGroup(int i2, int i3);

    public static final native void setThreadPriority(int i2);

    public static final native void setThreadPriority(int i2, int i3);

    public static final native void setThreadScheduler(int i2, int i3, int i4);

    public static final native int setUid(int i2);

    public static final ProcessStartResult start(String str, String str2, int i2, int i3, int[] iArr, int i4, int i5, int i6, String str3, String[] strArr) {
        try {
            return startViaZygote(str, str2, i2, i3, iArr, i4, i5, i6, str3, strArr);
        } catch (ZygoteStartFailedEx e2) {
            Log.e(LOG_TAG, "Starting VM process through Zygote failed");
            throw new RuntimeException("Starting VM process through Zygote failed", e2);
        }
    }

    private static ProcessStartResult startViaZygote(String str, String str2, int i2, int i3, int[] iArr, int i4, int i5, int i6, String str3, String[] strArr) {
        ProcessStartResult processStartResultZygoteSendArgsAndGetResult;
        synchronized (Process.class) {
            ArrayList arrayList = new ArrayList();
            arrayList.add("--runtime-init");
            arrayList.add("--setuid=" + i2);
            arrayList.add("--setgid=" + i3);
            if ((i4 & 16) != 0) {
                arrayList.add("--enable-jni-logging");
            }
            if ((i4 & 8) != 0) {
                arrayList.add("--enable-safemode");
            }
            if ((i4 & 1) != 0) {
                arrayList.add("--enable-debugger");
            }
            if ((i4 & 2) != 0) {
                arrayList.add("--enable-checkjni");
            }
            if ((i4 & 4) != 0) {
                arrayList.add("--enable-assert");
            }
            if (i5 == 2) {
                arrayList.add("--mount-external-multiuser");
            } else if (i5 == 3) {
                arrayList.add("--mount-external-multiuser-all");
            }
            arrayList.add("--target-sdk-version=" + i6);
            if (iArr != null && iArr.length > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("--setgroups=");
                int length = iArr.length;
                for (int i7 = 0; i7 < length; i7++) {
                    if (i7 != 0) {
                        sb.append(PhoneNumberUtils.PAUSE);
                    }
                    sb.append(iArr[i7]);
                }
                arrayList.add(sb.toString());
            }
            if (str2 != null) {
                arrayList.add("--nice-name=" + str2);
            }
            if (str3 != null) {
                arrayList.add("--seinfo=" + str3);
            }
            arrayList.add(str);
            if (strArr != null) {
                for (String str4 : strArr) {
                    arrayList.add(str4);
                }
            }
            processStartResultZygoteSendArgsAndGetResult = zygoteSendArgsAndGetResult(arrayList);
        }
        return processStartResultZygoteSendArgsAndGetResult;
    }

    @Deprecated
    public static final boolean supportsProcesses() {
        return true;
    }

    private static ProcessStartResult zygoteSendArgsAndGetResult(ArrayList<String> arrayList) throws ZygoteStartFailedEx {
        openZygoteSocketIfNeeded();
        try {
            sZygoteWriter.write(Integer.toString(arrayList.size()));
            sZygoteWriter.newLine();
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                String str = arrayList.get(i2);
                if (str.indexOf(10) >= 0) {
                    throw new ZygoteStartFailedEx("embedded newlines not allowed");
                }
                sZygoteWriter.write(str);
                sZygoteWriter.newLine();
            }
            sZygoteWriter.flush();
            ProcessStartResult processStartResult = new ProcessStartResult();
            int i3 = sZygoteInputStream.readInt();
            processStartResult.pid = i3;
            if (i3 < 0) {
                throw new ZygoteStartFailedEx("fork() failed");
            }
            processStartResult.usingWrapper = sZygoteInputStream.readBoolean();
            return processStartResult;
        } catch (IOException e2) {
            try {
                LocalSocket localSocket = sZygoteSocket;
                if (localSocket != null) {
                    localSocket.close();
                }
            } catch (IOException e3) {
                Log.e(LOG_TAG, "I/O exception on routine close", e3);
            }
            sZygoteSocket = null;
            throw new ZygoteStartFailedEx(e2);
        }
    }
}
