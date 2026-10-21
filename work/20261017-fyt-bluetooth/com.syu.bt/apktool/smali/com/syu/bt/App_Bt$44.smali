.class Lcom/syu/bt/App_Bt$44;
.super Ljava/lang/Object;
.source "App_Bt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/App_Bt;->onCreate(Lcom/lsec/core/frame/app/MyApplication;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/App_Bt;


# direct methods
.method constructor <init>(Lcom/syu/bt/App_Bt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/App_Bt$44;->this$0:Lcom/syu/bt/App_Bt;

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 531
    invoke-static {}, Lcom/syu/bt/App_Bt;->isAI_GT()Z

    move-result v1

    sput-boolean v1, Lcom/syu/bt/App_Bt;->bAI_GT:Z

    .line 532
    sget v1, Lcom/syu/bt/App_Bt;->iAI_GT:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/syu/bt/App_Bt;->iAI_GT:I

    .line 533
    const-string v1, "gtai"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 00 App_Bt postRunnable_Ui bAI_GT = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/syu/bt/App_Bt;->bAI_GT:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iAI_GT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/syu/bt/App_Bt;->iAI_GT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bAI_GT:Z

    if-eqz v1, :cond_4

    .line 536
    invoke-static {}, Lcom/syu/Uvoice/UvoiceEcnr;->getInstance()Lcom/syu/Uvoice/UvoiceEcnr;

    invoke-static {}, Lcom/syu/Uvoice/UvoiceEcnr;->getAIType()I

    move-result v1

    sput v1, Lcom/syu/bt/App_Bt;->isAIType:I

    .line 537
    const-string v1, "gtai"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 11 App_Bt postRunnable_Ui isAIType = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/syu/bt/App_Bt;->isAIType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    sget v1, Lcom/syu/bt/App_Bt;->isAIType:I

    if-ltz v1, :cond_1

    .line 540
    const-string v1, "gtai"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  JAVA 00 App_Bt checkActivate isAIType = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/syu/bt/App_Bt;->isAIType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " App_Bt.mBtType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/syu/bt/App_Bt;->mBtType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIdPlatForm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 541
    sget v5, Lcom/lsec/core/frame/app/MyApplication;->mIdPlatForm:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mStrPlatForm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 540
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-static {}, Lcom/syu/Uvoice/UvoiceEcnr;->getInstance()Lcom/syu/Uvoice/UvoiceEcnr;

    invoke-static {}, Lcom/syu/Uvoice/UvoiceEcnr;->checkActivate2()I

    move-result v0

    .line 543
    .local v0, "ok":I
    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    .line 544
    sget-boolean v1, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    if-eqz v1, :cond_0

    .line 545
    sput-boolean v3, Lcom/syu/bt/App_Bt;->bAI_JZ2:Z

    .line 546
    :cond_0
    sget-boolean v1, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    if-eqz v1, :cond_3

    const-string v1, "persist.lsec.aecdelay"

    const/4 v4, -0x1

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    sput-boolean v2, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    .line 547
    const-string v1, "gtai"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  JAVA 11 App_Bt  isAiuvoice = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ok = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v2, p0, Lcom/syu/bt/App_Bt$44;->this$0:Lcom/syu/bt/App_Bt;

    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/app/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-static {v2, v1}, Lcom/syu/bt/App_Bt;->access$2(Lcom/syu/bt/App_Bt;Landroid/net/ConnectivityManager;)V

    .line 549
    iget-object v1, p0, Lcom/syu/bt/App_Bt$44;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$3(Lcom/syu/bt/App_Bt;)V

    .line 557
    .end local v0    # "ok":I
    :cond_1
    :goto_2
    return-void

    .restart local v0    # "ok":I
    :cond_2
    move v1, v3

    .line 543
    goto :goto_0

    :cond_3
    move v2, v3

    .line 546
    goto :goto_1

    .line 553
    .end local v0    # "ok":I
    :cond_4
    const-string v1, "gtai"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 11 App_Bt postRunnable_Ui iAI_GT = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/syu/bt/App_Bt;->iAI_GT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    sget v1, Lcom/syu/bt/App_Bt;->iAI_GT:I

    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    .line 555
    const-wide/16 v4, 0x5dc

    invoke-static {v2, p0, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto :goto_2
.end method
