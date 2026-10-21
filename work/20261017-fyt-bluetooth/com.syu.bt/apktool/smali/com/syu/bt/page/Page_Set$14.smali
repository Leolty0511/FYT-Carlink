.class Lcom/syu/bt/page/Page_Set$14;
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
    iput-object p1, p0, Lcom/syu/bt/page/Page_Set$14;->this$0:Lcom/syu/bt/page/Page_Set;

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchOff()V
    .locals 4

    .prologue
    .line 599
    sget-object v1, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    const/16 v2, 0xc

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v3, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    if-eqz v0, :cond_0

    const-string v0, "bt_aikg4"

    :goto_0
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    .line 600
    return-void

    .line 599
    :cond_0
    const-string v0, "bt_aikg3"

    goto :goto_0
.end method

.method public onSwitchOn()V
    .locals 4

    .prologue
    .line 595
    sget-object v1, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    const/16 v2, 0xc

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v3, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    if-eqz v0, :cond_0

    const-string v0, "bt_aikg4"

    :goto_0
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    .line 596
    return-void

    .line 595
    :cond_0
    const-string v0, "bt_aikg3"

    goto :goto_0
.end method
