.class public final Lcom/android/internal/os/Zygote;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUG_ALWAYS_JIT:I = 0x40

.field public static final DEBUG_ENABLE_ASSERT:I = 0x4

.field public static final DEBUG_ENABLE_CHECKJNI:I = 0x2

.field public static final DEBUG_ENABLE_JDWP:I = 0x1

.field public static final DEBUG_ENABLE_JNI_LOGGING:I = 0x10

.field public static final DEBUG_ENABLE_SAFEMODE:I = 0x8

.field public static final DEBUG_GENERATE_DEBUG_INFO:I = 0x20

.field public static final DEBUG_JAVA_DEBUGGABLE:I = 0x100

.field public static final DEBUG_NATIVE_DEBUGGABLE:I = 0x80

.field public static final MOUNT_EXTERNAL_DEFAULT:I = 0x1

.field public static final MOUNT_EXTERNAL_NONE:I = 0x0

.field public static final MOUNT_EXTERNAL_READ:I = 0x2

.field public static final MOUNT_EXTERNAL_WRITE:I = 0x3

.field private static final VM_HOOKS:Ldalvik/system/ZygoteHooks;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldalvik/system/ZygoteHooks;

    invoke-direct {v0}, Ldalvik/system/ZygoteHooks;-><init>()V

    sput-object v0, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    const-string v3, " \'"

    .line 8
    .line 9
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v3, "\'\\\'\'"

    .line 13
    .line 14
    const-string v4, "\'"

    .line 15
    .line 16
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method private static callPostForkChildHooks(IZLjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v0, p0, p1, p2}, Ldalvik/system/ZygoteHooks;->postForkChild(IZLjava/lang/String;)V

    return-void
.end method

.method public static execShell(Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "/system/bin/sh"

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const-string v3, "-c"

    .line 11
    .line 12
    aput-object v3, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    aput-object p0, v0, v1

    .line 16
    .line 17
    :try_start_0
    invoke-static {v2, v0}, Landroid/system/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p0

    .line 22
    new-instance v0, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public static forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/internal/os/Zygote;->resetNicePriority()V

    .line 7
    .line 8
    .line 9
    invoke-static/range {p0 .. p11}, Lcom/android/internal/os/Zygote;->nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[ILjava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-static {p1, p3}, Landroid/os/Trace;->setTracingEnabled(ZI)V

    .line 17
    .line 18
    .line 19
    const-wide/16 p1, 0x40

    .line 20
    .line 21
    const-string p3, "PostFork"

    .line 22
    .line 23
    invoke-static {p1, p2, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 27
    .line 28
    .line 29
    return p0
.end method

.method public static forkSystemServer(II[II[[IJJ)I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/internal/os/Zygote;->resetNicePriority()V

    .line 7
    .line 8
    .line 9
    invoke-static/range {p0 .. p8}, Lcom/android/internal/os/Zygote;->nativeForkSystemServer(II[II[[IJJ)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-static {p1, p3}, Landroid/os/Trace;->setTracingEnabled(ZI)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 20
    .line 21
    .line 22
    return p0
.end method

.method public static native nativeAllowFileAcrossFork(Ljava/lang/String;)V
.end method

.method private static native nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeForkSystemServer(II[II[[IJJ)I
.end method

.method public static native nativePreApplicationInit()V
.end method

.method public static native nativeUnmountStorageOnInit()V
.end method

.method public static resetNicePriority()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    return-void
.end method
