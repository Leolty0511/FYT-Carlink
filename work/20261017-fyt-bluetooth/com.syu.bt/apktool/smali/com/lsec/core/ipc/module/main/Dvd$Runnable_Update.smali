.class Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;
.super Ljava/lang/Object;
.source "Dvd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc/module/main/Dvd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Runnable_Update"
.end annotation


# instance fields
.field public flts:[F

.field public ints:[I

.field public strs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lsec/core/ipc/module/main/Dvd;

.field public updateCode:I


# direct methods
.method public constructor <init>(Lcom/lsec/core/ipc/module/main/Dvd;I[I[F[Ljava/lang/String;)V
    .locals 0
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->this$0:Lcom/lsec/core/ipc/module/main/Dvd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput p2, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->updateCode:I

    .line 644
    iput-object p3, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->ints:[I

    .line 645
    iput-object p4, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->flts:[F

    .line 646
    iput-object p5, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->strs:[Ljava/lang/String;

    .line 647
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 651
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->updateCode:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->updateCode:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 652
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->updateCode:I

    packed-switch v0, :pswitch_data_0

    .line 719
    :pswitch_0
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->ints:[I

    invoke-static {v0, v2}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->DATA:[I

    iget v1, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->ints:[I

    aget v2, v2, v3

    aput v2, v0, v1

    .line 722
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget v1, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->ints:[I

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->flts:[F

    iget-object v4, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 726
    :cond_1
    :goto_0
    return-void

    .line 654
    :pswitch_1
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Dvd;->trackTitle(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :pswitch_2
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Dvd;->id3Title(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :pswitch_3
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Dvd;->id3Artist(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 663
    :pswitch_4
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Dvd;->id3Album(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :pswitch_5
    sget-boolean v0, Lcom/lsec/core/ipc/module/main/Dvd;->sLockPlayTime:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->LOCK_PLAY_TIME:Lcom/lsec/core/util/TimeLock;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/TimeLock;->unlock(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Dvd;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 673
    :pswitch_6
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Dvd;->OsdInfo(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 676
    :pswitch_7
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Dvd;->UpdateRandom(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :pswitch_8
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Dvd;->touchState(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 704
    :pswitch_9
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Dvd;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 707
    :pswitch_a
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Dvd;->deviceOnDvd(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 710
    :pswitch_b
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->ints:[I

    invoke-static {v0, v2}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->ints:[I

    aget v0, v0, v3

    sput v0, Lcom/lsec/core/ipc/module/main/Dvd;->sDvdModule:I

    .line 712
    iget-object v0, p0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;->ints:[I

    aget v0, v0, v3

    if-ne v0, v2, :cond_2

    .line 713
    sput-boolean v2, Lcom/lsec/core/ipc/module/main/Dvd;->isShowOsdInfo:Z

    goto/16 :goto_0

    .line 715
    :cond_2
    sput-boolean v3, Lcom/lsec/core/ipc/module/main/Dvd;->isShowOsdInfo:Z

    goto/16 :goto_0

    .line 652
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
