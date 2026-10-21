.class Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;
.super Ljava/lang/Object;
.source "Main786_CB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc786/module/cb/Main786_CB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Runnable_Update"
.end annotation


# instance fields
.field public flts:[F

.field public ints:[I

.field public strs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lsec/core/ipc786/module/cb/Main786_CB;

.field public updateCode:I


# direct methods
.method public constructor <init>(Lcom/lsec/core/ipc786/module/cb/Main786_CB;I[I[F[Ljava/lang/String;)V
    .locals 0
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->this$0:Lcom/lsec/core/ipc786/module/cb/Main786_CB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p2, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->updateCode:I

    .line 31
    iput-object p3, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->ints:[I

    .line 32
    iput-object p4, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->flts:[F

    .line 33
    iput-object p5, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->strs:[Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 38
    iget v0, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->updateCode:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->updateCode:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 39
    iget v0, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->updateCode:I

    sparse-switch v0, :sswitch_data_0

    .line 50
    iget-object v0, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->ints:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    iget v1, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->ints:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v0, v1

    .line 53
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget v1, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->ints:[I

    iget-object v3, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->flts:[F

    iget-object v4, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 47
    :sswitch_0
    iget v0, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc786/module/cb/Main786_CB$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc786/module/Main786;->update(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0xb -> :sswitch_0
        0x10 -> :sswitch_0
        0x19 -> :sswitch_0
    .end sparse-switch
.end method
