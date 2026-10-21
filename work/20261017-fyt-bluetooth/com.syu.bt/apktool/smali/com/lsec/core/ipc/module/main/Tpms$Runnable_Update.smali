.class Lcom/lsec/core/ipc/module/main/Tpms$Runnable_Update;
.super Ljava/lang/Object;
.source "Tpms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc/module/main/Tpms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Runnable_Update"
.end annotation


# instance fields
.field public flts:[F

.field public ints:[I

.field public strs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lsec/core/ipc/module/main/Tpms;

.field public updateCode:I


# direct methods
.method public constructor <init>(Lcom/lsec/core/ipc/module/main/Tpms;I[I[F[Ljava/lang/String;)V
    .locals 0
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lsec/core/ipc/module/main/Tpms$Runnable_Update;->this$0:Lcom/lsec/core/ipc/module/main/Tpms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p2, p0, Lcom/lsec/core/ipc/module/main/Tpms$Runnable_Update;->updateCode:I

    .line 75
    iput-object p3, p0, Lcom/lsec/core/ipc/module/main/Tpms$Runnable_Update;->ints:[I

    .line 76
    iput-object p4, p0, Lcom/lsec/core/ipc/module/main/Tpms$Runnable_Update;->flts:[F

    .line 77
    iput-object p5, p0, Lcom/lsec/core/ipc/module/main/Tpms$Runnable_Update;->strs:[Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 82
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Tpms$Runnable_Update;->updateCode:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/lsec/core/ipc/module/main/Tpms$Runnable_Update;->updateCode:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 83
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Tpms$Runnable_Update;->ints:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/lsec/core/ipc/module/main/Tpms;->DATA:[I

    iget v1, p0, Lcom/lsec/core/ipc/module/main/Tpms$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Tpms$Runnable_Update;->ints:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v0, v1

    .line 86
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Tpms;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget v1, p0, Lcom/lsec/core/ipc/module/main/Tpms$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Tpms$Runnable_Update;->ints:[I

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Tpms$Runnable_Update;->flts:[F

    iget-object v4, p0, Lcom/lsec/core/ipc/module/main/Tpms$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 88
    :cond_1
    return-void
.end method
