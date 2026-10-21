.class public Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;
.super Ljava/lang/Object;
.source "Runnable_getNameByNumberPopBtBook.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field bForceDefault:Z

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mStrNameDefault:Ljava/lang/String;

.field mStrNumber:Ljava/lang/String;

.field mTxt:Lcom/lsec/core/frame/ctrl/JText;

.field mTxt2:Lcom/lsec/core/frame/ctrl/JText;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "txt"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p3, "txt2"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p4, "strNumber"    # Ljava/lang/String;
    .param p5, "strNameDefault"    # Ljava/lang/String;
    .param p6, "bDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/lsec/core/frame/ctrl/JText;",
            "Lcom/lsec/core/frame/ctrl/JText;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mStrNameDefault:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mStrNumber:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mList:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    .line 32
    iput-object p3, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    .line 33
    iput-object p4, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mStrNumber:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mStrNameDefault:Ljava/lang/String;

    .line 35
    iput-boolean p6, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->bForceDefault:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "txt"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p3, "strNumber"    # Ljava/lang/String;
    .param p4, "strNameDefault"    # Ljava/lang/String;
    .param p5, "bDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/lsec/core/frame/ctrl/JText;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mStrNameDefault:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mStrNumber:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mList:Ljava/util/List;

    .line 23
    iput-object p2, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    .line 24
    iput-object p3, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mStrNumber:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mStrNameDefault:Ljava/lang/String;

    .line 26
    iput-boolean p5, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->bForceDefault:Z

    .line 27
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 40
    iget-object v0, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mStrNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "strName":Ljava/lang/String;
    const-string v0, "pop333"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 03 Runnable_getNameByNumberPopBtBook strName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Lcom/syu/bt/runnable/Runnable_UpdateText;

    iget-object v1, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v2, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mStrNameDefault:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->bForceDefault:Z

    invoke-direct/range {v0 .. v6}, Lcom/syu/bt/runnable/Runnable_UpdateText;-><init>(Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v7, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 48
    .end local v4    # "strName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 46
    .restart local v4    # "strName":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/syu/bt/runnable/Runnable_UpdateText;

    iget-object v1, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v2, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->mStrNameDefault:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;->bForceDefault:Z

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/syu/bt/runnable/Runnable_UpdateText;-><init>(Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v7, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto :goto_0
.end method
