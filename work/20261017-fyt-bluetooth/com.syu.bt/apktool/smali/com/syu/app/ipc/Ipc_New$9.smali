.class Lcom/syu/app/ipc/Ipc_New$9;
.super Ljava/lang/Object;
.source "Ipc_New.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/app/ipc/Ipc_New;->phoneState_2(I)V
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
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_New$9;->this$0:Lcom/syu/app/ipc/Ipc_New;

    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 983
    const-string v0, "gdy13"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 11 phoneState  U_PHONE_STATE = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/syu/bt/App_Bt;->phoneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  sPhoneNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    sget v0, Lcom/syu/app/ipc/Ipc_New;->state_p:I

    sget v1, Lcom/syu/bt/App_Bt;->phoneState:I

    if-eq v0, v1, :cond_0

    .line 985
    sget v0, Lcom/syu/bt/App_Bt;->phoneState:I

    sput v0, Lcom/syu/app/ipc/Ipc_New;->state_p:I

    .line 986
    sget v0, Lcom/syu/bt/App_Bt;->phoneState:I

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/syu/app/ipc/Ipc_New;->sendBtPhoneState(ILjava/lang/String;)V

    .line 988
    :cond_0
    return-void
.end method
