.class public Lo1/l;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field public static final a:Lo1/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerRemove"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    new-instance v1, Lo1/l;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lo1/l;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lo1/l;->a:Lo1/l;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static a()Lo1/l;
    .locals 1

    .line 1
    sget-object v0, Lo1/l;->a:Lo1/l;

    return-object v0
.end method
