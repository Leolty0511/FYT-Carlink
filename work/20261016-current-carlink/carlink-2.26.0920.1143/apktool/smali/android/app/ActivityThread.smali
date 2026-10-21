.class public final Landroid/app/ActivityThread;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$DropBoxReporter;,
        Landroid/app/ActivityThread$EventLoggingReporter;,
        Landroid/app/ActivityThread$ProviderRefCount;,
        Landroid/app/ActivityThread$StopInfo;,
        Landroid/app/ActivityThread$GcIdler;,
        Landroid/app/ActivityThread$Idler;,
        Landroid/app/ActivityThread$H;,
        Landroid/app/ActivityThread$ApplicationThread;,
        Landroid/app/ActivityThread$ActivityConfigChangeData;,
        Landroid/app/ActivityThread$RequestAssistContextExtras;,
        Landroid/app/ActivityThread$UpdateCompatibilityData;,
        Landroid/app/ActivityThread$DumpHeapData;,
        Landroid/app/ActivityThread$ContextCleanupInfo;,
        Landroid/app/ActivityThread$ResultData;,
        Landroid/app/ActivityThread$DumpComponentInfo;,
        Landroid/app/ActivityThread$Profiler;,
        Landroid/app/ActivityThread$AppBindData;,
        Landroid/app/ActivityThread$ServiceArgsData;,
        Landroid/app/ActivityThread$BindServiceData;,
        Landroid/app/ActivityThread$CreateServiceData;,
        Landroid/app/ActivityThread$CreateBackupAgentData;,
        Landroid/app/ActivityThread$ReceiverData;,
        Landroid/app/ActivityThread$NewIntentData;,
        Landroid/app/ActivityThread$ProviderClientRecord;,
        Landroid/app/ActivityThread$ActivityClientRecord;,
        Landroid/app/ActivityThread$ProviderKey;
    }
.end annotation


# static fields
.field private static final ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x4

.field private static final DEBUG_BACKUP:Z = false

.field public static final DEBUG_BROADCAST:Z = false

.field public static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_MEMORY_TRIM:Z = false

.field static final DEBUG_MESSAGES:Z = false

.field private static final DEBUG_ORDER:Z = false

.field private static final DEBUG_PROVIDER:Z = false

.field private static final DEBUG_RESULTS:Z = false

.field private static final DEBUG_SERVICE:Z = false

.field private static final DONT_REPORT:I = 0x2

.field private static final HEAP_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s"

.field private static final HEAP_FULL_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

.field public static final INVALID_PROC_STATE_SEQ:J = -0x1L

.field private static final LOG_AM_ON_PAUSE_CALLED:I = 0x7545

.field private static final LOG_AM_ON_RESUME_CALLED:I = 0x7546

.field private static final LOG_AM_ON_STOP_CALLED:I = 0x7561

.field private static final MIN_TIME_BETWEEN_GCS:J = 0x1388L

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field private static final ONE_COUNT_COLUMN_HEADER:Ljava/lang/String; = "%21s %8s"

.field private static final REPORT_TO_ACTIVITY:Z = true

.field public static final SERVICE_DONE_EXECUTING_ANON:I = 0x0

.field public static final SERVICE_DONE_EXECUTING_START:I = 0x1

.field public static final SERVICE_DONE_EXECUTING_STOP:I = 0x2

.field private static final SQLITE_MEM_RELEASED_EVENT_LOG_TAG:I = 0x124fb

.field public static final TAG:Ljava/lang/String; = "ActivityThread"

.field private static final THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"

.field private static final USER_LEAVING:I = 0x1

.field static final localLOGV:Z = false

.field private static volatile sCurrentActivityThread:Landroid/app/ActivityThread;

.field private static final sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field static volatile sMainThreadHandler:Landroid/os/Handler;

.field static volatile sPackageManager:Landroid/content/pm/IPackageManager;


# instance fields
.field final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mAllApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field final mAppThread:Landroid/app/ActivityThread$ApplicationThread;

.field private mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

.field final mBackupAgents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field mBoundApplication:Landroid/app/ActivityThread$AppBindData;

.field mCompatConfiguration:Landroid/content/res/Configuration;

.field mConfiguration:Landroid/content/res/Configuration;

.field mCoreSettings:Landroid/os/Bundle;

.field mCurDefaultDisplayDpi:I

.field mDensityCompatMode:Z

.field final mGcIdler:Landroid/app/ActivityThread$GcIdler;

.field mGcIdlerScheduled:Z

.field final mH:Landroid/app/ActivityThread$H;

.field mInitialApplication:Landroid/app/Application;

.field mInstrumentation:Landroid/app/Instrumentation;

.field mInstrumentationAppDir:Ljava/lang/String;

.field mInstrumentationLibDir:Ljava/lang/String;

.field mInstrumentationPackageName:Ljava/lang/String;

