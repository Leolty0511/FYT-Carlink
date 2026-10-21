.class public Le1/o$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Le1/o$e;->a:Le1/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget-boolean v0, Le1/a;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "sys.fyt.video.debug"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget-object v2, p0, Le1/o$e;->a:Le1/o;

    invoke-static {v2}, Le1/o;->q(Le1/o;)V

    .line 4
    :cond_0
    iget-object v2, p0, Le1/o$e;->a:Le1/o;

    iget v3, v2, Le1/o;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Le1/o;->h:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_1

    .line 5
    iput v1, v2, Le1/o;->h:I

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Le1/o$e;->a:Le1/o;

    invoke-static {v0}, Le1/o;->r(Le1/o;)V

    .line 8
    iget-object v0, p0, Le1/o$e;->a:Le1/o;

    invoke-virtual {v0}, Le1/o;->A()V

    .line 9
    :cond_1
    :try_start_0
    iget-object v0, p0, Le1/o$e;->a:Le1/o;

    invoke-static {v0}, Le1/o;->o(Le1/o;)Landroid/os/UEventObserver;

    move-result-object v0

    const-string v1, "dcam=err"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
