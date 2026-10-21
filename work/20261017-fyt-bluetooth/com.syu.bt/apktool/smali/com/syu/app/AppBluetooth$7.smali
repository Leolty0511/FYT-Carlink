.class Lcom/syu/app/AppBluetooth$7;
.super Ljava/lang/Object;
.source "AppBluetooth.java"

# interfaces
.implements Lcom/lsec/core/util/IUiNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/app/AppBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/app/AppBluetooth;


# direct methods
.method constructor <init>(Lcom/syu/app/AppBluetooth;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/AppBluetooth$7;->this$0:Lcom/syu/app/AppBluetooth;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 320
    sget-object v1, Lcom/syu/app/AppBluetooth;->mListUiNotify_Sys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 322
    return-void

    .line 320
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/util/IUiNotify;

    .line 321
    .local v0, "uiNotify":Lcom/lsec/core/util/IUiNotify;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lsec/core/util/IUiNotify;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method
