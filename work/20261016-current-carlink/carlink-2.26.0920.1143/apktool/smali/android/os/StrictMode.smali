.class public final Landroid/os/StrictMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$InstanceTracker;,
        Landroid/os/StrictMode$InstanceCountViolation;,
        Landroid/os/StrictMode$ViolationInfo;,
        Landroid/os/StrictMode$ThreadSpanState;,
        Landroid/os/StrictMode$Span;,
        Landroid/os/StrictMode$LogStackTrace;,
        Landroid/os/StrictMode$AndroidCloseGuardReporter;,
        Landroid/os/StrictMode$AndroidBlockGuardPolicy;,
        Landroid/os/StrictMode$StrictModeUnbufferedIOViolation;,
        Landroid/os/StrictMode$StrictModeResourceMismatchViolation;,
        Landroid/os/StrictMode$StrictModeCustomViolation;,
        Landroid/os/StrictMode$StrictModeDiskWriteViolation;,
        Landroid/os/StrictMode$StrictModeDiskReadViolation;,
        Landroid/os/StrictMode$StrictModeNetworkViolation;,
        Landroid/os/StrictMode$StrictModeViolation;,
        Landroid/os/StrictMode$VmPolicy;,
        Landroid/os/StrictMode$ThreadPolicy;,
        Landroid/os/StrictMode$ViolationListener;
    }
.end annotation


# static fields
.field private static final ALL_THREAD_DETECT_BITS:I = 0x3f

.field private static final ALL_VM_DETECT_BITS:I = -0x7fff0100

.field private static final CLEARTEXT_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.clear"

.field public static final DETECT_CUSTOM:I = 0x8

.field public static final DETECT_DISK_READ:I = 0x2

.field public static final DETECT_DISK_WRITE:I = 0x1

.field public static final DETECT_NETWORK:I = 0x4

.field public static final DETECT_RESOURCE_MISMATCH:I = 0x10

.field public static final DETECT_UNBUFFERED_IO:I = 0x20

.field public static final DETECT_VM_ACTIVITY_LEAKS:I = 0x400

.field private static final DETECT_VM_CLEARTEXT_NETWORK:I = 0x4000

.field public static final DETECT_VM_CLOSABLE_LEAKS:I = 0x200

.field private static final DETECT_VM_CONTENT_URI_WITHOUT_PERMISSION:I = 0x8000

.field public static final DETECT_VM_CURSOR_LEAKS:I = 0x100

.field private static final DETECT_VM_FILE_URI_EXPOSURE:I = 0x2000

.field private static final DETECT_VM_INSTANCE_LEAKS:I = 0x800

.field public static final DETECT_VM_REGISTRATION_LEAKS:I = 0x1000

.field private static final DETECT_VM_UNTAGGED_SOCKET:I = -0x80000000

.field public static final DISABLE_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.disable"

.field private static final EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_V:Z

.field private static final MAX_OFFENSES_PER_LOOP:I = 0xa

.field private static final MAX_SPAN_TAGS:I = 0x14

.field private static final MIN_DIALOG_INTERVAL_MS:J = 0x7530L

.field private static final MIN_LOG_INTERVAL_MS:J = 0x3e8L

.field public static final NETWORK_POLICY_ACCEPT:I = 0x0

.field public static final NETWORK_POLICY_LOG:I = 0x1

.field public static final NETWORK_POLICY_REJECT:I = 0x2

.field private static final NO_OP_SPAN:Landroid/os/StrictMode$Span;

.field public static final PENALTY_DEATH:I = 0x40000

.field public static final PENALTY_DEATH_ON_CLEARTEXT_NETWORK:I = 0x2000000

.field public static final PENALTY_DEATH_ON_FILE_URI_EXPOSURE:I = 0x4000000

.field public static final PENALTY_DEATH_ON_NETWORK:I = 0x1000000

.field public static final PENALTY_DIALOG:I = 0x20000

