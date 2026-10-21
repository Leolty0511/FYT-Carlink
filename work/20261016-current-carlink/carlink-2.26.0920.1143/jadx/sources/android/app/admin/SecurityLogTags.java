package android.app.admin;

import android.util.EventLog;

/* JADX INFO: loaded from: classes.dex */
public class SecurityLogTags {
    public static final int SECURITY_ADB_SHELL_COMMAND = 210002;
    public static final int SECURITY_ADB_SHELL_INTERACTIVE = 210001;
    public static final int SECURITY_ADB_SYNC_RECV = 210003;
    public static final int SECURITY_ADB_SYNC_SEND = 210004;
    public static final int SECURITY_APP_PROCESS_START = 210005;
    public static final int SECURITY_KEYGUARD_DISMISSED = 210006;
    public static final int SECURITY_KEYGUARD_DISMISS_AUTH_ATTEMPT = 210007;
    public static final int SECURITY_KEYGUARD_SECURED = 210008;

    private SecurityLogTags() {
    }

    public static void writeSecurityAdbShellCommand(String str) {
        EventLog.writeEvent(210002, str);
    }

    public static void writeSecurityAdbShellInteractive() {
        EventLog.writeEvent(210001, new Object[0]);
    }

    public static void writeSecurityAdbSyncRecv(String str) {
        EventLog.writeEvent(210003, str);
    }

    public static void writeSecurityAdbSyncSend(String str) {
        EventLog.writeEvent(210004, str);
    }

    public static void writeSecurityAppProcessStart(String str, long j2, int i2, int i3, String str2, String str3) {
        EventLog.writeEvent(210005, str, Long.valueOf(j2), Integer.valueOf(i2), Integer.valueOf(i3), str2, str3);
    }

    public static void writeSecurityKeyguardDismissAuthAttempt(int i2, int i3) {
        EventLog.writeEvent(210007, Integer.valueOf(i2), Integer.valueOf(i3));
    }

    public static void writeSecurityKeyguardDismissed() {
        EventLog.writeEvent(210006, new Object[0]);
    }

    public static void writeSecurityKeyguardSecured() {
        EventLog.writeEvent(210008, new Object[0]);
    }
}
