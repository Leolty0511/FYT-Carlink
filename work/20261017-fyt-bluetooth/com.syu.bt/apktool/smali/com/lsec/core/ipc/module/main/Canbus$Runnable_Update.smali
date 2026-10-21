.class Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;
.super Ljava/lang/Object;
.source "Canbus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc/module/main/Canbus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Runnable_Update"
.end annotation


# instance fields
.field public flts:[F

.field public ints:[I

.field public strs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lsec/core/ipc/module/main/Canbus;

.field public updateCode:I


# direct methods
.method public constructor <init>(Lcom/lsec/core/ipc/module/main/Canbus;I[I[F[Ljava/lang/String;)V
    .locals 0
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->this$0:Lcom/lsec/core/ipc/module/main/Canbus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p2, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->updateCode:I

    .line 174
    iput-object p3, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->ints:[I

    .line 175
    iput-object p4, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->flts:[F

    .line 176
    iput-object p5, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->strs:[Ljava/lang/String;

    .line 177
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 181
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->updateCode:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->updateCode:I

    const/16 v1, 0x4b0

    if-ge v0, v1, :cond_1

    .line 182
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->updateCode:I

    sparse-switch v0, :sswitch_data_0

    .line 206
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->ints:[I

    invoke-static {v0, v2}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->DATA:[I

    iget v1, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->ints:[I

    aget v2, v2, v3

    aput v2, v0, v1

    .line 209
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget v1, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->ints:[I

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->flts:[F

    iget-object v4, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 184
    :sswitch_0
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Canbus;->mcuCanbusSupportCnt(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :sswitch_1
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Canbus;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :sswitch_2
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->strs:[Ljava/lang/String;

    aget-object v0, v0, v3

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->canVersion:Ljava/lang/String;

    .line 202
    sget-object v0, Lcom/lsec/core/ipc/module/main/Canbus;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget v1, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->ints:[I

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->flts:[F

    iget-object v4, p0, Lcom/lsec/core/ipc/module/main/Canbus$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 182
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_1
        0x3ed -> :sswitch_2
        0x3f1 -> :sswitch_1
        0x3f2 -> :sswitch_0
        0x3f5 -> :sswitch_1
        0x3f9 -> :sswitch_1
        0x3fc -> :sswitch_1
        0x401 -> :sswitch_1
        0x402 -> :sswitch_1
    .end sparse-switch
.end method
