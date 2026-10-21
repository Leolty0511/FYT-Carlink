.class Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SharedPrefsSynchronizer"
.end annotation


# instance fields
.field public final mLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Landroid/app/backup/BackupAgent;


# direct methods
.method public constructor <init>(Landroid/app/backup/BackupAgent;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->this$0:Landroid/app/backup/BackupAgent;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
