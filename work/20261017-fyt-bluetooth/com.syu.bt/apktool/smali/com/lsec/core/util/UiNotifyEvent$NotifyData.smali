.class Lcom/lsec/core/util/UiNotifyEvent$NotifyData;
.super Ljava/lang/Object;
.source "UiNotifyEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/util/UiNotifyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyData"
.end annotation


# instance fields
.field public flts:[F

.field public ints:[I

.field public strs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lsec/core/util/UiNotifyEvent;

.field public updateCode:I


# direct methods
.method public constructor <init>(Lcom/lsec/core/util/UiNotifyEvent;I[I[F[Ljava/lang/String;)V
    .locals 0
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lsec/core/util/UiNotifyEvent$NotifyData;->this$0:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p2, p0, Lcom/lsec/core/util/UiNotifyEvent$NotifyData;->updateCode:I

    .line 27
    iput-object p3, p0, Lcom/lsec/core/util/UiNotifyEvent$NotifyData;->ints:[I

    .line 28
    iput-object p4, p0, Lcom/lsec/core/util/UiNotifyEvent$NotifyData;->flts:[F

    .line 29
    iput-object p5, p0, Lcom/lsec/core/util/UiNotifyEvent$NotifyData;->strs:[Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lsec/core/util/UiNotifyEvent$NotifyData;->this$0:Lcom/lsec/core/util/UiNotifyEvent;

    iget-object v0, v0, Lcom/lsec/core/util/UiNotifyEvent;->uiNotify:Lcom/lsec/core/util/IUiNotify;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/lsec/core/util/UiNotifyEvent$NotifyData;->this$0:Lcom/lsec/core/util/UiNotifyEvent;

    iget-object v0, v0, Lcom/lsec/core/util/UiNotifyEvent;->uiNotify:Lcom/lsec/core/util/IUiNotify;

    iget v1, p0, Lcom/lsec/core/util/UiNotifyEvent$NotifyData;->updateCode:I

    iget-object v2, p0, Lcom/lsec/core/util/UiNotifyEvent$NotifyData;->ints:[I

    iget-object v3, p0, Lcom/lsec/core/util/UiNotifyEvent$NotifyData;->flts:[F

    iget-object v4, p0, Lcom/lsec/core/util/UiNotifyEvent$NotifyData;->strs:[Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lsec/core/util/IUiNotify;->onNotify(I[I[F[Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method
