.class public Lcom/syu/bt/runnable/Runnable_ContactDown;
.super Ljava/lang/Object;
.source "Runnable_ContactDown.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field map:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/syu/bt/runnable/Runnable_ContactDown;->map:Landroid/util/SparseArray;

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 18
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_1

    .line 19
    sget v0, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v0, :cond_0

    .line 20
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContactDownload:Ljava/util/List;

    iget-object v1, p0, Lcom/syu/bt/runnable/Runnable_ContactDown;->map:Landroid/util/SparseArray;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :goto_0
    return-void

    .line 22
    :cond_0
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContactDownload2:Ljava/util/List;

    iget-object v1, p0, Lcom/syu/bt/runnable/Runnable_ContactDown;->map:Landroid/util/SparseArray;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContactDownload:Ljava/util/List;

    iget-object v1, p0, Lcom/syu/bt/runnable/Runnable_ContactDown;->map:Landroid/util/SparseArray;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
