.class Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;
.super Ljava/lang/Object;
.source "Bt786_CB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc786/module/cb/Bt786_CB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Runnable_Update"
.end annotation


# instance fields
.field public flts:[F

.field public ints:[I

.field public strs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lsec/core/ipc786/module/cb/Bt786_CB;

.field public updateCode:I


# direct methods
.method public constructor <init>(Lcom/lsec/core/ipc786/module/cb/Bt786_CB;I[I[F[Ljava/lang/String;)V
    .locals 0
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->this$0:Lcom/lsec/core/ipc786/module/cb/Bt786_CB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p2, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->updateCode:I

    .line 32
    iput-object p3, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->ints:[I

    .line 33
    iput-object p4, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->flts:[F

    .line 34
    iput-object p5, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->strs:[Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    iget v0, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->updateCode:I

    packed-switch v0, :pswitch_data_0

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->ints:[I

    invoke-static {v0, v4}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget v0, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->updateCode:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->ints:[I

    aget v0, v0, v3

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    iget v2, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->updateCode:I

    aget v1, v1, v2

    if-eq v0, v1, :cond_1

    .line 74
    iget v0, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->updateCode:I

    if-ne v0, v4, :cond_0

    .line 75
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    iget v1, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->updateCode:I

    aget v0, v0, v1

    sput v0, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    .line 77
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    iget v1, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->ints:[I

    aget v2, v2, v3

    aput v2, v0, v1

    .line 82
    :cond_1
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget v1, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->ints:[I

    iget-object v3, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->flts:[F

    iget-object v4, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 85
    :cond_2
    :goto_0
    return-void

    .line 45
    :pswitch_1
    iget v0, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc786/module/Bt786;->update(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :pswitch_2
    iget v0, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc786/module/Bt786;->phoneNumber(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_3
    iget-object v0, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->strs:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget v1, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->ints:[I

    iget-object v3, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->flts:[F

    iget-object v4, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_4
    iget v0, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc786/module/Bt786;->devPin(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_5
    iget v0, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc786/module/Bt786;->devName(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :pswitch_6
    iget v0, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc786/module/Bt786;->phoneName(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_7
    iget v0, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc786/module/Bt786;->localAddr(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_8
    iget v0, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc786/module/cb/Bt786_CB$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc786/module/Bt786;->phoneAddr(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
