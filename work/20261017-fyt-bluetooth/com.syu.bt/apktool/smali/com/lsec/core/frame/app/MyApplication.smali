.class public Lcom/lsec/core/frame/app/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"

# interfaces
.implements Lcom/lsec/core/util/InterfaceApp;


# static fields
.field public static bIS240:Z

.field public static mActivityManager:Landroid/app/ActivityManager;

.field public static mActs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/frame/app/MyActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static mAssetManager:Landroid/content/res/AssetManager;

.field public static mAudioManager:Landroid/media/AudioManager;

.field public static mContentResolver:Landroid/content/ContentResolver;

.field public static mIdChip:I

.field public static mIdCustomer:I

.field public static mIdPlatForm:I

.field public static mIsOldService:Z

.field public static mListConnectedMain:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/util/IConnectedMain;",
            ">;"
        }
    .end annotation
.end field

.field public static mListUiNotify_Amp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/util/IUiNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static mListUiNotify_Bt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/util/IUiNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static mListUiNotify_Bt_786:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/util/IUiNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static mListUiNotify_Canbox:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/util/IUiNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static mListUiNotify_Canbus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/util/IUiNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static mListUiNotify_Dvd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/util/IUiNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static mListUiNotify_Dvr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/util/IUiNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static mListUiNotify_Gsensor:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/util/IUiNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static mListUiNotify_Ipod:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/util/IUiNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static mListUiNotify_Location:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/util/IUiNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static mListUiNotify_Main:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/util/IUiNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static mListUiNotify_Main_786:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/util/IUiNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static mListUiNotify_Radio:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/util/IUiNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static mListUiNotify_Sound:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/util/IUiNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static mListUiNotify_Steer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/util/IUiNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static mListUiNotify_Sys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/util/IUiNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static mListUiNotify_Tv:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/util/IUiNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static mStrApkID:Ljava/lang/String;

.field public static mStrFolderAsset:Ljava/lang/String;

.field public static mStrZipFile:Ljava/lang/String;

.field public static mStrZipTag:Ljava/lang/String;

.field public static mWindowManager:Landroid/view/WindowManager;

.field public static myApp:Lcom/lsec/core/frame/app/MyApplication;

.field public static sPage_Current:I

