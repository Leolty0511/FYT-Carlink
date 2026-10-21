.class Lcom/syu/broadcast/MyService$9;
.super Ljava/lang/Object;
.source "MyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/broadcast/MyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 459
    sget-object v2, Lcom/syu/bt/App_Bt;->myHandle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-boolean v2, v2, Lcom/syu/bt/App_Bt;->bPopPhoneSms:Z

    if-nez v2, :cond_1

    .line 460
    sget-object v2, Lcom/syu/bt/App_Bt;->myHandle:Ljava/util/List;

    sget-object v3, Lcom/syu/bt/App_Bt;->myHandle:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/syu/bt/App_Bt;->handleSMS:Ljava/lang/String;

    .line 461
    sget-object v2, Lcom/syu/bt/App_Bt;->myHandle:Ljava/util/List;

    sget-object v3, Lcom/syu/bt/App_Bt;->handleSMS:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 462
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    sget-object v3, Lcom/syu/bt/App_Bt;->handleSMS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/syu/app/ipc/Bt_IpcObj;->requestSMS(Ljava/lang/String;)V

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JPage;

    .line 465
    .local v0, "pageSMS":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v1

    check-cast v1, Lcom/syu/bt/page/pop/Page_PopSms;

    .line 467
    .local v1, "page_PopSms":Lcom/syu/bt/page/pop/Page_PopSms;
    if-eqz v1, :cond_0

    .line 468
    invoke-virtual {v1}, Lcom/syu/bt/page/pop/Page_PopSms;->updateSmsNum()V

    goto :goto_0
.end method
