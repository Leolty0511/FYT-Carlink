.class public Le1/o$d;
.super Landroid/os/UEventObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/o;


# direct methods
.method public constructor <init>(Le1/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/o$d;->a:Le1/o;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "dcam=err"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "LG"

    const-string v0, "dcam=errdcam=errdcam=err"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Landroid/os/UEventObserver;->stopObserving()V

    .line 5
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object v0, p0, Le1/o$d;->a:Le1/o;

    invoke-static {v0}, Le1/o;->p(Le1/o;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {p1, v0}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 6
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object v0, p0, Le1/o$d;->a:Le1/o;

    invoke-static {v0}, Le1/o;->p(Le1/o;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-static {p1, v0, v1, v2}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
