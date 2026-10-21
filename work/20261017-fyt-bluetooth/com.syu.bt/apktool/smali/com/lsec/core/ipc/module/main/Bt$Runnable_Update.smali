.class Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;
.super Ljava/lang/Object;
.source "Bt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc/module/main/Bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Runnable_Update"
.end annotation


# instance fields
.field public flts:[F

.field public ints:[I

.field public strs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lsec/core/ipc/module/main/Bt;

.field public updateCode:I


# direct methods
.method public constructor <init>(Lcom/lsec/core/ipc/module/main/Bt;I[I[F[Ljava/lang/String;)V
    .locals 0
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->this$0:Lcom/lsec/core/ipc/module/main/Bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput p2, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    .line 205
    iput-object p3, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->ints:[I

    .line 206
    iput-object p4, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->flts:[F

    .line 207
    iput-object p5, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->strs:[Ljava/lang/String;

    .line 208
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 212
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 213
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    packed-switch v0, :pswitch_data_0

    .line 258
    :pswitch_0
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->ints:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->ints:[I

    aget v0, v0, v3

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    iget v2, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    aget v1, v1, v2

    if-eq v0, v1, :cond_1

    .line 260
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 261
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    iget v1, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    aget v0, v0, v1

    sput v0, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    .line 263
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    iget v1, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->ints:[I

    aget v2, v2, v3

    aput v2, v0, v1

    .line 267
    :cond_1
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget v1, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->ints:[I

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->flts:[F

    iget-object v4, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 271
    :cond_2
    :goto_0
    :pswitch_1
    return-void

    .line 215
    :pswitch_2
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Bt;->id3Title(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :pswitch_3
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Bt;->id3Artist(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :pswitch_4
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Bt;->id3Album(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :pswitch_5
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Bt;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :pswitch_6
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Bt;->phoneNumber(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :pswitch_7
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Bt;->phoneName(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :pswitch_8
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Bt;->devName(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :pswitch_9
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Bt;->devPin(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :pswitch_a
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Bt;->localAddr(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :pswitch_b
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Bt;->phoneAddr(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :pswitch_c
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->strs:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget v1, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->ints:[I

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->flts:[F

    iget-object v4, p0, Lcom/lsec/core/ipc/module/main/Bt$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