.field mInstrumentationSplitAppDirs:[Ljava/lang/String;

.field mInstrumentedAppDir:Ljava/lang/String;

.field mInstrumentedLibDir:Ljava/lang/String;

.field mInstrumentedSplitAppDirs:[Ljava/lang/String;

.field mJitEnabled:Z

.field mLastAssistStructures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/assist/AssistStructure;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastSessionId:I

.field mLifecycleSeq:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mResourcesManager"
    .end annotation
.end field

.field final mLocalProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLocalProvidersByName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLooper:Landroid/os/Looper;

.field private mMainThreadConfig:Landroid/content/res/Configuration;

.field private mNetworkBlockSeq:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPolicyLock"
    .end annotation
.end field

.field private final mNetworkPolicyLock:Ljava/lang/Object;

.field mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

.field mNumVisibleActivities:I

.field final mOnPauseListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Landroid/app/OnActivityPausedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPackages:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mResourcesManager"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingConfiguration:Landroid/content/res/Configuration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mResourcesManager"
    .end annotation
.end field

.field mProfiler:Landroid/app/ActivityThread$Profiler;

.field final mProviderMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ActivityThread$ProviderKey;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mProviderRefCountMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderRefCount;",
            ">;"
        }
    .end annotation
.end field

.field final mRelaunchingActivities:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mResourcesManager"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mResourcePackages:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mResourcesManager"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResourcesManager:Landroid/app/ResourcesManager;

.field final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field mSomeActivitiesChanged:Z

.field private mSystemContext:Landroid/app/ContextImpl;

.field mSystemThread:Z

.field private mSystemUiContext:Landroid/app/ContextImpl;

.field private mThumbnailCanvas:Landroid/graphics/Canvas;

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I

.field mUpdatingSystemConfig:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    sput-object v0, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    iput-wide v0, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    .line 14
    .line 15
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    .line 28
    .line 29
    new-instance v0, Landroid/app/ActivityThread$H;

    .line 30
    .line 31
    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 35
    .line 36
    new-instance v0, Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 42
    .line 43
    iput-object v1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput v0, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 47
    .line 48
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    .line 54
    .line 55
    new-instance v2, Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    .line 61
    .line 62
    new-instance v2, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v2, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    .line 68
    .line 69
    new-instance v2, Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    .line 75
    .line 76
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 77
    .line 78
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 81
    .line 82
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 85
    .line 86
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 87
    .line 88
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 89
    .line 90
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 91
    .line 92
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 93
    .line 94
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 95
    .line 96
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    .line 97
    .line 98
    new-instance v2, Landroid/util/ArrayMap;

    .line 99
    .line 100
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v2, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    .line 104
    .line 105
    new-instance v2, Landroid/util/ArrayMap;

    .line 106
    .line 107
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 108
    .line 109
    .line 110
    iput-object v2, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    .line 111
    .line 112
    new-instance v2, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    iput-object v2, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 118
    .line 119
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 120
    .line 121
    iput v0, p0, Landroid/app/ActivityThread;->mLifecycleSeq:I

    .line 122
    .line 123
    new-instance v2, Landroid/util/ArrayMap;

    .line 124
    .line 125
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 129
    .line 130
    new-instance v2, Landroid/util/ArrayMap;

    .line 131
    .line 132
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object v2, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 136
    .line 137
    new-instance v2, Landroid/util/ArrayMap;

    .line 138
    .line 139
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 140
    .line 141
    .line 142
    iput-object v2, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    .line 143
    .line 144
    new-instance v2, Landroid/util/ArrayMap;

    .line 145
    .line 146
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 147
    .line 148
    .line 149
    iput-object v2, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    .line 150
    .line 151
    new-instance v2, Landroid/util/ArrayMap;

    .line 152
    .line 153
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 154
    .line 155
    .line 156
    iput-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    .line 157
    .line 158
    new-instance v2, Landroid/app/ActivityThread$GcIdler;

    .line 159
    .line 160
    invoke-direct {v2, p0}, Landroid/app/ActivityThread$GcIdler;-><init>(Landroid/app/ActivityThread;)V

    .line 161
    .line 162
    .line 163
    iput-object v2, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    .line 164
    .line 165
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 166
    .line 167
    iput-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 168
    .line 169
    new-instance v0, Landroid/content/res/Configuration;

    .line 170
    .line 171
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 172
    .line 173
    .line 174
    iput-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    .line 175
    .line 176
    const/4 v0, -0x1

    .line 177
    iput v0, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 178
    .line 179
    iput v0, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 180
    .line 181
    iput-object v1, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 182
    .line 183
    iput-object v1, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 184
    .line 185
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 190
    .line 191
    return-void
.end method

.method public static synthetic a(Landroid/app/ActivityThread;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->lambda$attach$0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic access$1000(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->nDumpGraphicsInfo(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static synthetic access$1200(Landroid/app/ActivityThread;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1302(Landroid/app/ActivityThread;J)J
    .locals 0

    iput-wide p1, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    return-wide p1
.end method

.method public static synthetic access$1400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    return-void
.end method

.method public static synthetic access$1600(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZI)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZIZI)V

    return-void
.end method

.method public static synthetic access$1700(Landroid/app/ActivityThread;Landroid/os/IBinder;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZII)V

    return-void
.end method

.method public static synthetic access$1800(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public static synthetic access$1900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSendResult(Landroid/app/ActivityThread$ResultData;)V

    return-void
.end method

.method public static synthetic access$200(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    return-object p0
.end method

.method public static synthetic access$2000(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    return-void
.end method

.method public static synthetic access$2100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method public static synthetic access$2200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V

    return-void
.end method

.method public static synthetic access$2300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V

    return-void
.end method

.method public static synthetic access$2400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V

    return-void
.end method

.method public static synthetic access$2500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method public static synthetic access$2600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method public static synthetic access$2700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V

    return-void
.end method

.method public static synthetic access$2800(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic access$2900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method public static synthetic access$300(Landroid/app/ActivityThread;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityThread;->getLifecycleSeq()I

    move-result p0

    return p0
.end method

.method public static synthetic access$3000(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method public static synthetic access$3100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method public static synthetic access$3200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method public static synthetic access$3300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method public static synthetic access$3400(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleSleeping(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public static synthetic access$3500(Landroid/app/ActivityThread;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$3600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    return-void
.end method

.method public static synthetic access$3700(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleEnterAnimationComplete(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic access$3800(Landroid/app/ActivityThread;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityThread;->handleStartBinderTracking()V

    return-void
.end method

.method public static synthetic access$3900(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public static synthetic access$400(Landroid/app/ActivityThread;ILjava/lang/Object;III)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;III)V

    return-void
.end method

.method public static synthetic access$4000(Landroid/app/ActivityThread;Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->handleMultiWindowModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic access$4100(Landroid/app/ActivityThread;Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->handlePictureInPictureModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic access$4200(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    return-void
.end method

.method public static synthetic access$500(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$600(Landroid/app/ActivityThread;ILjava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method public static synthetic access$700(Landroid/app/ActivityThread;ILjava/lang/Object;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V

    return-void
.end method

.method public static synthetic access$800(Landroid/app/ActivityThread;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->adjustIntentForAppClone(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic access$900(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method private adjustIntentForAppClone(Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {p0, v0}, Landroid/app/ActivityThread;->isNeedAdjustHomeActivity(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_4

    .line 59
    .line 60
    const-string v0, "android.intent.extra.shortcut.INTENT"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroid/content/Intent;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v2}, Landroid/content/pm/AppCloneUserInfo;->removeCloneTag(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    new-instance v4, Landroid/content/ComponentName;

    .line 95
    .line 96
    invoke-direct {v4, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-direct {p0, v0}, Landroid/app/ActivityThread;->isNeedAdjustHomeActivity(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    const-string v0, "android.intent.extra.user_handle"

    .line 117
    .line 118
    const/4 v1, -0x1

    .line 119
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-static {v0}, Landroid/content/pm/AppCloneUserInfo;->isAppCloneUserId(I)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_4

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {v1, v0}, Landroid/content/pm/AppCloneUserInfo;->addCloneTag(Ljava/lang/String;I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const-string/jumbo v1, "package"

    .line 142
    .line 143
    .line 144
    const/4 v2, 0x0

    .line 145
    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    :cond_4
    :goto_1
    return-void
.end method

.method private attach(Z)V
    .locals 4

    .line 1
    sput-object p0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    .line 2
    .line 3
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 4
    .line 5
    const-wide/16 v0, 0x40

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroid/app/ActivityThread$1;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Landroid/app/ActivityThread$1;-><init>(Landroid/app/ActivityThread;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Landroid/view/ViewRootImpl;->addFirstDrawHandler(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    const-string p1, "<pre-initialized>"

    .line 18
    .line 19
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {p1, v2}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/app/IApplicationThread$Stub;->asBinder()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/android/internal/os/RuntimeInit;->setApplicationObject(Landroid/os/IBinder;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :try_start_0
    const-string v2, "attachApplication"

    .line 40
    .line 41
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 45
    .line 46
    invoke-interface {p1, v2}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Landroid/app/ActivityThread$2;

    .line 53
    .line 54
    invoke-direct {v0, p0, p1}, Landroid/app/ActivityThread$2;-><init>(Landroid/app/ActivityThread;Landroid/app/IActivityManager;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->addGcWatcher(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_0
    const-string/jumbo p1, "system_process"

    .line 74
    .line 75
    .line 76
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-static {p1, v2}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    :try_start_2
    new-instance p1, Landroid/app/Instrumentation;

    .line 84
    .line 85
    invoke-direct {p1}, Landroid/app/Instrumentation;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object p1, p1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 95
    .line 96
    invoke-static {p0, p1}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iget-object p1, p1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 101
    .line 102
    const/4 v2, 0x1

    .line 103
    const/4 v3, 0x0

    .line 104
    invoke-virtual {p1, v2, v3}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 109
    .line 110
    const-string/jumbo p1, "mInitialApplication onCreate"

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/app/Application;->onCreate()V

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 122
    .line 123
    .line 124
    :goto_1
    new-instance p1, Landroid/app/ActivityThread$DropBoxReporter;

    .line 125
    .line 126
    invoke-direct {p1, p0}, Landroid/app/ActivityThread$DropBoxReporter;-><init>(Landroid/app/ActivityThread;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p1}, Llibcore/io/DropBox;->setReporter(Llibcore/io/DropBox$Reporter;)V

    .line 130
    .line 131
    .line 132
    new-instance p1, Landroid/app/a;

    .line 133
    .line 134
    invoke-direct {p1, p0}, Landroid/app/a;-><init>(Landroid/app/ActivityThread;)V

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :catch_1
    move-exception p1

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    .line 143
    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v2, "Unable to instantiate Application():"

    .line 147
    .line 148
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    throw v0
.end method

.method private callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroid/os/PersistableBundle;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 24
    .line 25
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 26
    .line 27
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 28
    .line 29
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-virtual {v1, v2, p1, v0}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 36
    .line 37
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 38
    .line 39
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method private checkAndBlockForNetworkAccess()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    const-wide/16 v3, -0x1

    .line 7
    .line 8
    cmp-long v1, v1, v3

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-wide v5, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    .line 17
    .line 18
    invoke-interface {v1, v5, v6}, Landroid/app/IActivityManager;->waitForNetworkStateUpdate(J)V

    .line 19
    .line 20
    .line 21
    iput-wide v3, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    throw v1
.end method

.method private static checkAndUpdateLifecycleSeq(ILandroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 p2, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return p2

    .line 5
    :cond_0
    iget v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    .line 6
    .line 7
    if-ge p0, v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    iput p0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    .line 12
    .line 13
    return p2
.end method

.method public static final cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "Activity"

    .line 48
    .line 49
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 54
    .line 55
    iput-object p1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 56
    .line 57
    return-void
.end method

.method private createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;
    .locals 10

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getActivityDisplayId(Landroid/os/IBinder;)I

    .line 8
    .line 9
    .line 10
    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    const-string v0, "createActivityContext"

    .line 12
    .line 13
    const-wide/16 v8, 0x40

    .line 14
    .line 15
    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 19
    .line 20
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 21
    .line 22
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 23
    .line 24
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 25
    .line 26
    move-object v2, p0

    .line 27
    invoke-static/range {v2 .. v7}, Landroid/app/ContextImpl;->createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "debug.second-display.pkg"

    .line 39
    .line 40
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 53
    .line 54
    iget-object p1, p1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    array-length v2, p1

    .line 67
    const/4 v3, 0x0

    .line 68
    :goto_0
    if-ge v3, v2, :cond_1

    .line 69
    .line 70
    aget v4, p1, v3

    .line 71
    .line 72
    if-eqz v4, :cond_0

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v1, v4, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Landroid/app/ContextImpl;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    move-object v0, p1

    .line 87
    check-cast v0, Landroid/app/ContextImpl;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    :goto_1
    return-object v0

    .line 94
    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    throw p1
.end method

.method private static createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo p0, "updateFrom"

    .line 10
    .line 11
    .line 12
    const-wide/16 v1, 0x40

    .line 13
    .line 14
    invoke-static {v1, v2, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method private createThumbnailBitmap(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    :try_start_0
    iget v2, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 7
    .line 8
    if-gez v2, :cond_0

    .line 9
    .line 10
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const v3, 0x1050002

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 24
    .line 25
    const v4, 0x1050001

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iput v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 33
    .line 34
    move v5, v3

    .line 35
    move v3, v2

    .line 36
    move v2, v5

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget v3, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 39
    .line 40
    :goto_0
    if-lez v2, :cond_1

    .line 41
    .line 42
    if-lez v3, :cond_1

    .line 43
    .line 44
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v4, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    .line 55
    .line 56
    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    :goto_1
    if-eqz v0, :cond_5

    .line 68
    .line 69
    iget-object v2, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 70
    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    new-instance v2, Landroid/graphics/Canvas;

    .line 74
    .line 75
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v2, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 79
    .line 80
    :cond_2
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 84
    .line 85
    invoke-virtual {v3, v0, v2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-nez v3, :cond_3

    .line 90
    .line 91
    iput-object v0, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 92
    .line 93
    move-object v0, v1

    .line 94
    :cond_3
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :goto_2
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 99
    .line 100
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 101
    .line 102
    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_4

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    .line 110
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v3, "Unable to create thumbnail of "

    .line 114
    .line 115
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p1, ": "

    .line 132
    .line 133
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    throw v1

    .line 151
    :cond_5
    :goto_3
    move-object v1, v0

    .line 152
    :goto_4
    return-object v1
.end method

.method public static currentActivityThread()Landroid/app/ActivityThread;
    .locals 1

    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    return-object v0
.end method

.method public static currentApplication()Landroid/app/Application;
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public static currentOpPackageName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getOpPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0
.end method

.method public static currentPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0
.end method

.method public static currentProcessName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method private deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/internal/content/ReferrerIntent;

    .line 13
    .line 14
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 24
    .line 25
    .line 26
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 27
    .line 28
    iget-object v3, v3, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 34
    .line 35
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 36
    .line 37
    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method private deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroid/app/ResultInfo;

    .line 13
    .line 14
    :try_start_0
    iget-object v3, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 19
    .line 20
    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 25
    .line 26
    .line 27
    iget-object v3, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 33
    .line 34
    iget-object v4, v2, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    .line 35
    .line 36
    iget v5, v2, Landroid/app/ResultInfo;->mRequestCode:I

    .line 37
    .line 38
    iget v6, v2, Landroid/app/ResultInfo;->mResultCode:I

    .line 39
    .line 40
    iget-object v7, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    .line 41
    .line 42
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception v3

    .line 47
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 48
    .line 49
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 50
    .line 51
    invoke-virtual {v4, v5, v3}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v1, "Failure delivering result "

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, " to activity "

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p1, ": "

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {p2, p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    throw p2

    .line 110
    :cond_2
    return-void
.end method

.method public static dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p8

    move-wide/from16 v4, p10

    move-wide/from16 v6, p12

    move-wide/from16 v8, p14

    move-wide/from16 v10, p16

    move-wide/from16 v12, p18

    const/4 v14, 0x4

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    const/16 v14, 0x2c

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    move/from16 v15, p6

    .line 2
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v15, p7

    .line 3
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 4
    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 5
    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    const-string v15, "N/A,"

    .line 6
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-long/2addr v2, v8

    .line 7
    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 8
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 9
    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 10
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-long v2, v4, v10

    .line 11
    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 12
    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 13
    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 14
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-long v2, v6, v12

    .line 15
    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 16
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 17
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 18
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 20
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 21
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 22
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 24
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 25
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 26
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 28
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 29
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 30
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 32
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 33
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 34
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 36
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 37
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 38
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 40
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 41
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 42
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 44
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_0

    .line 45
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 46
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 47
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x11

    if-ge v2, v3, :cond_2

    .line 53
    invoke-static {v2}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 54
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 55
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 56
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 57
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 58
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 59
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 60
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 61
    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_2

    .line 63
    :cond_1
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    const-string v15, "------"

    const/16 v17, 0x3

    const-string v18, ""

    const/16 v20, 0x1

    if-nez p5, :cond_1d

    const-string v21, "Private"

    const-string v22, "Dirty"

    const-string v23, "Heap"

    const/16 v24, 0xa

    const-string v14, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const-string v6, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v25, 0x7

    const/16 v26, 0x6

    const/16 v27, 0x5

    if-eqz p3, :cond_7

    const/16 v7, 0xb

    new-array v12, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v18, v12, v7

    const-string v7, "Pss"

    aput-object v7, v12, v20

    const-string v7, "Pss"

    const/4 v13, 0x2

    aput-object v7, v12, v13

    const-string v7, "Shared"

    aput-object v7, v12, v17

    const/4 v7, 0x4

    aput-object v21, v12, v7

    const-string v7, "Shared"

    aput-object v7, v12, v27

    aput-object v21, v12, v26

    .line 64
    iget-boolean v7, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v7, :cond_4

    const-string v7, "SwapPss"

    goto :goto_3

    :cond_4
    const-string v7, "Swap"

    :goto_3
    aput-object v7, v12, v25

    const/16 v7, 0x8

    aput-object v23, v12, v7

    const/16 v7, 0x9

    aput-object v23, v12, v7

    aput-object v23, v12, v24

    invoke-static {v0, v14, v12}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v7, 0xb

    new-array v12, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v18, v12, v7

    const-string v7, "Total"

    aput-object v7, v12, v20

    const-string v7, "Clean"

    const/4 v13, 0x2

    aput-object v7, v12, v13

    aput-object v22, v12, v17

    const/4 v7, 0x4

    aput-object v22, v12, v7

    const-string v7, "Clean"

    aput-object v7, v12, v27

    const-string v7, "Clean"

    aput-object v7, v12, v26

    aput-object v22, v12, v25

    const-string v7, "Size"

    const/16 v13, 0x8

    aput-object v7, v12, v13

    const-string v7, "Alloc"

    const/16 v13, 0x9

    aput-object v7, v12, v13

    const-string v7, "Free"

    aput-object v7, v12, v24

    .line 65
    invoke-static {v0, v14, v12}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v7, 0xb

    new-array v12, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v18, v12, v7

    aput-object v15, v12, v20

    const/4 v7, 0x2

    aput-object v15, v12, v7

    aput-object v15, v12, v17

    const/4 v7, 0x4

    aput-object v15, v12, v7

    aput-object v15, v12, v27

    aput-object v15, v12, v26

    aput-object v15, v12, v25

    const/16 v7, 0x8

    aput-object v15, v12, v7

    const/16 v7, 0x9

    aput-object v15, v12, v7

    aput-object v15, v12, v24

    .line 66
    invoke-static {v0, v14, v12}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v7, 0xb

    new-array v12, v7, [Ljava/lang/Object;

    const-string v7, "Native Heap"

    const/4 v13, 0x0

    aput-object v7, v12, v13

    .line 67
    iget v7, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v20

    iget v7, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    .line 68
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x2

    aput-object v7, v12, v13

    iget v7, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v17

    iget v7, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 69
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x4

    aput-object v7, v12, v13

    iget v7, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v27

    iget v7, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 70
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v26

    iget-boolean v7, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v7, :cond_5

    iget v7, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    goto :goto_4

    :cond_5
    iget v7, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    :goto_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v25

    .line 71
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v13, 0x8

    aput-object v7, v12, v13

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v13, 0x9

    aput-object v7, v12, v13

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v12, v24

    .line 72
    invoke-static {v0, v14, v12}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v7, 0xb

    new-array v12, v7, [Ljava/lang/Object;

    const-string v7, "Dalvik Heap"

    const/4 v13, 0x0

    aput-object v7, v12, v13

    .line 73
    iget v7, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v20

    iget v7, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    .line 74
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x2

    aput-object v7, v12, v13

    iget v7, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v17

    iget v7, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 75
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x4

    aput-object v7, v12, v13

    iget v7, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v27

    iget v7, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 76
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v26

    iget-boolean v7, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v7, :cond_6

    iget v7, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    goto :goto_5

    :cond_6
    iget v7, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    :goto_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v25

    .line 77
    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v13, 0x8

    aput-object v7, v12, v13

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v21, 0x9

    aput-object v7, v12, v21

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v12, v24

    .line 78
    invoke-static {v0, v14, v12}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_7
    const/16 v13, 0x8

    new-array v7, v13, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v18, v7, v12

    const-string v12, "Pss"

    aput-object v12, v7, v20

    const/4 v12, 0x2

    aput-object v21, v7, v12

    aput-object v21, v7, v17

    .line 79
    iget-boolean v12, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v12, :cond_8

    const-string v12, "SwapPss"

    goto :goto_6

    :cond_8
    const-string v12, "Swap"

    :goto_6
    const/4 v13, 0x4

    aput-object v12, v7, v13

    aput-object v23, v7, v27

    aput-object v23, v7, v26

    aput-object v23, v7, v25

    invoke-static {v0, v6, v7}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v7, 0x8

    new-array v12, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v18, v12, v7

    const-string v7, "Total"

    aput-object v7, v12, v20

    const/4 v7, 0x2

    aput-object v22, v12, v7

    const-string v7, "Clean"

    aput-object v7, v12, v17

    const/4 v7, 0x4

    aput-object v22, v12, v7

    const-string v7, "Size"

    aput-object v7, v12, v27

    const-string v7, "Alloc"

    aput-object v7, v12, v26

    const-string v7, "Free"

    aput-object v7, v12, v25

    .line 80
    invoke-static {v0, v6, v12}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v7, 0x9

    new-array v12, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v18, v12, v7

    aput-object v15, v12, v20

    const/4 v7, 0x2

    aput-object v15, v12, v7

    aput-object v15, v12, v17

    const/4 v7, 0x4

    aput-object v15, v12, v7

    aput-object v15, v12, v27

    aput-object v15, v12, v26

    aput-object v15, v12, v25

    const/16 v7, 0x8

    aput-object v15, v12, v7

    .line 81
    invoke-static {v0, v6, v12}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v12, v7, [Ljava/lang/Object;

    const-string v7, "Native Heap"

    const/4 v13, 0x0

    aput-object v7, v12, v13

    .line 82
    iget v7, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v20

    iget v7, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 83
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x2

    aput-object v7, v12, v13

    iget v7, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 84
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v17

    iget-boolean v7, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v7, :cond_9

    iget v7, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    goto :goto_7

    :cond_9
    iget v7, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 85
    :goto_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x4

    aput-object v7, v12, v13

    .line 86
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v12, v27

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v12, v26

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v12, v25

    .line 87
    invoke-static {v0, v6, v12}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v7, 0x8

    new-array v12, v7, [Ljava/lang/Object;

    const-string v7, "Dalvik Heap"

    const/4 v13, 0x0

    aput-object v7, v12, v13

    .line 88
    iget v7, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v20

    iget v7, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 89
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x2

    aput-object v7, v12, v13

    iget v7, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 90
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v17

    iget-boolean v7, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v7, :cond_a

    iget v7, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    goto :goto_8

    :cond_a
    iget v7, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 91
    :goto_8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x4

    aput-object v7, v12, v13

    .line 92
    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v12, v27

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v12, v26

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v12, v25

    .line 93
    invoke-static {v0, v6, v12}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :goto_9
    iget v7, v1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 95
    iget v12, v1, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 96
    iget v13, v1, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v21, v7

    .line 97
    iget v7, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v22, v7

    .line 98
    iget v7, v1, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    move/from16 v23, v7

    .line 99
    iget v7, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    move/from16 v28, v7

    .line 100
    iget v7, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    move/from16 v29, v7

    .line 101
    iget v7, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    move-object/from16 v30, v15

    const/4 v15, 0x0

    move/from16 v38, v12

    move v12, v7

    move/from16 v7, v21

    move/from16 v21, v13

    move/from16 v13, v38

    :goto_a
    const/16 v4, 0x11

    if-ge v15, v4, :cond_11

    .line 102
    invoke-virtual {v1, v15}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v4

    .line 103
    invoke-virtual {v1, v15}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v5

    .line 104
    invoke-virtual {v1, v15}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v31

    .line 105
    invoke-virtual {v1, v15}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v32

    .line 106
    invoke-virtual {v1, v15}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v33

    .line 107
    invoke-virtual {v1, v15}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v34

    .line 108
    invoke-virtual {v1, v15}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v35

    .line 109
    invoke-virtual {v1, v15}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v36

    if-nez v4, :cond_c

    if-nez v31, :cond_c

    if-nez v32, :cond_c

    if-nez v33, :cond_c

    if-nez v34, :cond_c

    .line 110
    iget-boolean v10, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_b

    move/from16 v10, v36

    goto :goto_b

    :cond_b
    move/from16 v10, v35

    :goto_b
    if-eqz v10, :cond_10

    :cond_c
    if-eqz p3, :cond_e

    const/16 v10, 0xb

    new-array v11, v10, [Ljava/lang/Object;

    .line 111
    invoke-static {v15}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v11, v16

    .line 112
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v37, 0x2

    aput-object v10, v11, v37

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v17

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v19, 0x4

    aput-object v10, v11, v19

    .line 113
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v27

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v26

    iget-boolean v10, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_d

    move/from16 v10, v36

    goto :goto_c

    :cond_d
    move/from16 v10, v35

    .line 114
    :goto_c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v25

    const/16 v10, 0x8

    aput-object v18, v11, v10

    const/16 v37, 0x9

    aput-object v18, v11, v37

    aput-object v18, v11, v24

    .line 115
    invoke-static {v0, v14, v11}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_e
    const/16 v10, 0x8

    new-array v11, v10, [Ljava/lang/Object;

    .line 116
    invoke-static {v15}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v11, v16

    .line 117
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v20

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v37, 0x2

    aput-object v10, v11, v37

    .line 118
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v17

    iget-boolean v10, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_f

    move/from16 v10, v36

    goto :goto_d

    :cond_f
    move/from16 v10, v35

    .line 119
    :goto_d
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v19, 0x4

    aput-object v10, v11, v19

    aput-object v18, v11, v27

    aput-object v18, v11, v26

    aput-object v18, v11, v25

    .line 120
    invoke-static {v0, v6, v11}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_e
    sub-int/2addr v7, v4

    sub-int/2addr v13, v5

    sub-int v21, v21, v31

    sub-int v22, v22, v32

    sub-int v23, v23, v33

    sub-int v28, v28, v34

    sub-int v29, v29, v35

    sub-int v12, v12, v36

    :cond_10
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v10, p16

    goto/16 :goto_a

    :cond_11
    if-eqz p3, :cond_14

    const/16 v4, 0xb

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "Unknown"

    const/4 v10, 0x0

    aput-object v4, v5, v10

    .line 121
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v20

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v5, v7

    .line 122
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v17

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x4

    aput-object v4, v5, v7

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v27

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v26

    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_12

    move/from16 v29, v12

    .line 123
    :cond_12
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v25

    const/16 v4, 0x8

    aput-object v18, v5, v4

    const/16 v4, 0x9

    aput-object v18, v5, v4

    aput-object v18, v5, v24

    .line 124
    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0xb

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "TOTAL"

    const/4 v7, 0x0

    aput-object v4, v5, v7

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v20

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v5, v7

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x4

    aput-object v4, v5, v7

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v27

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v26

    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_13

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v4

    goto :goto_f

    .line 130
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v4

    .line 131
    :goto_f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v25

    add-long/2addr v2, v8

    .line 132
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v5, v4

    add-long v2, p10, p16

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v5, v3

    add-long v2, p12, p18

    .line 133
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v24

    .line 134
    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_11

    :cond_14
    const/16 v4, 0x8

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "Unknown"

    const/4 v10, 0x0

    aput-object v4, v5, v10

    .line 135
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v20

    .line 136
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v5, v7

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v17

    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_15

    move/from16 v29, v12

    .line 137
    :cond_15
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x4

    aput-object v4, v5, v7

    aput-object v18, v5, v27

    aput-object v18, v5, v26

    aput-object v18, v5, v25

    .line 138
    invoke-static {v0, v6, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0x8

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "TOTAL"

    const/4 v7, 0x0

    aput-object v4, v5, v7

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v20

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v5, v7

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v17

    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_16

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v4

    goto :goto_10

    .line 143
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v4

    .line 144
    :goto_10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x4

    aput-object v4, v5, v7

    add-long/2addr v2, v8

    .line 145
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v27

    add-long v2, p10, p16

    .line 146
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v26

    add-long v2, p12, p18

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v25

    .line 147
    invoke-static {v0, v6, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_11
    if-eqz p4, :cond_1e

    const-string v2, " "

    .line 148
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, " Dalvik Details"

    .line 149
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v2, 0x11

    :goto_12
    const/16 v3, 0x1f

    if-ge v2, v3, :cond_1e

    .line 150
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v3

    .line 151
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v4

    .line 152
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v5

    .line 153
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v7

    .line 154
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v8

    .line 155
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v9

    .line 156
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v10

    .line 157
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v11

    if-nez v3, :cond_19

    if-nez v5, :cond_19

    if-nez v7, :cond_19

    if-nez v8, :cond_19

    if-nez v9, :cond_19

    .line 158
    iget-boolean v12, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v12, :cond_17

    move v12, v11

    goto :goto_13

    :cond_17
    move v12, v10

    :goto_13
    if-eqz v12, :cond_18

    goto :goto_14

    :cond_18
    const/16 v4, 0x8

    const/16 v5, 0x9

    const/16 v12, 0xb

    goto/16 :goto_15

    :cond_19
    :goto_14
    if-eqz p3, :cond_1b

    const/16 v12, 0xb

    new-array v13, v12, [Ljava/lang/Object;

    .line 159
    invoke-static {v2}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v13, v16

    .line 160
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v13, v20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v13, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v13, v17

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v13, v4

    .line 161
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v13, v27

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v13, v26

    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_1a

    move v10, v11

    .line 162
    :cond_1a
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v13, v25

    const/16 v4, 0x8

    aput-object v18, v13, v4

    const/16 v5, 0x9

    aput-object v18, v13, v5

    aput-object v18, v13, v24

    .line 163
    invoke-static {v0, v14, v13}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_1b
    const/16 v4, 0x8

    const/16 v5, 0x9

    const/16 v12, 0xb

    new-array v8, v4, [Ljava/lang/Object;

    .line 164
    invoke-static {v2}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v8, v15

    .line 165
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v8, v7

    .line 166
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v17

    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_1c

    move v10, v11

    .line 167
    :cond_1c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x4

    aput-object v3, v8, v7

    aput-object v18, v8, v27

    aput-object v18, v8, v26

    aput-object v18, v8, v25

    .line 168
    invoke-static {v0, v6, v8}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_12

    :cond_1d
    move-object/from16 v30, v15

    :cond_1e
    const-string v2, " "

    .line 169
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, " App Summary"

    .line 170
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v18, v3, v4

    const-string v5, "Pss(KB)"

    aput-object v5, v3, v20

    const-string v5, "%21s %8s"

    .line 171
    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v18, v3, v4

    aput-object v30, v3, v20

    const-string v5, "%21s %8s"

    .line 172
    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "Java Heap:"

    aput-object v5, v3, v4

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v20

    const-string v5, "%21s %8d"

    .line 174
    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v2, [Ljava/lang/Object;

    const-string v6, "Native Heap:"

    aput-object v6, v3, v4

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v20

    .line 176
    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v2, [Ljava/lang/Object;

    const-string v6, "Code:"

    aput-object v6, v3, v4

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v20

    .line 178
    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v2, [Ljava/lang/Object;

    const-string v6, "Stack:"

    aput-object v6, v3, v4

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v20

    .line 180
    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v2, [Ljava/lang/Object;

    const-string v6, "Graphics:"

    aput-object v6, v3, v4

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v20

    .line 182
    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v2, [Ljava/lang/Object;

    const-string v6, "Private Other:"

    aput-object v6, v3, v4

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v20

    .line 184
    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "System:"

    aput-object v2, v3, v4

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v20

    .line 186
    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, " "

    .line 187
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_1f

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "TOTAL:"

    aput-object v3, v2, v4

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v20

    const-string v3, "TOTAL SWAP PSS:"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v17

    const-string v1, "%21s %8d %21s %8d"

    .line 191
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    :cond_1f
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "TOTAL:"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v20

    const-string v3, "TOTAL SWAP (KB):"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v17

    const-string v1, "%21s %8d %21s %8d"

    .line 194
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_16
    return-void
.end method

.method public static freeTextLayoutCachesIfNeeded(I)V
    .locals 0

    if-eqz p0, :cond_1

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    :cond_1
    return-void
.end method

.method private getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-static {p1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v1, "ro.dalvik.vm.isa."

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object p1, v0

    .line 40
    :goto_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object p1, p2, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_1
    iget-object p1, p2, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 58
    .line 59
    return-object p1
.end method

.method public static getIntentBeingBroadcast()Landroid/content/Intent;
    .locals 1

    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private getLifecycleSeq()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Landroid/app/ActivityThread;->mLifecycleSeq:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Landroid/app/ActivityThread;->mLifecycleSeq:I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return v1

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method private getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;
    .locals 13

    move-object v9, p0

    move-object v0, p1

    .line 37
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v10, v3

    goto :goto_0

    :cond_0
    move v10, v4

    .line 38
    :goto_0
    iget-object v11, v9, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v11

    const/4 v1, 0x0

    if-eqz v10, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_2

    .line 39
    :try_start_0
    iget-object v2, v9, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    goto :goto_1

    .line 40
    :cond_2
    iget-object v2, v9, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    :goto_1
    if-eqz v2, :cond_3

    .line 41
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoadedApk;

    :cond_3
    if-eqz v1, :cond_4

    .line 42
    iget-object v2, v1, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_9

    .line 43
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v2

    if-nez v2, :cond_9

    .line 44
    :cond_4
    new-instance v12, Landroid/app/LoadedApk;

    if-eqz p5, :cond_5

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    move v7, v3

    goto :goto_2

    :cond_5
    move v7, v4

    :goto_2
    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V

    .line 45
    iget-boolean v1, v9, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v1, :cond_6

    const-string v1, "android"

    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 46
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 47
    invoke-virtual {v12, p1, v1}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    :cond_6
    if-eqz v10, :cond_7

    goto :goto_3

    :cond_7
    if-eqz p5, :cond_8

    .line 48
    iget-object v1, v9, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 49
    :cond_8
    iget-object v1, v9, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move-object v1, v12

    .line 50
    :cond_9
    monitor-exit v11

    return-object v1

    :catchall_0
    move-exception v0

    .line 51
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    .line 1
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-string/jumbo v0, "package"

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 20
    .line 21
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 22
    .line 23
    return-object v0
.end method

.method public static final handleAttachAgent(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Ldalvik/system/VMDebug;->attachAgent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Attaching agent failed: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "ActivityThread"

    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method private handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    const-string v10, "Unable to create application "

    .line 6
    .line 7
    const-string v11, "Exception thrown in onCreate() of "

    .line 8
    .line 9
    invoke-static {}, Ldalvik/system/VMRuntime;->registerSensitiveThread()V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, v9, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    .line 13
    .line 14
    const/4 v12, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {v12}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->enableRecentAllocations(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-static {v0, v1, v2, v3}, Landroid/os/Process;->setStartTimes(JJ)V

    .line 29
    .line 30
    .line 31
    iput-object v9, v8, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    .line 32
    .line 33
    new-instance v0, Landroid/content/res/Configuration;

    .line 34
    .line 35
    iget-object v1, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, v8, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 41
    .line 42
    new-instance v0, Landroid/content/res/Configuration;

    .line 43
    .line 44
    iget-object v1, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 45
    .line 46
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, v8, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 50
    .line 51
    new-instance v0, Landroid/app/ActivityThread$Profiler;

    .line 52
    .line 53
    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 57
    .line 58
    iget-object v1, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    iget-object v2, v1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 63
    .line 64
    iput-object v2, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v2, v1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 67
    .line 68
    iput-object v2, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 69
    .line 70
    iget v2, v1, Landroid/app/ProfilerInfo;->samplingInterval:I

    .line 71
    .line 72
    iput v2, v0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    .line 73
    .line 74
    iget-boolean v2, v1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    .line 75
    .line 76
    iput-boolean v2, v0, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 77
    .line 78
    iget-boolean v1, v1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    .line 79
    .line 80
    iput-boolean v1, v0, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    .line 81
    .line 82
    :cond_1
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-static {v0, v1}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 97
    .line 98
    iget-object v1, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 99
    .line 100
    if-eqz v1, :cond_2

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 103
    .line 104
    .line 105
    :cond_2
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 106
    .line 107
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 108
    .line 109
    const/16 v1, 0xc

    .line 110
    .line 111
    if-gt v0, v1, :cond_3

    .line 112
    .line 113
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 114
    .line 115
    invoke-static {v0}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 119
    .line 120
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 121
    .line 122
    invoke-static {v0}, Landroid/os/Message;->updateCheckRecycle(I)V

    .line 123
    .line 124
    .line 125
    const/4 v0, 0x0

    .line 126
    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 130
    .line 131
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, v8, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 139
    .line 140
    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v2, v8, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 142
    .line 143
    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 144
    .line 145
    iget-object v4, v9, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 146
    .line 147
    invoke-virtual {v2, v3, v4}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 148
    .line 149
    .line 150
    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 151
    .line 152
    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 153
    .line 154
    iput v2, v8, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 155
    .line 156
    invoke-virtual {v8, v2}, Landroid/app/ActivityThread;->applyCompatConfiguration(I)Landroid/content/res/Configuration;

    .line 157
    .line 158
    .line 159
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    iget-object v1, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 161
    .line 162
    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 163
    .line 164
    invoke-virtual {v8, v1, v2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iput-object v1, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 169
    .line 170
    iget-object v1, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 171
    .line 172
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 173
    .line 174
    and-int/lit16 v1, v1, 0x2000

    .line 175
    .line 176
    if-nez v1, :cond_4

    .line 177
    .line 178
    iput-boolean v12, v8, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    .line 179
    .line 180
    const/16 v1, 0xa0

    .line 181
    .line 182
    invoke-static {v1}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 183
    .line 184
    .line 185
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    .line 186
    .line 187
    .line 188
    iget-object v1, v8, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 189
    .line 190
    const-string/jumbo v2, "time_12_24"

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    if-eqz v1, :cond_6

    .line 198
    .line 199
    const-string v2, "24"

    .line 200
    .line 201
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_5

    .line 206
    .line 207
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_6
    move-object v1, v0

    .line 214
    :goto_0
    invoke-static {v1}, Ljava/text/DateFormat;->set24HourTimePref(Ljava/lang/Boolean;)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v8, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 218
    .line 219
    const-string v2, "debug_view_attributes"

    .line 220
    .line 221
    const/4 v13, 0x0

    .line 222
    invoke-virtual {v1, v2, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_7

    .line 227
    .line 228
    move v1, v12

    .line 229
    goto :goto_1

    .line 230
    :cond_7
    move v1, v13

    .line 231
    :goto_1
    sput-boolean v1, Landroid/view/View;->mDebugViewAttributes:Z

    .line 232
    .line 233
    iget-object v1, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 234
    .line 235
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 236
    .line 237
    and-int/lit16 v1, v1, 0x81

    .line 238
    .line 239
    if-eqz v1, :cond_8

    .line 240
    .line 241
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    .line 242
    .line 243
    .line 244
    :cond_8
    iget-object v1, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 245
    .line 246
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 247
    .line 248
    const/16 v2, 0xb

    .line 249
    .line 250
    if-lt v1, v2, :cond_9

    .line 251
    .line 252
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnNetwork()V

    .line 253
    .line 254
    .line 255
    :cond_9
    iget-object v1, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 256
    .line 257
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 258
    .line 259
    const/16 v2, 0x18

    .line 260
    .line 261
    if-lt v1, v2, :cond_a

    .line 262
    .line 263
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 264
    .line 265
    .line 266
    :cond_a
    :try_start_1
    const-class v1, Landroid/os/Build;

    .line 267
    .line 268
    const-string v2, "SERIAL"

    .line 269
    .line 270
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {v1, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 275
    .line 276
    .line 277
    const-class v2, Landroid/os/Build;

    .line 278
    .line 279
    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->buildSerial:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 282
    .line 283
    .line 284
    :catch_0
    iget v1, v9, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 285
    .line 286
    const/4 v2, 0x2

    .line 287
    if-eqz v1, :cond_c

    .line 288
    .line 289
    const/16 v1, 0x1fa4

    .line 290
    .line 291
    invoke-static {v1}, Landroid/os/Debug;->changeDebugPort(I)V

    .line 292
    .line 293
    .line 294
    iget v1, v9, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 295
    .line 296
    if-ne v1, v2, :cond_b

    .line 297
    .line 298
    const-string v1, "ActivityThread"

    .line 299
    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    const-string v4, "Application "

    .line 303
    .line 304
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    iget-object v4, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 308
    .line 309
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v4, " is waiting for the debugger on port 8100..."

    .line 317
    .line 318
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    :try_start_2
    iget-object v3, v8, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 333
    .line 334
    invoke-interface {v1, v3, v12}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 335
    .line 336
    .line 337
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 338
    .line 339
    .line 340
    :try_start_3
    iget-object v3, v8, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 341
    .line 342
    invoke-interface {v1, v3, v13}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 343
    .line 344
    .line 345
    goto :goto_2

    .line 346
    :catch_1
    move-exception v0

    .line 347
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    throw v0

    .line 352
    :catch_2
    move-exception v0

    .line 353
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    throw v0

    .line 358
    :cond_b
    const-string v1, "ActivityThread"

    .line 359
    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    const-string v4, "Application "

    .line 363
    .line 364
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    iget-object v4, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 368
    .line 369
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v4, " can be debugged on port 8100..."

    .line 377
    .line 378
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    :cond_c
    :goto_2
    iget-object v1, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 389
    .line 390
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 391
    .line 392
    and-int/2addr v1, v2

    .line 393
    if-eqz v1, :cond_d

    .line 394
    .line 395
    move v1, v12

    .line 396
    goto :goto_3

    .line 397
    :cond_d
    move v1, v13

    .line 398
    :goto_3
    invoke-static {v1}, Landroid/os/Trace;->setAppTracingAllowed(Z)V

    .line 399
    .line 400
    .line 401
    if-eqz v1, :cond_e

    .line 402
    .line 403
    iget-boolean v1, v9, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    .line 404
    .line 405
    if-eqz v1, :cond_e

    .line 406
    .line 407
    invoke-static {}, Landroid/os/Binder;->enableTracing()V

    .line 408
    .line 409
    .line 410
    :cond_e
    const-string v1, "Setup proxies"

    .line 411
    .line 412
    const-wide/16 v2, 0x40

    .line 413
    .line 414
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 415
    .line 416
    .line 417
    const-string v1, "connectivity"

    .line 418
    .line 419
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    if-eqz v1, :cond_f

    .line 424
    .line 425
    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    :try_start_4
    invoke-interface {v1, v0}, Landroid/net/IConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    invoke-static {v1}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 434
    .line 435
    .line 436
    goto :goto_4

    .line 437
    :catch_3
    move-exception v0

    .line 438
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    throw v0

    .line 446
    :cond_f
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 447
    .line 448
    .line 449
    iget-object v1, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 450
    .line 451
    if-eqz v1, :cond_10

    .line 452
    .line 453
    :try_start_5
    new-instance v1, Landroid/app/ApplicationPackageManager;

    .line 454
    .line 455
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    invoke-direct {v1, v0, v4}, Landroid/app/ApplicationPackageManager;-><init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V

    .line 460
    .line 461
    .line 462
    iget-object v4, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 463
    .line 464
    invoke-virtual {v1, v4, v13}, Landroid/app/ApplicationPackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    .line 465
    .line 466
    .line 467
    move-result-object v1
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 468
    iget-object v4, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 469
    .line 470
    iput-object v4, v8, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 471
    .line 472
    iget-object v4, v1, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    .line 473
    .line 474
    iput-object v4, v8, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 475
    .line 476
    iget-object v4, v1, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 477
    .line 478
    iput-object v4, v8, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 479
    .line 480
    iget-object v4, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 481
    .line 482
    invoke-direct {v8, v4, v1}, Landroid/app/ActivityThread;->getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    iput-object v4, v8, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 487
    .line 488
    iget-object v4, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 489
    .line 490
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    iput-object v4, v8, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 495
    .line 496
    iget-object v4, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 497
    .line 498
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getSplitAppDirs()[Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    iput-object v4, v8, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 503
    .line 504
    iget-object v4, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 505
    .line 506
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getLibDir()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v4

    .line 510
    iput-object v4, v8, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 511
    .line 512
    move-object v14, v1

    .line 513
    goto :goto_5

    .line 514
    :catch_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 515
    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    const-string v2, "Unable to find instrumentation info for: "

    .line 519
    .line 520
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 524
    .line 525
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    throw v0

    .line 536
    :cond_10
    move-object v14, v0

    .line 537
    :goto_5
    iget-object v1, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 538
    .line 539
    invoke-static {v8, v1}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    .line 540
    .line 541
    .line 542
    move-result-object v15

    .line 543
    iget-object v1, v8, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 544
    .line 545
    invoke-virtual {v1}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    invoke-direct {v8, v15, v1}, Landroid/app/ActivityThread;->updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V

    .line 554
    .line 555
    .line 556
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    .line 557
    .line 558
    .line 559
    move-result v1

    .line 560
    if-nez v1, :cond_11

    .line 561
    .line 562
    invoke-direct {v8, v15}, Landroid/app/ActivityThread;->setupGraphicsSupport(Landroid/content/Context;)V

    .line 563
    .line 564
    .line 565
    :cond_11
    const-string v1, "dalvik.vm.usejitprofiles"

    .line 566
    .line 567
    invoke-static {v1, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 568
    .line 569
    .line 570
    move-result v1

    .line 571
    if-eqz v1, :cond_12

    .line 572
    .line 573
    invoke-static {}, Landroid/app/DexLoadReporter;->getInstance()Landroid/app/DexLoadReporter;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    invoke-static {v1}, Ldalvik/system/BaseDexClassLoader;->setReporter(Ldalvik/system/BaseDexClassLoader$Reporter;)V

    .line 578
    .line 579
    .line 580
    :cond_12
    const-string v1, "NetworkSecurityConfigProvider.install"

    .line 581
    .line 582
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 583
    .line 584
    .line 585
    invoke-static {v15}, Landroid/security/net/config/NetworkSecurityConfigProvider;->install(Landroid/content/Context;)V

    .line 586
    .line 587
    .line 588
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 589
    .line 590
    .line 591
    if-eqz v14, :cond_13

    .line 592
    .line 593
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    .line 594
    .line 595
    invoke-direct {v2}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v14, v2}, Landroid/content/pm/InstrumentationInfo;->copyTo(Landroid/content/pm/ApplicationInfo;)V

    .line 599
    .line 600
    .line 601
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 602
    .line 603
    .line 604
    move-result v1

    .line 605
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 606
    .line 607
    .line 608
    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 609
    .line 610
    invoke-virtual {v15}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    .line 611
    .line 612
    .line 613
    move-result-object v4

    .line 614
    const/4 v5, 0x0

    .line 615
    const/4 v6, 0x1

    .line 616
    const/4 v7, 0x0

    .line 617
    move-object/from16 v1, p0

    .line 618
    .line 619
    invoke-direct/range {v1 .. v7}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    invoke-static {v8, v1}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    :try_start_6
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 632
    .line 633
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    check-cast v1, Landroid/app/Instrumentation;

    .line 646
    .line 647
    iput-object v1, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 648
    .line 649
    new-instance v5, Landroid/content/ComponentName;

    .line 650
    .line 651
    iget-object v1, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 652
    .line 653
    iget-object v2, v14, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 654
    .line 655
    invoke-direct {v5, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    iget-object v1, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 659
    .line 660
    iget-object v6, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 661
    .line 662
    iget-object v7, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 663
    .line 664
    move-object/from16 v2, p0

    .line 665
    .line 666
    move-object v4, v15

    .line 667
    invoke-virtual/range {v1 .. v7}, Landroid/app/Instrumentation;->init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V

    .line 668
    .line 669
    .line 670
    iget-object v1, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 671
    .line 672
    iget-object v2, v1, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 673
    .line 674
    if-eqz v2, :cond_14

    .line 675
    .line 676
    iget-boolean v2, v14, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 677
    .line 678
    if-nez v2, :cond_14

    .line 679
    .line 680
    iget-object v2, v1, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 681
    .line 682
    if-nez v2, :cond_14

    .line 683
    .line 684
    iput-boolean v12, v1, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    .line 685
    .line 686
    new-instance v1, Ljava/io/File;

    .line 687
    .line 688
    iget-object v2, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 689
    .line 690
    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 691
    .line 692
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 696
    .line 697
    .line 698
    move-result-object v2

    .line 699
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 700
    .line 701
    .line 702
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    const/high16 v2, 0x800000

    .line 707
    .line 708
    invoke-static {v1, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 709
    .line 710
    .line 711
    goto :goto_6

    .line 712
    :catch_5
    move-exception v0

    .line 713
    new-instance v1, Ljava/lang/RuntimeException;

    .line 714
    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    .line 716
    .line 717
    const-string v3, "Unable to instantiate instrumentation "

    .line 718
    .line 719
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 723
    .line 724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    const-string v3, ": "

    .line 728
    .line 729
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v3

    .line 736
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 744
    .line 745
    .line 746
    throw v1

    .line 747
    :cond_13
    new-instance v1, Landroid/app/Instrumentation;

    .line 748
    .line 749
    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    .line 750
    .line 751
    .line 752
    iput-object v1, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 753
    .line 754
    :cond_14
    :goto_6
    iget-object v1, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 755
    .line 756
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 757
    .line 758
    const/high16 v2, 0x100000

    .line 759
    .line 760
    and-int/2addr v1, v2

    .line 761
    if-eqz v1, :cond_15

    .line 762
    .line 763
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 764
    .line 765
    .line 766
    move-result-object v1

    .line 767
    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 768
    .line 769
    .line 770
    goto :goto_7

    .line 771
    :cond_15
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->clampGrowthLimit()V

    .line 776
    .line 777
    .line 778
    :goto_7
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    .line 783
    .line 784
    .line 785
    move-result-object v2

    .line 786
    const/16 v3, 0x1a

    .line 787
    .line 788
    :try_start_7
    invoke-static {}, Landroid/util/CheckTime;->getTime()J

    .line 789
    .line 790
    .line 791
    move-result-wide v4

    .line 792
    iget-object v6, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 793
    .line 794
    iget-boolean v7, v9, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 795
    .line 796
    invoke-virtual {v6, v7, v0}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    .line 797
    .line 798
    .line 799
    move-result-object v6

    .line 800
    const-string/jumbo v0, "handleBindApplication : makeApplication"

    .line 801
    .line 802
    .line 803
    invoke-static {v4, v5, v0}, Landroid/util/CheckTime;->checkTime(JLjava/lang/String;)Z

    .line 804
    .line 805
    .line 806
    iput-object v6, v8, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 807
    .line 808
    iget-boolean v0, v9, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 809
    .line 810
    if-nez v0, :cond_16

    .line 811
    .line 812
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 813
    .line 814
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 815
    .line 816
    .line 817
    move-result v0

    .line 818
    if-nez v0, :cond_16

    .line 819
    .line 820
    invoke-static {}, Landroid/util/CheckTime;->getTime()J

    .line 821
    .line 822
    .line 823
    move-result-wide v4

    .line 824
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 825
    .line 826
    invoke-direct {v8, v6, v0}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 827
    .line 828
    .line 829
    iget-object v0, v8, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 830
    .line 831
    const/16 v7, 0x84

    .line 832
    .line 833
    const-wide/16 v13, 0x2710

    .line 834
    .line 835
    invoke-virtual {v0, v7, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 836
    .line 837
    .line 838
    const-string/jumbo v0, "handleBindApplication : installContentProviders"

    .line 839
    .line 840
    .line 841
    invoke-static {v4, v5, v0}, Landroid/util/CheckTime;->checkTime(JLjava/lang/String;)Z

    .line 842
    .line 843
    .line 844
    :cond_16
    invoke-static {}, Landroid/util/CheckTime;->getTime()J

    .line 845
    .line 846
    .line 847
    move-result-wide v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 848
    :try_start_8
    iget-object v0, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 849
    .line 850
    iget-object v7, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 851
    .line 852
    invoke-virtual {v0, v7}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 853
    .line 854
    .line 855
    :try_start_9
    iget-object v0, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 856
    .line 857
    invoke-virtual {v0, v6}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 858
    .line 859
    .line 860
    const-string/jumbo v0, "handleBindApplication : callApplicationOnCreate"

    .line 861
    .line 862
    .line 863
    invoke-static {v4, v5, v0}, Landroid/util/CheckTime;->checkTime(JLjava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 864
    .line 865
    .line 866
    goto :goto_8

    .line 867
    :catch_6
    move-exception v0

    .line 868
    :try_start_a
    iget-object v4, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 869
    .line 870
    invoke-virtual {v4, v6, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 871
    .line 872
    .line 873
    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 874
    if-eqz v4, :cond_1a

    .line 875
    .line 876
    :goto_8
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 877
    .line 878
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 879
    .line 880
    if-le v0, v3, :cond_17

    .line 881
    .line 882
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 887
    .line 888
    .line 889
    move-result v0

    .line 890
    if-eqz v0, :cond_18

    .line 891
    .line 892
    :cond_17
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 893
    .line 894
    .line 895
    :cond_18
    invoke-static {v15}, Landroid/provider/FontsContract;->setApplicationContextForResources(Landroid/content/Context;)V

    .line 896
    .line 897
    .line 898
    :try_start_b
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    iget-object v1, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 903
    .line 904
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 905
    .line 906
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 907
    .line 908
    .line 909
    move-result v2

    .line 910
    const/16 v3, 0x80

    .line 911
    .line 912
    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 917
    .line 918
    if-eqz v0, :cond_19

    .line 919
    .line 920
    const-string/jumbo v1, "preloaded_fonts"

    .line 921
    .line 922
    .line 923
    const/4 v2, 0x0

    .line 924
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 925
    .line 926
    .line 927
    move-result v0

    .line 928
    if-eqz v0, :cond_19

    .line 929
    .line 930
    iget-object v1, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 931
    .line 932
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    .line 933
    .line 934
    .line 935
    move-result-object v1

    .line 936
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->preloadFonts(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7

    .line 937
    .line 938
    .line 939
    :cond_19
    return-void

    .line 940
    :catch_7
    move-exception v0

    .line 941
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    throw v0

    .line 946
    :cond_1a
    :try_start_c
    new-instance v4, Ljava/lang/RuntimeException;

    .line 947
    .line 948
    new-instance v5, Ljava/lang/StringBuilder;

    .line 949
    .line 950
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 954
    .line 955
    .line 956
    move-result-object v6

    .line 957
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v6

    .line 961
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    .line 963
    .line 964
    const-string v6, ": "

    .line 965
    .line 966
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    .line 968
    .line 969
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v6

    .line 973
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v5

    .line 980
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 981
    .line 982
    .line 983
    throw v4

    .line 984
    :catch_8
    move-exception v0

    .line 985
    new-instance v4, Ljava/lang/RuntimeException;

    .line 986
    .line 987
    new-instance v5, Ljava/lang/StringBuilder;

    .line 988
    .line 989
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 990
    .line 991
    .line 992
    iget-object v6, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 993
    .line 994
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    const-string v6, ": "

    .line 998
    .line 999
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v6

    .line 1006
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v5

    .line 1013
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1014
    .line 1015
    .line 1016
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1017
    :catchall_0
    move-exception v0

    .line 1018
    iget-object v4, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1019
    .line 1020
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1021
    .line 1022
    if-le v4, v3, :cond_1b

    .line 1023
    .line 1024
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v3

    .line 1028
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1029
    .line 1030
    .line 1031
    move-result v2

    .line 1032
    if-eqz v2, :cond_1c

    .line 1033
    .line 1034
    :cond_1b
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1035
    .line 1036
    .line 1037
    :cond_1c
    throw v0

    .line 1038
    :catchall_1
    move-exception v0

    .line 1039
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1040
    throw v0
.end method

.method private handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Service;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/Intent;->prepareToEnterProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    .line 26
    .line 27
    :try_start_1
    iget-boolean v1, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 42
    .line 43
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 44
    .line 45
    invoke-interface {v2, v3, v4, v1}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-interface {v1, v2, v3, v3, v3}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception v1

    .line 69
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 74
    :catch_1
    move-exception v1

    .line 75
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 76
    .line 77
    invoke-virtual {v2, v0, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    .line 85
    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v4, "Unable to bind to service "

    .line 89
    .line 90
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, " with "

    .line 97
    .line 98
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object p1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 102
    .line 103
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p1, ": "

    .line 107
    .line 108
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    throw v2

    .line 126
    :cond_2
    :goto_1
    return-void
.end method

.method private handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 9

    .line 1
    const-string v0, "Agent threw during creation: "

    .line 2
    .line 3
    const-string v1, "Asked to instantiate non-matching package "

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-interface {v2, v3, v5, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 23
    .line 24
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 27
    .line 28
    .line 29
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    .line 30
    const-string v4, "ActivityThread"

    .line 31
    .line 32
    if-eq v2, v3, :cond_0

    .line 33
    .line 34
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 40
    .line 41
    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 55
    .line 56
    .line 57
    iget-object v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 58
    .line 59
    iget-object v2, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 60
    .line 61
    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 66
    .line 67
    if-nez v2, :cond_1

    .line 68
    .line 69
    const-string p1, "Asked to create backup agent for nonexistent package"

    .line 70
    .line 71
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    iget-object v3, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 76
    .line 77
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 78
    .line 79
    const/4 v5, 0x3

    .line 80
    if-nez v3, :cond_3

    .line 81
    .line 82
    iget v6, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 83
    .line 84
    const/4 v7, 0x1

    .line 85
    if-eq v6, v7, :cond_2

    .line 86
    .line 87
    if-ne v6, v5, :cond_3

    .line 88
    .line 89
    :cond_2
    const-string v3, "android.app.backup.FullBackupAgent"

    .line 90
    .line 91
    :cond_3
    :try_start_2
    iget-object v6, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    .line 92
    .line 93
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Landroid/app/backup/BackupAgent;

    .line 98
    .line 99
    if-eqz v6, :cond_4

    .line 100
    .line 101
    invoke-virtual {v6}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    .line 102
    .line 103
    .line 104
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    const/4 v6, 0x0

    .line 107
    :try_start_3
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v7, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    check-cast v7, Landroid/app/backup/BackupAgent;

    .line 120
    .line 121
    invoke-static {p0, v1}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1, v7}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v1}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7}, Landroid/app/backup/BackupAgent;->onCreate()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    .line 135
    .line 136
    .line 137
    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 138
    :try_start_4
    iget-object v6, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    .line 139
    .line 140
    invoke-virtual {v6, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :catch_0
    move-exception v6

    .line 145
    goto :goto_0

    .line 146
    :catch_1
    move-exception v1

    .line 147
    move-object v8, v6

    .line 148
    move-object v6, v1

    .line 149
    move-object v1, v8

    .line 150
    :goto_0
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    iget p1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 166
    .line 167
    const/4 v0, 0x2

    .line 168
    if-eq p1, v0, :cond_6

    .line 169
    .line 170
    if-ne p1, v5, :cond_5

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_5
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 174
    :cond_6
    :goto_1
    move-object p1, v1

    .line 175
    :goto_2
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-interface {v0, v2, p1}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :catch_2
    move-exception p1

    .line 184
    :try_start_7
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 189
    :catch_3
    move-exception p1

    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    .line 191
    .line 192
    const-string v1, "Unable to create BackupAgent "

    .line 193
    .line 194
    const-string v2, ": "

    .line 195
    .line 196
    invoke-static {v1, v3, v2}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    .line 213
    .line 214
    throw v0

    .line 215
    :catch_4
    move-exception p1

    .line 216
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    throw p1
.end method

.method private handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 12

    .line 1
    const-string v0, ": "

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 7
    .line 8
    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    iget-object v2, p1, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 11
    .line 12
    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :try_start_0
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 21
    .line 22
    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/app/Service;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v2

    .line 36
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    move-object v2, v4

    .line 46
    :goto_0
    :try_start_1
    invoke-static {p0, v1}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v6, v2}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-virtual {v1, v4, v3}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    iget-object v1, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 61
    .line 62
    iget-object v8, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v9, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 65
    .line 66
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    move-object v5, v2

    .line 71
    move-object v7, p0

    .line 72
    invoke-virtual/range {v5 .. v11}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/app/Service;->onCreate()V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    .line 79
    .line 80
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 81
    .line 82
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 83
    .line 84
    .line 85
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 90
    .line 91
    invoke-interface {v1, v3, v4, v4, v4}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catch_1
    move-exception v1

    .line 96
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 101
    :catch_2
    move-exception v1

    .line 102
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 103
    .line 104
    invoke-virtual {v3, v2, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_0

    .line 109
    .line 110
    :goto_1
    return-void

    .line 111
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    .line 112
    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v4, "Unable to create service "

    .line 116
    .line 117
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 121
    .line 122
    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    throw v2

    .line 145
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 146
    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v4, "Unable to instantiate service "

    .line 150
    .line 151
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 155
    .line 156
    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-direct {v1, p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    throw v1
.end method

.method private handleDestroyActivity(Landroid/os/IBinder;ZIZ)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const/4 p4, 0x1

    .line 6
    if-eqz p3, :cond_7

    .line 7
    .line 8
    invoke-static {p3, p2}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 18
    .line 19
    iget-object v2, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 20
    .line 21
    const-string v3, "Activity"

    .line 22
    .line 23
    if-eqz v2, :cond_5

    .line 24
    .line 25
    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 30
    .line 31
    sub-int/2addr v1, p4

    .line 32
    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 33
    .line 34
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v4, p3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 39
    .line 40
    iget-boolean v4, v4, Landroid/app/Activity;->mWindowAdded:Z

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    iget-boolean v4, p3, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 45
    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    iget-object v4, p3, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 49
    .line 50
    iput-object v4, p3, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 51
    .line 52
    iput-object v0, p3, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/view/Window;->clearContentView()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 62
    .line 63
    iget-object v0, p3, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v2, p3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    iget-object v0, p3, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/view/WindowManagerGlobal;->closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_1
    iget-object v0, p3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    iput-object v1, v0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 110
    .line 111
    :cond_5
    iget-object v0, p3, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 112
    .line 113
    if-nez v0, :cond_6

    .line 114
    .line 115
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v1, p3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, p1, v1, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_6
    iget-object v0, p3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    instance-of v1, v0, Landroid/app/ContextImpl;

    .line 139
    .line 140
    if-eqz v1, :cond_7

    .line 141
    .line 142
    check-cast v0, Landroid/app/ContextImpl;

    .line 143
    .line 144
    iget-object p3, p3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 145
    .line 146
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    invoke-virtual {v0, p3, v3}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_7
    if-eqz p2, :cond_8

    .line 158
    .line 159
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-interface {p2, p1}, Landroid/app/IActivityManager;->activityDestroyed(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :catch_0
    move-exception p1

    .line 168
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    throw p1

    .line 173
    :cond_8
    :goto_2
    iput-boolean p4, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 174
    .line 175
    return-void
.end method

.method private handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/app/backup/BackupAgent;

    .line 18
    .line 19
    const-string v2, "ActivityThread"

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v4, "Exception thrown in onDestroy by backup agent of "

    .line 31
    .line 32
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object p1, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "Attempt to destroy unknown backup agent "

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :goto_1
    return-void
.end method

.method private handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 6
    .line 7
    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    .line 22
    .line 23
    new-instance v3, Ljava/io/FileOutputStream;

    .line 24
    .line 25
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 38
    .line 39
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/android/internal/util/FastPrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object p1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 56
    .line 57
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    iget-object p1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 66
    .line 67
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 71
    .line 72
    .line 73
    throw v1
.end method

.method public static handleDumpHeap(Landroid/app/ActivityThread$DumpHeapData;)V
    .locals 5

    .line 1
    const-string v0, "Failure closing profile fd"

    .line 2
    .line 3
    const-string v1, "ActivityThread"

    .line 4
    .line 5
    const-string v2, "Managed heap dump failed on path "

    .line 6
    .line 7
    iget-boolean v3, p0, Landroid/app/ActivityThread$DumpHeapData;->runGc:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-boolean v3, p0, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v4, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v3, v4}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :try_start_1
    iget-object v2, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :catch_0
    move-exception v2

    .line 42
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :catchall_0
    move-exception v2

    .line 47
    goto :goto_0

    .line 48
    :catch_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v2, " -- can the process access this path?"

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .line 69
    .line 70
    :try_start_3
    iget-object v2, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :goto_0
    :try_start_4
    iget-object p0, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catch_2
    move-exception p0

    .line 83
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .line 85
    .line 86
    :goto_1
    throw v2

    .line 87
    :cond_1
    iget-boolean v0, p0, Landroid/app/ActivityThread$DumpHeapData;->mallocInfo:Z

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/os/Debug;->dumpNativeMallocInfo(Ljava/io/FileDescriptor;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/os/Debug;->dumpNativeHeap(Ljava/io/FileDescriptor;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object p0, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 115
    .line 116
    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->dumpHeapFinished(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :catch_3
    move-exception p0

    .line 121
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    throw p0
.end method

.method private handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    .line 6
    .line 7
    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v2, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    .line 22
    .line 23
    new-instance v3, Ljava/io/FileOutputStream;

    .line 24
    .line 25
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    .line 38
    .line 39
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/android/internal/util/FastPrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object p1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 54
    .line 55
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception v1

    .line 63
    iget-object p1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 64
    .line 65
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 69
    .line 70
    .line 71
    throw v1
.end method

.method private handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    .line 6
    .line 7
    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/app/Service;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    .line 18
    .line 19
    new-instance v3, Ljava/io/FileOutputStream;

    .line 20
    .line 21
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 31
    .line 32
    .line 33
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v3, v2, v4}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/android/internal/util/FastPrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object p1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 48
    .line 49
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception v1

    .line 57
    iget-object p1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 58
    .line 59
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 63
    .line 64
    .line 65
    throw v1
.end method

.method private handleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->dispatchEnterAnimationComplete()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 6
    .line 7
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v1, v1}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 23
    .line 24
    .line 25
    sget-boolean v2, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-static {}, Landroid/os/GraphicsEnvironment;->earlyInitEGL()V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->initialize()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    new-instance p2, Landroid/content/res/Configuration;

    .line 43
    .line 44
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 45
    .line 46
    invoke-direct {p2, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 47
    .line 48
    .line 49
    iput-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 50
    .line 51
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 55
    .line 56
    const-string/jumbo v1, "handleResumeActivity"

    .line 57
    .line 58
    .line 59
    const-wide/16 v3, 0x40

    .line 60
    .line 61
    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    iget-boolean v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    .line 68
    .line 69
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 70
    .line 71
    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    .line 72
    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 76
    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    move v9, v0

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move v9, v2

    .line 82
    :goto_0
    iget v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    .line 83
    .line 84
    move-object v5, p0

    .line 85
    move-object v11, p3

    .line 86
    invoke-virtual/range {v5 .. v11}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZZILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 93
    .line 94
    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    .line 95
    .line 96
    if-nez v0, :cond_4

    .line 97
    .line 98
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 99
    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    if-eqz p3, :cond_4

    .line 110
    .line 111
    iput-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 119
    .line 120
    invoke-interface {p2, p1, v2, v1, v2}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_1
    return-void

    .line 124
    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    throw p1
.end method

.method private handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iput-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 12
    .line 13
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Landroid/app/Activity;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)V

    .line 16
    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->onLocalVoiceInteractionStopped()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->onLocalVoiceInteractionStarted()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method private handleMultiWindowModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    new-instance v0, Landroid/content/res/Configuration;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 16
    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 24
    .line 25
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V
    .locals 2

    iget-object v0, p1, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    iget-object v1, p1, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    iget-boolean p1, p1, Landroid/app/ActivityThread$NewIntentData;->andPause:Z

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;Z)V

    return-void
.end method

.method private handlePauseActivity(Landroid/os/IBinder;ZZIZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 8
    .line 9
    const-string/jumbo v1, "pauseActivity"

    .line 10
    .line 11
    .line 12
    invoke-static {p6, v0, v1}, Landroid/app/ActivityThread;->checkAndUpdateLifecycleSeq(ILandroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p6

    .line 16
    if-nez p6, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    if-eqz v0, :cond_4

    .line 20
    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 27
    .line 28
    iget p6, p3, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 29
    .line 30
    or-int/2addr p4, p6

    .line 31
    iput p4, p3, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    const-string/jumbo p4, "handlePauseActivity"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZLjava/lang/String;)Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 50
    .line 51
    .line 52
    :cond_2
    if-nez p5, :cond_3

    .line 53
    .line 54
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-interface {p2, p1}, Landroid/app/IActivityManager;->activityPaused(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    throw p1

    .line 68
    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 70
    .line 71
    :cond_4
    return-void
.end method

.method private handlePictureInPictureModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    new-instance v0, Landroid/content/res/Configuration;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 16
    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 24
    .line 25
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    .locals 12

    .line 1
    const-string v0, "ActivityThread"

    .line 2
    .line 3
    const-string v1, ": "

    .line 4
    .line 5
    const-string v2, "Unable to start receiver "

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 8
    .line 9
    .line 10
    iget-object v3, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 21
    .line 22
    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 23
    .line 24
    iget-object v5, p1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 25
    .line 26
    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    :try_start_0
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    invoke-virtual {v4, v7, v6}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Landroid/app/ContextImpl;

    .line 46
    .line 47
    iget-object v6, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 48
    .line 49
    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v6, :cond_0

    .line 52
    .line 53
    invoke-virtual {v4, v6}, Landroid/app/ContextImpl;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Landroid/app/ContextImpl;

    .line 58
    .line 59
    :cond_0
    invoke-virtual {v4}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    iget-object v7, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 64
    .line 65
    invoke-virtual {v7, v6}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 66
    .line 67
    .line 68
    iget-object v7, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 69
    .line 70
    invoke-virtual {v7}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v6}, Landroid/content/BroadcastReceiver$PendingResult;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    check-cast v6, Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    :try_start_1
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    .line 88
    .line 89
    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 90
    .line 91
    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, p1}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Landroid/util/CheckTime;->getTime()J

    .line 98
    .line 99
    .line 100
    move-result-wide v9

    .line 101
    invoke-virtual {v4}, Landroid/app/ContextImpl;->getReceiverRestrictedContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iget-object v11, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 106
    .line 107
    invoke-virtual {v6, v4, v11}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 108
    .line 109
    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v11, " onReceive"

    .line 119
    .line 120
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-static {v9, v10, v4}, Landroid/util/CheckTime;->checkTime(JLjava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_1

    .line 132
    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v9, " running onReceive took long time"

    .line 142
    .line 143
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    .line 152
    .line 153
    :cond_1
    invoke-virtual {v8, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catchall_0
    move-exception p1

    .line 158
    goto :goto_1

    .line 159
    :catch_0
    move-exception v4

    .line 160
    :try_start_2
    invoke-virtual {p1, v5}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    .line 161
    .line 162
    .line 163
    iget-object v5, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 164
    .line 165
    invoke-virtual {v5, v6, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 166
    .line 167
    .line 168
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    if-eqz v5, :cond_4

    .line 170
    .line 171
    sget-object v1, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    .line 172
    .line 173
    invoke-virtual {v1, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :goto_0
    invoke-virtual {v6}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    if-eqz v1, :cond_2

    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 183
    .line 184
    .line 185
    :cond_2
    iget-wide v1, p1, Landroid/app/ActivityThread$ReceiverData;->receiveTime:J

    .line 186
    .line 187
    const-string p1, " scheduleReceive"

    .line 188
    .line 189
    invoke-static {v3, p1}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    const-wide/16 v3, 0x1f4

    .line 194
    .line 195
    invoke-static {v1, v2, p1, v3, v4}, Landroid/util/CheckTime;->checkTime(JLjava/lang/String;J)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_3

    .line 200
    .line 201
    const-string p1, "Main thread can not be idle for a long time."

    .line 202
    .line 203
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    :cond_3
    return-void

    .line 207
    :cond_4
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 208
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-direct {p1, v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    .line 233
    .line 234
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    :goto_1
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    .line 236
    .line 237
    invoke-virtual {v0, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    throw p1

    .line 241
    :catch_1
    move-exception v0

    .line 242
    invoke-virtual {p1, v5}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    .line 243
    .line 244
    .line 245
    new-instance p1, Ljava/lang/RuntimeException;

    .line 246
    .line 247
    const-string v2, "Unable to instantiate receiver "

    .line 248
    .line 249
    invoke-static {v2, v3, v1}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    .line 266
    .line 267
    throw p1
.end method

.method private handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v6, v3

    .line 21
    move v5, v4

    .line 22
    move v7, v5

    .line 23
    :goto_0
    if-ge v5, v2, :cond_1

    .line 24
    .line 25
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    check-cast v8, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 32
    .line 33
    iget-object v9, v8, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 34
    .line 35
    if-ne v9, p1, :cond_0

    .line 36
    .line 37
    iget v6, v8, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    .line 38
    .line 39
    or-int/2addr v7, v6

    .line 40
    iget-object v6, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    add-int/lit8 v5, v5, -0x1

    .line 46
    .line 47
    add-int/lit8 v2, v2, -0x1

    .line 48
    .line 49
    move-object v6, v8

    .line 50
    :cond_0
    add-int/2addr v5, v0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    if-nez v6, :cond_2

    .line 53
    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 56
    :cond_2
    iget-object p1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    iput-object v3, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move-object p1, v3

    .line 64
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget v1, v6, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    .line 66
    .line 67
    iget v2, v6, Landroid/app/ActivityThread$ActivityClientRecord;->relaunchSeq:I

    .line 68
    .line 69
    if-le v1, v2, :cond_4

    .line 70
    .line 71
    const-string v1, "ActivityThread"

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v5, "For some reason target: "

    .line 76
    .line 77
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v5, " has lower sequence: "

    .line 84
    .line 85
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v5, v6, Landroid/app/ActivityThread$ActivityClientRecord;->relaunchSeq:I

    .line 89
    .line 90
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v5, " than current sequence: "

    .line 94
    .line 95
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v5, v6, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    .line 99
    .line 100
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    iput v2, v6, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    .line 112
    .line 113
    :goto_2
    iget-object v1, v6, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 114
    .line 115
    if-eqz v1, :cond_7

    .line 116
    .line 117
    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 118
    .line 119
    if-eqz v2, :cond_5

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_7

    .line 126
    .line 127
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 128
    .line 129
    iget-object v2, v6, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_7

    .line 136
    .line 137
    :cond_5
    if-eqz p1, :cond_6

    .line 138
    .line 139
    iget-object v1, v6, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 140
    .line 141
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_7

    .line 146
    .line 147
    :cond_6
    iget-object p1, v6, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 148
    .line 149
    :cond_7
    if-eqz p1, :cond_8

    .line 150
    .line 151
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 152
    .line 153
    iput v1, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 154
    .line 155
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1, v3}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 159
    .line 160
    .line 161
    :cond_8
    iget-object p1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 162
    .line 163
    iget-object v1, v6, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 164
    .line 165
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 170
    .line 171
    if-nez p1, :cond_a

    .line 172
    .line 173
    iget-boolean p1, v6, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 174
    .line 175
    if-nez p1, :cond_9

    .line 176
    .line 177
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    iget-object v0, v6, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 182
    .line 183
    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->activityRelaunched(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :catch_0
    move-exception p1

    .line 188
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    throw p1

    .line 193
    :cond_9
    :goto_3
    return-void

    .line 194
    :cond_a
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 195
    .line 196
    iget v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 197
    .line 198
    or-int/2addr v2, v7

    .line 199
    iput v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 200
    .line 201
    iget-boolean v2, v6, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 202
    .line 203
    iput-boolean v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 204
    .line 205
    iget-boolean v5, v6, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 206
    .line 207
    iput-boolean v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 208
    .line 209
    iget v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    .line 210
    .line 211
    iput v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    .line 212
    .line 213
    iget v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->relaunchSeq:I

    .line 214
    .line 215
    iput v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->relaunchSeq:I

    .line 216
    .line 217
    iget-object v8, v1, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 218
    .line 219
    iput-boolean v0, v1, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 220
    .line 221
    if-nez v5, :cond_b

    .line 222
    .line 223
    if-eqz v2, :cond_d

    .line 224
    .line 225
    :cond_b
    :try_start_2
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 230
    .line 231
    iget-boolean v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 232
    .line 233
    if-nez v5, :cond_c

    .line 234
    .line 235
    move v5, v0

    .line 236
    goto :goto_4

    .line 237
    :cond_c
    move v5, v4

    .line 238
    :goto_4
    invoke-interface {v1, v2, v5}, Landroid/view/IWindowSession;->prepareToReplaceWindows(Landroid/os/IBinder;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 239
    .line 240
    .line 241
    :cond_d
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 242
    .line 243
    if-nez v1, :cond_e

    .line 244
    .line 245
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 246
    .line 247
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    const-string/jumbo v5, "handleRelaunchActivity"

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, v1, v4, v2, v5}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZLjava/lang/String;)Landroid/os/Bundle;

    .line 255
    .line 256
    .line 257
    :cond_e
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 258
    .line 259
    if-nez v1, :cond_f

    .line 260
    .line 261
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 262
    .line 263
    if-nez v1, :cond_f

    .line 264
    .line 265
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-nez v1, :cond_f

    .line 270
    .line 271
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 272
    .line 273
    .line 274
    :cond_f
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 275
    .line 276
    invoke-direct {p0, v1, v4, v7, v0}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    .line 277
    .line 278
    .line 279
    iput-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 280
    .line 281
    iput-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 282
    .line 283
    iput-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 284
    .line 285
    iput-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 286
    .line 287
    iget-object v0, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 288
    .line 289
    if-eqz v0, :cond_11

    .line 290
    .line 291
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 292
    .line 293
    if-nez v1, :cond_10

    .line 294
    .line 295
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_10
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 299
    .line 300
    .line 301
    :cond_11
    :goto_5
    iget-object v0, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 302
    .line 303
    if-eqz v0, :cond_13

    .line 304
    .line 305
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 306
    .line 307
    if-nez v1, :cond_12

    .line 308
    .line 309
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 310
    .line 311
    goto :goto_6

    .line 312
    :cond_12
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 313
    .line 314
    .line 315
    :cond_13
    :goto_6
    iget-boolean v0, v6, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 316
    .line 317
    iput-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 318
    .line 319
    iget-object v0, v6, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 320
    .line 321
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 322
    .line 323
    const-string/jumbo v0, "handleRelaunchActivity"

    .line 324
    .line 325
    .line 326
    invoke-direct {p0, p1, v8, v0}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-boolean v0, v6, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 330
    .line 331
    if-nez v0, :cond_14

    .line 332
    .line 333
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 338
    .line 339
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->activityRelaunched(Landroid/os/IBinder;)V

    .line 340
    .line 341
    .line 342
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 343
    .line 344
    if-eqz p1, :cond_14

    .line 345
    .line 346
    invoke-virtual {p1}, Landroid/view/Window;->reportActivityRelaunched()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 347
    .line 348
    .line 349
    goto :goto_7

    .line 350
    :catch_1
    move-exception p1

    .line 351
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    throw p1

    .line 356
    :cond_14
    :goto_7
    return-void

    .line 357
    :catch_2
    move-exception p1

    .line 358
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    throw p1

    .line 363
    :catchall_0
    move-exception p1

    .line 364
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 365
    throw p1
.end method

.method private handleSendResult(Landroid/app/ActivityThread$ResultData;)V
    .locals 6

    .line 1
    const-string v0, "Activity "

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 4
    .line 5
    iget-object v2, p1, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 12
    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    iget-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    xor-int/2addr v2, v3

    .line 19
    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 20
    .line 21
    iget-boolean v5, v4, Landroid/app/Activity;->mFinished:Z

    .line 22
    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    iget-object v4, v4, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    iget-boolean v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-direct {p0, v1, v3}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 v4, 0x0

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    :try_start_0
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 42
    .line 43
    iput-boolean v4, v5, Landroid/app/Activity;->mCalled:Z

    .line 44
    .line 45
    iput-boolean v3, v5, Landroid/app/Activity;->mTemporaryPause:Z

    .line 46
    .line 47
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 48
    .line 49
    invoke-virtual {v3, v5}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 50
    .line 51
    .line 52
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 53
    .line 54
    iget-boolean v3, v3, Landroid/app/Activity;->mCalled:Z

    .line 55
    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v3, Landroid/util/SuperNotCalledException;

    .line 60
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, " did not call through to super.onPause()"

    .line 80
    .line 81
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-direct {v3, v0}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v3
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 94
    .line 95
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 96
    .line 97
    invoke-virtual {v3, v5, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_2

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 105
    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v3, "Unable to pause activity "

    .line 109
    .line 110
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ": "

    .line 127
    .line 128
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    throw p1

    .line 146
    :catch_1
    move-exception p1

    .line 147
    throw p1

    .line 148
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 149
    .line 150
    .line 151
    iget-object p1, p1, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    .line 152
    .line 153
    invoke-direct {p0, v1, p1}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    if-eqz v2, :cond_4

    .line 157
    .line 158
    iget-object p1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 159
    .line 160
    invoke-virtual {p1}, Landroid/app/Activity;->performResume()V

    .line 161
    .line 162
    .line 163
    iget-object p1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 164
    .line 165
    iput-boolean v4, p1, Landroid/app/Activity;->mTemporaryPause:Z

    .line 166
    .line 167
    :cond_4
    return-void
.end method

.method private handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Service;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-boolean v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 34
    .line 35
    iget v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 36
    .line 37
    iget v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 47
    .line 48
    .line 49
    const/16 v1, 0x3e8

    .line 50
    .line 51
    :goto_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    .line 53
    .line 54
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 59
    .line 60
    iget v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 61
    .line 62
    const/4 v5, 0x1

    .line 63
    invoke-interface {v2, v3, v5, v4, v1}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    .line 65
    .line 66
    :try_start_2
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception v1

    .line 71
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 76
    :catch_1
    move-exception v1

    .line 77
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 78
    .line 79
    invoke-virtual {v2, v0, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    .line 87
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v4, "Unable to start service "

    .line 91
    .line 92
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, " with "

    .line 99
    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object p1, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 104
    .line 105
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p1, ": "

    .line 109
    .line 110
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    throw v2

    .line 128
    :cond_3
    :goto_1
    return-void
.end method

.method private handleSetCoreSettings(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-direct {p0}, Landroid/app/ActivityThread;->onCoreSettingsChange()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p1
.end method

.method private handleSleeping(Landroid/os/IBinder;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v0, "handleSleeping: no activity for token "

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "ActivityThread"

    .line 27
    .line 28
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    if-eqz p2, :cond_5

    .line 34
    .line 35
    iget-boolean p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 36
    .line 37
    if-nez p2, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_3

    .line 44
    .line 45
    iget-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 46
    .line 47
    iget-boolean p2, p2, Landroid/app/Activity;->mFinished:Z

    .line 48
    .line 49
    if-nez p2, :cond_1

    .line 50
    .line 51
    iget-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 52
    .line 53
    if-nez p2, :cond_1

    .line 54
    .line 55
    invoke-direct {p0, v0}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :try_start_0
    iget-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Landroid/app/Activity;->performStop(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p2

    .line 65
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 66
    .line 67
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 68
    .line 69
    invoke-virtual {v1, v2, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    :goto_0
    const/4 p2, 0x1

    .line 76
    iput-boolean p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 77
    .line 78
    const/4 v1, 0x3

    .line 79
    new-array v1, v1, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    aput-object v2, v1, p1

    .line 90
    .line 91
    iget-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    aput-object p1, v1, p2

    .line 102
    .line 103
    const/4 p1, 0x2

    .line 104
    const-string/jumbo p2, "sleeping"

    .line 105
    .line 106
    .line 107
    aput-object p2, v1, p1

    .line 108
    .line 109
    const/16 p1, 0x7561

    .line 110
    .line 111
    invoke-static {p1, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 116
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v2, "Unable to stop activity "

    .line 120
    .line 121
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v0, ": "

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-direct {p1, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    throw p1

    .line 157
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-nez p1, :cond_4

    .line 162
    .line 163
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 164
    .line 165
    .line 166
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 171
    .line 172
    invoke-interface {p1, p2}, Landroid/app/IActivityManager;->activitySlept(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :catch_1
    move-exception p1

    .line 177
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    throw p1

    .line 182
    :cond_5
    iget-boolean p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 183
    .line 184
    if-eqz p2, :cond_6

    .line 185
    .line 186
    iget-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 187
    .line 188
    iget-boolean v1, p2, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 189
    .line 190
    if-eqz v1, :cond_6

    .line 191
    .line 192
    invoke-virtual {p2}, Landroid/app/Activity;->performRestart()V

    .line 193
    .line 194
    .line 195
    iput-boolean p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 196
    .line 197
    :cond_6
    :goto_2
    return-void
.end method

.method private handleStartBinderTracking()V
    .locals 0

    invoke-static {}, Landroid/os/Binder;->enableTracing()V

    return-void
.end method

.method private handleStopActivity(Landroid/os/IBinder;ZII)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo p3, "handleStopActivity: no activity for token:"

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "ActivityThread"

    .line 27
    .line 28
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-string/jumbo p1, "stopActivity"

    .line 33
    .line 34
    .line 35
    invoke-static {p4, v0, p1}, Landroid/app/ActivityThread;->checkAndUpdateLifecycleSeq(ILandroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 43
    .line 44
    iget p4, p1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 45
    .line 46
    or-int/2addr p3, p4

    .line 47
    iput p3, p1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 48
    .line 49
    new-instance p1, Landroid/app/ActivityThread$StopInfo;

    .line 50
    .line 51
    const/4 p3, 0x0

    .line 52
    invoke-direct {p1, p3}, Landroid/app/ActivityThread$StopInfo;-><init>(Landroid/app/ActivityThread$1;)V

    .line 53
    .line 54
    .line 55
    const/4 v5, 0x1

    .line 56
    const-string/jumbo v6, "handleStopActivity"

    .line 57
    .line 58
    .line 59
    move-object v1, p0

    .line 60
    move-object v2, v0

    .line 61
    move-object v3, p1

    .line 62
    move v4, p2

    .line 63
    invoke-direct/range {v1 .. v6}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZLjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-nez p2, :cond_2

    .line 74
    .line 75
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 76
    .line 77
    .line 78
    :cond_2
    iput-object v0, p1, Landroid/app/ActivityThread$StopInfo;->activity:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 79
    .line 80
    iget-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 81
    .line 82
    iput-object p2, p1, Landroid/app/ActivityThread$StopInfo;->state:Landroid/os/Bundle;

    .line 83
    .line 84
    iget-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 85
    .line 86
    iput-object p2, p1, Landroid/app/ActivityThread$StopInfo;->persistentState:Landroid/os/PersistableBundle;

    .line 87
    .line 88
    iget-object p2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 89
    .line 90
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    .line 92
    .line 93
    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 95
    .line 96
    return-void
.end method

.method private handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->disableTracing()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroid/os/TransactionTracker;->writeTracesToFile(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/os/TransactionTracker;->clearTraces()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/os/TransactionTracker;->clearTraces()V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method private handleStopService(Landroid/os/IBinder;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "handleStopService: token="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/app/Service;

    .line 11
    .line 12
    const-string v2, "ActivityThread"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Service;->onDestroy()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/app/Service;->detachAndCleanUp()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    instance-of v4, v0, Landroid/app/ContextImpl;

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v0, Landroid/app/ContextImpl;

    .line 36
    .line 37
    const-string v5, "Service"

    .line 38
    .line 39
    invoke-virtual {v0, v4, v5}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, " not found."

    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    move v0, v3

    .line 70
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-interface {v4, p1, v0, v3, v3}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catch_1
    move-exception v0

    .line 79
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 84
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 85
    .line 86
    invoke-virtual {v3, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_2

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string/jumbo v3, "handleStopService: exception for "

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {v2, p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .line 109
    .line 110
    :goto_2
    return-void

    .line 111
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 112
    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v3, "Unable to stop service "

    .line 116
    .line 117
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ": "

    .line 124
    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    throw p1
.end method

.method private handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Service;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 30
    .line 31
    .line 32
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 40
    .line 41
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 42
    .line 43
    invoke-interface {v2, v3, v4, v1}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-interface {v1, v2, v3, v3, v3}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 64
    :catch_1
    move-exception v1

    .line 65
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 66
    .line 67
    invoke-virtual {v2, v0, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    .line 75
    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v4, "Unable to unbind to service "

    .line 79
    .line 80
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, " with "

    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object p1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 92
    .line 93
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, ": "

    .line 97
    .line 98
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    throw v2

    .line 116
    :cond_2
    :goto_0
    return-void
.end method

.method private handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 30
    .line 31
    iget-object p1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 32
    .line 33
    invoke-virtual {p0, v0, p1}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/WindowManagerGlobal;->reportNewConfiguration(Landroid/content/res/Configuration;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private handleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v0, "handleWindowVisibility: no activity for token "

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "ActivityThread"

    .line 27
    .line 28
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    if-nez p2, :cond_1

    .line 33
    .line 34
    iget-boolean p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const-string/jumbo v6, "handleWindowVisibility"

    .line 41
    .line 42
    .line 43
    move-object v1, p0

    .line 44
    move-object v2, v0

    .line 45
    move v4, p2

    .line 46
    invoke-direct/range {v1 .. v6}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    if-eqz p2, :cond_2

    .line 51
    .line 52
    iget-boolean p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 57
    .line 58
    .line 59
    iget-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->performRestart()V

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    iput-boolean p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 66
    .line 67
    :cond_2
    :goto_0
    iget-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 68
    .line 69
    iget-object p1, p1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 74
    .line 75
    .line 76
    :cond_3
    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 78
    .line 79
    return-void
.end method

.method private final incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    .locals 3

    .line 1
    const/16 v0, 0x83

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    iget p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 8
    .line 9
    add-int/2addr p2, v2

    .line 10
    iput p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 11
    .line 12
    if-ne p2, v2, :cond_3

    .line 13
    .line 14
    iget-boolean p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 19
    .line 20
    iget-object p2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 21
    .line 22
    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iget-object p1, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    .line 31
    .line 32
    iget-object p1, p1, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 33
    .line 34
    invoke-interface {p2, p1, v2, v1}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 39
    .line 40
    add-int/2addr p2, v2

    .line 41
    iput p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 42
    .line 43
    if-ne p2, v2, :cond_3

    .line 44
    .line 45
    iget-boolean p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 50
    .line 51
    iget-object p2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 52
    .line 53
    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    iget-object p1, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    .line 62
    .line 63
    iget-object p1, p1, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 64
    .line 65
    invoke-interface {p2, p1, v1, v2}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .line 67
    .line 68
    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method private installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v5, v1

    .line 21
    check-cast v5, Landroid/content/pm/ProviderInfo;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x1

    .line 26
    const/4 v8, 0x1

    .line 27
    move-object v2, p0

    .line 28
    move-object v3, p1

    .line 29
    invoke-direct/range {v2 .. v8}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    iput-boolean v2, v1, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-interface {p1, p2, v0}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo p1, "persist.support.securetest"

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string p2, "1"

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_4

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Landroid/app/ContentProviderHolder;

    .line 83
    .line 84
    const-string v0, "ActivityThread"

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v2, "add content provider authority:"

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v2, p2, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 97
    .line 98
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, ", provider binder:"

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v2, p2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 109
    .line 110
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    const-string/jumbo v2, "sms"

    .line 125
    .line 126
    .line 127
    const-string/jumbo v3, "mms"

    .line 128
    .line 129
    .line 130
    const-string/jumbo v4, "mms-sms"

    .line 131
    .line 132
    .line 133
    const-string v5, "call_log"

    .line 134
    .line 135
    const-string v6, "contacts;com.android.contacts"

    .line 136
    .line 137
    const-string/jumbo v7, "icc"

    .line 138
    .line 139
    .line 140
    const-string/jumbo v8, "media"

    .line 141
    .line 142
    .line 143
    const/4 v9, 0x0

    .line 144
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const/4 v1, 0x0

    .line 149
    :goto_1
    aget-object v2, v0, v1

    .line 150
    .line 151
    if-eqz v2, :cond_2

    .line 152
    .line 153
    iget-object v3, p2, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 154
    .line 155
    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_3

    .line 162
    .line 163
    iget-object v2, p2, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 164
    .line 165
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 166
    .line 167
    iget-object v3, p2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 168
    .line 169
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .line 175
    .line 176
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_4
    return-void

    .line 180
    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    throw p1
.end method

.method private installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;
    .locals 6

    .line 1
    const-string v0, "Failed to instantiate class "

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object v3, p2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 8
    .line 9
    if-nez v3, :cond_7

    .line 10
    .line 11
    :cond_0
    if-eqz p4, :cond_1

    .line 12
    .line 13
    const-string p4, "ActivityThread"

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v4, "Loading provider "

    .line 18
    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v4, p3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v4, ": "

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v4, p3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {p4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p4, p3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v4, p4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object v3, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iget-object v4, p4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    iget-object p1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    :try_start_0
    iget-object v3, p4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-object p1, v2

    .line 86
    :goto_0
    if-nez p1, :cond_4

    .line 87
    .line 88
    const-string p1, "ActivityThread"

    .line 89
    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string p5, "Unable to get context for package "

    .line 93
    .line 94
    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p4, p4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p4, " while loading content provider "

    .line 103
    .line 104
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object p3, p3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    return-object v2

    .line 120
    :cond_4
    iget-object p4, p3, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 121
    .line 122
    if-eqz p4, :cond_5

    .line 123
    .line 124
    :try_start_1
    invoke-virtual {p1, p4}, Landroid/content/Context;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    goto :goto_1

    .line 129
    :catch_1
    move-exception p1

    .line 130
    new-instance p2, Ljava/lang/RuntimeException;

    .line 131
    .line 132
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw p2

    .line 136
    :cond_5
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 137
    .line 138
    .line 139
    move-result-object p4

    .line 140
    iget-object v3, p3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    move-result-object p4

    .line 146
    invoke-virtual {p4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p4

    .line 150
    check-cast p4, Landroid/content/ContentProvider;

    .line 151
    .line 152
    invoke-virtual {p4}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    if-nez v3, :cond_6

    .line 157
    .line 158
    const-string p1, "ActivityThread"

    .line 159
    .line 160
    new-instance p2, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object p4, p3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string p4, " from sourceDir "

    .line 171
    .line 172
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-object p4, p3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 176
    .line 177
    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    return-object v2

    .line 190
    :cond_6
    invoke-virtual {p4, p1, p3}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 191
    .line 192
    .line 193
    move-object v2, p4

    .line 194
    :cond_7
    iget-object p1, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 195
    .line 196
    monitor-enter p1

    .line 197
    :try_start_3
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 198
    .line 199
    .line 200
    move-result-object p4

    .line 201
    if-eqz v2, :cond_9

    .line 202
    .line 203
    new-instance p2, Landroid/content/ComponentName;

    .line 204
    .line 205
    iget-object p5, p3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 206
    .line 207
    iget-object p6, p3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 208
    .line 209
    invoke-direct {p2, p5, p6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object p5, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    .line 213
    .line 214
    invoke-virtual {p5, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p5

    .line 218
    check-cast p5, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 219
    .line 220
    if-eqz p5, :cond_8

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_8
    new-instance p5, Landroid/app/ContentProviderHolder;

    .line 224
    .line 225
    invoke-direct {p5, p3}, Landroid/app/ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 226
    .line 227
    .line 228
    iput-object v3, p5, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 229
    .line 230
    iput-boolean v1, p5, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 231
    .line 232
    invoke-direct {p0, v3, v2, p5}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    .line 233
    .line 234
    .line 235
    move-result-object p5

    .line 236
    iget-object p3, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    .line 237
    .line 238
    invoke-virtual {p3, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    iget-object p3, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    .line 242
    .line 243
    invoke-virtual {p3, p2, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    :goto_2
    iget-object p2, p5, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/ContentProviderHolder;

    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_9
    iget-object p3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 250
    .line 251
    invoke-virtual {p3, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p3

    .line 255
    check-cast p3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 256
    .line 257
    if-eqz p3, :cond_a

    .line 258
    .line 259
    if-nez p5, :cond_d

    .line 260
    .line 261
    invoke-direct {p0, p3, p6}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    .line 263
    .line 264
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 265
    .line 266
    .line 267
    move-result-object p4

    .line 268
    iget-object p2, p2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 269
    .line 270
    invoke-interface {p4, p2, p6}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 271
    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_a
    :try_start_5
    const-string/jumbo p3, "installProviderAuthoritiesLocked"

    .line 275
    .line 276
    .line 277
    const-wide/16 v4, 0x40

    .line 278
    .line 279
    invoke-static {v4, v5, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-direct {p0, v3, v2, p2}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    .line 283
    .line 284
    .line 285
    move-result-object p3

    .line 286
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 287
    .line 288
    .line 289
    if-eqz p5, :cond_b

    .line 290
    .line 291
    new-instance p5, Landroid/app/ActivityThread$ProviderRefCount;

    .line 292
    .line 293
    const/16 p6, 0x3e8

    .line 294
    .line 295
    invoke-direct {p5, p2, p3, p6, p6}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    .line 296
    .line 297
    .line 298
    move-object p3, p5

    .line 299
    goto :goto_4

    .line 300
    :cond_b
    const/4 p5, 0x0

    .line 301
    if-eqz p6, :cond_c

    .line 302
    .line 303
    new-instance p6, Landroid/app/ActivityThread$ProviderRefCount;

    .line 304
    .line 305
    invoke-direct {p6, p2, p3, v1, p5}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    .line 306
    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_c
    new-instance p6, Landroid/app/ActivityThread$ProviderRefCount;

    .line 310
    .line 311
    invoke-direct {p6, p2, p3, p5, v1}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    .line 312
    .line 313
    .line 314
    :goto_3
    move-object p3, p6

    .line 315
    :goto_4
    iget-object p2, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 316
    .line 317
    invoke-virtual {p2, p4, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    :catch_2
    :cond_d
    :goto_5
    iget-object p2, p3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    .line 321
    .line 322
    :goto_6
    monitor-exit p1

    .line 323
    return-object p2

    .line 324
    :catchall_0
    move-exception p2

    .line 325
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 326
    throw p2

    .line 327
    :catch_3
    move-exception p1

    .line 328
    iget-object p2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 329
    .line 330
    invoke-virtual {p2, v2, p1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 331
    .line 332
    .line 333
    move-result p2

    .line 334
    if-eqz p2, :cond_e

    .line 335
    .line 336
    return-object v2

    .line 337
    :cond_e
    new-instance p2, Ljava/lang/RuntimeException;

    .line 338
    .line 339
    new-instance p4, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    const-string p5, "Unable to get provider "

    .line 342
    .line 343
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    iget-object p3, p3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string p3, ": "

    .line 352
    .line 353
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p3

    .line 360
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p3

    .line 367
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    .line 369
    .line 370
    throw p2
.end method

.method private installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;
    .locals 10

    .line 1
    iget-object v0, p3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, ";"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 12
    .line 13
    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 16
    .line 17
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v8, 0x0

    .line 22
    if-eqz p1, :cond_7

    .line 23
    .line 24
    array-length v2, v0

    .line 25
    move v3, v8

    .line 26
    :goto_0
    if-ge v3, v2, :cond_7

    .line 27
    .line 28
    aget-object v4, v0, v3

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/4 v6, -0x1

    .line 38
    sparse-switch v5, :sswitch_data_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :sswitch_0
    const-string v5, "com.android.blockednumber"

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    const/4 v6, 0x6

    .line 52
    goto :goto_1

    .line 53
    :sswitch_1
    const-string v5, "downloads"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 v6, 0x5

    .line 63
    goto :goto_1

    .line 64
    :sswitch_2
    const-string/jumbo v5, "telephony"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-nez v4, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/4 v6, 0x4

    .line 75
    goto :goto_1

    .line 76
    :sswitch_3
    const-string v5, "call_log_shadow"

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-nez v4, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    const/4 v6, 0x3

    .line 86
    goto :goto_1

    .line 87
    :sswitch_4
    const-string v5, "call_log"

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-nez v4, :cond_4

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    const/4 v6, 0x2

    .line 97
    goto :goto_1

    .line 98
    :sswitch_5
    const-string v5, "com.android.calendar"

    .line 99
    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-nez v4, :cond_5

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    const/4 v6, 0x1

    .line 108
    goto :goto_1

    .line 109
    :sswitch_6
    const-string v5, "com.android.contacts"

    .line 110
    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_6

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_6
    move v6, v8

    .line 119
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :pswitch_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-static {v4}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 128
    .line 129
    .line 130
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_7
    new-instance v9, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 134
    .line 135
    move-object v2, v9

    .line 136
    move-object v3, p0

    .line 137
    move-object v4, v0

    .line 138
    move-object v5, p1

    .line 139
    move-object v6, p2

    .line 140
    move-object v7, p3

    .line 141
    invoke-direct/range {v2 .. v7}, Landroid/app/ActivityThread$ProviderClientRecord;-><init>(Landroid/app/ActivityThread;[Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)V

    .line 142
    .line 143
    .line 144
    array-length p1, v0

    .line 145
    :goto_3
    if-ge v8, p1, :cond_9

    .line 146
    .line 147
    aget-object p2, v0, v8

    .line 148
    .line 149
    new-instance p3, Landroid/app/ActivityThread$ProviderKey;

    .line 150
    .line 151
    invoke-direct {p3, p2, v1}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 155
    .line 156
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 161
    .line 162
    if-eqz v2, :cond_8

    .line 163
    .line 164
    new-instance p3, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v2, "Content provider "

    .line 167
    .line 168
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v2, v9, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/ContentProviderHolder;

    .line 172
    .line 173
    iget-object v2, v2, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 174
    .line 175
    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v2, " already published as "

    .line 181
    .line 182
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    const-string p3, "ActivityThread"

    .line 193
    .line 194
    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_8
    iget-object p2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 199
    .line 200
    invoke-virtual {p2, p3, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_9
    return-object v9

    .line 207
    :sswitch_data_0
    .sparse-switch
        -0x3260a241 -> :sswitch_6
        -0x1b2f0756 -> :sswitch_5
        -0xa45121d -> :sswitch_4
        0x3cfb2fc -> :sswitch_3
        0x2eaeb418 -> :sswitch_2
        0x4e3e48eb -> :sswitch_1
        0x76f32249 -> :sswitch_0
    .end sparse-switch

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isNeedAdjustHomeActivity(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "ActivityThread"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {v3, v2}, Landroid/content/pm/IPackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    move v3, v1

    .line 20
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ge v3, v4, :cond_2

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 31
    .line 32
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 33
    .line 34
    iget-object v5, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    const-string v5, "com.android.launcher3"

    .line 43
    .line 44
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_1

    .line 49
    .line 50
    const-string v5, "com.android.sprdlauncher3"

    .line 51
    .line 52
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_1

    .line 57
    .line 58
    const-string v5, "com.android.settings"

    .line 59
    .line 60
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-nez v5, :cond_1

    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v1, "3rd home app :"

    .line 69
    .line 70
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p1, v1, v0}, Landroid/accessibilityservice/c;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    return p1

    .line 80
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return v1

    .line 84
    :catch_0
    move-exception p1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v3, "getHomeActivities ERROR :"

    .line 88
    .line 89
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    return v1
.end method

.method public static isSystem()Z
    .locals 1

    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$attach$0(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    :cond_0
    iput-object p1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 43
    .line 44
    const/16 v1, 0x76

    .line 45
    .line 46
    invoke-direct {p0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p0, "ActivityThreadMain"

    .line 2
    .line 3
    const-wide/16 v0, 0x40

    .line 4
    .line 5
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    invoke-static {p0}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Landroid/app/ActivityThread$EventLoggingReporter;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3}, Landroid/app/ActivityThread$EventLoggingReporter;-><init>(Landroid/app/ActivityThread$1;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Llibcore/io/EventLogger;->setReporter(Llibcore/io/EventLogger$Reporter;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v2}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->setDefaultUserDirectory(Ljava/io/File;)V

    .line 33
    .line 34
    .line 35
    const-string v2, "<pre-initialized>"

    .line 36
    .line 37
    invoke-static {v2}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 41
    .line 42
    .line 43
    new-instance v2, Landroid/app/ActivityThread;

    .line 44
    .line 45
    invoke-direct {v2}, Landroid/app/ActivityThread;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, p0}, Landroid/app/ActivityThread;->attach(Z)V

    .line 49
    .line 50
    .line 51
    sget-object p0, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    .line 52
    .line 53
    if-nez p0, :cond_0

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    sput-object p0, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    .line 60
    .line 61
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 65
    .line 66
    .line 67
    new-instance p0, Ljava/lang/RuntimeException;

    .line 68
    .line 69
    const-string v0, "Main thread loop unexpectedly exited"

    .line 70
    .line 71
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method private native nDumpGraphicsInfo(Ljava/io/FileDescriptor;)V
.end method

.method private onCoreSettingsChange()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v1, "debug_view_attributes"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    :cond_0
    sget-boolean v0, Landroid/view/View;->mDebugViewAttributes:Z

    .line 14
    .line 15
    if-eq v2, v0, :cond_1

    .line 16
    .line 17
    sput-boolean v2, Landroid/view/View;->mDebugViewAttributes:Z

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/app/ActivityThread;->requestRelaunchAllActivities()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method private performActivityConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;
    .locals 7

    .line 1
    if-eqz p1, :cond_9

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    iget-object v1, p1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 23
    .line 24
    invoke-virtual {v4, v0, p3}, Landroid/app/ResourcesManager;->isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    :cond_1
    iget-boolean v4, p0, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    .line 31
    .line 32
    if-eqz v4, :cond_3

    .line 33
    .line 34
    iget-object v4, p1, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    not-int v4, v4

    .line 41
    and-int/2addr v1, v4

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    :cond_2
    move v2, v3

    .line 45
    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 46
    .line 47
    if-nez p5, :cond_4

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    return-object p1

    .line 51
    :cond_4
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getOverrideConfiguration()Landroid/content/res/Configuration;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {p3, v1}, Landroid/app/ActivityThread;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    const-string/jumbo v4, "updateResourcesForActivity"

    .line 60
    .line 61
    .line 62
    const-wide/16 v5, 0x40

    .line 63
    .line 64
    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 68
    .line 69
    invoke-virtual {v4, v0, p3, p4, p5}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;IZ)V

    .line 70
    .line 71
    .line 72
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 73
    .line 74
    .line 75
    iput v3, p1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 76
    .line 77
    new-instance p3, Landroid/content/res/Configuration;

    .line 78
    .line 79
    invoke-direct {p3, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 80
    .line 81
    .line 82
    iput-object p3, p1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 83
    .line 84
    invoke-static {p2, v1}, Landroid/app/ActivityThread;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    if-eqz p5, :cond_5

    .line 89
    .line 90
    invoke-virtual {p1, p4, p2}, Landroid/app/Activity;->dispatchMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    if-eqz v2, :cond_7

    .line 94
    .line 95
    iput-boolean v3, p1, Landroid/app/Activity;->mCalled:Z

    .line 96
    .line 97
    const-string/jumbo p3, "onConfigurationChanged"

    .line 98
    .line 99
    .line 100
    invoke-static {v5, v6, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 107
    .line 108
    .line 109
    iget-boolean p3, p1, Landroid/app/Activity;->mCalled:Z

    .line 110
    .line 111
    if-eqz p3, :cond_6

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    new-instance p2, Landroid/util/SuperNotCalledException;

    .line 115
    .line 116
    new-instance p3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string p4, "Activity "

    .line 119
    .line 120
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p1, " did not call through to super.onConfigurationChanged()"

    .line 131
    .line 132
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-direct {p2, p1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p2

    .line 143
    :cond_7
    :goto_1
    return-object p2

    .line 144
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    const-string p2, "Activity token not set. Is the activity attached?"

    .line 147
    .line 148
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    const-string p2, "No activity provided."

    .line 155
    .line 156
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p1
.end method

.method private performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/ContextThemeWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroid/view/ContextThemeWrapper;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getOverrideConfiguration()Landroid/content/res/Configuration;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {p2, v0}, Landroid/app/ActivityThread;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-interface {p1, p2}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;
    .locals 8

    .line 4
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz p2, :cond_0

    .line 6
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object p2

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p2, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_0
    const-string/jumbo p2, "performConfigurationChanged"

    const-wide/16 v0, 0x40

    .line 7
    invoke-static {v0, v1, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 9
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    move-object v2, p0

    move v6, p3

    move v7, p4

    .line 10
    invoke-direct/range {v2 .. v7}, Landroid/app/ActivityThread;->performActivityConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;

    move-result-object p2

    .line 11
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 12
    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object p3, p3, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p1

    invoke-static {p1}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    return-object p2
.end method

.method private performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 2
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;

    return-void
.end method

.method private performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 8

    const-string v0, "Activity "

    .line 2
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    if-eqz v1, :cond_7

    .line 3
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 4
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v4, v3, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr p3, v4

    iput p3, v3, Landroid/app/Activity;->mConfigChangeFlags:I

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 5
    iput-boolean p3, v3, Landroid/app/Activity;->mFinished:Z

    :cond_0
    const-string p2, "destroy"

    .line 6
    invoke-direct {p0, v1, p2}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 7
    iget-boolean v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    const/4 v4, 0x0

    const-string v5, ": "

    if-nez v3, :cond_2

    .line 8
    :try_start_0
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    invoke-virtual {v3, v6}, Landroid/app/Activity;->performStop(Z)V
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 9
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7, v3}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    :goto_0
    iput-boolean p3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 12
    invoke-virtual {v6}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, p3

    const/4 p3, 0x2

    aput-object p2, v3, p3

    const/16 p2, 0x7561

    .line 13
    invoke-static {p2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to stop activity "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 15
    invoke-static {p3}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    .line 17
    throw p1

    :cond_2
    :goto_1
    if-eqz p4, :cond_4

    .line 18
    :try_start_1
    iget-object p2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 19
    invoke-virtual {p2}, Landroid/app/Activity;->retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;

    move-result-object p2

    iput-object p2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 20
    iget-object p3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object p4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p3, p4, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unable to retain activity "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 22
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 24
    :cond_4
    :goto_2
    :try_start_2
    iget-object p2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v4, p2, Landroid/app/Activity;->mCalled:Z

    .line 25
    iget-object p3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {p3, p2}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 26
    iget-object p2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean p2, p2, Landroid/app/Activity;->mCalled:Z

    if-eqz p2, :cond_5

    .line 27
    iget-object p2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz p2, :cond_8

    .line 28
    invoke-virtual {p2}, Landroid/view/Window;->closeAllPanels()V

    goto :goto_3

    .line 29
    :cond_5
    new-instance p2, Landroid/util/SuperNotCalledException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 30
    invoke-static {p4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " did not call through to super.onDestroy()"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Landroid/util/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    move-exception p2

    .line 31
    iget-object p3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object p4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p3, p4, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_3

    .line 32
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unable to destroy activity "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 33
    invoke-static {p4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p1

    .line 35
    throw p1

    :cond_7
    const/4 v2, 0x0

    .line 36
    :cond_8
    :goto_3
    iget-object p2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {v2}, Landroid/os/StrictMode;->decrementExpectedActivityCount(Ljava/lang/Class;)V

    return-object v1
.end method

.method private performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 31

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    move-object/from16 v13, p2

    .line 6
    .line 7
    const-string v12, ": "

    .line 8
    .line 9
    const-string v11, "Unable to start activity "

    .line 10
    .line 11
    const-string/jumbo v0, "performLaunchActivity"

    .line 12
    .line 13
    .line 14
    const-wide/16 v9, 0x40

    .line 15
    .line 16
    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 20
    .line 21
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 22
    .line 23
    const/4 v8, 0x1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 27
    .line 28
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 29
    .line 30
    invoke-virtual {v15, v0, v1, v8}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 35
    .line 36
    :cond_0
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 45
    .line 46
    iget-object v1, v15, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 62
    .line 63
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    new-instance v0, Landroid/content/ComponentName;

    .line 68
    .line 69
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 70
    .line 71
    iget-object v2, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 74
    .line 75
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    move-object v7, v0

    .line 79
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const/4 v6, 0x0

    .line 84
    :try_start_0
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v1, v15, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 89
    .line 90
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    iget-object v4, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 95
    .line 96
    invoke-virtual {v1, v0, v3, v4}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    .line 97
    .line 98
    .line 99
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v3}, Landroid/os/StrictMode;->incrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 105
    .line 106
    .line 107
    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 108
    .line 109
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 110
    .line 111
    .line 112
    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 113
    .line 114
    invoke-virtual {v3}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 115
    .line 116
    .line 117
    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 118
    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    goto :goto_0

    .line 127
    :catch_1
    move-exception v0

    .line 128
    move-object v1, v6

    .line 129
    :goto_0
    iget-object v3, v15, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 130
    .line 131
    invoke-virtual {v3, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_13

    .line 136
    .line 137
    :cond_3
    :goto_1
    move-object v5, v1

    .line 138
    :try_start_2
    const-string/jumbo v0, "makeApplication"

    .line 139
    .line 140
    .line 141
    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 145
    .line 146
    iget-object v1, v15, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 147
    .line 148
    const/4 v4, 0x0

    .line 149
    invoke-virtual {v0, v4, v1}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    if-eqz v5, :cond_10

    .line 154
    .line 155
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 156
    .line 157
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v1, v3}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 162
    .line 163
    .line 164
    move-result-object v16

    .line 165
    new-instance v3, Landroid/content/res/Configuration;

    .line 166
    .line 167
    iget-object v1, v15, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 168
    .line 169
    invoke-direct {v3, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 170
    .line 171
    .line 172
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 173
    .line 174
    if-eqz v1, :cond_4

    .line 175
    .line 176
    const-string/jumbo v1, "updateFrom"

    .line 177
    .line 178
    .line 179
    invoke-static {v9, v10, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 183
    .line 184
    invoke-virtual {v3, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 185
    .line 186
    .line 187
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 188
    .line 189
    .line 190
    :cond_4
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 191
    .line 192
    if-eqz v1, :cond_5

    .line 193
    .line 194
    iget-boolean v4, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 195
    .line 196
    if-eqz v4, :cond_5

    .line 197
    .line 198
    iput-object v6, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 199
    .line 200
    iput-object v6, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 201
    .line 202
    move-object/from16 v18, v1

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_5
    move-object/from16 v18, v6

    .line 206
    .line 207
    :goto_2
    invoke-virtual {v2, v5}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 208
    .line 209
    .line 210
    const-string v1, "activity attach"

    .line 211
    .line 212
    invoke-static {v9, v10, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 220
    .line 221
    iget v6, v14, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 222
    .line 223
    iget-object v8, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;
    :try_end_2
    .catch Landroid/util/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 224
    .line 225
    :try_start_3
    iget-object v9, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 226
    .line 227
    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;
    :try_end_3
    .catch Landroid/util/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 228
    .line 229
    move-object/from16 v22, v12

    .line 230
    .line 231
    :try_start_4
    iget-object v12, v14, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    .line 232
    .line 233
    iget-object v13, v14, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;
    :try_end_4
    .catch Landroid/util/SuperNotCalledException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 234
    .line 235
    :try_start_5
    iget-object v15, v14, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    .line 236
    .line 237
    move-object/from16 v23, v15

    .line 238
    .line 239
    iget-object v15, v14, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 240
    .line 241
    move-object/from16 v24, v15

    .line 242
    .line 243
    iget-object v15, v14, Landroid/app/ActivityThread$ActivityClientRecord;->configCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;
    :try_end_5
    .catch Landroid/util/SuperNotCalledException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 244
    .line 245
    move-object/from16 v25, v1

    .line 246
    .line 247
    move-object v1, v5

    .line 248
    move-object/from16 v26, v3

    .line 249
    .line 250
    move-object/from16 v3, p0

    .line 251
    .line 252
    move-object/from16 v27, v5

    .line 253
    .line 254
    move-object/from16 v5, v25

    .line 255
    .line 256
    move-object/from16 v28, v7

    .line 257
    .line 258
    move-object v7, v0

    .line 259
    const-wide/16 v19, 0x40

    .line 260
    .line 261
    move-object v0, v10

    .line 262
    move-object/from16 v10, v16

    .line 263
    .line 264
    move-object/from16 v29, v11

    .line 265
    .line 266
    move-object v11, v0

    .line 267
    move-object/from16 v30, v22

    .line 268
    .line 269
    move-object/from16 v14, v26

    .line 270
    .line 271
    move-object/from16 v21, v15

    .line 272
    .line 273
    move-object/from16 v0, v24

    .line 274
    .line 275
    move-object/from16 v15, v23

    .line 276
    .line 277
    move-object/from16 v16, v0

    .line 278
    .line 279
    move-object/from16 v17, v18

    .line 280
    .line 281
    move-object/from16 v18, v21

    .line 282
    .line 283
    :try_start_6
    invoke-virtual/range {v1 .. v18}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    .line 284
    .line 285
    .line 286
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_6
    .catch Landroid/util/SuperNotCalledException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 287
    .line 288
    .line 289
    move-object/from16 v1, p2

    .line 290
    .line 291
    if-eqz v1, :cond_6

    .line 292
    .line 293
    move-object/from16 v2, v27

    .line 294
    .line 295
    :try_start_7
    iput-object v1, v2, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_6
    move-object/from16 v2, v27

    .line 299
    .line 300
    :goto_3
    move-object/from16 v1, p1

    .line 301
    .line 302
    const/4 v3, 0x0

    .line 303
    iput-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 304
    .line 305
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 306
    .line 307
    .line 308
    const/4 v0, 0x0

    .line 309
    iput-boolean v0, v2, Landroid/app/Activity;->mStartedActivity:Z

    .line 310
    .line 311
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 312
    .line 313
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    .line 314
    .line 315
    .line 316
    move-result v3
    :try_end_7
    .catch Landroid/util/SuperNotCalledException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 317
    if-eqz v3, :cond_7

    .line 318
    .line 319
    :try_start_8
    const-string v4, "activity setTheme"
    :try_end_8
    .catch Landroid/util/SuperNotCalledException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 320
    .line 321
    move-wide/from16 v5, v19

    .line 322
    .line 323
    :try_start_9
    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTheme(I)V

    .line 327
    .line 328
    .line 329
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 330
    .line 331
    .line 332
    goto :goto_4

    .line 333
    :catchall_0
    move-exception v0

    .line 334
    move-wide/from16 v5, v19

    .line 335
    .line 336
    goto/16 :goto_8

    .line 337
    .line 338
    :catch_2
    move-exception v0

    .line 339
    move-wide/from16 v5, v19

    .line 340
    .line 341
    goto/16 :goto_9

    .line 342
    .line 343
    :catch_3
    move-exception v0

    .line 344
    move-wide/from16 v5, v19

    .line 345
    .line 346
    goto/16 :goto_a

    .line 347
    .line 348
    :cond_7
    move-wide/from16 v5, v19

    .line 349
    .line 350
    :goto_4
    iput-boolean v0, v2, Landroid/app/Activity;->mCalled:Z

    .line 351
    .line 352
    const-string v3, "callActivityOnCreate"

    .line 353
    .line 354
    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    .line 358
    .line 359
    .line 360
    move-result v3
    :try_end_9
    .catch Landroid/util/SuperNotCalledException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 361
    if-eqz v3, :cond_8

    .line 362
    .line 363
    move-object/from16 v3, p0

    .line 364
    .line 365
    :try_start_a
    iget-object v4, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 366
    .line 367
    iget-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 368
    .line 369
    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 370
    .line 371
    invoke-virtual {v4, v2, v7, v8}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 372
    .line 373
    .line 374
    goto :goto_5

    .line 375
    :cond_8
    move-object/from16 v3, p0

    .line 376
    .line 377
    iget-object v4, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 378
    .line 379
    iget-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 380
    .line 381
    invoke-virtual {v4, v2, v7}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 382
    .line 383
    .line 384
    :goto_5
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 385
    .line 386
    .line 387
    iget-boolean v4, v2, Landroid/app/Activity;->mCalled:Z
    :try_end_a
    .catch Landroid/util/SuperNotCalledException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 388
    .line 389
    const-string v7, "Activity "

    .line 390
    .line 391
    if-eqz v4, :cond_f

    .line 392
    .line 393
    :try_start_b
    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 394
    .line 395
    const/4 v4, 0x1

    .line 396
    iput-boolean v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 397
    .line 398
    iget-boolean v8, v2, Landroid/app/Activity;->mFinished:Z

    .line 399
    .line 400
    if-nez v8, :cond_9

    .line 401
    .line 402
    const-string/jumbo v8, "performStart"

    .line 403
    .line 404
    .line 405
    invoke-static {v5, v6, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2}, Landroid/app/Activity;->performStart()V

    .line 409
    .line 410
    .line 411
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 412
    .line 413
    .line 414
    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 415
    .line 416
    :cond_9
    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 417
    .line 418
    iget-boolean v8, v8, Landroid/app/Activity;->mFinished:Z

    .line 419
    .line 420
    if-nez v8, :cond_c

    .line 421
    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    .line 423
    .line 424
    .line 425
    move-result v8

    .line 426
    if-eqz v8, :cond_b

    .line 427
    .line 428
    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 429
    .line 430
    if-nez v8, :cond_a

    .line 431
    .line 432
    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 433
    .line 434
    if-eqz v9, :cond_c

    .line 435
    .line 436
    :cond_a
    iget-object v9, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 437
    .line 438
    iget-object v10, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 439
    .line 440
    invoke-virtual {v9, v2, v8, v10}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 441
    .line 442
    .line 443
    goto :goto_6

    .line 444
    :cond_b
    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 445
    .line 446
    if-eqz v8, :cond_c

    .line 447
    .line 448
    iget-object v9, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 449
    .line 450
    invoke-virtual {v9, v2, v8}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 451
    .line 452
    .line 453
    :cond_c
    :goto_6
    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 454
    .line 455
    iget-boolean v8, v8, Landroid/app/Activity;->mFinished:Z

    .line 456
    .line 457
    if-nez v8, :cond_11

    .line 458
    .line 459
    iput-boolean v0, v2, Landroid/app/Activity;->mCalled:Z

    .line 460
    .line 461
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-eqz v0, :cond_d

    .line 466
    .line 467
    iget-object v0, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 468
    .line 469
    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 470
    .line 471
    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 472
    .line 473
    invoke-virtual {v0, v2, v8, v9}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 474
    .line 475
    .line 476
    goto :goto_7

    .line 477
    :cond_d
    iget-object v0, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 478
    .line 479
    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 480
    .line 481
    invoke-virtual {v0, v2, v8}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 482
    .line 483
    .line 484
    :goto_7
    iget-boolean v0, v2, Landroid/app/Activity;->mCalled:Z

    .line 485
    .line 486
    if-eqz v0, :cond_e

    .line 487
    .line 488
    goto/16 :goto_f

    .line 489
    .line 490
    :cond_e
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 491
    .line 492
    new-instance v4, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 498
    .line 499
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    const-string v1, " did not call through to super.onPostCreate()"

    .line 511
    .line 512
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    throw v0

    .line 523
    :cond_f
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 524
    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    .line 526
    .line 527
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 531
    .line 532
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    const-string v1, " did not call through to super.onCreate()"

    .line 544
    .line 545
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    throw v0

    .line 556
    :catchall_1
    move-exception v0

    .line 557
    :goto_8
    move-object/from16 v3, p0

    .line 558
    .line 559
    goto/16 :goto_13

    .line 560
    .line 561
    :catch_4
    move-exception v0

    .line 562
    :goto_9
    move-object/from16 v3, p0

    .line 563
    .line 564
    goto/16 :goto_10

    .line 565
    .line 566
    :catch_5
    move-exception v0

    .line 567
    :goto_a
    move-object/from16 v3, p0

    .line 568
    .line 569
    goto/16 :goto_12

    .line 570
    .line 571
    :catch_6
    move-exception v0

    .line 572
    move-object/from16 v3, p0

    .line 573
    .line 574
    move-wide/from16 v5, v19

    .line 575
    .line 576
    goto/16 :goto_10

    .line 577
    .line 578
    :catchall_2
    move-exception v0

    .line 579
    move-object/from16 v3, p0

    .line 580
    .line 581
    move-wide/from16 v5, v19

    .line 582
    .line 583
    goto/16 :goto_13

    .line 584
    .line 585
    :catch_7
    move-exception v0

    .line 586
    move-object/from16 v3, p0

    .line 587
    .line 588
    move-wide/from16 v5, v19

    .line 589
    .line 590
    move-object/from16 v2, v27

    .line 591
    .line 592
    goto/16 :goto_10

    .line 593
    .line 594
    :catch_8
    move-exception v0

    .line 595
    move-object/from16 v3, p0

    .line 596
    .line 597
    move-wide/from16 v5, v19

    .line 598
    .line 599
    goto/16 :goto_12

    .line 600
    .line 601
    :catchall_3
    move-exception v0

    .line 602
    move-object/from16 v3, p0

    .line 603
    .line 604
    goto :goto_c

    .line 605
    :catch_9
    move-exception v0

    .line 606
    move-object/from16 v3, p0

    .line 607
    .line 608
    move-object v2, v5

    .line 609
    move-object/from16 v28, v7

    .line 610
    .line 611
    move-object/from16 v29, v11

    .line 612
    .line 613
    goto :goto_b

    .line 614
    :catch_a
    move-exception v0

    .line 615
    move-object/from16 v3, p0

    .line 616
    .line 617
    goto :goto_e

    .line 618
    :catch_b
    move-exception v0

    .line 619
    move-object v2, v5

    .line 620
    move-object/from16 v28, v7

    .line 621
    .line 622
    move-object/from16 v29, v11

    .line 623
    .line 624
    move-object v3, v15

    .line 625
    :goto_b
    move-object/from16 v30, v22

    .line 626
    .line 627
    goto :goto_d

    .line 628
    :catchall_4
    move-exception v0

    .line 629
    move-object v3, v15

    .line 630
    :goto_c
    const-wide/16 v5, 0x40

    .line 631
    .line 632
    goto/16 :goto_13

    .line 633
    .line 634
    :catch_c
    move-exception v0

    .line 635
    move-object v2, v5

    .line 636
    move-object/from16 v28, v7

    .line 637
    .line 638
    move-object/from16 v29, v11

    .line 639
    .line 640
    move-object/from16 v30, v12

    .line 641
    .line 642
    move-object v3, v15

    .line 643
    :goto_d
    const-wide/16 v5, 0x40

    .line 644
    .line 645
    goto :goto_10

    .line 646
    :catch_d
    move-exception v0

    .line 647
    move-object v3, v15

    .line 648
    :goto_e
    const-wide/16 v5, 0x40

    .line 649
    .line 650
    goto/16 :goto_12

    .line 651
    .line 652
    :cond_10
    move-object v2, v5

    .line 653
    move-object/from16 v28, v7

    .line 654
    .line 655
    move v4, v8

    .line 656
    move-wide v5, v9

    .line 657
    move-object/from16 v29, v11

    .line 658
    .line 659
    move-object/from16 v30, v12

    .line 660
    .line 661
    move-object v1, v14

    .line 662
    move-object v3, v15

    .line 663
    :cond_11
    :goto_f
    iput-boolean v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 664
    .line 665
    iget-object v0, v3, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 666
    .line 667
    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 668
    .line 669
    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Landroid/util/SuperNotCalledException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 670
    .line 671
    .line 672
    goto :goto_11

    .line 673
    :catch_e
    move-exception v0

    .line 674
    goto :goto_10

    .line 675
    :catch_f
    move-exception v0

    .line 676
    goto :goto_12

    .line 677
    :catchall_5
    move-exception v0

    .line 678
    move-wide v5, v9

    .line 679
    move-object v3, v15

    .line 680
    goto :goto_13

    .line 681
    :catch_10
    move-exception v0

    .line 682
    move-object v2, v5

    .line 683
    move-object/from16 v28, v7

    .line 684
    .line 685
    move-wide v5, v9

    .line 686
    move-object/from16 v29, v11

    .line 687
    .line 688
    move-object/from16 v30, v12

    .line 689
    .line 690
    move-object v3, v15

    .line 691
    :goto_10
    :try_start_c
    iget-object v1, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 692
    .line 693
    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 694
    .line 695
    .line 696
    move-result v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 697
    if-eqz v1, :cond_12

    .line 698
    .line 699
    :goto_11
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 700
    .line 701
    .line 702
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 703
    .line 704
    .line 705
    return-object v2

    .line 706
    :cond_12
    :try_start_d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 707
    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    .line 709
    .line 710
    move-object/from16 v4, v29

    .line 711
    .line 712
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    move-object/from16 v4, v28

    .line 716
    .line 717
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    move-object/from16 v7, v30

    .line 721
    .line 722
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v4

    .line 729
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 737
    .line 738
    .line 739
    throw v1

    .line 740
    :catch_11
    move-exception v0

    .line 741
    move-wide v5, v9

    .line 742
    move-object v3, v15

    .line 743
    :goto_12
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 744
    :catchall_6
    move-exception v0

    .line 745
    :goto_13
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 746
    .line 747
    .line 748
    throw v0

    .line 749
    :cond_13
    move-object v4, v7

    .line 750
    move-object v7, v12

    .line 751
    move-object v3, v15

    .line 752
    new-instance v1, Ljava/lang/RuntimeException;

    .line 753
    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    .line 755
    .line 756
    const-string v5, "Unable to instantiate activity "

    .line 757
    .line 758
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v4

    .line 771
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v2

    .line 778
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 779
    .line 780
    .line 781
    throw v1
.end method

.method private performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "Activity "

    .line 2
    .line 3
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    :try_start_0
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    iput-boolean v3, v2, Landroid/app/Activity;->mCalled:Z

    .line 13
    .line 14
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 15
    .line 16
    invoke-virtual {v4, v2}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    aput-object v4, v2, v3

    .line 31
    .line 32
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    aput-object v3, v2, v1

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    aput-object p2, v2, v3

    .line 46
    .line 47
    const/16 p2, 0x7545

    .line 48
    .line 49
    invoke-static {p2, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 53
    .line 54
    iget-boolean p2, p2, Landroid/app/Activity;->mCalled:Z

    .line 55
    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance p2, Landroid/util/SuperNotCalledException;

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 67
    .line 68
    invoke-static {v0}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, " did not call through to super.onPause()"

    .line 76
    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {p2, v0}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p2
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :catch_0
    move-exception p2

    .line 89
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 90
    .line 91
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 92
    .line 93
    invoke-virtual {v0, v2, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    :goto_0
    iput-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v2, "Unable to pause activity "

    .line 107
    .line 108
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 112
    .line 113
    invoke-static {p1}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p1, ": "

    .line 121
    .line 122
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :catch_1
    move-exception p1

    .line 141
    throw p1
.end method

.method private performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZLjava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    if-nez p3, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 10
    .line 11
    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Performing stop of activity that is already stopped: "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "ActivityThread"

    .line 50
    .line 51
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getStateString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-direct {p0, p1, p5}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v0, ": "

    .line 65
    .line 66
    if-eqz p2, :cond_3

    .line 67
    .line 68
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput-object v1, p2, Landroid/app/ActivityThread$StopInfo;->description:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p2

    .line 78
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 79
    .line 80
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 81
    .line 82
    invoke-virtual {v1, v2, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    new-instance p3, Ljava/lang/RuntimeException;

    .line 90
    .line 91
    new-instance p4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string p5, "Unable to save state of activity "

    .line 94
    .line 95
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-direct {p3, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    throw p3

    .line 129
    :cond_3
    :goto_0
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 130
    .line 131
    iget-boolean p2, p2, Landroid/app/Activity;->mFinished:Z

    .line 132
    .line 133
    if-nez p2, :cond_4

    .line 134
    .line 135
    if-eqz p4, :cond_4

    .line 136
    .line 137
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 138
    .line 139
    if-nez p2, :cond_4

    .line 140
    .line 141
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    if-nez p3, :cond_6

    .line 145
    .line 146
    const/4 p2, 0x0

    .line 147
    :try_start_1
    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 148
    .line 149
    invoke-virtual {p3, p2}, Landroid/app/Activity;->performStop(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :catch_1
    move-exception p3

    .line 154
    iget-object p4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 155
    .line 156
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 157
    .line 158
    invoke-virtual {p4, v1, p3}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 159
    .line 160
    .line 161
    move-result p4

    .line 162
    if-eqz p4, :cond_5

    .line 163
    .line 164
    :goto_1
    const/4 p3, 0x1

    .line 165
    iput-boolean p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 166
    .line 167
    const/4 p4, 0x3

    .line 168
    new-array p4, p4, [Ljava/lang/Object;

    .line 169
    .line 170
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    aput-object v0, p4, p2

    .line 179
    .line 180
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    aput-object p1, p4, p3

    .line 191
    .line 192
    const/4 p1, 0x2

    .line 193
    aput-object p5, p4, p1

    .line 194
    .line 195
    const/16 p1, 0x7561

    .line 196
    .line 197
    invoke-static {p1, p4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 202
    .line 203
    new-instance p4, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string p5, "Unable to stop activity "

    .line 206
    .line 207
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 211
    .line 212
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-direct {p2, p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    throw p2

    .line 241
    :cond_6
    :goto_2
    return-void
.end method

.method public static varargs printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 8

    .line 1
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getSizeConfigurations()[Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v1, Landroid/util/SparseIntArray;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v2, Landroid/util/SparseIntArray;

    .line 20
    .line 21
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v3, Landroid/util/SparseIntArray;

    .line 25
    .line 26
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 27
    .line 28
    .line 29
    array-length v4, v0

    .line 30
    add-int/lit8 v4, v4, -0x1

    .line 31
    .line 32
    :goto_0
    if-ltz v4, :cond_4

    .line 33
    .line 34
    aget-object v5, v0, v4

    .line 35
    .line 36
    iget v6, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget v6, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 45
    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 52
    .line 53
    if-eqz v5, :cond_3

    .line 54
    .line 55
    invoke-virtual {v3, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    .line 57
    .line 58
    :cond_3
    add-int/lit8 v4, v4, -0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->copyKeys()[I

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->copyKeys()[I

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->copyKeys()[I

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/app/IActivityManager;->reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    throw p1
.end method

.method private requestRelaunchAllActivities()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 28
    .line 29
    iget-object v2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 30
    .line 31
    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/os/IBinder;

    .line 44
    .line 45
    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->requestActivityRelaunch(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    throw v0

    .line 55
    :cond_1
    return-void
.end method

.method private static safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "[Unknown]"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    return-object p0
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;III)V
    .locals 1

    .line 11
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 12
    iput p1, v0, Landroid/os/Message;->what:I

    .line 13
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p1

    .line 14
    iput-object p2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 15
    iput p3, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 16
    iput p4, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 17
    iput p5, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 18
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    iget-object p1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;IIZ)V
    .locals 1

    .line 4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5
    iput p1, v0, Landroid/os/Message;->what:I

    .line 6
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 8
    iput p4, v0, Landroid/os/Message;->arg2:I

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 10
    :cond_0
    iget-object p1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setupGraphicsSupport(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setupGraphicsSupport"

    .line 2
    .line 3
    .line 4
    const-wide/16 v1, 0x40

    .line 5
    .line 6
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v3, "android"

    .line 14
    .line 15
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v3, "ActivityThread"

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string/jumbo v4, "java.io.tmpdir"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v4, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string v0, "Unable to initialize \"java.io.tmpdir\" property due to missing cache directory"

    .line 41
    .line 42
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-static {v0}, Landroid/view/ThreadedRenderer;->setupDiskCache(Ljava/io/File;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Landroid/renderscript/RenderScriptCacheDir;->setupDiskCache(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catch_0
    move-exception p1

    .line 77
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    throw p1

    .line 85
    :cond_1
    const-string v0, "Unable to use shader/script cache: missing code-cache directory"

    .line 86
    .line 87
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/os/GraphicsEnvironment;->chooseDriver(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public static systemMain()Landroid/app/ActivityThread;
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Landroid/view/ThreadedRenderer;->disable(Z)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Landroid/view/ThreadedRenderer;->enableForegroundTrimming()V

    .line 13
    .line 14
    .line 15
    :goto_0
    new-instance v0, Landroid/app/ActivityThread;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/app/ActivityThread;->attach(Z)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method private updateDefaultDensity()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 2
    .line 3
    iget-boolean v1, p0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 14
    .line 15
    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p2}, Landroid/os/LocaleList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    :goto_0
    if-ge v0, v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-static {p2, v0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Landroid/os/LocaleList;

    .line 42
    .line 43
    invoke-direct {v0, p1, p2}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    iget-boolean p2, v0, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    iput-boolean v2, v0, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 15
    .line 16
    iget p2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 17
    .line 18
    add-int/2addr p2, v2

    .line 19
    iput p2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 20
    .line 21
    iget-boolean p2, v0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->makeVisible()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 29
    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    iput-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-boolean p1, v0, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, v0, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 45
    .line 46
    iget p1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 47
    .line 48
    sub-int/2addr p1, v2

    .line 49
    iput p1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 50
    .line 51
    const/4 p1, 0x4

    .line 52
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .locals 5

    .line 1
    const-string p1, "Acquiring provider "

    .line 2
    .line 3
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Landroid/app/ActivityThread$ProviderKey;

    .line 7
    .line 8
    invoke-direct {v1, p2, p3}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object v2

    .line 24
    :cond_0
    iget-object v1, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 25
    .line 26
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    const-string p4, "ActivityThread"

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, " for user "

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, ": existing object\'s process dead"

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, v3, p1}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V

    .line 68
    .line 69
    .line 70
    monitor-exit v0

    .line 71
    return-object v2

    .line 72
    :cond_1
    iget-object p1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 73
    .line 74
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/app/ActivityThread$ProviderRefCount;

    .line 79
    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    invoke-direct {p0, p1, p4}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V

    .line 83
    .line 84
    .line 85
    :cond_2
    monitor-exit v0

    .line 86
    return-object v1

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p1
.end method

.method public final acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .locals 11

    .line 1
    const-string v0, "acquireExistingProvider"

    .line 2
    .line 3
    const-wide/16 v1, 0x40

    .line 4
    .line 5
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 13
    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v0, v3, p2, p3, p4}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    .line 27
    .line 28
    .line 29
    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    if-nez v6, :cond_1

    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p3, "Failed to find provider info for "

    .line 35
    .line 36
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "ActivityThread"

    .line 47
    .line 48
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    return-object p1

    .line 53
    :cond_1
    const-string/jumbo p2, "installProvider"

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v7, v6, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 60
    .line 61
    const/4 v8, 0x1

    .line 62
    iget-boolean v9, v6, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 63
    .line 64
    move-object v4, p0

    .line 65
    move-object v5, p1

    .line 66
    move v10, p4

    .line 67
    invoke-direct/range {v4 .. v10}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 75
    .line 76
    return-object p1

    .line 77
    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    throw p1
.end method

.method public final appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/app/ActivityThread$ProviderRefCount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object p1, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    .line 19
    .line 20
    iget-object p1, p1, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 21
    .line 22
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->appNotRespondingViaProvider(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    throw p1

    .line 32
    :cond_0
    :goto_0
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw p1
.end method

.method public final applyCompatConfiguration(I)Landroid/content/res/Configuration;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroid/content/res/Configuration;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 15
    .line 16
    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 22
    .line 23
    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 24
    .line 25
    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyCompatConfigurationLocked(ILandroid/content/res/Configuration;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 32
    .line 33
    :cond_1
    return-object v0
.end method

.method public applyConfigCompatMainThread(ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    .line 17
    .line 18
    invoke-virtual {p3, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-object p2
.end method

.method public final applyConfigurationToResources(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method public collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/res/Configuration;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentCallbacks2;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ge v4, v2, :cond_0

    .line 18
    .line 19
    iget-object v5, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v4, v4, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    move v4, v3

    .line 38
    :goto_1
    if-ge v4, v2, :cond_4

    .line 39
    .line 40
    iget-object v5, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 47
    .line 48
    iget-object v6, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 49
    .line 50
    if-eqz v6, :cond_3

    .line 51
    .line 52
    iget v7, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 53
    .line 54
    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 55
    .line 56
    invoke-virtual {v8}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {p0, v7, p2, v8}, Landroid/app/ActivityThread;->applyConfigCompatMainThread(ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 65
    .line 66
    iget-boolean v8, v8, Landroid/app/Activity;->mFinished:Z

    .line 67
    .line 68
    if-nez v8, :cond_2

    .line 69
    .line 70
    if-nez p1, :cond_1

    .line 71
    .line 72
    iget-boolean v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 73
    .line 74
    if-nez v8, :cond_2

    .line 75
    .line 76
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    if-eqz v7, :cond_3

    .line 81
    .line 82
    iput-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 83
    .line 84
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    iget-object p1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    move p2, v3

    .line 94
    :goto_3
    if-ge p2, p1, :cond_5

    .line 95
    .line 96
    iget-object v2, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    .line 97
    .line 98
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    add-int/lit8 p2, p2, 0x1

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    iget-object p1, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 110
    .line 111
    monitor-enter p1

    .line 112
    :try_start_1
    iget-object p2, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    :goto_4
    if-ge v3, p2, :cond_6

    .line 119
    .line 120
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    .line 121
    .line 122
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 127
    .line 128
    iget-object v1, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    add-int/lit8 v3, v3, 0x1

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_6
    monitor-exit p1

    .line 137
    return-object v0

    .line 138
    :catchall_0
    move-exception p2

    .line 139
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    throw p2

    .line 141
    :catchall_1
    move-exception p1

    .line 142
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    throw p1
.end method

.method public final completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 12
    .line 13
    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    .line 14
    .line 15
    iget-object v2, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 16
    .line 17
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 28
    .line 29
    if-ne v3, p1, :cond_1

    .line 30
    .line 31
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    add-int/lit8 v3, v3, -0x1

    .line 43
    .line 44
    :goto_0
    if-ltz v3, :cond_3

    .line 45
    .line 46
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 53
    .line 54
    iget-object v4, v4, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 55
    .line 56
    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-ne v4, v2, :cond_2

    .line 61
    .line 62
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 63
    .line 64
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object p1, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    .line 76
    .line 77
    iget-object p1, p1, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 78
    .line 79
    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .line 81
    .line 82
    :catch_0
    return-void

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    throw p1
.end method

.method public doGcIfNeeded()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getLastGcTime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    const-wide/16 v4, 0x1388

    .line 13
    .line 14
    add-long/2addr v2, v4

    .line 15
    cmp-long v0, v2, v0

    .line 16
    .line 17
    if-gez v0, :cond_0

    .line 18
    .line 19
    const-string v0, "bg"

    .line 20
    .line 21
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public ensureJitEnabled()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 7
    .line 8
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final finishInstrumentation(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 6
    .line 7
    iget-object v2, v1, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-boolean v2, v1, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 20
    .line 21
    .line 22
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 23
    .line 24
    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    throw p1
.end method

.method public final getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    return-object p1
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    return-object v0
.end method

.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public getIntCoreSetting(Ljava/lang/String;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    monitor-exit v0

    .line 13
    return p1

    .line 14
    :cond_0
    monitor-exit v0

    .line 15
    return p2

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public final getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 10

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move v8, v1

    :goto_0
    if-eqz v8, :cond_2

    .line 17
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v0, :cond_2

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v3, :cond_1

    iget-object v3, v3, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 18
    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_1
    if-eqz v8, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    move v9, v2

    goto :goto_2

    :cond_3
    move v9, v1

    :goto_2
    and-int/lit8 p3, p3, 0x3

    if-ne p3, v2, :cond_5

    if-eqz v7, :cond_5

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Requesting code from "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (with uid "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v0, ")"

    .line 20
    invoke-static {p2, p1, v0}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    iget-object p2, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz p2, :cond_4

    const-string p2, " to be run in process "

    .line 22
    invoke-static {p1, p2}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 23
    iget-object p2, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object p2, p2, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object p2, p2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 24
    invoke-static {p1, p2, v0}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    :cond_4
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 26
    invoke-direct/range {v3 .. v9}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object p1

    return-object p1
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object p1

    return-object p1
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;
    .locals 5

    const-string v0, "Requesting code from "

    .line 2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v1, p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_2

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    goto :goto_1

    .line 5
    :cond_2
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    :goto_1
    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoadedApk;

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_7

    .line 7
    iget-object v4, v1, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v4, :cond_4

    .line 8
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 9
    :cond_4
    invoke-virtual {v1}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    move-result p2

    if-eqz p2, :cond_6

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to be run in process "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object p1, p1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object p1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_6
    :goto_3
    monitor-exit v2

    return-object v1

    .line 12
    :cond_7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v1, 0x10000400

    invoke-interface {v0, p1, v1, p4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_8

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v3

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object p1

    return-object p1
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemContext()Landroid/app/ContextImpl;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v0
.end method

.method public getSystemUiContext()Landroid/app/ContextImpl;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemUiContext:Landroid/app/ContextImpl;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/app/ContextImpl;->createSystemUiContext(Landroid/app/ContextImpl;)Landroid/app/ContextImpl;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroid/app/ActivityThread;->mSystemUiContext:Landroid/app/ContextImpl;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemUiContext:Landroid/app/ContextImpl;

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v0
.end method

.method public getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/LoadedApk;)Landroid/content/res/Resources;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v8, 0x0

    .line 6
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v9

    .line 10
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    .line 11
    .line 12
    .line 13
    move-result-object v10

    .line 14
    move-object v3, p1

    .line 15
    move-object v4, p2

    .line 16
    move-object v5, p3

    .line 17
    move-object v6, p4

    .line 18
    move/from16 v7, p5

    .line 19
    .line 20
    invoke-virtual/range {v1 .. v10}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    return-object v1
.end method

.method public handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityConfigChangeData;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->activityToken:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 10
    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    const/4 v2, -0x1

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eq p2, v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getDisplay()Landroid/view/Display;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eq p2, v1, :cond_1

    .line 31
    .line 32
    move v1, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    :goto_0
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->overrideConfig:Landroid/content/res/Configuration;

    .line 36
    .line 37
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 38
    .line 39
    iget-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 40
    .line 41
    iget-object p1, p1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 p1, 0x0

    .line 51
    :goto_1
    if-eqz v1, :cond_3

    .line 52
    .line 53
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 54
    .line 55
    invoke-direct {p0, v0, v1, p2, v3}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 66
    .line 67
    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/view/ViewRootImpl;->updateConfiguration(I)V

    .line 73
    .line 74
    .line 75
    :cond_5
    iput-boolean v3, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 76
    .line 77
    :cond_6
    :goto_3
    return-void
.end method

.method public handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    .line 5
    .line 6
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/app/LoadedApk;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v1, v2

    .line 25
    :goto_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    .line 26
    .line 27
    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroid/app/LoadedApk;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v3, v2

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {p0, v4, v0}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1, v0}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    if-eqz v3, :cond_3

    .line 64
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {p0, v1, v0}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, p1, v0}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 81
    .line 82
    monitor-enter v1

    .line 83
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 84
    .line 85
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 86
    .line 87
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, v3, p1}, Landroid/app/ResourcesManager;->applyNewResourceDirsLocked(Ljava/lang/String;[Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 94
    .line 95
    .line 96
    new-instance p1, Landroid/content/res/Configuration;

    .line 97
    .line 98
    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    iget v0, v0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    const/4 v0, 0x0

    .line 109
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 110
    .line 111
    iput v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    .line 112
    .line 113
    invoke-virtual {p0, p1, v2}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p0}, Landroid/app/ActivityThread;->requestRelaunchAllActivities()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    throw p1

    .line 123
    :catchall_1
    move-exception p1

    .line 124
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    throw p1
.end method

.method public final handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v0

    .line 17
    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 22
    .line 23
    monitor-enter v3

    .line 24
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 25
    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 35
    .line 36
    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 37
    .line 38
    iput v4, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 39
    .line 40
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 v4, 0x0

    .line 44
    iput-object v4, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 45
    .line 46
    :cond_2
    if-nez p1, :cond_3

    .line 47
    .line 48
    monitor-exit v3

    .line 49
    return-void

    .line 50
    :cond_3
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 51
    .line 52
    invoke-virtual {v4, p1, p2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 53
    .line 54
    .line 55
    iget-object v4, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 56
    .line 57
    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iget-object v5, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 62
    .line 63
    invoke-virtual {v5}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-direct {p0, v4, v5}, Landroid/app/ActivityThread;->updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V

    .line 72
    .line 73
    .line 74
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 75
    .line 76
    if-nez v4, :cond_4

    .line 77
    .line 78
    new-instance v4, Landroid/content/res/Configuration;

    .line 79
    .line 80
    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 84
    .line 85
    :cond_4
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 86
    .line 87
    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-nez v4, :cond_5

    .line 92
    .line 93
    if-nez p2, :cond_5

    .line 94
    .line 95
    monitor-exit v3

    .line 96
    return-void

    .line 97
    :cond_5
    iget-object p2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 98
    .line 99
    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iget p2, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 104
    .line 105
    invoke-virtual {p0, p2}, Landroid/app/ActivityThread;->applyCompatConfiguration(I)Landroid/content/res/Configuration;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getTheme()Landroid/content/res/Resources$Theme;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    and-int/2addr v4, p1

    .line 118
    if-eqz v4, :cond_6

    .line 119
    .line 120
    invoke-virtual {v2}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 121
    .line 122
    .line 123
    :cond_6
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getTheme()Landroid/content/res/Resources$Theme;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    and-int/2addr v4, p1

    .line 136
    if-eqz v4, :cond_7

    .line 137
    .line 138
    invoke-virtual {v2}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 139
    .line 140
    .line 141
    :cond_7
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {p0, v0, p2}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-static {p1}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 147
    .line 148
    .line 149
    if-eqz v2, :cond_a

    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    :goto_1
    if-ge v0, p1, :cond_a

    .line 156
    .line 157
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Landroid/content/ComponentCallbacks2;

    .line 162
    .line 163
    instance-of v4, v3, Landroid/app/Activity;

    .line 164
    .line 165
    if-eqz v4, :cond_8

    .line 166
    .line 167
    check-cast v3, Landroid/app/Activity;

    .line 168
    .line 169
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 170
    .line 171
    invoke-virtual {v3}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 180
    .line 181
    invoke-direct {p0, v3, p2}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_8
    if-nez v1, :cond_9

    .line 186
    .line 187
    invoke-direct {p0, v3, p2}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 188
    .line 189
    .line 190
    :cond_9
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_a
    return-void

    .line 194
    :catchall_0
    move-exception p1

    .line 195
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    throw p1
.end method

.method public final handleDispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_a

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq p1, v2, :cond_a

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    if-eq p1, v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_8

    .line 12
    .line 13
    :cond_0
    if-nez p2, :cond_1

    .line 14
    .line 15
    goto/16 :goto_8

    .line 16
    .line 17
    :cond_1
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 18
    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    array-length v3, p2

    .line 21
    sub-int/2addr v3, v0

    .line 22
    :goto_0
    if-ltz v3, :cond_9

    .line 23
    .line 24
    iget-object v4, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    .line 25
    .line 26
    aget-object v5, p2, v3

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroid/app/LoadedApk;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object v4, v5

    .line 45
    :goto_1
    if-eqz v4, :cond_3

    .line 46
    .line 47
    move v1, v0

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    .line 50
    .line 51
    aget-object v6, p2, v3

    .line 52
    .line 53
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 58
    .line 59
    if-eqz v4, :cond_4

    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    move-object v5, v4

    .line 66
    check-cast v5, Landroid/app/LoadedApk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    :cond_4
    if-eqz v5, :cond_5

    .line 69
    .line 70
    move v1, v0

    .line 71
    :cond_5
    move-object v4, v5

    .line 72
    :goto_2
    if-eqz v4, :cond_8

    .line 73
    .line 74
    :try_start_1
    aget-object v5, p2, v3

    .line 75
    .line 76
    sget-object v6, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 77
    .line 78
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    const/16 v8, 0x400

    .line 83
    .line 84
    invoke-interface {v6, v5, v8, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    iget-object v7, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 89
    .line 90
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-lez v7, :cond_7

    .line 95
    .line 96
    iget-object v7, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 97
    .line 98
    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_7

    .line 111
    .line 112
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    check-cast v8, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 117
    .line 118
    iget-object v9, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 119
    .line 120
    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 121
    .line 122
    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    if-eqz v9, :cond_6

    .line 129
    .line 130
    iget-object v9, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 131
    .line 132
    iput-object v6, v9, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 133
    .line 134
    iput-object v4, v8, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    sget-object v7, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 138
    .line 139
    invoke-interface {v7, v5}, Landroid/content/pm/IPackageManager;->getPreviousCodePaths(Ljava/lang/String;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v4, v6, v5}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .line 145
    .line 146
    :catch_0
    :cond_8
    add-int/lit8 v3, v3, -0x1

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_9
    :try_start_2
    monitor-exit v2

    .line 150
    goto :goto_8

    .line 151
    :catchall_0
    move-exception p1

    .line 152
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    throw p1

    .line 154
    :cond_a
    if-nez p1, :cond_b

    .line 155
    .line 156
    move v2, v0

    .line 157
    goto :goto_4

    .line 158
    :cond_b
    move v2, v1

    .line 159
    :goto_4
    if-nez p2, :cond_c

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_c
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 163
    .line 164
    monitor-enter v3

    .line 165
    :try_start_3
    array-length v4, p2

    .line 166
    sub-int/2addr v4, v0

    .line 167
    :goto_5
    if-ltz v4, :cond_10

    .line 168
    .line 169
    if-nez v1, :cond_e

    .line 170
    .line 171
    iget-object v5, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    .line 172
    .line 173
    aget-object v6, p2, v4

    .line 174
    .line 175
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 180
    .line 181
    if-eqz v5, :cond_d

    .line 182
    .line 183
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    if-eqz v5, :cond_d

    .line 188
    .line 189
    :goto_6
    move v1, v0

    .line 190
    goto :goto_7

    .line 191
    :cond_d
    iget-object v5, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    .line 192
    .line 193
    aget-object v6, p2, v4

    .line 194
    .line 195
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 200
    .line 201
    if-eqz v5, :cond_e

    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    if-eqz v5, :cond_e

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_e
    :goto_7
    if-eqz v2, :cond_f

    .line 211
    .line 212
    iget-object v5, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    .line 213
    .line 214
    aget-object v6, p2, v4

    .line 215
    .line 216
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    iget-object v5, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    .line 220
    .line 221
    aget-object v6, p2, v4

    .line 222
    .line 223
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    :cond_f
    add-int/lit8 v4, v4, -0x1

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_10
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 230
    :goto_8
    invoke-static {p1, p2, v1}, Landroid/app/ApplicationPackageManager;->handlePackageBroadcast(I[Ljava/lang/String;Z)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :catchall_1
    move-exception p1

    .line 235
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 236
    throw p1
.end method

.method public handleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v2, v2, [Landroid/content/pm/ProviderInfo;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object p1, v2, v3

    .line 12
    .line 13
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, v1, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public final handleLowMemory()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroid/content/ComponentCallbacks2;

    .line 19
    .line 20
    invoke-interface {v3}, Landroid/content/ComponentCallbacks;->onLowMemory()V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/16 v1, 0x3e8

    .line 31
    .line 32
    if-eq v0, v1, :cond_1

    .line 33
    .line 34
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const v1, 0x124fb

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 48
    .line 49
    .line 50
    const-string/jumbo v0, "mem"

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 1

    .line 1
    const-string p3, "Profiling failed on path "

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object p1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/app/ActivityThread$Profiler;->startProfiling()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 16
    .line 17
    .line 18
    goto :goto_2

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    :try_start_1
    const-string p1, "ActivityThread"

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p3, p2, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p3, " -- can the process access this path?"

    .line 34
    .line 35
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :goto_1
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_0
    iget-object p1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    .line 53
    .line 54
    .line 55
    :goto_2
    return-void
.end method

.method public handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V
    .locals 12

    .line 1
    iget v0, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v3

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    iget v1, p0, Landroid/app/ActivityThread;->mLastSessionId:I

    .line 12
    .line 13
    iget v4, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    .line 14
    .line 15
    if-eq v1, v4, :cond_2

    .line 16
    .line 17
    iput v4, p0, Landroid/app/ActivityThread;->mLastSessionId:I

    .line 18
    .line 19
    iget-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sub-int/2addr v1, v3

    .line 26
    :goto_1
    if-ltz v1, :cond_2

    .line 27
    .line 28
    iget-object v4, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Landroid/app/assist/AssistStructure;

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    invoke-virtual {v4}, Landroid/app/assist/AssistStructure;->clearSendChannel()V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v4, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    add-int/lit8 v1, v1, -0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    new-instance v6, Landroid/os/Bundle;

    .line 56
    .line 57
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    move-object v8, v1

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    new-instance v4, Landroid/app/assist/AssistContent;

    .line 66
    .line 67
    invoke-direct {v4}, Landroid/app/assist/AssistContent;-><init>()V

    .line 68
    .line 69
    .line 70
    move-object v8, v4

    .line 71
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v4

    .line 75
    iget-object v7, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 76
    .line 77
    iget-object v9, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    .line 78
    .line 79
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 84
    .line 85
    if-eqz v7, :cond_a

    .line 86
    .line 87
    if-nez v0, :cond_4

    .line 88
    .line 89
    iget-object v9, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 90
    .line 91
    invoke-virtual {v9}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 96
    .line 97
    invoke-virtual {v9, v10, v6}, Landroid/app/Application;->dispatchOnProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 98
    .line 99
    .line 100
    iget-object v9, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 101
    .line 102
    invoke-virtual {v9, v6}, Landroid/app/Activity;->onProvideAssistData(Landroid/os/Bundle;)V

    .line 103
    .line 104
    .line 105
    iget-object v9, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 106
    .line 107
    invoke-virtual {v9}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    goto :goto_3

    .line 112
    :cond_4
    move-object v9, v1

    .line 113
    :goto_3
    iget v10, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    .line 114
    .line 115
    if-eq v10, v3, :cond_5

    .line 116
    .line 117
    if-eqz v0, :cond_b

    .line 118
    .line 119
    :cond_5
    new-instance v1, Landroid/app/assist/AssistStructure;

    .line 120
    .line 121
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 122
    .line 123
    iget v11, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->flags:I

    .line 124
    .line 125
    invoke-direct {v1, v10, v0, v11}, Landroid/app/assist/AssistStructure;-><init>(Landroid/app/Activity;ZI)V

    .line 126
    .line 127
    .line 128
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 129
    .line 130
    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    iget-object v11, v7, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 135
    .line 136
    if-eqz v11, :cond_6

    .line 137
    .line 138
    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 143
    .line 144
    and-int/lit16 v11, v11, 0x2000

    .line 145
    .line 146
    if-nez v11, :cond_7

    .line 147
    .line 148
    :cond_6
    move v2, v3

    .line 149
    :cond_7
    if-eqz v10, :cond_8

    .line 150
    .line 151
    if-eqz v2, :cond_8

    .line 152
    .line 153
    if-nez v0, :cond_9

    .line 154
    .line 155
    new-instance v2, Landroid/content/Intent;

    .line 156
    .line 157
    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    and-int/lit8 v3, v3, -0x43

    .line 165
    .line 166
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Landroid/content/Intent;->removeUnsafeExtras()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v8, v2}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_8
    if-nez v0, :cond_9

    .line 177
    .line 178
    new-instance v2, Landroid/content/Intent;

    .line 179
    .line 180
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v2}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    .line 184
    .line 185
    .line 186
    :cond_9
    :goto_4
    if-nez v0, :cond_b

    .line 187
    .line 188
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 189
    .line 190
    invoke-virtual {v0, v8}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_a
    move-object v9, v1

    .line 195
    :cond_b
    :goto_5
    if-nez v1, :cond_c

    .line 196
    .line 197
    new-instance v0, Landroid/app/assist/AssistStructure;

    .line 198
    .line 199
    invoke-direct {v0}, Landroid/app/assist/AssistStructure;-><init>()V

    .line 200
    .line 201
    .line 202
    move-object v7, v0

    .line 203
    goto :goto_6

    .line 204
    :cond_c
    move-object v7, v1

    .line 205
    :goto_6
    invoke-virtual {v7, v4, v5}, Landroid/app/assist/AssistStructure;->setAcquisitionStartTime(J)V

    .line 206
    .line 207
    .line 208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 209
    .line 210
    .line 211
    move-result-wide v0

    .line 212
    invoke-virtual {v7, v0, v1}, Landroid/app/assist/AssistStructure;->setAcquisitionEndTime(J)V

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    .line 216
    .line 217
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 218
    .line 219
    invoke-direct {v1, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    :try_start_0
    iget-object v5, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    .line 230
    .line 231
    invoke-interface/range {v4 .. v9}, Landroid/app/IActivityManager;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    throw p1
.end method

.method public final handleResumeActivity(Landroid/os/IBinder;ZZZILjava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 12
    .line 13
    const-string/jumbo v3, "resumeActivity"

    .line 14
    .line 15
    .line 16
    move/from16 v4, p5

    .line 17
    .line 18
    invoke-static {v4, v2, v3}, Landroid/app/ActivityThread;->checkAndUpdateLifecycleSeq(ILandroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    iput-boolean v2, v1, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 30
    .line 31
    move/from16 v3, p2

    .line 32
    .line 33
    move-object/from16 v4, p6

    .line 34
    .line 35
    invoke-virtual {v1, v0, v3, v4}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    const-wide/16 v6, 0x40

    .line 42
    .line 43
    if-eqz v3, :cond_d

    .line 44
    .line 45
    iget-object v8, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 46
    .line 47
    if-eqz p3, :cond_1

    .line 48
    .line 49
    const/16 v9, 0x100

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v9, v5

    .line 53
    :goto_0
    iget-boolean v10, v8, Landroid/app/Activity;->mStartedActivity:Z

    .line 54
    .line 55
    xor-int/2addr v10, v2

    .line 56
    if-nez v10, :cond_2

    .line 57
    .line 58
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    invoke-virtual {v8}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    invoke-interface {v10, v11}, Landroid/app/IActivityManager;->willActivityBeVisible(Landroid/os/IBinder;)Z

    .line 67
    .line 68
    .line 69
    move-result v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    throw v0

    .line 77
    :cond_2
    :goto_1
    iget-object v11, v3, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 78
    .line 79
    if-nez v11, :cond_6

    .line 80
    .line 81
    iget-boolean v11, v8, Landroid/app/Activity;->mFinished:Z

    .line 82
    .line 83
    if-nez v11, :cond_6

    .line 84
    .line 85
    if-eqz v10, :cond_6

    .line 86
    .line 87
    iget-object v11, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 88
    .line 89
    invoke-virtual {v11}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    iput-object v11, v3, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 94
    .line 95
    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    const/4 v12, 0x4

    .line 100
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    iget-object v13, v3, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 108
    .line 109
    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    iput-object v11, v8, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 114
    .line 115
    iput v2, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 116
    .line 117
    iget v14, v13, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 118
    .line 119
    or-int/2addr v14, v9

    .line 120
    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 121
    .line 122
    iget-boolean v14, v3, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 123
    .line 124
    if-eqz v14, :cond_4

    .line 125
    .line 126
    invoke-static {v11}, Lcom/android/internal/policy/DecorView;->isAddedToWindow(Landroid/view/View;)Z

    .line 127
    .line 128
    .line 129
    move-result v14

    .line 130
    if-eqz v14, :cond_3

    .line 131
    .line 132
    iput-boolean v2, v8, Landroid/app/Activity;->mWindowAdded:Z

    .line 133
    .line 134
    :cond_3
    iput-boolean v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 135
    .line 136
    invoke-virtual {v11}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    if-eqz v14, :cond_4

    .line 141
    .line 142
    const-string/jumbo v15, "notifyChildRebuilt"

    .line 143
    .line 144
    .line 145
    invoke-static {v6, v7, v15}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->notifyChildRebuilt()V

    .line 149
    .line 150
    .line 151
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 152
    .line 153
    .line 154
    :cond_4
    iget-boolean v14, v8, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 155
    .line 156
    if-eqz v14, :cond_7

    .line 157
    .line 158
    iget-boolean v14, v8, Landroid/app/Activity;->mWindowAdded:Z

    .line 159
    .line 160
    if-nez v14, :cond_5

    .line 161
    .line 162
    iput-boolean v2, v8, Landroid/app/Activity;->mWindowAdded:Z

    .line 163
    .line 164
    const-string v14, "addView"

    .line 165
    .line 166
    invoke-static {v6, v7, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v12, v11, v13}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 173
    .line 174
    .line 175
    iget-object v11, v8, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 176
    .line 177
    invoke-static {v11}, Lcom/android/internal/policy/DecorView;->setAddedToWindow(Landroid/view/View;)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_5
    invoke-virtual {v8, v13}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_6
    if-nez v10, :cond_7

    .line 186
    .line 187
    iput-boolean v2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 188
    .line 189
    :cond_7
    :goto_2
    const-string v11, "cleanUpPendingRemoveWindows"

    .line 190
    .line 191
    invoke-static {v6, v7, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v3, v5}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 195
    .line 196
    .line 197
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 198
    .line 199
    .line 200
    iget-object v11, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 201
    .line 202
    iget-boolean v12, v11, Landroid/app/Activity;->mFinished:Z

    .line 203
    .line 204
    if-nez v12, :cond_a

    .line 205
    .line 206
    if-eqz v10, :cond_a

    .line 207
    .line 208
    iget-object v10, v11, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 209
    .line 210
    if-eqz v10, :cond_a

    .line 211
    .line 212
    iget-boolean v10, v3, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 213
    .line 214
    if-nez v10, :cond_a

    .line 215
    .line 216
    iget-object v10, v3, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 217
    .line 218
    if-eqz v10, :cond_8

    .line 219
    .line 220
    invoke-direct {v1, v3, v10}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V

    .line 221
    .line 222
    .line 223
    iput-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 224
    .line 225
    :cond_8
    iget-object v10, v3, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 226
    .line 227
    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 232
    .line 233
    and-int/lit16 v12, v11, 0x100

    .line 234
    .line 235
    if-eq v12, v9, :cond_9

    .line 236
    .line 237
    and-int/lit16 v11, v11, -0x101

    .line 238
    .line 239
    or-int/2addr v9, v11

    .line 240
    iput v9, v10, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 241
    .line 242
    iget-object v9, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 243
    .line 244
    iget-boolean v9, v9, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 245
    .line 246
    if-eqz v9, :cond_9

    .line 247
    .line 248
    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    iget-object v9, v3, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 253
    .line 254
    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    const-string/jumbo v11, "updateViewLayout"

    .line 259
    .line 260
    .line 261
    invoke-static {v6, v7, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-interface {v8, v9, v10}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    .line 266
    .line 267
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 268
    .line 269
    .line 270
    :cond_9
    iget-object v8, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 271
    .line 272
    iput-boolean v2, v8, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 273
    .line 274
    iget v9, v1, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 275
    .line 276
    add-int/2addr v9, v2

    .line 277
    iput v9, v1, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 278
    .line 279
    iget-boolean v2, v8, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 280
    .line 281
    if-eqz v2, :cond_a

    .line 282
    .line 283
    invoke-virtual {v8}, Landroid/app/Activity;->makeVisible()V

    .line 284
    .line 285
    .line 286
    :cond_a
    iget-boolean v2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 287
    .line 288
    if-nez v2, :cond_b

    .line 289
    .line 290
    iget-object v2, v1, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 291
    .line 292
    iput-object v2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 293
    .line 294
    iput-object v3, v1, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 295
    .line 296
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    new-instance v8, Landroid/app/ActivityThread$Idler;

    .line 301
    .line 302
    invoke-direct {v8, v1, v4}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v8}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 306
    .line 307
    .line 308
    :cond_b
    iput-boolean v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 309
    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-static {v2}, Lcom/android/internal/telephony/UsimNotifier;->isNotifyEnabled(Landroid/content/Context;)Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-eqz v2, :cond_c

    .line 319
    .line 320
    invoke-static {}, Lcom/android/internal/telephony/UsimNotifier;->getInstance()Lcom/android/internal/telephony/UsimNotifier;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    iget-object v3, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 325
    .line 326
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UsimNotifier;->startNotify(Landroid/app/Activity;)V

    .line 327
    .line 328
    .line 329
    :cond_c
    if-eqz p4, :cond_e

    .line 330
    .line 331
    :try_start_1
    const-string v2, "activityResumed"

    .line 332
    .line 333
    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->activityResumed(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    .line 342
    .line 343
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 344
    .line 345
    .line 346
    goto :goto_4

    .line 347
    :catchall_0
    move-exception v0

    .line 348
    goto :goto_3

    .line 349
    :catch_1
    move-exception v0

    .line 350
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 356
    .line 357
    .line 358
    throw v0

    .line 359
    :cond_d
    :try_start_3
    const-string v2, "finishActivity"

    .line 360
    .line 361
    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-interface {v2, v0, v5, v4, v5}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 369
    .line 370
    .line 371
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 372
    .line 373
    .line 374
    :cond_e
    :goto_4
    return-void

    .line 375
    :catchall_1
    move-exception v0

    .line 376
    goto :goto_5

    .line 377
    :catch_2
    move-exception v0

    .line 378
    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 383
    :goto_5
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 384
    .line 385
    .line 386
    throw v0
.end method

.method public handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onTranslucentConversionComplete(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final handleTrimMemory(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroid/content/ComponentCallbacks2;

    .line 19
    .line 20
    invoke-interface {v3, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final handleUnstableProviderDied(Landroid/os/IBinder;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p1
.end method

.method public final handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    :goto_0
    if-ltz v1, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 37
    .line 38
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-ne v3, p1, :cond_0

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v4, "Removing dead content provider:"

    .line 47
    .line 48
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "ActivityThread"

    .line 65
    .line 66
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    if-eqz p2, :cond_2

    .line 78
    .line 79
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p2, v0, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    .line 84
    .line 85
    iget-object p2, p2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 86
    .line 87
    invoke-interface {p1, p2}, Landroid/app/IActivityManager;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    :catch_0
    :cond_2
    return-void
.end method

.method public installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Landroid/app/ActivityThread$Profiler;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/app/ActivityThread$Profiler;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1
.end method

.method public final installSystemProviders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public isProfiling()Z
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onNewActivityOptions(Landroid/app/ActivityOptions;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object p2, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p2, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    :goto_0
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/app/LoadedApk;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    :goto_1
    monitor-exit v0

    .line 34
    return-object p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1
.end method

.method public final performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object p1

    return-object p1
.end method

.method public performNewIntents(Landroid/os/IBinder;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    xor-int/2addr v1, v2

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 19
    .line 20
    iput-boolean v2, v3, Landroid/app/Activity;->mTemporaryPause:Z

    .line 21
    .line 22
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/app/Activity;->performResume()V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 42
    .line 43
    iput-boolean p2, v1, Landroid/app/Activity;->mTemporaryPause:Z

    .line 44
    .line 45
    :cond_2
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    if-eqz p3, :cond_3

    .line 50
    .line 51
    const-string/jumbo p3, "performNewIntents"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v0, p3}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void
.end method

.method public final performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 3
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Performing pause of activity that is not resumed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v2, "ActivityThread"

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    if-eqz p2, :cond_2

    .line 8
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/app/Activity;->mFinished:Z

    .line 9
    :cond_2
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean p2, p2, Landroid/app/Activity;->mFinished:Z

    if-nez p2, :cond_3

    if-eqz p3, :cond_3

    .line 10
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 11
    :cond_3
    invoke-direct {p0, p1, p4}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 13
    :try_start_0
    iget-object p4, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p4, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    .line 14
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    if-eqz p4, :cond_4

    .line 15
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_4
    move v0, p2

    :goto_0
    if-ge p2, v0, :cond_5

    .line 16
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/OnActivityPausedListener;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-interface {v2, v3}, Landroid/app/OnActivityPausedListener;->onPaused(Landroid/app/Activity;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 17
    :cond_5
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean p2, p2, Landroid/app/Activity;->mFinished:Z

    if-nez p2, :cond_6

    if-eqz p3, :cond_6

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    :cond_6
    return-object v1

    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final performPauseActivity(Landroid/os/IBinder;ZZLjava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final performRestartActivity(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 8
    .line 9
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->performRestart()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 8
    .line 9
    if-eqz p1, :cond_6

    .line 10
    .line 11
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 12
    .line 13
    iget-boolean v1, v0, Landroid/app/Activity;->mFinished:Z

    .line 14
    .line 15
    if-nez v1, :cond_6

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    iput-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 21
    .line 22
    iput-boolean v1, v0, Landroid/app/Activity;->mStartedActivity:Z

    .line 23
    .line 24
    :cond_0
    const-wide/16 v2, 0x40

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->onStateNotSaved()V

    .line 27
    .line 28
    .line 29
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 30
    .line 31
    iget-object p2, p2, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 37
    .line 38
    .line 39
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 48
    .line 49
    :cond_1
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 57
    .line 58
    :cond_2
    const-string/jumbo p2, "performResume"

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v3, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/app/Activity;->performResume()V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 70
    .line 71
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    :try_start_1
    iget-object v4, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    const/4 v5, 0x1

    .line 79
    sub-int/2addr v4, v5

    .line 80
    :goto_0
    if-ltz v4, :cond_4

    .line 81
    .line 82
    iget-object v6, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 89
    .line 90
    iget-object v7, v6, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 91
    .line 92
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 93
    .line 94
    if-ne v7, v8, :cond_3

    .line 95
    .line 96
    iget-boolean v7, v6, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 97
    .line 98
    if-eqz v7, :cond_3

    .line 99
    .line 100
    iget-boolean v7, v6, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 101
    .line 102
    if-eqz v7, :cond_3

    .line 103
    .line 104
    iput-boolean v1, v6, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 105
    .line 106
    :cond_3
    add-int/lit8 v4, v4, -0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    const/4 p2, 0x3

    .line 111
    :try_start_2
    new-array p2, p2, [Ljava/lang/Object;

    .line 112
    .line 113
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    aput-object v4, p2, v1

    .line 122
    .line 123
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 124
    .line 125
    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    aput-object v4, p2, v5

    .line 134
    .line 135
    const/4 v4, 0x2

    .line 136
    aput-object p3, p2, v4

    .line 137
    .line 138
    const/16 p3, 0x7546

    .line 139
    .line 140
    invoke-static {p3, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 141
    .line 142
    .line 143
    iput-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 144
    .line 145
    iput-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 146
    .line 147
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 148
    .line 149
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :catchall_0
    move-exception p3

    .line 153
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    :try_start_4
    throw p3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    :catchall_1
    move-exception p1

    .line 156
    goto :goto_2

    .line 157
    :catch_0
    move-exception p2

    .line 158
    :try_start_5
    iget-object p3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 159
    .line 160
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 161
    .line 162
    invoke-virtual {p3, v0, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 163
    .line 164
    .line 165
    move-result p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 166
    if-eqz p3, :cond_5

    .line 167
    .line 168
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_5
    :try_start_6
    new-instance p3, Ljava/lang/RuntimeException;

    .line 173
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v1, "Unable to resume activity "

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string p1, ": "

    .line 198
    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-direct {p3, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    throw p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 217
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 218
    .line 219
    .line 220
    throw p1

    .line 221
    :cond_6
    :goto_3
    return-object p1
.end method

.method public final performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    move-object v0, p0

    .line 13
    move v4, p2

    .line 14
    move-object v5, p3

    .line 15
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    return-void
.end method

.method public registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method

.method public final releaseProvider(Landroid/content/IContentProvider;Z)Z
    .locals 7

    .line 1
    const-string v0, "Duplicate remove pending of provider "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/app/ActivityThread$ProviderRefCount;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    monitor-exit v2

    .line 25
    return v1

    .line 26
    :cond_1
    const/4 v3, -0x1

    .line 27
    const/4 v4, 0x1

    .line 28
    if-eqz p2, :cond_5

    .line 29
    .line 30
    iget p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 31
    .line 32
    if-nez p2, :cond_2

    .line 33
    .line 34
    monitor-exit v2

    .line 35
    return v1

    .line 36
    :cond_2
    sub-int/2addr p2, v4

    .line 37
    iput p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 38
    .line 39
    if-nez p2, :cond_9

    .line 40
    .line 41
    iget p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    if-nez p2, :cond_3

    .line 44
    .line 45
    move p2, v4

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    move p2, v1

    .line 48
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    iget-object v6, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    .line 53
    .line 54
    iget-object v6, v6, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 55
    .line 56
    if-eqz p2, :cond_4

    .line 57
    .line 58
    move v1, v4

    .line 59
    :cond_4
    invoke-interface {v5, v6, v3, v1}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_5
    :try_start_2
    iget p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 64
    .line 65
    if-nez p2, :cond_6

    .line 66
    .line 67
    monitor-exit v2

    .line 68
    return v1

    .line 69
    :cond_6
    sub-int/2addr p2, v4

    .line 70
    iput p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 71
    .line 72
    if-nez p2, :cond_9

    .line 73
    .line 74
    iget p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    if-nez p2, :cond_7

    .line 77
    .line 78
    move p2, v4

    .line 79
    goto :goto_1

    .line 80
    :cond_7
    move p2, v1

    .line 81
    :goto_1
    if-nez p2, :cond_8

    .line 82
    .line 83
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    iget-object v6, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    .line 88
    .line 89
    iget-object v6, v6, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 90
    .line 91
    invoke-interface {v5, v6, v1, v3}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    .line 93
    .line 94
    :catch_0
    :cond_8
    :goto_2
    move v1, p2

    .line 95
    :cond_9
    if-eqz v1, :cond_b

    .line 96
    .line 97
    :try_start_4
    iget-boolean p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 98
    .line 99
    if-nez p2, :cond_a

    .line 100
    .line 101
    iput-boolean v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 102
    .line 103
    iget-object p2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 104
    .line 105
    const/16 v0, 0x83

    .line 106
    .line 107
    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object p2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_a
    const-string p2, "ActivityThread"

    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    .line 125
    .line 126
    iget-object p1, p1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 127
    .line 128
    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    :cond_b
    :goto_3
    monitor-exit v2

    .line 141
    return v4

    .line 142
    :catchall_0
    move-exception p1

    .line 143
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    throw p1
.end method

.method public final requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v2, v3, :cond_5

    .line 13
    .line 14
    iget-object v3, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 21
    .line 22
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 23
    .line 24
    if-ne v4, p1, :cond_4

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    iget-object v2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iput-object p2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 37
    .line 38
    :cond_1
    :goto_1
    if-eqz p3, :cond_3

    .line 39
    .line 40
    iget-object v2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-interface {v2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    iput-object p3, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 49
    .line 50
    :cond_3
    :goto_2
    iget-boolean v2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    if-nez v2, :cond_6

    .line 53
    .line 54
    if-eqz p8, :cond_6

    .line 55
    .line 56
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->activityRelaunched(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :catch_0
    move-exception p1

    .line 65
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    throw p1

    .line 70
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    const/4 v3, 0x0

    .line 74
    :cond_6
    :goto_3
    if-nez v3, :cond_9

    .line 75
    .line 76
    new-instance v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 77
    .line 78
    invoke-direct {v3}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p1, v3, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 82
    .line 83
    iput-object p2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 84
    .line 85
    iput-object p3, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 86
    .line 87
    iput-boolean p9, v3, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 88
    .line 89
    if-nez p8, :cond_8

    .line 90
    .line 91
    iget-object p2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 98
    .line 99
    if-eqz p1, :cond_7

    .line 100
    .line 101
    iget-boolean p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 102
    .line 103
    iput-boolean p2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 104
    .line 105
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 106
    .line 107
    iput-object p1, v3, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 108
    .line 109
    :cond_7
    const/4 p1, 0x1

    .line 110
    iput-boolean p1, v3, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 111
    .line 112
    :cond_8
    iget-object p1, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    const/16 p1, 0x7e

    .line 118
    .line 119
    invoke-direct {p0, p1, v3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_9
    if-eqz p8, :cond_a

    .line 123
    .line 124
    iput-boolean p5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 125
    .line 126
    iput-boolean v1, v3, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 127
    .line 128
    :cond_a
    if-eqz p6, :cond_b

    .line 129
    .line 130
    iput-object p6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 131
    .line 132
    :cond_b
    if-eqz p7, :cond_c

    .line 133
    .line 134
    iput-object p7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 135
    .line 136
    :cond_c
    iget p1, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    .line 137
    .line 138
    or-int/2addr p1, p4

    .line 139
    iput p1, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    .line 140
    .line 141
    invoke-direct {p0}, Landroid/app/ActivityThread;->getLifecycleSeq()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    iput p1, v3, Landroid/app/ActivityThread$ActivityClientRecord;->relaunchSeq:I

    .line 146
    .line 147
    monitor-exit v0

    .line 148
    return-void

    .line 149
    :catchall_0
    move-exception p1

    .line 150
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    throw p1
.end method

.method public final resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x400

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/16 v1, -0x5c

    .line 16
    .line 17
    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object v0
.end method

.method public final scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    .line 7
    .line 8
    iput-object p2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    .line 11
    .line 12
    const/16 p1, 0x77

    .line 13
    .line 14
    invoke-direct {p0, p1, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public scheduleGcIdler()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 18
    .line 19
    const/16 v1, 0x78

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/app/ResultInfo;

    .line 7
    .line 8
    invoke-direct {v1, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 15
    .line 16
    invoke-virtual {p2, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;)Landroid/app/Activity;
    .locals 1

    .line 1
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 7
    .line 8
    const/4 p5, 0x0

    .line 9
    iput p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 10
    .line 11
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 12
    .line 13
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 14
    .line 15
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    .line 16
    .line 17
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 20
    .line 21
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public stopProfiling()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p1
.end method

.method public unscheduleGcIdler()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 18
    .line 19
    const/16 v1, 0x78

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
