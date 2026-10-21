.class public Lcom/syu/bt/act/ActBtAvStart;
.super Landroid/app/Activity;
.source "ActBtAvStart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const/16 v0, 0x271a

    sput v0, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 21
    const-string v0, "gdy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "11 ActBtAvStart: sPage_WillBe = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " App_Bt.bIsLauncher_2Ico = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bIsLauncher_2Ico:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-class v1, Lcom/syu/bt/act/ActBt;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyApplication;->startAct(Ljava/lang/Class;)V

    .line 23
    invoke-virtual {p0}, Lcom/syu/bt/act/ActBtAvStart;->finish()V

    .line 24
    return-void
.end method
