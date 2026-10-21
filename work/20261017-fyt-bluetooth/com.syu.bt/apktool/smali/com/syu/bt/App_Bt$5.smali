.class Lcom/syu/bt/App_Bt$5;
.super Ljava/lang/Object;
.source "App_Bt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/App_Bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/App_Bt;


# direct methods
.method constructor <init>(Lcom/syu/bt/App_Bt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/App_Bt$5;->this$0:Lcom/syu/bt/App_Bt;

    .line 1253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1257
    iget-object v4, p0, Lcom/syu/bt/App_Bt$5;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v4, v4, Lcom/syu/bt/App_Bt;->bPopBtBook:Z

    if-nez v4, :cond_0

    .line 1258
    iget-object v4, p0, Lcom/syu/bt/App_Bt$5;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/4 v5, 0x5

    invoke-virtual {v4, v6, v5}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 1259
    .local v3, "pageBook":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v3, :cond_0

    .line 1260
    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->resume()V

    .line 1262
    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 1264
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1265
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x28

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1266
    const/16 v4, 0x7d2

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1267
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1268
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1269
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1271
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getPadding()[I

    move-result-object v2

    .line 1272
    .local v2, "padding":[I
    if-eqz v2, :cond_1

    array-length v4, v2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 1273
    aget v4, v2, v7

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1274
    aget v4, v2, v6

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1280
    :goto_0
    const/16 v4, 0x53

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1282
    iget-object v4, p0, Lcom/syu/bt/App_Bt$5;->this$0:Lcom/syu/bt/App_Bt;

    iput-boolean v6, v4, Lcom/syu/bt/App_Bt;->bPopBtBook:Z

    .line 1283
    sget-object v4, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1286
    .end local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v1    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "padding":[I
    .end local v3    # "pageBook":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_0
    return-void

    .line 1276
    .restart local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v1    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v2    # "padding":[I
    .restart local v3    # "pageBook":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_1
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1277
    const/16 v4, 0x118

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method
