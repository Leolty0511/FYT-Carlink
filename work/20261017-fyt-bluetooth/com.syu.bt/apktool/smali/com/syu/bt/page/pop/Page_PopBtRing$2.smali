.class Lcom/syu/bt/page/pop/Page_PopBtRing$2;
.super Ljava/lang/Object;
.source "Page_PopBtRing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/pop/Page_PopBtRing;->GridClick(Lcom/lsec/core/frame/ctrl/JGridView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/pop/Page_PopBtRing;

.field private final synthetic val$file:Ljava/lang/String;

.field private final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopBtRing;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$2;->this$0:Lcom/syu/bt/page/pop/Page_PopBtRing;

    iput-object p2, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$2;->val$file:Ljava/lang/String;

    iput-object p3, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$2;->val$fileName:Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/syu/bt/page/pop/Page_PopBtRing$2;)Lcom/syu/bt/page/pop/Page_PopBtRing;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$2;->this$0:Lcom/syu/bt/page/pop/Page_PopBtRing;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 105
    invoke-static {}, Lcom/syu/bt/util/FileHandler;->getInstance()Lcom/syu/bt/util/FileHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$2;->val$file:Ljava/lang/String;

    const-string v2, "/mnt/sdcard/.btring/ring.mp3"

    invoke-virtual {v0, v1, v2, v5, v5}, Lcom/syu/bt/util/FileHandler;->copy(Ljava/lang/String;Ljava/lang/String;ZZ)I

    .line 106
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$2;->val$fileName:Ljava/lang/String;

    const-string v1, "/mnt/sdcard/.btring/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$2;->val$fileName:Ljava/lang/String;

    const-string v3, "/mnt/sdcard/.btring/"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_add_successed"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 111
    :goto_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v1, "name_ring"

    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$2;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/syu/bt/page/pop/Page_PopBtRing$2$1;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$2;->val$fileName:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/syu/bt/page/pop/Page_PopBtRing$2$1;-><init>(Lcom/syu/bt/page/pop/Page_PopBtRing$2;Ljava/lang/String;)V

    invoke-static {v5, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 123
    return-void

    .line 109
    :cond_0
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_add_successed"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
