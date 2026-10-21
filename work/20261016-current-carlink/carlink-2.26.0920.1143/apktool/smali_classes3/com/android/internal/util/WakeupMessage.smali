.class public Lcom/android/internal/util/WakeupMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field protected final mArg1:I

.field protected final mArg2:I

.field protected final mCmd:I

.field protected final mCmdName:Ljava/lang/String;

.field protected final mHandler:Landroid/os/Handler;

.field protected final mObj:Ljava/lang/Object;

.field private mScheduled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;II)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;III)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 10
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "alarm"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/internal/util/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3
    iput-object p2, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    .line 4
    iput-object p3, p0, Lcom/android/internal/util/WakeupMessage;->mCmdName:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/android/internal/util/WakeupMessage;->mCmd:I

    .line 6
    iput p5, p0, Lcom/android/internal/util/WakeupMessage;->mArg1:I

    .line 7
    iput p6, p0, Lcom/android/internal/util/WakeupMessage;->mArg2:I

    .line 8
    iput-object p7, p0, Lcom/android/internal/util/WakeupMessage;->mObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/internal/util/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    :cond_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public onAlarm()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z

    .line 6
    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    iget v1, p0, Lcom/android/internal/util/WakeupMessage;->mCmd:I

    .line 13
    .line 14
    iget v2, p0, Lcom/android/internal/util/WakeupMessage;->mArg1:I

    .line 15
    .line 16
    iget v3, p0, Lcom/android/internal/util/WakeupMessage;->mArg2:I

    .line 17
    .line 18
    iget-object v4, p0, Lcom/android/internal/util/WakeupMessage;->mObj:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw v0
.end method

.method public declared-synchronized schedule(J)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    iget-object v4, p0, Lcom/android/internal/util/WakeupMessage;->mCmdName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v6, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    move-wide v2, p1

    .line 10
    move-object v5, p0

    .line 11
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method