.field public static final PENALTY_DROPBOX:I = 0x200000

.field public static final PENALTY_FLASH:I = 0x100000

.field public static final PENALTY_GATHER:I = 0x400000

.field public static final PENALTY_LOG:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "StrictMode"

.field private static final THREAD_PENALTY_MASK:I = 0x1770000

.field public static final VISUAL_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.visual"

.field private static final VM_PENALTY_MASK:I = 0x6250000

.field private static final gatheredViolations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sExpectedActivityInstanceCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsIdlerRegistered:Z

.field private static sLastInstanceCountCheckMillis:J

.field private static final sLastVmViolationTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sListener:Landroid/os/StrictMode$ViolationListener;

.field private static final sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private static final sThisThreadSpanState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/StrictMode$ThreadSpanState;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sVmPolicy:Landroid/os/StrictMode$VmPolicy;

.field private static volatile sVmPolicyMask:I

.field private static sWindowManager:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadAndroidPolicy:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/StrictMode$AndroidBlockGuardPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static final violationsBeingTimed:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "StrictMode"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    sput v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 19
    .line 20
    sget-object v1, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    .line 21
    .line 22
    sput-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 23
    .line 24
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    new-instance v1, Landroid/os/StrictMode$1;

    .line 32
    .line 33
    invoke-direct {v1}, Landroid/os/StrictMode$1;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v1, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    .line 37
    .line 38
    new-instance v1, Landroid/os/StrictMode$2;

    .line 39
    .line 40
    invoke-direct {v1}, Landroid/os/StrictMode$2;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v1, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    .line 44
    .line 45
    new-instance v1, Landroid/os/StrictMode$3;

    .line 46
    .line 47
    invoke-direct {v1}, Landroid/os/StrictMode$3;-><init>()V

    .line 48
    .line 49
    .line 50
    sput-object v1, Landroid/os/StrictMode;->threadHandler:Ljava/lang/ThreadLocal;

    .line 51
    .line 52
    new-instance v1, Landroid/os/StrictMode$4;

    .line 53
    .line 54
    invoke-direct {v1}, Landroid/os/StrictMode$4;-><init>()V

    .line 55
    .line 56
    .line 57
    sput-object v1, Landroid/os/StrictMode;->threadAndroidPolicy:Ljava/lang/ThreadLocal;

    .line 58
    .line 59
    const-wide/16 v1, 0x0

    .line 60
    .line 61
    sput-wide v1, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    .line 62
    .line 63
    sput-boolean v0, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 64
    .line 65
    new-instance v0, Landroid/os/StrictMode$6;

    .line 66
    .line 67
    invoke-direct {v0}, Landroid/os/StrictMode$6;-><init>()V

    .line 68
    .line 69
    .line 70
    sput-object v0, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 71
    .line 72
    new-instance v0, Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    .line 76
    .line 77
    sput-object v0, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    .line 78
    .line 79
    new-instance v0, Landroid/os/StrictMode$7;

    .line 80
    .line 81
    invoke-direct {v0}, Landroid/os/StrictMode$7;-><init>()V

    .line 82
    .line 83
    .line 84
    sput-object v0, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    .line 85
    .line 86
    new-instance v0, Landroid/os/StrictMode$8;

    .line 87
    .line 88
    invoke-direct {v0}, Landroid/os/StrictMode$8;-><init>()V

    .line 89
    .line 90
    .line 91
    sput-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    .line 92
    .line 93
    new-instance v0, Landroid/os/StrictMode$9;

    .line 94
    .line 95
    invoke-direct {v0}, Landroid/os/StrictMode$9;-><init>()V

    .line 96
    .line 97
    .line 98
    sput-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    .line 99
    .line 100
    new-instance v0, Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    .line 104
    .line 105
    sput-object v0, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    .line 106
    .line 107
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic access$1000()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static synthetic access$1100()Landroid/os/StrictMode$ViolationListener;
    .locals 1

    sget-object v0, Landroid/os/StrictMode;->sListener:Landroid/os/StrictMode$ViolationListener;

    return-object v0
