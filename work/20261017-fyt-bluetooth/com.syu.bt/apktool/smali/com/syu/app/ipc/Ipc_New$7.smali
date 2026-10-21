.class Lcom/syu/app/ipc/Ipc_New$7;
.super Ljava/lang/Object;
.source "Ipc_New.java"

# interfaces
.implements Lcom/lsec/core/util/IUiNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/app/ipc/Ipc_New;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/app/ipc/Ipc_New;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Ipc_New;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_New$7;->this$0:Lcom/syu/app/ipc/Ipc_New;

    .line 3162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 4
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3166
    packed-switch p1, :pswitch_data_0

    .line 3188
    :cond_0
    :goto_0
    return-void

    .line 3168
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {p4, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3169
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aget-object v1, p4, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3171
    const-string v0, "null"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ** 22 U_PACKAGE_REMOVING APP_ID_NULL U_APP_ID = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " strs[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p4, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bChangeAppIdWhenTalking:Z

    if-eqz v0, :cond_2

    .line 3173
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v0, v0, v3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v0, v0, v3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 3174
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v0, v0, v3

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    sget v0, Lcom/syu/bt/App_Bt;->mBtType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3177
    :cond_1
    const-string v0, "null"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ** 33 handleRemoveTask APP_ID_NULL U_APP_ID = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    invoke-static {v3}, Lcom/lsec/core/ipc/module/main/Main;->requestAppId(I)V

    goto :goto_0

    .line 3181
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdNull()V

    goto/16 :goto_0

    .line 3166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
