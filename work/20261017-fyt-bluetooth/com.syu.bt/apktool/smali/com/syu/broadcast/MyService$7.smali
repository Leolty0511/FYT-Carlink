.class Lcom/syu/broadcast/MyService$7;
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
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 149
    const-string v1, "gdy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ** 22 MyService mRunnable_goPagePair   sPage = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget v3, Lcom/syu/bt/App_Bt;->sPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    return-void

    .line 150
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 151
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    instance-of v2, v0, Lcom/syu/bt/Act_Bt;

    if-eqz v2, :cond_0

    .line 152
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bNo_Pair:Z

    if-eqz v2, :cond_2

    .line 153
    check-cast v0, Lcom/syu/bt/Act_Bt;

    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    iget-object v2, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/16 v3, 0x271b

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_0

    .line 155
    .restart local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :cond_2
    check-cast v0, Lcom/syu/bt/Act_Bt;

    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    iget-object v2, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/16 v3, 0x271c

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_0
.end method
