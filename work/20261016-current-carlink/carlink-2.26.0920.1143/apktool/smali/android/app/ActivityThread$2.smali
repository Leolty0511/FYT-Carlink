.class Landroid/app/ActivityThread$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread;->attach(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;

.field final synthetic val$mgr:Landroid/app/IActivityManager;


# direct methods
.method public constructor <init>(Landroid/app/ActivityThread;Landroid/app/IActivityManager;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iput-object p2, p0, Landroid/app/ActivityThread$2;->val$mgr:Landroid/app/IActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    sub-long/2addr v3, v5

    .line 25
    const-wide/16 v5, 0x3

    .line 26
    .line 27
    mul-long/2addr v1, v5

    .line 28
    const-wide/16 v5, 0x4

    .line 29
    .line 30
    div-long/2addr v1, v5

    .line 31
    cmp-long v0, v3, v1

    .line 32
    .line 33
    if-lez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput-boolean v1, v0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 39
    .line 40
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$2;->val$mgr:Landroid/app/IActivityManager;

    .line 41
    .line 42
    iget-object v0, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 43
    .line 44
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->releaseSomeActivities(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_0
    return-void
.end method