.end method

.method public static synthetic access$1200(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Landroid/os/StrictMode;->parseViolationFromMessage(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method public static synthetic access$1400(I)V
    .locals 0

    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-void
.end method

.method public static synthetic access$1500(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 0

    invoke-static {p0}, Landroid/os/StrictMode;->executeDeathPenalty(Landroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method public static synthetic access$1600()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static synthetic access$1700()J
    .locals 2

    sget-wide v0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    return-wide v0
.end method

.method public static synthetic access$1702(J)J
    .locals 0

    sput-wide p0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    return-wide p0
.end method

.method public static synthetic access$2400()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static synthetic access$500()Z
    .locals 1

    invoke-static {}, Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z

    move-result v0

    return v0
.end method

.method public static synthetic access$600()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static synthetic access$700()Landroid/util/Singleton;
    .locals 1

    sget-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    return-object v0
.end method

.method public static synthetic access$800()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Landroid/os/StrictMode;->threadHandler:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    return v0
.end method

.method public static allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, -0x3

    .line 6
    .line 7
    if-eq v1, v0, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, v0, v2}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    .line 16
    .line 17
    .line 18
    return-object v1
.end method

.method public static allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, -0x4

    .line 6
    .line 7
    if-eq v1, v0, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, v0, v2}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    .line 16
    .line 17
    .line 18
    return-object v1
.end method

.method private static amTheSystemServerProcess()Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    array-length v1, v0

    .line 24
    move v3, v2

    .line 25
    :goto_0
    if-ge v3, v1, :cond_2

    .line 26
    .line 27
    aget-object v4, v0, v3

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    const-string v5, "com.android.server."

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    return v0

    .line 45
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return v2
.end method

.method public static clearGatheredViolations()V
    .locals 2

    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static conditionallyCheckInstanceCounts()V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 21
    .line 22
    .line 23
    iget-object v2, v0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-array v1, v1, [Ljava/lang/Class;

    .line 30
    .line 31
    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, [Ljava/lang/Class;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-static {v1, v2}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    :goto_0
    array-length v4, v1

    .line 43
    if-ge v2, v4, :cond_2

    .line 44
    .line 45
    aget-object v4, v1, v2

    .line 46
    .line 47
    iget-object v5, v0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    aget-wide v6, v3, v2

    .line 60
    .line 61
    int-to-long v8, v5

    .line 62
    cmp-long v8, v6, v8

    .line 63
    .line 64
    if-lez v8, :cond_1

    .line 65
    .line 66
    new-instance v8, Landroid/os/StrictMode$InstanceCountViolation;

    .line 67
    .line 68
    invoke-direct {v8, v4, v6, v7, v5}, Landroid/os/StrictMode$InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {v4, v8}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    return-void
.end method

.method public static conditionallyEnableDebugLogging()Z
    .locals 6

    .line 1
    const-string/jumbo v0, "persist.sys.strictmode.visual"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/os/StrictMode;->amTheSystemServerProcess()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    move v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    const-string/jumbo v3, "persist.sys.strictmode.disable"

    .line 22
    .line 23
    .line 24
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    sget-boolean v4, Landroid/os/Build;->IS_USER:Z

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    :cond_1
    invoke-static {v1}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    sget-boolean v3, Landroid/os/Build;->IS_ENG:Z

    .line 41
    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    move v0, v2

    .line 45
    :cond_3
    sget-boolean v4, Landroid/os/Build;->IS_USER:Z

    .line 46
    .line 47
    if-nez v4, :cond_4

    .line 48
    .line 49
    const v5, 0x200007

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    const/4 v5, 0x7

    .line 54
    :goto_1
    if-eqz v0, :cond_5

    .line 55
    .line 56
    const/high16 v0, 0x100000

    .line 57
    .line 58
    or-int/2addr v5, v0

    .line 59
    :cond_5
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 60
    .line 61
    .line 62
    if-eqz v4, :cond_6

    .line 63
    .line 64
    invoke-static {v1}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_6
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    .line 69
    .line 70
    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-nez v3, :cond_7

    .line 78
    .line 79
    const/16 v1, 0x400

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :cond_7
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v3, :cond_8

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 92
    .line 93
    .line 94
    :cond_8
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    const/16 v3, 0x2710

    .line 99
    .line 100
    const/high16 v4, -0x80000000

    .line 101
    .line 102
    if-ge v1, v3, :cond_9

    .line 103
    .line 104
    invoke-static {v0, v4}, Landroid/os/StrictMode$VmPolicy$Builder;->access$400(Landroid/os/StrictMode$VmPolicy$Builder;I)Landroid/os/StrictMode$VmPolicy$Builder;

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_9
    invoke-virtual {v0, v4}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    .line 109
    .line 110
    .line 111
    :goto_2
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Landroid/os/StrictMode;->vmClosableObjectLeaksEnabled()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-static {v0}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    .line 123
    .line 124
    .line 125
    :goto_3
    return v2
.end method

.method public static decrementExpectedActivityCount(Ljava/lang/Class;)V
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-class v0, Landroid/os/StrictMode;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 8
    .line 9
    iget v1, v1, Landroid/os/StrictMode$VmPolicy;->mask:I

    .line 10
    .line 11
    and-int/lit16 v1, v1, 0x400

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :cond_1
    sget-object v1, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Integer;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    add-int/lit8 v2, v2, -0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    :goto_0
    move v2, v3

    .line 43
    :goto_1
    if-nez v2, :cond_4

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v1, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-static {p0}, Landroid/os/StrictMode$InstanceTracker;->getInstanceCount(Ljava/lang/Class;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-gt v0, v2, :cond_5

    .line 64
    .line 65
    return-void

    .line 66
    :cond_5
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 73
    .line 74
    .line 75
    invoke-static {p0, v3}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    int-to-long v3, v2

    .line 80
    cmp-long v3, v0, v3

    .line 81
    .line 82
    if-lez v3, :cond_6

    .line 83
    .line 84
    new-instance v3, Landroid/os/StrictMode$InstanceCountViolation;

    .line 85
    .line 86
    invoke-direct {v3, p0, v0, v1, v2}, Landroid/os/StrictMode$InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {p0, v3}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    :cond_6
    return-void

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    throw p0
.end method

.method public static disableDeathOnFileUriExposure()V
    .locals 2

    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    const v1, -0x4002001

    and-int/2addr v0, v1

    sput v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    return-void
.end method

.method private static dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x14

    .line 8
    .line 9
    if-le v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "Dropboxing async; in-flight="

    .line 22
    .line 23
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "StrictMode"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_1
    new-instance v0, Landroid/os/StrictMode$5;

    .line 39
    .line 40
    const-string v1, "callActivityManagerForStrictModeDropbox"

    .line 41
    .line 42
    invoke-direct {v0, v1, p0, p1}, Landroid/os/StrictMode$5;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static enableDeathOnFileUriExposure()V
    .locals 2

    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    const v1, 0x4002000

    or-int/2addr v0, v1

    sput v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    return-void
.end method

.method public static enableDeathOnNetwork()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    or-int/lit8 v0, v0, 0x4

    .line 6
    .line 7
    const/high16 v1, 0x1000000

    .line 8
    .line 9
    or-int/2addr v0, v1

    .line 10
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static enableDefaults()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;
    .locals 5

    .line 1
    const-string v0, "Span enter="

    .line 2
    .line 3
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object p0, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    if-eqz p0, :cond_4

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_4

    .line 17
    .line 18
    sget-object v1, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/os/StrictMode$ThreadSpanState;

    .line 25
    .line 26
    monitor-enter v1

    .line 27
    :try_start_0
    iget-object v2, v1, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-static {v2}, Landroid/os/StrictMode$Span;->access$2000(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iput-object v3, v1, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    .line 36
    .line 37
    iget v3, v1, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    .line 38
    .line 39
    add-int/lit8 v3, v3, -0x1

    .line 40
    .line 41
    iput v3, v1, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v2, Landroid/os/StrictMode$Span;

    .line 45
    .line 46
    invoke-direct {v2, v1}, Landroid/os/StrictMode$Span;-><init>(Landroid/os/StrictMode$ThreadSpanState;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-static {v2, p0}, Landroid/os/StrictMode$Span;->access$2102(Landroid/os/StrictMode$Span;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    invoke-static {v2, v3, v4}, Landroid/os/StrictMode$Span;->access$2202(Landroid/os/StrictMode$Span;J)J

    .line 57
    .line 58
    .line 59
    iget-object v3, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    .line 60
    .line 61
    invoke-static {v2, v3}, Landroid/os/StrictMode$Span;->access$2002(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 62
    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    invoke-static {v2, v3}, Landroid/os/StrictMode$Span;->access$2302(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 66
    .line 67
    .line 68
    iput-object v2, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    .line 69
    .line 70
    iget v3, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 71
    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    iput v3, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 75
    .line 76
    invoke-static {v2}, Landroid/os/StrictMode$Span;->access$2000(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    invoke-static {v2}, Landroid/os/StrictMode$Span;->access$2000(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v3, v2}, Landroid/os/StrictMode$Span;->access$2302(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 87
    .line 88
    .line 89
    :cond_2
    sget-boolean v3, Landroid/os/StrictMode;->LOG_V:Z

    .line 90
    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    const-string v3, "StrictMode"

    .line 94
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p0, "; size="

    .line 104
    .line 105
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget p0, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 109
    .line 110
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_3
    monitor-exit v1

    .line 121
    return-object v2

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    throw p0

    .line 125
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    const-string/jumbo v0, "name must be non-null and non-empty"

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0
.end method

.method private static executeDeathPenalty(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/os/StrictMode;->parseViolationFromMessage(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Landroid/os/StrictMode$StrictModeViolation;

    .line 10
    .line 11
    iget p0, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, v0, v2}, Landroid/os/StrictMode$StrictModeViolation;-><init>(IILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v1
.end method

.method public static getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;
    .locals 3

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v0
.end method

.method public static getThreadPolicyMask()I
    .locals 1

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->getPolicyMask()I

    move-result v0

    return v0
.end method

.method public static getVmPolicy()Landroid/os/StrictMode$VmPolicy;
    .locals 2

    .line 1
    const-class v0, Landroid/os/StrictMode;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public static hasGatheredViolations()Z
    .locals 1

    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static incrementExpectedActivityCount(Ljava/lang/Class;)V
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-class v0, Landroid/os/StrictMode;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 8
    .line 9
    iget v1, v1, Landroid/os/StrictMode$VmPolicy;->mask:I

    .line 10
    .line 11
    and-int/lit16 v1, v1, 0x400

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :cond_1
    sget-object v1, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Integer;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    add-int/2addr v3, v2

    .line 34
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public static noteDiskRead()V
    .locals 2

    .line 1
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onReadFromDisk()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static noteDiskWrite()V
    .locals 2

    .line 1
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onWriteToDisk()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static noteResourceMismatch(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onResourceMismatch(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static noteSlowCall(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onCustomSlowCall(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static noteUnbufferedIO()V
    .locals 2

    .line 1
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onUnbufferedIO()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static onBinderStrictModePolicyChange(I)V
    .locals 0

    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    return-void
.end method

.method public static onCleartextNetworkDetected([B)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    const/16 v2, 0x14

    .line 6
    .line 7
    const/16 v3, 0x10

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    aget-byte v1, p0, v0

    .line 12
    .line 13
    and-int/lit16 v1, v1, 0xf0

    .line 14
    .line 15
    const/16 v2, 0x40

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    new-array v2, v1, [B

    .line 21
    .line 22
    invoke-static {p0, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    array-length v1, p0

    .line 27
    const/16 v2, 0x28

    .line 28
    .line 29
    if-lt v1, v2, :cond_1

    .line 30
    .line 31
    aget-byte v1, p0, v0

    .line 32
    .line 33
    and-int/lit16 v1, v1, 0xf0

    .line 34
    .line 35
    const/16 v2, 0x60

    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    new-array v2, v3, [B

    .line 40
    .line 41
    const/16 v1, 0x18

    .line 42
    .line 43
    invoke-static {p0, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v2, 0x0

    .line 48
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const-string v3, "Detected cleartext network traffic from UID "

    .line 53
    .line 54
    invoke-static {v3, v1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, " to "

    .line 69
    .line 70
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :catch_0
    :cond_2
    sget v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 85
    .line 86
    const/high16 v2, 0x2000000

    .line 87
    .line 88
    and-int/2addr v1, v2

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    :cond_3
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    new-instance v1, Ljava/lang/Throwable;

    .line 101
    .line 102
    invoke-direct {v1, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p0, v1, v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public static onContentUriWithoutPermission(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, " exposed beyond app through "

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, " without permission grant flags; did you forget FLAG_GRANT_READ_URI_PERMISSION?"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance p1, Ljava/lang/Throwable;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    invoke-static {p0, p1}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static onFileUriExposed(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, " exposed beyond app through "

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sget p1, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 22
    .line 23
    const/high16 v0, 0x4000000

    .line 24
    .line 25
    and-int/2addr p1, v0

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    new-instance p1, Ljava/lang/Throwable;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    invoke-static {p0, p1}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p1, Landroid/os/FileUriExposedException;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Landroid/os/FileUriExposedException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public static onIntentReceiverLeaked(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onServiceConnectionLeaked(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onUntaggedSocket()V
    .locals 2

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Untagged socket detected; use TrafficStats.setThreadSocketTag() to track all network usage"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    sget v2, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    .line 3
    :goto_0
    sget v6, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v7, 0x40000

    and-int/2addr v6, v7

    if-nez v6, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v6, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v4

    .line 4
    :goto_2
    sget v7, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v8, 0x10000

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    .line 5
    :goto_3
    new-instance v7, Landroid/os/StrictMode$ViolationInfo;

    sget v8, Landroid/os/StrictMode;->sVmPolicyMask:I

    invoke-direct {v7, v0, v1, v8}, Landroid/os/StrictMode$ViolationInfo;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 6
    iput v5, v7, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    const/4 v8, 0x0

    .line 7
    iput-object v8, v7, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .line 8
    iput-object v8, v7, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    .line 9
    invoke-virtual {v7}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 11
    sget-object v11, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    monitor-enter v11

    .line 12
    :try_start_0
    invoke-virtual {v11, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_4

    .line 13
    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long v17, v9, v15

    goto :goto_4

    :cond_4
    const-wide v17, 0x7fffffffffffffffL

    move-wide v15, v13

    :goto_4
    const-wide/16 v19, 0x3e8

    cmp-long v12, v17, v19

    if-lez v12, :cond_5

    .line 14
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_5
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_6

    .line 16
    sget-object v8, Landroid/os/StrictMode;->sListener:Landroid/os/StrictMode$ViolationListener;

    if-eqz v8, :cond_6

    .line 17
    sget-object v8, Landroid/os/StrictMode;->sListener:Landroid/os/StrictMode$ViolationListener;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/os/StrictMode$ViolationListener;->onViolation(Ljava/lang/String;)V

    :cond_6
    if-eqz v4, :cond_7

    if-lez v12, :cond_7

    const-string v4, "StrictMode"

    .line 18
    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    const v0, -0x7fff0100

    .line 19
    sget v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/2addr v0, v1

    or-int/2addr v0, v3

    if-eqz v2, :cond_8

    if-nez v6, :cond_8

    .line 20
    invoke-static {v0, v7}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    return-void

    :cond_8
    if-eqz v2, :cond_a

    cmp-long v1, v15, v13

    if-nez v1, :cond_a

    .line 21
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 22
    :try_start_1
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 23
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 24
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    move-result-object v3

    .line 25
    invoke-interface {v2, v3, v0, v7}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :goto_5
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 27
    :try_start_2
    instance-of v2, v0, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    const-string v2, "StrictMode"

    const-string v3, "RemoteException trying to handle StrictMode violation"

    .line 28
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 29
    :goto_6
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v0

    :cond_a
    :goto_7
    if-eqz v6, :cond_b

    .line 30
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "StrictMode VmPolicy violation with POLICY_DEATH; shutting down."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/16 v0, 0xa

    .line 32
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_b
    return-void

    :catchall_1
    move-exception v0

    .line 33
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static parsePolicyFromMessage(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    const-string/jumbo v1, "policy="

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v1, 0x20

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, -0x1

    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    const/4 v2, 0x7

    .line 25
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return p0

    .line 34
    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method private static parseViolationFromMessage(Ljava/lang/String;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string/jumbo v1, "violation="

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, -0x1

    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    add-int/lit8 v1, v1, 0xa

    .line 17
    .line 18
    const/16 v3, 0x20

    .line 19
    .line 20
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ne v3, v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    :cond_2
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return p0

    .line 39
    :catch_0
    return v0
.end method

.method public static readAndHandleBinderCallViolations(Landroid/os/Parcel;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "# via Binder call with stack:\n"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    .line 12
    .line 13
    const/16 v2, 0x100

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v1, v0, v3, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Landroid/os/StrictMode$LogStackTrace;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-direct {v2, v4}, Landroid/os/StrictMode$LogStackTrace;-><init>(Landroid/os/StrictMode$1;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/high16 v2, 0x400000

    .line 40
    .line 41
    and-int/2addr v1, v2

    .line 42
    const/4 v2, 0x1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    move v1, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v1, v3

    .line 48
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    :goto_1
    if-ge v3, v4, :cond_2

    .line 53
    .line 54
    new-instance v5, Landroid/os/StrictMode$ViolationInfo;

    .line 55
    .line 56
    xor-int/lit8 v6, v1, 0x1

    .line 57
    .line 58
    invoke-direct {v5, p0, v6}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    .line 59
    .line 60
    .line 61
    iget-object v6, v5, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 62
    .line 63
    invoke-virtual {v6, v0}, Landroid/app/ApplicationErrorReport$CrashInfo;->appendStackTrace(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    instance-of v7, v6, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 71
    .line 72
    if-eqz v7, :cond_1

    .line 73
    .line 74
    check-cast v6, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 75
    .line 76
    invoke-virtual {v6, v5}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    return-void
.end method

.method private static setBlockGuardPolicy(I)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Ldalvik/system/BlockGuard;->LAX_POLICY:Ldalvik/system/BlockGuard$Policy;

    .line 4
    .line 5
    invoke-static {p0}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    sget-object v0, Landroid/os/StrictMode;->threadAndroidPolicy:Ljava/lang/ThreadLocal;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 27
    .line 28
    invoke-static {v0}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->setPolicyMask(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private static setCloseGuardEnabled(Z)V
    .locals 2

    .line 1
    invoke-static {}, Ldalvik/system/CloseGuard;->getReporter()Ldalvik/system/CloseGuard$Reporter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Landroid/os/StrictMode$AndroidCloseGuardReporter;-><init>(Landroid/os/StrictMode$1;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ldalvik/system/CloseGuard;->setReporter(Ldalvik/system/CloseGuard$Reporter;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p0}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    .locals 0

    iget p0, p0, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-void
.end method

.method private static setThreadPolicyMask(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/os/Binder;->setThreadStrictModePolicy(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static setViolationListener(Landroid/os/StrictMode$ViolationListener;)V
    .locals 0

    sput-object p0, Landroid/os/StrictMode;->sListener:Landroid/os/StrictMode$ViolationListener;

    return-void
.end method

.method public static setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    .locals 5

    .line 1
    const-class v0, Landroid/os/StrictMode;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 5
    .line 6
    iget v1, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    .line 7
    .line 8
    sput v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 9
    .line 10
    invoke-static {}, Landroid/os/StrictMode;->vmClosableObjectLeaksEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, v1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 26
    .line 27
    iget-object p0, p0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    sget p0, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 36
    .line 37
    const/high16 v4, 0x6250000

    .line 38
    .line 39
    and-int/2addr p0, v4

    .line 40
    if-nez p0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sget-boolean p0, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 44
    .line 45
    if-nez p0, :cond_2

    .line 46
    .line 47
    sget-object p0, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 50
    .line 51
    .line 52
    sput-boolean v2, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    sget-object p0, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 56
    .line 57
    invoke-virtual {v1, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 58
    .line 59
    .line 60
    sput-boolean v3, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 61
    .line 62
    :cond_2
    :goto_1
    sget p0, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 63
    .line 64
    and-int/lit16 p0, p0, 0x4000

    .line 65
    .line 66
    if-eqz p0, :cond_4

    .line 67
    .line 68
    sget p0, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 69
    .line 70
    const/high16 v1, 0x40000

    .line 71
    .line 72
    and-int/2addr p0, v1

    .line 73
    if-nez p0, :cond_3

    .line 74
    .line 75
    sget p0, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 76
    .line 77
    const/high16 v1, 0x2000000

    .line 78
    .line 79
    and-int/2addr p0, v1

    .line 80
    if-eqz p0, :cond_5

    .line 81
    .line 82
    :cond_3
    const/4 v2, 0x2

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    move v2, v3

    .line 85
    :cond_5
    :goto_2
    const-string/jumbo p0, "network_management"

    .line 86
    .line 87
    .line 88
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 93
    .line 94
    .line 95
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    if-eqz p0, :cond_6

    .line 97
    .line 98
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-interface {p0, v1, v2}, Landroid/os/INetworkManagementService;->setUidCleartextNetworkPolicy(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_6
    if-eqz v2, :cond_7

    .line 107
    .line 108
    :try_start_2
    const-string p0, "StrictMode"

    .line 109
    .line 110
    const-string v1, "Dropping requested network policy due to missing service!"

    .line 111
    .line 112
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    :catch_0
    :cond_7
    :goto_3
    monitor-exit v0

    .line 116
    return-void

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    throw p0
.end method

.method private static tooManyViolationsThisLoop()Z
    .locals 2

    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static trackActivity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/os/StrictMode$InstanceTracker;

    invoke-direct {v0, p0}, Landroid/os/StrictMode$InstanceTracker;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static vmCleartextNetworkEnabled()Z
    .locals 1

    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static vmClosableObjectLeaksEnabled()Z
    .locals 1

    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static vmContentUriWithoutPermissionEnabled()Z
    .locals 2

    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static vmFileUriExposureEnabled()Z
    .locals 1

    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static vmRegistrationLeaksEnabled()Z
    .locals 1

    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static vmSqliteObjectLeaksEnabled()Z
    .locals 1

    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static vmUntaggedSocketEnabled()Z
    .locals 2

    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static writeGatheredViolationsToParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x3

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    .line 27
    .line 28
    move v3, v1

    .line 29
    :goto_0
    if-ge v3, v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Landroid/os/StrictMode$ViolationInfo;

    .line 36
    .line 37
    invoke-virtual {v4, p0, v1}, Landroid/os/StrictMode$ViolationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    sget-object p0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
