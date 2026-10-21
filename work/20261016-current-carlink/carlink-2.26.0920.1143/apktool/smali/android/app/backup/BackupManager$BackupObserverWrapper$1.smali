.class Landroid/app/backup/BackupManager$BackupObserverWrapper$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/backup/BackupManager$BackupObserverWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/BackupObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;

.field final synthetic val$this$0:Landroid/app/backup/BackupManager;


# direct methods
.method public constructor <init>(Landroid/app/backup/BackupManager$BackupObserverWrapper;Landroid/os/Looper;Landroid/app/backup/BackupManager;)V
    .locals 0

    iput-object p1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;->this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;

    iput-object p3, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;->val$this$0:Landroid/app/backup/BackupManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "Unknown message: "

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "BackupManager"

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;->this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;

    .line 33
    .line 34
    iget-object v0, v0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mObserver:Landroid/app/backup/BackupObserver;

    .line 35
    .line 36
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/app/backup/BackupObserver;->backupFinished(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;->this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;

    .line 43
    .line 44
    iget-object v0, v0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mObserver:Landroid/app/backup/BackupObserver;

    .line 45
    .line 46
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Ljava/lang/String;

    .line 49
    .line 50
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 51
    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/app/backup/BackupObserver;->onResult(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Landroid/util/Pair;

    .line 59
    .line 60
    iget-object v0, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;->this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;

    .line 61
    .line 62
    iget-object v0, v0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mObserver:Landroid/app/backup/BackupObserver;

    .line 63
    .line 64
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v1, Ljava/lang/String;

    .line 67
    .line 68
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Landroid/app/backup/BackupProgress;

    .line 71
    .line 72
    invoke-virtual {v0, v1, p1}, Landroid/app/backup/BackupObserver;->onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method
