.class public Lcom/syu/bt/PhoneActivity;
.super Landroid/app/Activity;
.source "PhoneActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/syu/bt/PhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 24
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 26
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "Number":Ljava/lang/String;
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3, v0}, Lcom/syu/app/ipc/Bt_IpcObj;->dialOut(Ljava/lang/String;)V

    .line 33
    .end local v0    # "Number":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/PhoneActivity;->finish()V

    .line 34
    return-void
.end method
