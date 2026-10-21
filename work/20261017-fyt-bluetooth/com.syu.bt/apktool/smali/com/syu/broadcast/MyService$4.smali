.class Lcom/syu/broadcast/MyService$4;
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
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 114
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    return-void

    .line 114
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 115
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    instance-of v1, v0, Lcom/syu/bt/Act_Bt;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 116
    check-cast v1, Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/16 v3, 0x2715

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    .line 118
    :cond_1
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->voiceSearchContact()V

    goto :goto_0
.end method
