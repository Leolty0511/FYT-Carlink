.class Lcom/syu/bt/page/Page_Set$4;
.super Ljava/lang/Object;
.source "Page_Set.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1305
    const-string v2, "AIQR3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  000  mRunnAIQR \u626b\u7801\u540e\u81ea\u52a8\u6fc0\u6d3b  isAiuvoice = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " iRunnAIQR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/syu/bt/page/Page_Set;->iRunnAIQR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    sget-boolean v2, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    if-eqz v2, :cond_1

    .line 1308
    sget-object v2, Lcom/syu/bt/page/Page_Set;->mRunnAIQR:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 1309
    sget-object v2, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v2}, Lcom/syu/bt/Act_Bt;->DismissPopAIQR()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1310
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v2

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "bt_ai5"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    const/16 v2, 0x400

    new-array v1, v2, [B

    .line 1314
    .local v1, "qr_code":[B
    aput-byte v5, v1, v5

    .line 1315
    const/4 v0, -0x1

    .line 1316
    .local v0, "ok":I
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/syu/bt/App_Bt;->AIUvEcnr()I

    move-result v0

    .line 1317
    const-string v2, "ai"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  444 Set_Btn_AI checkQrCode ok ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " iRunnAIQR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/syu/bt/page/Page_Set;->iRunnAIQR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    if-nez v0, :cond_2

    .line 1319
    sget-object v2, Lcom/syu/bt/page/Page_Set;->mRunnAIQR:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 1320
    sget-object v2, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v2}, Lcom/syu/bt/Act_Bt;->DismissPopAIQR()Z

    .line 1321
    invoke-static {}, Lcom/syu/bt/page/Page_Set;->updateAI()V

    .line 1322
    invoke-static {}, Lcom/syu/bt/page/Page_Set;->updateAIKG()V

    goto :goto_0

    .line 1324
    :cond_2
    sget v2, Lcom/syu/bt/page/Page_Set;->iRunnAIQR:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/syu/bt/page/Page_Set;->iRunnAIQR:I

    .line 1325
    sget v2, Lcom/syu/bt/page/Page_Set;->iRunnAIQR:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    .line 1326
    const/4 v2, 0x1

    sget-object v3, Lcom/syu/bt/page/Page_Set;->mRunnAIQR:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-static {v2, v3, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto :goto_0

    .line 1328
    :cond_3
    sget-object v2, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v2}, Lcom/syu/bt/Act_Bt;->DismissPopAIQR()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1329
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v5, "bt_ai6"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "  Code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
