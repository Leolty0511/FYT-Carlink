.class Lcom/syu/app/ipc/Ipc_New$2;
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
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_New$2;->this$0:Lcom/syu/app/ipc/Ipc_New;

    .line 2083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 2087
    sparse-switch p1, :sswitch_data_0

    .line 2133
    :cond_0
    :goto_0
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2135
    return-void

    .line 2089
    :sswitch_0
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bEnableSpec:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2090
    sget-object v1, Lcom/lsec/core/ipc/module/main/Sound;->DATA:[I

    aget v1, v1, p1

    if-nez v1, :cond_0

    .line 2091
    iget-object v1, p0, Lcom/syu/app/ipc/Ipc_New$2;->this$0:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v1}, Lcom/syu/app/ipc/Ipc_New;->EnableGainSpec()V

    goto :goto_0

    .line 2096
    :sswitch_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->getSB()[I

    move-result-object v1

    sput-object v1, Lcom/syu/bt/App_Bt;->SB:[I

    .line 2097
    sget-object v1, Lcom/syu/bt/App_Bt;->SB:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    sput v1, Lcom/syu/bt/App_Bt;->iPhoneMicSet:I

    .line 2098
    sget-object v1, Lcom/syu/bt/App_Bt;->SB:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    sput v1, Lcom/syu/bt/App_Bt;->iBtAvMicSet:I

    goto :goto_0

    .line 2102
    :sswitch_2
    sget-object v1, Lcom/lsec/core/ipc/module/main/Sound;->DATA:[I

    aget v1, v1, p1

    sput v1, Lcom/syu/bt/App_Bt;->bSoundAMP:I

    .line 2103
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 2104
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->updateSoundAmp()V

    goto :goto_2

    .line 2108
    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :sswitch_3
    sget-object v1, Lcom/lsec/core/ipc/module/main/Sound;->DATA:[I

    aget v1, v1, p1

    sput v1, Lcom/syu/bt/App_Bt;->bSoundLoud:I

    .line 2109
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 2110
    .restart local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->updateSoundLoud()V

    goto :goto_3

    .line 2114
    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :sswitch_4
    sget-object v1, Lcom/lsec/core/ipc/module/main/Sound;->DATA:[I

    aget v1, v1, p1

    sput v1, Lcom/syu/bt/App_Bt;->bSoundMode:I

    .line 2115
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 2116
    .restart local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->updateSoundMode()V

    goto :goto_4

    .line 2121
    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :sswitch_5
    sget-object v1, Lcom/lsec/core/ipc/module/main/Sound;->DATA:[I

    aget v1, v1, p1

    sput v1, Lcom/syu/bt/App_Bt;->bSoundVol:I

    .line 2123
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 2124
    .restart local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->updateSoundVol()V

    goto :goto_5

    .line 2128
    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :sswitch_6
    sget-object v1, Lcom/lsec/core/ipc/module/main/Sound;->DATA:[I

    aget v1, v1, p1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_6
    sput-boolean v1, Lcom/syu/bt/App_Bt;->bSoundMute:Z

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_6

    .line 2133
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 2134
    .restart local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/syu/bt/InterfaceBt;->onNotify_Sound(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2087
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0xa -> :sswitch_4
        0xb -> :sswitch_3
        0xc -> :sswitch_1
        0xd -> :sswitch_2
        0x18 -> :sswitch_0
        0x3c -> :sswitch_6
    .end sparse-switch
.end method