.field public static sPage_WillBe:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    sput v1, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 49
    sput v1, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    .line 56
    const/4 v0, 0x2

    sput v0, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    .line 57
    const/4 v0, 0x4

    sput v0, Lcom/lsec/core/frame/app/MyApplication;->mIdPlatForm:I

    .line 58
    const/4 v0, 0x3

    sput v0, Lcom/lsec/core/frame/app/MyApplication;->mIdChip:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mActs:Ljava/util/ArrayList;

    .line 67
    sput-boolean v1, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    .line 68
    sput-boolean v1, Lcom/lsec/core/frame/app/MyApplication;->bIS240:Z

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Bt_786:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Main_786:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Bt:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Main:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Sound:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Sys:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Radio:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Location:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Amp:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Dvr:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Dvd:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Ipod:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Tv:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Canbus:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Canbox:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Gsensor:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListUiNotify_Steer:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/MyApplication;->mListConnectedMain:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 90
    sput-object p0, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    .line 91
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    sput-object v0, Lcom/lsec/core/util/LogScreen;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method public static DeepCopy_FolderList(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lsec/core/util/MyFolder;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lsec/core/util/MyFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "listSrc":Ljava/util/List;, "Ljava/util/List<Lcom/lsec/core/util/MyFolder;>;"
    .local p1, "listDst":Ljava/util/List;, "Ljava/util/List<Lcom/lsec/core/util/MyFolder;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 369
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 370
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 377
    :cond_0
    return-void

    .line 370
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/util/MyFolder;

    .line 371
    .local v0, "folder":Lcom/lsec/core/util/MyFolder;
    new-instance v1, Lcom/lsec/core/util/MyFolder;

    invoke-direct {v1}, Lcom/lsec/core/util/MyFolder;-><init>()V

    .line 372
    .local v1, "folderNew":Lcom/lsec/core/util/MyFolder;
    iget-object v3, v0, Lcom/lsec/core/util/MyFolder;->map:Landroid/util/SparseArray;

    iput-object v3, v1, Lcom/lsec/core/util/MyFolder;->map:Landroid/util/SparseArray;

    .line 373
    iget-object v3, v1, Lcom/lsec/core/util/MyFolder;->array:Ljava/util/List;

    iget-object v4, v0, Lcom/lsec/core/util/MyFolder;->array:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 374
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static add(Lcom/lsec/core/frame/ctrl/JGridView;Landroid/util/SparseArray;)V
    .locals 0
    .param p0, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/ctrl/JGridView;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 292
    invoke-static {p0, p1}, Lcom/lsec/core/frame/app/MyApplication;->add2GridView(Lcom/lsec/core/frame/ctrl/JGridView;Landroid/util/SparseArray;)V

    .line 293
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    .line 295
    :cond_0
    return-void
.end method

.method public static add2GridView(Lcom/lsec/core/frame/ctrl/JGridView;Landroid/util/SparseArray;)V
    .locals 6
    .param p0, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/ctrl/JGridView;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "bAdd":Z
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getCount()I

    move-result v3

    .line 272
    .local v3, "iCount":I
    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getMaxRowDisp()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 273
    const/4 v2, 0x0

    .line 274
    .local v2, "i":I
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 285
    .end local v2    # "i":I
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v0    # "bAdd":Z
    .end local v3    # "iCount":I
    :cond_1
    return-void

    .line 274
    .restart local v0    # "bAdd":Z
    .restart local v2    # "i":I
    .restart local v3    # "iCount":I
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 275
    .local v1, "e":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 276
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 277
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 278
    const/4 v0, 0x1

    .line 279
    goto :goto_1

    .line 281
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static addAll(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V
    .locals 4
    .param p0, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/ctrl/JGridView;",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_1

    .line 328
    if-eqz p1, :cond_0

    .line 329
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getCount()I

    move-result v0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getMaxRowDisp()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 338
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    .line 340
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 329
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 330
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {p0, v1}, Lcom/lsec/core/frame/app/MyApplication;->add2GridView(Lcom/lsec/core/frame/ctrl/JGridView;Landroid/util/SparseArray;)V

    goto :goto_0

    .line 334
    .end local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v0    # "i":I
    :cond_3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 335
    .restart local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static clear(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 3
    .param p0, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;

    .prologue
    .line 254
    if-eqz p0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 259
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getCount()I

    move-result v0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getMaxRowDisp()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    goto :goto_0

    .line 260
    :cond_2
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 261
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static remove(Lcom/lsec/core/frame/ctrl/JGridView;I)V
    .locals 3
    .param p0, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .param p1, "position"    # I

    .prologue
    .line 239
    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 244
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getCount()I

    move-result v0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getMaxRowDisp()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 249
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    goto :goto_0

    .line 245
    :cond_2
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 246
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static removeAll(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V
    .locals 3
    .param p0, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/ctrl/JGridView;",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 317
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getCount()I

    move-result v0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getMaxRowDisp()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 322
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    .line 324
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 318
    .restart local v0    # "i":I
    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 319
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static removeThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "strApp"    # Ljava/lang/String;
    .param p1, "strThread"    # Ljava/lang/String;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/lsec/core/util/ThreadMap;->removeThreadRunnable(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 510
    return-void
.end method

.method public static resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V
    .locals 4
    .param p0, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/ctrl/JGridView;",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 300
    if-eqz p1, :cond_0

    .line 301
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getCount()I

    move-result v0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getMaxRowDisp()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 310
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    .line 312
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 301
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 302
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {p0, v1}, Lcom/lsec/core/frame/app/MyApplication;->add2GridView(Lcom/lsec/core/frame/ctrl/JGridView;Landroid/util/SparseArray;)V

    goto :goto_0

    .line 306
    .end local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v0    # "i":I
    :cond_3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 307
    .restart local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static resetList(Lcom/lsec/core/frame/ctrl/JListViewEx;Ljava/util/List;)V
    .locals 1
    .param p0, "listViewEx"    # Lcom/lsec/core/frame/ctrl/JListViewEx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/ctrl/JListViewEx;",
            "Ljava/util/List",
            "<",
            "Lcom/lsec/core/util/MyFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p1, "listGroup":Ljava/util/List;, "Ljava/util/List<Lcom/lsec/core/util/MyFolder;>;"
    if-eqz p0, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListViewEx;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 345
    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListViewEx;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListViewEx;->notifyDataSetChanged()V

    .line 350
    :cond_1
    return-void
.end method

.method public static resetList_Folder(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V
    .locals 4
    .param p0, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/ctrl/JGridView;",
            "Ljava/util/List",
            "<",
            "Lcom/lsec/core/util/MyFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "listGroup":Ljava/util/List;, "Ljava/util/List<Lcom/lsec/core/util/MyFolder;>;"
    if-eqz p0, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 355
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getListFolder()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 356
    if-eqz p1, :cond_0

    .line 357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    .line 365
    :cond_1
    return-void

    .line 357
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/util/MyFolder;

    .line 358
    .local v0, "folder":Lcom/lsec/core/util/MyFolder;
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getListFolder()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/lsec/core/util/MyFolder;->map:Landroid/util/SparseArray;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V
    .locals 2
    .param p0, "strApp"    # Ljava/lang/String;
    .param p1, "strThread"    # Ljava/lang/String;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "bRemoveOther"    # Z
    .param p4, "priority"    # I

    .prologue
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/lsec/core/util/ThreadMap;->startThread(Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 501
    return-void
.end method

.method public static startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZIJ)V
    .locals 7
    .param p0, "strApp"    # Ljava/lang/String;
    .param p1, "strThread"    # Ljava/lang/String;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "bRemoveOther"    # Z
    .param p4, "priority"    # I
    .param p5, "delayMillis"    # J

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/lsec/core/util/ThreadMap;->startThread(Ljava/lang/String;Ljava/lang/Runnable;ZIJ)V

    .line 506
    return-void
.end method


# virtual methods
.method public ReadApkId()V
    .locals 9

    .prologue
    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "conf_platform"

    const-string v7, "raw"

    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, "id":I
    if-ltz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/lsec/core/util/FuncUtils;->readStrFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "strXml":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 104
    new-instance v4, Lcom/lsec/core/util/Markup;

    invoke-direct {v4}, Lcom/lsec/core/util/Markup;-><init>()V

    .line 105
    .local v4, "xml":Lcom/lsec/core/util/Markup;
    invoke-virtual {v4, v3}, Lcom/lsec/core/util/Markup;->ReadXML(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v4}, Lcom/lsec/core/util/Markup;->IntoItem()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    :cond_0
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "strTemp":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 111
    const-string v5, "apkid"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 112
    const-string v5, "value"

    invoke-virtual {v4, v5}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 113
    sput-object v1, Lcom/lsec/core/frame/app/MyApplication;->mStrApkID:Ljava/lang/String;

    .line 119
    .end local v1    # "str":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Lcom/lsec/core/util/Markup;->ExitItem()V

    .line 126
    .end local v0    # "id":I
    .end local v2    # "strTemp":Ljava/lang/String;
    .end local v3    # "strXml":Ljava/lang/String;
    .end local v4    # "xml":Lcom/lsec/core/util/Markup;
    :cond_1
    :goto_1
    return-void

    .line 118
    .restart local v0    # "id":I
    .restart local v2    # "strTemp":Ljava/lang/String;
    .restart local v3    # "strXml":Ljava/lang/String;
    .restart local v4    # "xml":Lcom/lsec/core/util/Markup;
    :cond_2
    invoke-virtual {v4}, Lcom/lsec/core/util/Markup;->NextItem()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 123
    .end local v0    # "id":I
    .end local v2    # "strTemp":Ljava/lang/String;
    .end local v3    # "strXml":Ljava/lang/String;
    .end local v4    # "xml":Lcom/lsec/core/util/Markup;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public getDevice()Ljava/lang/String;
    .locals 2

    .prologue
    .line 521
    const-string v0, "ro.product.device"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntField(Ljava/lang/String;Ljava/lang/Class;)I
    .locals 7
    .param p1, "strField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 206
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 208
    .local v3, "iRet":I
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 209
    .local v2, "fs":[Ljava/lang/reflect/Field;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 220
    :goto_1
    return v3

    .line 209
    :cond_0
    aget-object v1, v2, v4

    .line 211
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 212
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;
    .locals 3
    .param p1, "uiApp"    # Lcom/lsec/core/frame/app/MyUi;
    .param p2, "idPage"    # I

    .prologue
    .line 488
    const/4 v1, 0x0

    .line 489
    .local v1, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz p1, :cond_0

    .line 490
    iget-object v2, p1, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JPage;

    .line 491
    .local v0, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v1

    .line 495
    .end local v0    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_0
    return-object v1
.end method

.method public getPlat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 513
    const-string v1, "sys.fyt.platform"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "plat":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    const-string v1, "ro.fyt.platform"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    :cond_0
    return-object v0
.end method

.method public getStyleableArrayId(Ljava/lang/String;)[I
    .locals 12
    .param p1, "styleableName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 526
    :try_start_0
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".R"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 527
    .local v5, "loadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 528
    .local v0, "classes":[Ljava/lang/Class;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v0

    if-lt v3, v9, :cond_0

    .end local v0    # "classes":[Ljava/lang/Class;
    .end local v3    # "i":I
    .end local v5    # "loadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    move-object v7, v8

    .line 543
    :goto_2
    return-object v7

    .line 529
    .restart local v0    # "classes":[Ljava/lang/Class;
    .restart local v3    # "i":I
    .restart local v5    # "loadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    aget-object v6, v0, v3

    .line 530
    .local v6, "resClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".R$styleable"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 531
    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 532
    .local v2, "fields":[Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    array-length v9, v2

    if-lt v4, v9, :cond_2

    .line 528
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 533
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    .restart local v4    # "j":I
    :cond_2
    aget-object v9, v2, v4

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 534
    aget-object v9, v2, v4

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .local v7, "styleable":[I
    goto :goto_2

    .line 532
    .end local v7    # "styleable":[I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 540
    .end local v0    # "classes":[Ljava/lang/Class;
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "loadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "resClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 541
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getTopActivity()Lcom/lsec/core/frame/app/MyActivity;
    .locals 3

    .prologue
    .line 224
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mActs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 229
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 224
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyActivity;

    .line 225
    .local v0, "act":Lcom/lsec/core/frame/app/MyActivity;
    iget-boolean v2, v0, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public goHome()V
    .locals 3

    .prologue
    .line 381
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 383
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0, v1}, Lcom/lsec/core/frame/app/MyApplication;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isAppTop()Z
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyApplication;->getTopActivity()Lcom/lsec/core/frame/app/MyActivity;

    move-result-object v0

    .line 235
    .local v0, "act":Lcom/lsec/core/frame/app/MyActivity;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFixVideoId(I)Z
    .locals 1
    .param p1, "videoId"    # I

    .prologue
    .line 552
    const/4 v0, 0x1

    return v0
.end method

.method public isNetworkAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 473
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/lsec/core/frame/app/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 474
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v3

    .line 477
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 478
    .local v2, "networkInfo":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 479
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 480
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 481
    const/4 v3, 0x1

    goto :goto_0

    .line 479
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public jumpAct(Ljava/lang/String;)V
    .locals 0
    .param p1, "strName"    # Ljava/lang/String;

    .prologue
    .line 548
    return-void
.end method

.method public onConnected_Main()V
    .locals 0

    .prologue
    .line 465
    return-void
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 130
    invoke-static {p0}, Lcom/lsec/core/util/CrashLog;->getInstance(Landroid/content/Context;)Lcom/lsec/core/util/CrashLog;

    .line 131
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyApplication;->ReadApkId()V

    .line 133
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "pkgName":Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 135
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 136
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    .line 138
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "res_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".ogg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "strResName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 140
    .local v0, "bFoundZip":Z
    sget-object v5, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/oem/app/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->mStrApkID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/assets/core_ogg/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/lsec/core/frame/app/MyApplication;->mStrZipFile:Ljava/lang/String;

    .line 142
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->mStrZipFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    .line 145
    :cond_1
    const-string v5, "HJT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bFoundZip:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mStrZipFile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/lsec/core/frame/app/MyApplication;->mStrZipFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-nez v0, :cond_2

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/oem/app/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->mStrApkID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/assets/core_ogg/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/lsec/core/frame/app/MyApplication;->mStrZipFile:Ljava/lang/String;

    .line 149
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->mStrZipFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    .line 151
    :cond_2
    const-string v5, "HJT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bFoundZip:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mStrZipFile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/lsec/core/frame/app/MyApplication;->mStrZipFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-nez v0, :cond_3

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/odm/app/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->mStrApkID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/assets/core_ogg/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/lsec/core/frame/app/MyApplication;->mStrZipFile:Ljava/lang/String;

    .line 156
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->mStrZipFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    .line 158
    :cond_3
    const-string v5, "HJT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bFoundZip:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mStrZipFile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/lsec/core/frame/app/MyApplication;->mStrZipFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-nez v0, :cond_4

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/odm/app/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->mStrApkID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/assets/core_ogg/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/lsec/core/frame/app/MyApplication;->mStrZipFile:Ljava/lang/String;

    .line 163
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->mStrZipFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    .line 165
    :cond_4
    const-string v5, "HJT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bFoundZip:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mStrZipFile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/lsec/core/frame/app/MyApplication;->mStrZipFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    sput-object v5, Lcom/lsec/core/frame/app/MyApplication;->mAssetManager:Landroid/content/res/AssetManager;

    .line 168
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/lsec/core/frame/app/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    sput-object v5, Lcom/lsec/core/frame/app/MyApplication;->mActivityManager:Landroid/app/ActivityManager;

    .line 169
    const-string v5, "window"

    invoke-virtual {p0, v5}, Lcom/lsec/core/frame/app/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    sput-object v5, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    .line 170
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/lsec/core/frame/app/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    sput-object v5, Lcom/lsec/core/frame/app/MyApplication;->mAudioManager:Landroid/media/AudioManager;

    .line 171
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sput-object v5, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    .line 173
    :try_start_0
    sget-object v5, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    const/16 v6, 0xd

    const/4 v7, 0x3

    invoke-static {v5, v6, v7}, Lcom/lsec/core/util/share/ShareHandler;->getInt(Landroid/content/ContentResolver;II)I

    move-result v5

    sput v5, Lcom/lsec/core/frame/app/MyApplication;->mIdChip:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    :try_start_1
    sget-object v5, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    const/16 v6, 0xa

    const/4 v7, 0x4

    invoke-static {v5, v6, v7}, Lcom/lsec/core/util/share/ShareHandler;->getInt(Landroid/content/ContentResolver;II)I

    move-result v5

    sput v5, Lcom/lsec/core/frame/app/MyApplication;->mIdPlatForm:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :goto_1
    :try_start_2
    sget-object v5, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    const/16 v6, 0x9

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Lcom/lsec/core/util/share/ShareHandler;->getInt(Landroid/content/ContentResolver;II)I

    move-result v5

    sput v5, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 190
    :goto_2
    invoke-static {p0}, Lcom/lsec/core/util/FuncUtils;->getDisplayMetrics(Landroid/content/Context;)V

    .line 191
    sget-boolean v5, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v5, :cond_5

    .line 192
    sget-object v5, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    const/4 v6, 0x7

    const/4 v7, 0x1

    aput v7, v5, v6

    .line 193
    const/16 v5, 0x14

    sput v5, Lcom/lsec/core/ipc/module/main/Main;->sAppIdRequest:I

    .line 196
    :cond_5
    sget v5, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_6

    .line 197
    const-string v5, "QUALITY_CVBSP"

    const-class v6, Landroid/media/CamcorderProfile;

    invoke-virtual {p0, v5, v6}, Lcom/lsec/core/frame/app/MyApplication;->getIntField(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v5

    sput v5, Lcom/lsec/core/frame/camera/MyCamera;->QUALITY_CVBSP:I

    .line 198
    const-string v5, "QUALITY_CVBSN"

    const-class v6, Landroid/media/CamcorderProfile;

    invoke-virtual {p0, v5, v6}, Lcom/lsec/core/frame/app/MyApplication;->getIntField(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v5

    sput v5, Lcom/lsec/core/frame/camera/MyCamera;->QUALITY_CVBSN:I

    .line 202
    :cond_6
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 203
    return-void

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 180
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 181
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 186
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 187
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public requestAppIdRight()V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method public setAssetFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "strFolder"    # Ljava/lang/String;

    .prologue
    .line 95
    sput-object p1, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public startAct(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 392
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/app/MyApplication;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startAct(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 402
    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 403
    invoke-virtual {p0, v1}, Lcom/lsec/core/frame/app/MyApplication;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startAct(Ljava/lang/String;)V
    .locals 3
    .param p1, "strAction"    # Ljava/lang/String;

    .prologue
    .line 423
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 424
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 426
    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 427
    invoke-virtual {p0, v1}, Lcom/lsec/core/frame/app/MyApplication;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startAct(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 411
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 412
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 414
    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 415
    invoke-virtual {p0, v1}, Lcom/lsec/core/frame/app/MyApplication;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startServiceSafely(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 435
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/app/MyApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 439
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/app/MyApplication;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 440
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public startServiceSafely_Mobile(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 448
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 449
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/app/MyApplication;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 455
    :goto_0
    return-void

    .line 451
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/app/MyApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    goto :goto_0
.end method
