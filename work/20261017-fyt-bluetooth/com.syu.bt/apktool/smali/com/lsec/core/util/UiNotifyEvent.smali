.class public Lcom/lsec/core/util/UiNotifyEvent;
.super Ljava/lang/Object;
.source "UiNotifyEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/util/UiNotifyEvent$NotifyData;
    }
.end annotation


# static fields
.field public static HANDLER_UI:Landroid/os/Handler;


# instance fields
.field public uiNotify:Lcom/lsec/core/util/IUiNotify;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/lsec/core/util/UiNotifyEvent;->HANDLER_UI:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/util/UiNotifyEvent;->uiNotify:Lcom/lsec/core/util/IUiNotify;

    .line 6
    return-void
.end method


# virtual methods
.method public updateNotify(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 12
    new-instance v0, Lcom/lsec/core/util/UiNotifyEvent$NotifyData;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lsec/core/util/UiNotifyEvent$NotifyData;-><init>(Lcom/lsec/core/util/UiNotifyEvent;I[I[F[Ljava/lang/String;)V

    .line 13
    .local v0, "notifyData":Lcom/lsec/core/util/UiNotifyEvent$NotifyData;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/lsec/core/util/UiNotifyEvent$NotifyData;->run()V

    .line 17
    :goto_0
    return-void

    .line 16
    :cond_0
    sget-object v1, Lcom/lsec/core/util/UiNotifyEvent;->HANDLER_UI:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
