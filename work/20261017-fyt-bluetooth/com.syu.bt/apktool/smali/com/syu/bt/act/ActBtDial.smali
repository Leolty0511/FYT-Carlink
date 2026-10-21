.class public Lcom/syu/bt/act/ActBtDial;
.super Landroid/app/Activity;
.source "ActBtDial.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/syu/bt/act/ActBtDial;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/syu/bt/act/ActBtDial;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "strAction":Ljava/lang/String;
    const-string v1, "com.syu.bt.favrorite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    const/4 v1, 0x1

    sput-boolean v1, Lcom/syu/bt/App_Bt;->bJumpFavorite:Z

    .line 24
    .end local v0    # "strAction":Ljava/lang/String;
    :cond_0
    const/16 v1, 0x2713

    sput v1, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 25
    const-string v1, "gdy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "11 ActBtDial: sPage_WillBe = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " App_Bt.bIsLauncher_2Ico = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/syu/bt/App_Bt;->bIsLauncher_2Ico:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-class v2, Lcom/syu/bt/act/ActBt;

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyApplication;->startAct(Ljava/lang/Class;)V

    .line 28
    invoke-virtual {p0}, Lcom/syu/bt/act/ActBtDial;->finish()V

    .line 29
    return-void
.end method
