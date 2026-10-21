.class Lcom/syu/bt/page/pop/Page_PopBtRing$1;
.super Ljava/lang/Object;
.source "Page_PopBtRing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/pop/Page_PopBtRing;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/pop/Page_PopBtRing;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopBtRing;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$1;->this$0:Lcom/syu/bt/page/pop/Page_PopBtRing;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/syu/bt/page/pop/Page_PopBtRing$1;)Lcom/syu/bt/page/pop/Page_PopBtRing;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$1;->this$0:Lcom/syu/bt/page/pop/Page_PopBtRing;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/syu/bt/util/FileHandler;->getInstance()Lcom/syu/bt/util/FileHandler;

    move-result-object v0

    const-string v1, "/mnt/sdcard/btring/"

    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$1;->this$0:Lcom/syu/bt/page/pop/Page_PopBtRing;

    iget-object v2, v2, Lcom/syu/bt/page/pop/Page_PopBtRing;->listFile:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/util/FileHandler;->scanFile(Ljava/lang/String;Ljava/util/List;)V

    .line 42
    const/4 v0, 0x0

    new-instance v1, Lcom/syu/bt/page/pop/Page_PopBtRing$1$1;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/pop/Page_PopBtRing$1$1;-><init>(Lcom/syu/bt/page/pop/Page_PopBtRing$1;)V

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 55
    return-void
.end method
