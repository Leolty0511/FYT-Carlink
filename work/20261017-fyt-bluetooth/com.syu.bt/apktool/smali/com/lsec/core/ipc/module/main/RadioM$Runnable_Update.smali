.class Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;
.super Ljava/lang/Object;
.source "RadioM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc/module/main/RadioM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Runnable_Update"
.end annotation


# instance fields
.field public flts:[F

.field public ints:[I

.field public strs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lsec/core/ipc/module/main/RadioM;

.field public updateCode:I


# direct methods
.method public constructor <init>(Lcom/lsec/core/ipc/module/main/RadioM;I[I[F[Ljava/lang/String;)V
    .locals 0
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->this$0:Lcom/lsec/core/ipc/module/main/RadioM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput p2, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->updateCode:I

    .line 215
    iput-object p3, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->ints:[I

    .line 216
    iput-object p4, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->flts:[F

    .line 217
    iput-object p5, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->strs:[Ljava/lang/String;

    .line 218
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 222
    iget v0, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->updateCode:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->updateCode:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 223
    iget v0, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->updateCode:I

    packed-switch v0, :pswitch_data_0

    .line 259
    :pswitch_0
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->ints:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->DATA:[I

    iget v1, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->ints:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v0, v1

    .line 262
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/RadioM;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget v1, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->ints:[I

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->flts:[F

    iget-object v4, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 266
    :cond_1
    :goto_0
    return-void

    .line 241
    :pswitch_1
    iget v0, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/RadioM;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :pswitch_2
    iget v0, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/RadioM;->extraFreqInfo(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :pswitch_3
    iget v0, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/RadioM;->channelFreq(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :pswitch_4
    iget v0, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/RadioM;->channelText(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :pswitch_5
    iget v0, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/RadioM;->psText(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :pswitch_6
    iget v0, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/RadioM$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/RadioM;->rdsText(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
