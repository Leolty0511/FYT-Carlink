.class public Landroid/app/ProcessInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTIVITY_STATE_FINISH:I = 0x4

.field public static final ACTIVITY_STATE_LAUNCHDONE:I = 0x5

.field public static final ACTIVITY_STATE_PAUSE:I = 0x2

.field public static final ACTIVITY_STATE_PROC_START:I = 0x6

.field public static final ACTIVITY_STATE_RESUME:I = 0x3

.field public static final ACTIVITY_STATE_START:I = 0x0

.field public static final ACTIVITY_STATE_STOP:I = 0x1

.field public static final BACKUP_APP_ADJ:I = 0x12c

.field public static final CACHED_APP_MAX_ADJ:I = 0x38a

.field public static final CACHED_APP_MIN_ADJ:I = 0x384

.field public static final FOREGROUND_APP_ADJ:I = 0x0

.field public static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field public static final HOME_APP_ADJ:I = 0x258

.field public static final KEY_ACTIVITY_STATE:Ljava/lang/String; = "activity_state"

.field public static final KEY_CLSNAME:Ljava/lang/String; = "clsname"

.field public static final KEY_FULLSCREEN:Ljava/lang/String; = "fullscreen"

.field public static final KEY_LAUNCH_TIME:Ljava/lang/String; = "launchTime"

.field public static final KEY_PKGNAME:Ljava/lang/String; = "pkgname"

.field public static final KEY_START_PROC_HOST_TYPE:Ljava/lang/String; = "hostingtype"

.field public static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field public static final PERSISTENT_PROC_ADJ:I = -0x320

.field public static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field public static final PREVIOUS_APP_ADJ:I = 0x2bc

.field public static final PROCESS_LMK_ADJ_TUNNING_DECREASE:I = 0x1

.field public static final PROCESS_LMK_ADJ_TUNNING_INCREASE:I = 0x0

.field public static final PROCESS_LMK_ADJ_TUNNING_NONEED:I = 0x2

.field public static final SCHED_GROUP_BACKGROUND:I = 0x0

.field public static final SCHED_GROUP_DEFAULT:I = 0x1

.field public static final SCHED_GROUP_TOP_APP:I = 0x2

.field public static final SCHED_GROUP_TOP_APP_BOUND:I = 0x3

.field public static final SERVICE_ADJ:I = 0x1f4

.field public static final SERVICE_B_ADJ:I = 0x320

.field public static final SYSTEM_ADJ:I = -0x384

.field public static final VISIBLE_APP_ADJ:I = 0x64

.field public static final VISIBLE_APP_LAYER_MAX:I = 0x63


# instance fields
.field public adjTunned:Z

.field public curAdj:I

.field public curAdjType:Ljava/lang/String;

.field public curProcState:I

.field public curSchedGroup:I

.field public flags:I

.field public lastPss:J

.field public packageName:Ljava/lang/String;

.field public pid:I

.field public processName:Ljava/lang/String;

.field public tunnedAdj:I

.field public tunnedAdjType:Ljava/lang/String;

.field public tunnedProcState:I

.field public tunnedSchedGroup:I

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resetTunningParams()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/app/ProcessInfo;->adjTunned:Z

    .line 3
    .line 4
    iget v0, p0, Landroid/app/ProcessInfo;->curAdj:I

    .line 5
    .line 6
    iput v0, p0, Landroid/app/ProcessInfo;->tunnedAdj:I

    .line 7
    .line 8
    iget-object v0, p0, Landroid/app/ProcessInfo;->curAdjType:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Landroid/app/ProcessInfo;->tunnedAdjType:Ljava/lang/String;

    .line 11
    .line 12
    iget v0, p0, Landroid/app/ProcessInfo;->curProcState:I

    .line 13
    .line 14
    iput v0, p0, Landroid/app/ProcessInfo;->tunnedProcState:I

    .line 15
    .line 16
    iget v0, p0, Landroid/app/ProcessInfo;->curSchedGroup:I

    .line 17
    .line 18
    iput v0, p0, Landroid/app/ProcessInfo;->tunnedSchedGroup:I

    .line 19
    .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Process:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/ProcessInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/ProcessInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "adj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/ProcessInfo;->curAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
