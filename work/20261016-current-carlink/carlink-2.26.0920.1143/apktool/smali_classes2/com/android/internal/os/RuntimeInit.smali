.class public Lcom/android/internal/os/RuntimeInit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;,
        Lcom/android/internal/os/RuntimeInit$Arguments;,
        Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;,
        Lcom/android/internal/os/RuntimeInit$LoggingHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final PRC_COMPATIBILITY:Z

.field static final TAG:Ljava/lang/String; = "AndroidRuntime"

.field public static appDataDir:Ljava/lang/String; = null

.field private static initialized:Z = false

.field private static mApplicationObject:Landroid/os/IBinder; = null

.field private static volatile mCrashing:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ro.sys.prc_compatibility"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/internal/os/RuntimeInit;->PRC_COMPATIBILITY:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/RuntimeInit;->mCrashing:Z

    return v0
.end method

.method public static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/internal/os/RuntimeInit;->mCrashing:Z

    return p0
.end method

.method public static synthetic access$100()Landroid/os/IBinder;
    .locals 1

    sget-object v0, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    return-object v0
.end method

.method public static synthetic access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/os/RuntimeInit;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static applicationInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->nativeSetExitWithoutCleanup(Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/high16 v1, 0x3f400000    # 0.75f

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setTargetSdkVersion(I)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-boolean v0, Lcom/android/internal/os/RuntimeInit;->PRC_COMPATIBILITY:Z

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ldalvik/system/VMRuntime;->setPrcCompatibility(Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    sget-object v0, Lcom/android/internal/os/RuntimeInit;->appDataDir:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ldalvik/system/VMRuntime;->setPackageDataDir(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance p0, Lcom/android/internal/os/RuntimeInit$Arguments;

    .line 40
    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/os/RuntimeInit$Arguments;-><init>([Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v0, 0x40

    .line 45
    .line 46
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {p1, p0, p2}, Lcom/android/internal/os/RuntimeInit;->findStaticMain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public static final commonInit()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/internal/os/RuntimeInit$LoggingHandler;-><init>(Lcom/android/internal/os/RuntimeInit$1;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Thread;->setUncaughtExceptionPreHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;-><init>(Lcom/android/internal/os/RuntimeInit$1;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/android/internal/os/RuntimeInit$1;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/android/internal/os/RuntimeInit$1;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->setInstance(Lorg/apache/harmony/luni/internal/util/TimezoneGetter;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->reset()V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/android/internal/logging/AndroidConfig;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/android/internal/logging/AndroidConfig;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getDefaultUserAgent()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "http.agent"

    .line 46
    .line 47
    invoke-static {v1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/android/server/NetworkManagementSocketTagger;->install()V

    .line 51
    .line 52
    .line 53
    const-string v0, "ro.kernel.android.tracing"

    .line 54
    .line 55
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "1"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    const-string v0, "AndroidRuntime"

    .line 68
    .line 69
    const-string v1, "NOTE: emulator trace profiling enabled"

    .line 70
    .line 71
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    invoke-static {}, Landroid/os/Debug;->enableEmulatorTraceOutput()V

    .line 75
    .line 76
    .line 77
    :cond_0
    const/4 v0, 0x1

    .line 78
    sput-boolean v0, Lcom/android/internal/os/RuntimeInit;->initialized:Z

    .line 79
    .line 80
    return-void
.end method

.method public static final enableDdms()V
    .locals 0

    invoke-static {}, Landroid/ddm/DdmRegister;->registerHandlers()V

    return-void
.end method

.method private static findStaticMain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {p0, v0, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    :try_start_1
    const-string v1, "main"

    .line 7
    .line 8
    new-array v0, v0, [Ljava/lang/Class;

    .line 9
    .line 10
    const-class v2, [Ljava/lang/String;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v0, v3

    .line 14
    .line 15
    invoke-virtual {p2, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    new-instance p0, Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;

    .line 36
    .line 37
    invoke-direct {p0, p2, p1}, Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    const-string p2, "Main method is not public and static on "

    .line 44
    .line 45
    invoke-static {p2, p0}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :catch_0
    move-exception p1

    .line 54
    new-instance p2, Ljava/lang/RuntimeException;

    .line 55
    .line 56
    const-string v0, "Problem getting static main on "

    .line 57
    .line 58
    invoke-static {v0, p0}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw p2

    .line 66
    :catch_1
    move-exception p1

    .line 67
    new-instance p2, Ljava/lang/RuntimeException;

    .line 68
    .line 69
    const-string v0, "Missing static main on "

    .line 70
    .line 71
    invoke-static {v0, p0}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw p2

    .line 79
    :catch_2
    move-exception p1

    .line 80
    new-instance p2, Ljava/lang/RuntimeException;

    .line 81
    .line 82
    const-string v0, "Missing class when invoking static main "

    .line 83
    .line 84
    invoke-static {v0, p0}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw p2
.end method

.method public static final getApplicationObject()Landroid/os/IBinder;
    .locals 1

    sget-object v0, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    return-object v0
.end method

.method private static getDefaultUserAgent()Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    const-string v1, "Dalvik/"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/accessibilityservice/c;->q(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "java.vm.version"

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " (Linux; U; Android "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-lez v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v1, "1.0"

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "REL"

    .line 38
    .line 39
    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-lez v2, :cond_1

    .line 54
    .line 55
    const-string v2, "; "

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_1
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-lez v2, :cond_2

    .line 70
    .line 71
    const-string v2, " Build/"

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :cond_2
    const-string v1, ")"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->enableDdms()V

    .line 2
    .line 3
    .line 4
    array-length v0, p0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    aget-object p0, p0, v0

    .line 10
    .line 11
    const-string v0, "application"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->redirectLogStreams()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->nativeFinishInit()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private static final native nativeFinishInit()V
.end method

.method private static final native nativeSetExitWithoutCleanup(Z)V
.end method

.method public static redirectLogStreams()V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/internal/os/AndroidPrintStream;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    const-string v2, "System.out"

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/AndroidPrintStream;-><init>(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/android/internal/os/AndroidPrintStream;

    .line 23
    .line 24
    const/4 v1, 0x5

    .line 25
    const-string v2, "System.err"

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/AndroidPrintStream;-><init>(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static final setApplicationObject(Landroid/os/IBinder;)V
    .locals 0

    sput-object p0, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    .line 6
    .line 7
    new-instance v2, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .line 8
    .line 9
    invoke-direct {v2, p1}, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;-><init>(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1, p0, p2, v2}, Landroid/app/IActivityManager;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    .line 23
    .line 24
    .line 25
    const/16 p0, 0xa

    .line 26
    .line 27
    invoke-static {p0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    instance-of p2, p0, Landroid/os/DeadObjectException;

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p2, "Error reporting WTF"

    .line 38
    .line 39
    const-string v0, "AndroidRuntime"

    .line 40
    .line 41
    invoke-static {v0, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    const-string p0, "Original WTF:"

    .line 45
    .line 46
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void
.end method
