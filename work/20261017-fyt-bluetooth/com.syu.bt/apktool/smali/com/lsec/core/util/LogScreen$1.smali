.class Lcom/lsec/core/util/LogScreen$1;
.super Ljava/lang/Object;
.source "LogScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/util/LogScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/util/LogScreen;


# direct methods
.method constructor <init>(Lcom/lsec/core/util/LogScreen;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lsec/core/util/LogScreen$1;->this$0:Lcom/lsec/core/util/LogScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lsec/core/util/LogScreen$1;)Lcom/lsec/core/util/LogScreen;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lsec/core/util/LogScreen$1;->this$0:Lcom/lsec/core/util/LogScreen;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 43
    invoke-static {}, Lcom/lsec/core/util/HandlerUI;->getInstance()Lcom/lsec/core/util/HandlerUI;

    move-result-object v1

    new-instance v2, Lcom/lsec/core/util/LogScreen$1$1;

    invoke-direct {v2, p0}, Lcom/lsec/core/util/LogScreen$1$1;-><init>(Lcom/lsec/core/util/LogScreen$1;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/util/HandlerUI;->post(Ljava/lang/Runnable;)Z

    .line 51
    sget-object v1, Lcom/lsec/core/util/ThreadMap;->mHashMapHandler:Ljava/util/HashMap;

    const-string v2, "LogPreview_Work"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 52
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    :cond_0
    return-void
.end method
