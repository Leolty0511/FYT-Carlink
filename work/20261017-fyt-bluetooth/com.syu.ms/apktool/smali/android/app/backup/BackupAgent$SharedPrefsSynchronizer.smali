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

.field public final synthetic this$0:Landroid/app/backup/BackupAgent;


# direct methods
.method public constructor <init>(Landroid/app/backup/BackupAgent;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->this$0:Landroid/app/backup/BackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 2
    iget-object v0, p0, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
