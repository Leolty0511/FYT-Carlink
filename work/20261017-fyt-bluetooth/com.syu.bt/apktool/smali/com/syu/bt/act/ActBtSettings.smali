.class public Lcom/syu/bt/act/ActBtSettings;
.super Landroid/app/Activity;
.source "ActBtSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const/16 v0, 0x271b

    sput v0, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 16
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-class v1, Lcom/syu/bt/act/ActBt;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyApplication;->startAct(Ljava/lang/Class;)V

    .line 17
    invoke-virtual {p0}, Lcom/syu/bt/act/ActBtSettings;->finish()V

    .line 18
    return-void
.end method
