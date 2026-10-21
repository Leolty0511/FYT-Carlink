.class Lcom/lsec/core/ipc/module/main/Gsensor$Runnable_Update;
.super Ljava/lang/Object;
.source "Gsensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc/module/main/Gsensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Runnable_Update"
.end annotation


# instance fields
.field public flts:[F

.field public ints:[I

.field public strs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lsec/core/ipc/module/main/Gsensor;

.field public updateCode:I


# direct methods
.method public constructor <init>(Lcom/lsec/core/ipc/module/main/Gsensor;I[I[F[Ljava/lang/String;)V
    .locals 0
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lsec/core/ipc/module/main/Gsensor$Runnable_Update;->this$0:Lcom/lsec/core/ipc/module/main/Gsensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p2, p0, Lcom/lsec/core/ipc/module/main/Gsensor$Runnable_Update;->updateCode:I

    .line 83
    iput-object p3, p0, Lcom/lsec/core/ipc/module/main/Gsensor$Runnable_Update;->ints:[I

    .line 84
    iput-object p4, p0, Lcom/lsec/core/ipc/module/main/Gsensor$Runnable_Update;->flts:[F

    .line 85
    iput-object p5, p0, Lcom/lsec/core/ipc/module/main/Gsensor$Runnable_Update;->strs:[Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 90
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Gsensor$Runnable_Update;->updateCode:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/lsec/core/ipc/module/main/Gsensor$Runnable_Update;->updateCode:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 91
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Gsensor$Runnable_Update;->updateCode:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 104
    :pswitch_1
    iget v0, p0, Lcom/lsec/core/ipc/module/main/Gsensor$Runnable_Update;->updateCode:I

    iget-object v1, p0, Lcom/lsec/core/ipc/module/main/Gsensor$Runnable_Update;->ints:[I

    iget-object v2, p0, Lcom/lsec/core/ipc/module/main/Gsensor$Runnable_Update;->flts:[F

    iget-object v3, p0, Lcom/lsec/core/ipc/module/main/Gsensor$Runnable_Update;->strs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Gsensor;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
