.class Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;
.super Ljava/lang/Object;
.source "Sound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc/module/main/Sound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Runnable_Update"
.end annotation


# instance fields
.field public flts:[F

.field public ints:[I

.field public strs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lsec/core/ipc/module/main/Sound;

.field public updateCode:I


# direct methods
.method public constructor <init>(Lcom/lsec/core/ipc/module/main/Sound;I[I[F[Ljava/lang/String;)V
    .locals 0
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->this$0:Lcom/lsec/core/ipc/module/main/Sound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p2, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->updateCode:I

    .line 102
    iput-object p3, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    .line 103
    iput-object p4, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->flts:[F

    .line 104
    iput-object p5, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->strs:[Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->updateCode:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->updateCode:I

    const/16 v1, 0xfa

    if-ge v0, v1, :cond_1

    .line 110
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->updateCode:I

    packed-switch v0, :pswitch_data_0

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    invoke-static {v0, v4}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/lsec/core/ipc/module/main/Sound;->DATA:[I

    iget v1, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    aget v2, v2, v3

    aput v2, v0, v1

    .line 148
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Sound;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget v1, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->flts:[F

    iget-object v4, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    sput-object v0, Lcom/lsec/core/ipc/module/main/Sound;->mSpectrum:[I

    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    invoke-static {v0, v2}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Sound;->sb(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :pswitch_3
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    invoke-static {v0, v2}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    aget v0, v0, v3

    sget-object v1, Lcom/lsec/core/ipc/module/main/Sound;->mBarVals:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 124
    sget-object v0, Lcom/lsec/core/ipc/module/main/Sound;->mBarVals:[I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    aget v2, v2, v4

    aput v2, v0, v1

    .line 126
    :cond_2
    sget-object v0, Lcom/lsec/core/ipc/module/main/Sound;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget v1, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->flts:[F

    iget-object v4, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :pswitch_4
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    invoke-static {v0, v2}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    sget v0, Lcom/lsec/core/ipc/module/main/Sound;->mFieldX:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_3

    sget v0, Lcom/lsec/core/ipc/module/main/Sound;->mFieldY:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    aget v1, v1, v4

    if-eq v0, v1, :cond_1

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    aget v0, v0, v3

    sput v0, Lcom/lsec/core/ipc/module/main/Sound;->mFieldX:I

    .line 133
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    aget v0, v0, v4

    sput v0, Lcom/lsec/core/ipc/module/main/Sound;->mFieldY:I

    .line 134
    sget-object v0, Lcom/lsec/core/ipc/module/main/Sound;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget v1, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->flts:[F

    iget-object v4, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :pswitch_5
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Sound$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Sound;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
