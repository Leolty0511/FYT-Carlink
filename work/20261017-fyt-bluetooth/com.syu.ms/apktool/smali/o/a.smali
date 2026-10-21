.class public final Lo/a;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# static fields
.field public static a:Lo/a;

.field public static b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "android.bg"

    const/16 v1, 0xa

    .line 1
    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    sget-object v0, Lo/a;->a:Lo/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lo/a;

    invoke-direct {v0}, Lo/a;-><init>()V

    sput-object v0, Lo/a;->a:Lo/a;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lo/a;->a:Lo/a;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lo/a;->b:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public static b()Landroid/os/Handler;
    .locals 2

    .line 1
    const-class v0, Lo/a;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lo/a;->a()V

    .line 3
    sget-object v1, Lo/a;->b:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
