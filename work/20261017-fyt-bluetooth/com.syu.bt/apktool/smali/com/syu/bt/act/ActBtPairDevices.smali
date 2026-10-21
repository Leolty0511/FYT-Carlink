.class public Lcom/syu/bt/act/ActBtPairDevices;
.super Landroid/app/Activity;
.source "ActBtPairDevices.java"


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
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const/16 v0, 0x271c

    sput v0, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 17
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-class v1, Lcom/syu/bt/act/ActBt;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyApplication;->startAct(Ljava/lang/Class;)V

    .line 18
    invoke-virtual {p0}, Lcom/syu/bt/act/ActBtPairDevices;->finish()V

    .line 19
    return-void
.end method
