.class public Lcom/lsec/core/ipc/IConn$Runnable_Cmd;
.super Ljava/lang/Object;
.source "IConn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc/IConn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Runnable_Cmd"
.end annotation


# instance fields
.field cmdCode:I

.field flts:[F

.field ints:[I

.field strs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lsec/core/ipc/IConn;


# direct methods
.method public constructor <init>(Lcom/lsec/core/ipc/IConn;I[I[F[Ljava/lang/String;)V
    .locals 0
    .param p2, "cmdCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/lsec/core/ipc/IConn$Runnable_Cmd;->this$0:Lcom/lsec/core/ipc/IConn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p2, p0, Lcom/lsec/core/ipc/IConn$Runnable_Cmd;->cmdCode:I

    .line 93
    iput-object p3, p0, Lcom/lsec/core/ipc/IConn$Runnable_Cmd;->ints:[I

    .line 94
    iput-object p4, p0, Lcom/lsec/core/ipc/IConn$Runnable_Cmd;->flts:[F

    .line 95
    iput-object p5, p0, Lcom/lsec/core/ipc/IConn$Runnable_Cmd;->strs:[Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/ipc/IConn$Runnable_Cmd;->this$0:Lcom/lsec/core/ipc/IConn;

    iget-object v1, v1, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/lsec/core/ipc/IConn$Runnable_Cmd;->this$0:Lcom/lsec/core/ipc/IConn;

    iget-object v1, v1, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    iget v2, p0, Lcom/lsec/core/ipc/IConn$Runnable_Cmd;->cmdCode:I

    iget-object v3, p0, Lcom/lsec/core/ipc/IConn$Runnable_Cmd;->ints:[I

    iget-object v4, p0, Lcom/lsec/core/ipc/IConn$Runnable_Cmd;->flts:[F

    iget-object v5, p0, Lcom/lsec/core/ipc/IConn$Runnable_Cmd;->strs:[Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/syu/ipc/IRemote;->cmd(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
