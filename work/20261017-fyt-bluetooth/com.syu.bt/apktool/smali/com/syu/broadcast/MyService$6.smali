.class Lcom/syu/broadcast/MyService$6;
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
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 139
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    return-void

    .line 139
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 140
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    instance-of v2, v0, Lcom/syu/bt/Act_Bt;

    if-eqz v2, :cond_0

    .line 141
    check-cast v0, Lcom/syu/bt/Act_Bt;

    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    iget-object v2, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/16 v3, 0x271b

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_0
.end method
