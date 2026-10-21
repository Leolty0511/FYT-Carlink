.class public Le1/o$c;
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
    iput-object p1, p0, Le1/o$c;->a:Le1/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/syu/jni/ToolsJni;->cmd_33_reset_videoIc(I)V

    const/4 v1, -0x1

    .line 2
    invoke-static {v1}, Le1/o;->m(I)I

    .line 3
    sput-boolean v0, Le1/o;->y:Z

    .line 4
    iget-object v0, p0, Le1/o$c;->a:Le1/o;

    invoke-virtual {v0}, Le1/o;->A()V

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Le1/o;->n(I)I

    .line 6
    iget-object v0, p0, Le1/o$c;->a:Le1/o;

    invoke-static {v0}, Le1/o;->o(Le1/o;)Landroid/os/UEventObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    iget-object v0, p0, Le1/o$c;->a:Le1/o;

    invoke-static {v0}, Le1/o;->o(Le1/o;)Landroid/os/UEventObserver;

    move-result-object v0

    const-string v1, "dcam=err"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v0, "LG"

    const-string v1, "Reset2850Reset2850Reset2850"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
