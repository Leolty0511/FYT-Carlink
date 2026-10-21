.class Lcom/syu/bt/page/Page_Set$10;
.super Ljava/lang/Object;
.source "Page_Set.java"

# interfaces
.implements Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_Set;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Set;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Set;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Set$10;->this$0:Lcom/syu/bt/page/Page_Set;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchOff()V
    .locals 4

    .prologue
    .line 511
    sget v0, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    if-nez v0, :cond_0

    .line 512
    sget-object v0, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    const/16 v1, 0xe

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_aikg4"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    .line 515
    :goto_0
    return-void

    .line 514
    :cond_0
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_ai7"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSwitchOn()V
    .locals 4

    .prologue
    .line 503
    sget v0, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    if-nez v0, :cond_0

    .line 504
    sget-object v0, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    const/16 v1, 0xe

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_aikg3"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    .line 507
    :goto_0
    return-void

    .line 506
    :cond_0
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_ai7"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
