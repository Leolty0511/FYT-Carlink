.class Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;
.super Ljava/lang/Object;
.source "Tv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc/module/main/Tv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Runnable_Update"
.end annotation


# instance fields
.field public flts:[F

.field public ints:[I

.field public strs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lsec/core/ipc/module/main/Tv;

.field public updateCode:I


# direct methods
.method public constructor <init>(Lcom/lsec/core/ipc/module/main/Tv;I[I[F[Ljava/lang/String;)V
    .locals 0
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->this$0:Lcom/lsec/core/ipc/module/main/Tv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p2, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->updateCode:I

    .line 109
    iput-object p3, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->ints:[I

    .line 110
    iput-object p4, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->flts:[F

    .line 111
    iput-object p5, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->strs:[Ljava/lang/String;

    .line 112
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 116
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->updateCode:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->updateCode:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 117
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->updateCode:I

    packed-switch v0, :pswitch_data_0

    .line 130
    sget-object v0, Lcom/lsec/core/ipc/module/main/Tv;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    iget v1, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->ints:[I

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->flts:[F

    iget-object v4, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Tv;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Tv;->channelCnt(I[I[F[Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Tv;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
