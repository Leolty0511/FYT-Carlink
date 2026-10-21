.class Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc/module/main/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Runnable_Update"
.end annotation


# instance fields
.field public flts:[F

.field public ints:[I

.field public strs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lsec/core/ipc/module/main/Main;

.field public updateCode:I


# direct methods
.method public constructor <init>(Lcom/lsec/core/ipc/module/main/Main;I[I[F[Ljava/lang/String;)V
    .locals 0
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->this$0:Lcom/lsec/core/ipc/module/main/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput p2, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    .line 333
    iput-object p3, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    .line 334
    iput-object p4, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->flts:[F

    .line 335
    iput-object p5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->strs:[Ljava/lang/String;

    .line 336
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 340
    iget v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    const/16 v6, 0x100

    if-ge v5, v6, :cond_2

    .line 341
    iget v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    packed-switch v5, :pswitch_data_0

    .line 372
    :cond_0
    iget v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    sparse-switch v5, :sswitch_data_0

    .line 509
    iget-object v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    invoke-static {v5, v7}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 510
    sget-object v5, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    iget v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    iget-object v7, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    aget v7, v7, v8

    aput v7, v5, v6

    .line 512
    :cond_1
    sget-object v5, Lcom/lsec/core/ipc/module/main/Main;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    iget-object v7, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    iget-object v8, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->flts:[F

    iget-object v9, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 516
    :cond_2
    :goto_0
    return-void

    .line 344
    :pswitch_0
    iget-object v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    invoke-static {v5, v9}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 345
    sget-object v5, Lcom/lsec/core/ipc/Conn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    if-eqz v5, :cond_0

    .line 346
    sget-object v5, Lcom/lsec/core/ipc/Conn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    iget-object v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    aget v6, v6, v7

    invoke-interface {v5, v6}, Lcom/lsec/core/util/InterfaceApp;->isFixVideoId(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 353
    :pswitch_1
    iget-object v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    invoke-static {v5, v10}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 354
    iget-object v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    array-length v2, v5

    .line 355
    .local v2, "iLen":I
    const/4 v0, 0x0

    .line 356
    .local v0, "bIsFixCamera":Z
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_3

    .line 365
    :goto_2
    if-nez v0, :cond_0

    goto :goto_0

    .line 357
    :cond_3
    sget-object v5, Lcom/lsec/core/ipc/Conn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    if-eqz v5, :cond_4

    .line 358
    sget-object v5, Lcom/lsec/core/ipc/Conn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    iget-object v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    aget v6, v6, v1

    invoke-interface {v5, v6}, Lcom/lsec/core/util/InterfaceApp;->isFixVideoId(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 359
    const/4 v0, 0x1

    .line 360
    goto :goto_2

    .line 356
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    .end local v0    # "bIsFixCamera":Z
    .end local v1    # "i":I
    .end local v2    # "iLen":I
    :sswitch_0
    iget-object v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    invoke-static {v5, v7}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 390
    sget-boolean v5, Lcom/lsec/core/ipc/module/main/Main;->bIsHiworldObdEnable:Z

    if-nez v5, :cond_2

    .line 393
    iget v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    iget-object v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    iget-object v7, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->flts:[F

    iget-object v8, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lcom/lsec/core/ipc/module/main/Main;->updateRadar(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :sswitch_1
    sget-boolean v5, Lcom/lsec/core/ipc/module/main/Main;->bIsHiworldObdEnable:Z

    if-nez v5, :cond_2

    .line 400
    iget v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    iget-object v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    iget-object v7, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->flts:[F

    iget-object v8, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lcom/lsec/core/ipc/module/main/Main;->updateSteerAngle(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :sswitch_2
    iget v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    iget-object v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    iget-object v7, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->flts:[F

    iget-object v8, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lcom/lsec/core/ipc/module/main/Main;->updateNaviName(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :sswitch_3
    iget v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    iget-object v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    iget-object v7, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->flts:[F

    iget-object v8, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lcom/lsec/core/ipc/module/main/Main;->updateMcuSerial(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :sswitch_4
    iget v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    iget-object v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    iget-object v7, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->flts:[F

    iget-object v8, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lcom/lsec/core/ipc/module/main/Main;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 443
    :sswitch_5
    iget-object v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    invoke-static {v5, v7}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 444
    iget-object v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_1

    .line 458
    iget v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    iget-object v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    iget-object v7, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->flts:[F

    iget-object v8, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lcom/lsec/core/ipc/module/main/Main;->updateDirect(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 446
    :pswitch_2
    iget v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    iget-object v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    iget-object v7, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->flts:[F

    iget-object v8, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lcom/lsec/core/ipc/module/main/Main;->updateDirect(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 449
    :pswitch_3
    iget-object v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->strs:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 450
    sget-object v5, Lcom/lsec/core/ipc/module/main/Main;->sArrayDebugBackCar:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    .line 451
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/lsec/core/ipc/module/main/Main;->sArrayDebugBackCar:Ljava/util/ArrayList;

    .line 453
    :cond_5
    sget-object v5, Lcom/lsec/core/ipc/module/main/Main;->sArrayDebugBackCar:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->strs:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    iget v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    iget-object v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    iget-object v7, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->flts:[F

    iget-object v8, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lcom/lsec/core/ipc/module/main/Main;->updateDirect(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 464
    :sswitch_6
    const/4 v3, 0x1

    .line 465
    .local v3, "isSelf":Z
    iget-object v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    invoke-static {v5, v10}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 466
    const/4 v4, 0x2

    .local v4, "start":I
    :goto_3
    iget-object v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    array-length v5, v5

    if-lt v4, v5, :cond_8

    .line 473
    :cond_6
    if-eqz v3, :cond_2

    .line 476
    .end local v4    # "start":I
    :cond_7
    iget-object v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    invoke-static {v5, v9}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 477
    iget-object v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_2

    .line 485
    :goto_4
    sget-object v5, Lcom/lsec/core/ipc/module/main/Main;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    iget-object v7, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    iget-object v8, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->flts:[F

    iget-object v9, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 467
    .restart local v4    # "start":I
    :cond_8
    sget-object v5, Lcom/lsec/core/ipc/Conn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    if-eqz v5, :cond_9

    .line 468
    sget-object v5, Lcom/lsec/core/ipc/Conn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    iget-object v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    aget v6, v6, v4

    invoke-interface {v5, v6}, Lcom/lsec/core/util/InterfaceApp;->isFixVideoId(I)Z

    move-result v3

    .line 469
    if-nez v3, :cond_6

    .line 466
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 479
    .end local v4    # "start":I
    :pswitch_4
    const/4 v5, -0x1

    sput v5, Lcom/lsec/core/ipc/module/main/Main;->mVideoChannelCurrent:I

    goto :goto_4

    .line 482
    :pswitch_5
    iget-object v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    aget v5, v5, v8

    sput v5, Lcom/lsec/core/ipc/module/main/Main;->mVideoChannelCurrent:I

    goto :goto_4

    .line 491
    .end local v3    # "isSelf":Z
    :sswitch_7
    iget-object v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    invoke-static {v5, v9}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 492
    sget-object v5, Lcom/lsec/core/ipc/Conn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    if-eqz v5, :cond_a

    .line 493
    sget-object v5, Lcom/lsec/core/ipc/Conn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    iget-object v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    aget v6, v6, v7

    invoke-interface {v5, v6}, Lcom/lsec/core/util/InterfaceApp;->isFixVideoId(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 495
    sget-object v5, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    iget v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    iget-object v7, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    aget v7, v7, v8

    aput v7, v5, v6

    .line 500
    :cond_a
    :goto_5
    sget-object v5, Lcom/lsec/core/ipc/module/main/Main;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    iget-object v7, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    iget-object v8, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->flts:[F

    iget-object v9, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 497
    :cond_b
    iget-object v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    invoke-static {v5, v7}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 498
    sget-object v5, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    iget v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    iget-object v7, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    aget v7, v7, v8

    aput v7, v5, v6

    goto :goto_5

    .line 505
    :sswitch_8
    iget-object v5, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    sput-object v5, Lcom/lsec/core/ipc/module/main/Main;->mcuError:[I

    .line 506
    sget-object v5, Lcom/lsec/core/ipc/module/main/Main;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget v6, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->updateCode:I

    iget-object v7, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->ints:[I

    iget-object v8, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->flts:[F

    iget-object v9, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 372
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x5 -> :sswitch_4
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_4
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_4
        0x17 -> :sswitch_4
        0x18 -> :sswitch_4
        0x19 -> :sswitch_4
        0x1a -> :sswitch_4
        0x1b -> :sswitch_4
        0x1c -> :sswitch_2
        0x1e -> :sswitch_4
        0x23 -> :sswitch_3
        0x24 -> :sswitch_4
        0x26 -> :sswitch_4
        0x29 -> :sswitch_1
        0x2d -> :sswitch_5
        0x2e -> :sswitch_8
        0x32 -> :sswitch_4
        0x41 -> :sswitch_4
        0x44 -> :sswitch_6
        0x45 -> :sswitch_7
        0x46 -> :sswitch_7
        0x51 -> :sswitch_4
        0x53 -> :sswitch_4
        0x58 -> :sswitch_4
        0x59 -> :sswitch_4
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x61 -> :sswitch_0
        0x63 -> :sswitch_4
        0x64 -> :sswitch_4
        0x86 -> :sswitch_4
        0x89 -> :sswitch_4
        0x8b -> :sswitch_4
    .end sparse-switch

    .line 444
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 477
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
