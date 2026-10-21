.class public Lcom/syu/bt/runnable/Runnable_getNameByNumber;
.super Ljava/lang/Object;
.source "Runnable_getNameByNumber.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field bForceDefault:Z

.field id_run:I

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

.field mTxt:Lcom/lsec/core/frame/ctrl/JText;

.field mTxt2:Lcom/lsec/core/frame/ctrl/JText;

.field mTxt3:Lcom/lsec/core/frame/ctrl/JText;

.field mTxt4:Lcom/lsec/core/frame/ctrl/JText;

.field mTxt5:Lcom/lsec/core/frame/ctrl/JText;

.field mTxt6:Lcom/lsec/core/frame/ctrl/JText;

.field mView:Lcom/lsec/core/frame/ctrl/JView;

.field mView2:Lcom/lsec/core/frame/ctrl/JView;

.field strDefault:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "txt"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p3, "txt2"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p4, "txt3"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p5, "txt4"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p6, "txt5"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p7, "txt6"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p8, "str"    # Ljava/lang/String;
    .param p9, "bDefault"    # Z
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
            "Lcom/lsec/core/frame/ctrl/JText;",
            "Lcom/lsec/core/frame/ctrl/JText;",
            "Lcom/lsec/core/frame/ctrl/JText;",
            "Lcom/lsec/core/frame/ctrl/JText;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->strDefault:Ljava/lang/String;

    .line 23
    const/16 v0, 0xff

    iput v0, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->id_run:I

    .line 43
    iput-object p1, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mList:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    .line 45
    iput-object p3, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    .line 46
    iput-object p4, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt3:Lcom/lsec/core/frame/ctrl/JText;

    .line 47
    iput-object p5, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt4:Lcom/lsec/core/frame/ctrl/JText;

    .line 48
    iput-object p6, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt5:Lcom/lsec/core/frame/ctrl/JText;

    .line 49
    iput-object p7, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt6:Lcom/lsec/core/frame/ctrl/JText;

    .line 50
    iput-object p8, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->strDefault:Ljava/lang/String;

    .line 51
    iput-boolean p9, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->bForceDefault:Z

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->id_run:I

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JView;Lcom/lsec/core/frame/ctrl/JView;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "txt"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p3, "txt2"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p4, "txt3"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p5, "view"    # Lcom/lsec/core/frame/ctrl/JView;
    .param p6, "view2"    # Lcom/lsec/core/frame/ctrl/JView;
    .param p7, "str"    # Ljava/lang/String;
    .param p8, "bDefault"    # Z
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
            "Lcom/lsec/core/frame/ctrl/JText;",
            "Lcom/lsec/core/frame/ctrl/JView;",
            "Lcom/lsec/core/frame/ctrl/JView;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->strDefault:Ljava/lang/String;

    .line 23
    const/16 v0, 0xff

    iput v0, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->id_run:I

    .line 55
    iput-object p1, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mList:Ljava/util/List;

    .line 56
    iput-object p2, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    .line 57
    iput-object p3, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    .line 58
    iput-object p4, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt3:Lcom/lsec/core/frame/ctrl/JText;

    .line 59
    iput-object p5, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mView:Lcom/lsec/core/frame/ctrl/JView;

    .line 60
    iput-object p6, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mView2:Lcom/lsec/core/frame/ctrl/JView;

    .line 61
    iput-object p7, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->strDefault:Ljava/lang/String;

    .line 62
    iput-boolean p8, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->bForceDefault:Z

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->id_run:I

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "txt"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p3, "txt2"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p4, "txt3"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p5, "str"    # Ljava/lang/String;
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
            "Lcom/lsec/core/frame/ctrl/JText;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->strDefault:Ljava/lang/String;

    .line 23
    const/16 v0, 0xff

    iput v0, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->id_run:I

    .line 34
    iput-object p1, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mList:Ljava/util/List;

    .line 35
    iput-object p2, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    .line 36
    iput-object p3, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    .line 37
    iput-object p4, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt3:Lcom/lsec/core/frame/ctrl/JText;

    .line 38
    iput-object p5, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->strDefault:Ljava/lang/String;

    .line 39
    iput-boolean p6, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->bForceDefault:Z

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->id_run:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "txt"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p3, "str"    # Ljava/lang/String;
    .param p4, "bDefault"    # Z
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
            "Z)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->strDefault:Ljava/lang/String;

    .line 23
    const/16 v0, 0xff

    iput v0, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->id_run:I

    .line 26
    iput-object p1, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mList:Ljava/util/List;

    .line 27
    iput-object p2, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    .line 28
    iput-object p3, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->strDefault:Ljava/lang/String;

    .line 29
    iput-boolean p4, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->bForceDefault:Z

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->id_run:I

    .line 31
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 68
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt3:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_2

    .line 69
    :cond_0
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mList:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "strName":Ljava/lang/String;
    const-string v1, "pop333"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 03 Runnable_getNameByNumber strName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id_run = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->id_run:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mView:Lcom/lsec/core/frame/ctrl/JView;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mView2:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v1, :cond_3

    .line 76
    :cond_1
    const/4 v10, 0x0

    new-instance v1, Lcom/syu/bt/runnable/Runnable_UpdateText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt3:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mView:Lcom/lsec/core/frame/ctrl/JView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mView2:Lcom/lsec/core/frame/ctrl/JView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->strDefault:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->bForceDefault:Z

    invoke-direct/range {v1 .. v9}, Lcom/syu/bt/runnable/Runnable_UpdateText;-><init>(Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JView;Lcom/lsec/core/frame/ctrl/JView;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v10, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 86
    .end local v7    # "strName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 78
    .restart local v7    # "strName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt4:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt5:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt6:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_4

    .line 79
    const/4 v1, 0x0

    new-instance v8, Lcom/syu/bt/runnable/Runnable_UpdateText;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt3:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt4:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt5:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt6:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->strDefault:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->bForceDefault:Z

    move/from16 v17, v0

    move-object v15, v7

    invoke-direct/range {v8 .. v17}, Lcom/syu/bt/runnable/Runnable_UpdateText;-><init>(Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1, v8}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 83
    :cond_4
    const/4 v1, 0x0

    new-instance v3, Lcom/syu/bt/runnable/Runnable_UpdateText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->mTxt3:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->strDefault:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/syu/bt/runnable/Runnable_getNameByNumber;->bForceDefault:Z

    invoke-direct/range {v3 .. v9}, Lcom/syu/bt/runnable/Runnable_UpdateText;-><init>(Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto :goto_0
.end method
