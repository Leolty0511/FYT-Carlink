.class Landroid/app/backup/BackupManager$BackupObserverWrapper;
.super Landroid/app/backup/IBackupObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackupObserverWrapper"
.end annotation


# static fields
.field static final MSG_FINISHED:I = 0x3

.field static final MSG_RESULT:I = 0x2

.field static final MSG_UPDATE:I = 0x1


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mObserver:Landroid/app/backup/BackupObserver;

.field final synthetic this$0:Landroid/app/backup/BackupManager;


# direct methods
.method public constructor <init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/BackupObserver;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->this$0:Landroid/app/backup/BackupManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/backup/IBackupObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-direct {v0, p0, p2, p1}, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;-><init>(Landroid/app/backup/BackupManager$BackupObserverWrapper;Landroid/os/Looper;Landroid/app/backup/BackupManager;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    iput-object p3, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mObserver:Landroid/app/backup/BackupObserver;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public backupFinished(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onResult(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
