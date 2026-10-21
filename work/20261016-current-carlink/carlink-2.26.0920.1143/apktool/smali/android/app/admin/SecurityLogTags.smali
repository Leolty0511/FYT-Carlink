.class public Landroid/app/admin/SecurityLogTags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SECURITY_ADB_SHELL_COMMAND:I = 0x33452

.field public static final SECURITY_ADB_SHELL_INTERACTIVE:I = 0x33451

.field public static final SECURITY_ADB_SYNC_RECV:I = 0x33453

.field public static final SECURITY_ADB_SYNC_SEND:I = 0x33454

.field public static final SECURITY_APP_PROCESS_START:I = 0x33455

.field public static final SECURITY_KEYGUARD_DISMISSED:I = 0x33456

.field public static final SECURITY_KEYGUARD_DISMISS_AUTH_ATTEMPT:I = 0x33457

.field public static final SECURITY_KEYGUARD_SECURED:I = 0x33458


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeSecurityAdbShellCommand(Ljava/lang/String;)V
    .locals 1

    const v0, 0x33452

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public static writeSecurityAdbShellInteractive()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const v1, 0x33451

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static writeSecurityAdbSyncRecv(Ljava/lang/String;)V
    .locals 1

    const v0, 0x33453

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public static writeSecurityAdbSyncSend(Ljava/lang/String;)V
    .locals 1

    const v0, 0x33454

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public static writeSecurityAppProcessStart(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    aput-object p1, v0, p0

    .line 13
    .line 14
    const/4 p0, 0x2

    .line 15
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    aput-object p1, v0, p0

    .line 20
    .line 21
    const/4 p0, 0x3

    .line 22
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    aput-object p1, v0, p0

    .line 27
    .line 28
    const/4 p0, 0x4

    .line 29
    aput-object p5, v0, p0

    .line 30
    .line 31
    const/4 p0, 0x5

    .line 32
    aput-object p6, v0, p0

    .line 33
    .line 34
    const p0, 0x33455

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static writeSecurityKeyguardDismissAuthAttempt(II)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    aput-object p0, v0, v1

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    aput-object p1, v0, p0

    .line 17
    .line 18
    const p0, 0x33457

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static writeSecurityKeyguardDismissed()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const v1, 0x33456

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static writeSecurityKeyguardSecured()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const v1, 0x33458

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    return-void
.end method
