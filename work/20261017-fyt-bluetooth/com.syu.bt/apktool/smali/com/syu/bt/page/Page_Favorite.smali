.class public Lcom/syu/bt/page/Page_Favorite;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_Favorite.java"


# static fields
.field public static bDrawListAlbum:Z

.field public static mClick:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static strSearch:Ljava/lang/String;


# instance fields
.field public actBt:Lcom/syu/bt/Act_Bt;

.field private bRoolKey:Z

.field bTop:Z

.field editFocus:Z

.field public mDownloading:Z

.field public mEditSearch:Landroid/widget/EditText;

.field public mGridClickDial:Z

.field public mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

.field public mInputType:I

.field private mPosFocusCpy:I

.field private mPosMoveTo:I

.field public mSlideBar:Lcom/syu/bt/ctrl/SlideBarView;

.field myListTask:Lcom/syu/bt/util/MyListCoverTask;

.field public tvLetterTitle:Landroid/widget/TextView;

.field public tvTxtSum:Lcom/lsec/core/frame/ctrl/JText;

.field public tvTxtSumStr:Lcom/lsec/core/frame/ctrl/JText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/syu/bt/page/Page_Favorite;->mClick:Landroid/util/SparseArray;

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/syu/bt/page/Page_Favorite;->bDrawListAlbum:Z

    return-void
.end method

.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 3
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 63
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 40
    iput-boolean v1, p0, Lcom/syu/bt/page/Page_Favorite;->mDownloading:Z

    .line 41
    iput-boolean v1, p0, Lcom/syu/bt/page/Page_Favorite;->mGridClickDial:Z

    .line 52
    iput v2, p0, Lcom/syu/bt/page/Page_Favorite;->mPosMoveTo:I

    .line 53
    iput v2, p0, Lcom/syu/bt/page/Page_Favorite;->mPosFocusCpy:I

    .line 54
    iput-boolean v1, p0, Lcom/syu/bt/page/Page_Favorite;->bRoolKey:Z

    .line 56
    iput-boolean v1, p0, Lcom/syu/bt/page/Page_Favorite;->editFocus:Z

    .line 57
    iput-boolean v1, p0, Lcom/syu/bt/page/Page_Favorite;->bTop:Z

    .line 64
    iput-object p2, p0, Lcom/syu/bt/page/Page_Favorite;->actBt:Lcom/syu/bt/Act_Bt;

    .line 65
    return-void
.end method


# virtual methods
.method public GridClick(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 10
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;

    .prologue
    const/4 v9, -0x1

    const/16 v8, 0x281e

    const/16 v6, 0x281c

    const/16 v7, 0x2713

    .line 396
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v0

    .line 397
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 399
    :pswitch_0
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v5

    if-nez v5, :cond_0

    .line 402
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getPosition()I

    move-result v4

    .line 403
    .local v4, "position":I
    sget v5, Lcom/syu/bt/App_Bt;->mSelectContact:I

    if-lez v5, :cond_1

    .line 404
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "contact_save"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/syu/bt/App_Bt;->mSelectContact:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    invoke-static {v6, v5}, Lcom/syu/bt/util/SpUtil;->saveContact(Ljava/lang/String;Landroid/util/SparseArray;)Z

    .line 405
    sput v9, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 406
    iget-object v5, p0, Lcom/syu/bt/page/Page_Favorite;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_0

    .line 411
    :cond_1
    iget-boolean v5, p0, Lcom/syu/bt/page/Page_Favorite;->mGridClickDial:Z

    if-eqz v5, :cond_0

    .line 414
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 415
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 416
    .local v3, "number":Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 417
    .local v2, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 418
    iput v9, p0, Lcom/syu/bt/page/Page_Favorite;->mPosMoveTo:I

    .line 419
    sget-object v5, Lcom/syu/bt/page/Page_Favorite;->mClick:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/syu/bt/page/Page_Favorite;->mClick:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 420
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isStateConnect()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 421
    invoke-static {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    .line 422
    iget-object v5, p0, Lcom/syu/bt/page/Page_Favorite;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    .line 435
    :cond_2
    :goto_1
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "HAODA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 436
    :cond_3
    iget-object v5, p0, Lcom/syu/bt/page/Page_Favorite;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v5, :cond_0

    .line 437
    iget-object v5, p0, Lcom/syu/bt/page/Page_Favorite;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 425
    :cond_4
    sget-object v5, Lcom/syu/bt/page/Page_Favorite;->mClick:Landroid/util/SparseArray;

    invoke-virtual {v5, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 426
    sget-object v5, Lcom/syu/bt/page/Page_Favorite;->mClick:Landroid/util/SparseArray;

    invoke-virtual {v5, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "HAODA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 428
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isStateConnect()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 429
    invoke-static {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    .line 430
    iget-object v5, p0, Lcom/syu/bt/page/Page_Favorite;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_1

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x2840
        :pswitch_0
    .end packed-switch
.end method

.method public GridPressed(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Z)V
    .locals 5
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p3, "pressed"    # Z

    .prologue
    const/4 v4, 0x1

    .line 349
    iget-object v2, p1, Lcom/lsec/core/frame/ctrl/JGridView;->mPageInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 350
    iget-object v2, p1, Lcom/lsec/core/frame/ctrl/JGridView;->mPageInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 357
    iget-boolean v2, p0, Lcom/syu/bt/page/Page_Favorite;->mGridClickDial:Z

    if-nez v2, :cond_3

    sget v2, Lcom/syu/bt/App_Bt;->mSelectContact:I

    if-gez v2, :cond_3

    .line 358
    const/16 v2, 0x2827

    invoke-virtual {p2, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 359
    iput-boolean v4, p0, Lcom/syu/bt/page/Page_Favorite;->mGridClickDial:Z

    .line 361
    :cond_1
    sget v2, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_2

    .line 362
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v2

    if-nez v2, :cond_2

    .line 363
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isXCConfig()Z

    move-result v2

    if-nez v2, :cond_2

    .line 364
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "HAODA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 366
    :cond_2
    iput-boolean v4, p0, Lcom/syu/bt/page/Page_Favorite;->mGridClickDial:Z

    .line 369
    :cond_3
    return-void

    .line 350
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 351
    .local v0, "pageReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JPage;

    .line 352
    .local v1, "pageTmp":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {p0, v1, p2, p3}, Lcom/syu/bt/page/Page_Favorite;->pressGridItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/ctrl/JPage;Z)V

    goto :goto_0
.end method

.method public InitGridItem(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Landroid/util/SparseArray;I)V
    .locals 35
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/ctrl/JGridView;",
            "Lcom/lsec/core/frame/ctrl/JPage;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v14

    .line 155
    .local v14, "id":I
    packed-switch v14, :pswitch_data_0

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 157
    :pswitch_0
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v17

    .line 158
    .local v17, "mySize":I
    const/16 v31, 0x2814

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v30

    .line 159
    .local v30, "viewContent":Landroid/view/View;
    if-eqz v30, :cond_1

    .line 160
    if-nez v17, :cond_10

    const/16 v31, 0x8

    :goto_1
    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_1
    sget-boolean v31, Lcom/syu/bt/App_Bt;->bUI_NightColour:Z

    if-eqz v31, :cond_2

    .line 164
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/ctrl/JPage;->getStrDrawable()Ljava/lang/String;

    move-result-object v24

    .line 165
    .local v24, "str":Ljava/lang/String;
    const-string v31, "gdy66"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "222 Page_History InitGridItem mColorType = "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v33, Lcom/syu/bt/App_Bt;->mColorType:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " str = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget v31, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v31, :cond_11

    .line 167
    const-string v31, "night_"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_2

    .line 168
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "night_"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setStrDrawable(Ljava/lang/String;Z)V

    .line 176
    .end local v24    # "str":Ljava/lang/String;
    :cond_2
    :goto_2
    if-lez v17, :cond_0

    .line 177
    const/16 v31, 0x2820

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/lsec/core/frame/ctrl/JText;

    .line 178
    .local v28, "textNumber":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v31, 0x281f

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/lsec/core/frame/ctrl/JText;

    .line 179
    .local v27, "textName":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v31, 0x281e

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 180
    .local v26, "strNumber":Ljava/lang/String;
    const/16 v31, 0x281c

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 182
    .local v25, "strName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 183
    .local v6, "bHighlightNumber":Z
    const/4 v5, 0x0

    .line 185
    .local v5, "bHighlightName":Z
    if-nez v6, :cond_4

    .line 186
    sget-object v31, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v32, "TZY_NEW"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Favorite;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 189
    :cond_3
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_4
    if-nez v5, :cond_8

    .line 193
    sget-object v31, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v32, "TZY_NEW"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Favorite;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 195
    sget-object v31, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v32, "UI7"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 196
    sget v31, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v31, :cond_12

    const/16 v31, -0x1

    :goto_3
    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 199
    :cond_5
    sget-object v31, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v32, "YL_3"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_6

    sget-object v31, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v32, "SYU-XN"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 200
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Favorite;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 201
    sget v31, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v31, :cond_13

    const/16 v31, -0x1

    :goto_4
    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 205
    :cond_7
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_8
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v31

    if-nez v31, :cond_9

    sget-object v31, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v32, "YL_BT_1920"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_9

    sget-boolean v31, Lcom/syu/bt/App_Bt;->bFavcontact:Z

    if-eqz v31, :cond_b

    .line 209
    :cond_9
    const/16 v31, 0x2828

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JButton;

    .line 210
    .local v8, "btnFavorite":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v8, :cond_a

    .line 211
    const/16 v31, 0x2823

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 212
    .local v16, "isFav":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_15

    .line 213
    const-string v31, "collect"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_14

    const/16 v31, 0x1

    :goto_5
    move/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 217
    .end local v16    # "isFav":Ljava/lang/String;
    :cond_a
    :goto_6
    const/16 v31, 0x2815

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/lsec/core/frame/ctrl/JView;

    .line 218
    .local v29, "view":Lcom/lsec/core/frame/ctrl/JView;
    if-eqz v29, :cond_b

    .line 219
    const/16 v31, 0x2826

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 220
    .local v4, "abc":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_16

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "bt_zimu_"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v31 .. v34}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 229
    .end local v4    # "abc":Ljava/lang/String;
    .end local v8    # "btnFavorite":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v29    # "view":Lcom/lsec/core/frame/ctrl/JView;
    :cond_b
    :goto_7
    const/16 v31, 0x2829

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v11

    .line 230
    .local v11, "headIco":Landroid/view/View;
    sget-boolean v31, Lcom/syu/bt/page/Page_Favorite;->bDrawListAlbum:Z

    if-eqz v31, :cond_18

    sget-boolean v31, Lcom/syu/bt/App_Bt;->bShowHeadIco:Z

    if-eqz v31, :cond_18

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_18

    if-eqz v11, :cond_18

    .line 231
    sget-object v31, Lcom/syu/bt/App_Bt;->myPaths:Ljava/util/List;

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v31, Lcom/syu/bt/App_Bt;->myAlbum:Ljava/util/HashMap;

    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->size()I

    move-result v31

    if-lez v31, :cond_c

    .line 233
    sget-object v31, Lcom/syu/bt/App_Bt;->myAlbum:Ljava/util/HashMap;

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 234
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_17

    .line 235
    new-instance v31, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v32, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-static {v7}, Lcom/syu/bt/util/BTUtil;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v33

    invoke-direct/range {v31 .. v33}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 317
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    :cond_c
    :goto_8
    const/4 v9, 0x0

    .line 318
    .local v9, "flag":Z
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_e

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_e

    .line 319
    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/page/Page_Favorite;->mPosMoveTo:I

    move/from16 v31, v0

    if-ltz v31, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/page/Page_Favorite;->mPosMoveTo:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, p4

    if-ne v0, v1, :cond_d

    .line 320
    sget-object v31, Lcom/syu/bt/page/Page_Favorite;->mClick:Landroid/util/SparseArray;

    const/16 v32, 0x281e

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    sget-object v31, Lcom/syu/bt/page/Page_Favorite;->mClick:Landroid/util/SparseArray;

    const/16 v32, 0x281c

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    :cond_d
    sget-object v31, Lcom/syu/bt/page/Page_Favorite;->mClick:Landroid/util/SparseArray;

    const/16 v32, 0x281e

    invoke-virtual/range {v31 .. v32}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_e

    sget-object v31, Lcom/syu/bt/page/Page_Favorite;->mClick:Landroid/util/SparseArray;

    const/16 v32, 0x281c

    invoke-virtual/range {v31 .. v32}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 325
    const/4 v9, 0x1

    .line 328
    :cond_e
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v31

    if-nez v31, :cond_f

    sget-object v31, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v32, "HAODA"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/syu/bt/page/Page_Favorite;->bRoolKey:Z

    move/from16 v31, v0

    if-eqz v31, :cond_0

    .line 329
    :cond_f
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/lsec/core/frame/ctrl/JPage;->setFocus(Z)V

    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v9}, Lcom/syu/bt/page/Page_Favorite;->pressGridItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/ctrl/JPage;Z)V

    goto/16 :goto_0

    .line 160
    .end local v5    # "bHighlightName":Z
    .end local v6    # "bHighlightNumber":Z
    .end local v9    # "flag":Z
    .end local v11    # "headIco":Landroid/view/View;
    .end local v25    # "strName":Ljava/lang/String;
    .end local v26    # "strNumber":Ljava/lang/String;
    .end local v27    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    .end local v28    # "textNumber":Lcom/lsec/core/frame/ctrl/JText;
    :cond_10
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 171
    .restart local v24    # "str":Ljava/lang/String;
    :cond_11
    const-string v31, "night_"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 172
    const-string v31, "night_"

    const-string v32, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setStrDrawable(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 196
    .end local v24    # "str":Ljava/lang/String;
    .restart local v5    # "bHighlightName":Z
    .restart local v6    # "bHighlightNumber":Z
    .restart local v25    # "strName":Ljava/lang/String;
    .restart local v26    # "strNumber":Ljava/lang/String;
    .restart local v27    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v28    # "textNumber":Lcom/lsec/core/frame/ctrl/JText;
    :cond_12
    const/high16 v31, -0x1000000

    goto/16 :goto_3

    .line 201
    :cond_13
    const/high16 v31, -0x1000000

    goto/16 :goto_4

    .line 213
    .restart local v8    # "btnFavorite":Lcom/lsec/core/frame/ctrl/JButton;
    .restart local v16    # "isFav":Ljava/lang/String;
    :cond_14
    const/16 v31, 0x0

    goto/16 :goto_5

    .line 215
    :cond_15
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto/16 :goto_6

    .line 223
    .end local v16    # "isFav":Ljava/lang/String;
    .restart local v4    # "abc":Ljava/lang/String;
    .restart local v29    # "view":Lcom/lsec/core/frame/ctrl/JView;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v31

    const-string v32, "bt_zimu_1"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v31 .. v34}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 237
    .end local v4    # "abc":Ljava/lang/String;
    .end local v8    # "btnFavorite":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v29    # "view":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    .restart local v11    # "headIco":Landroid/view/View;
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v31

    const-string v32, "bt_icocontact"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v31 .. v34}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 241
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    :cond_18
    if-eqz v11, :cond_c

    .line 242
    sget-object v31, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v32, "TZY_NEW"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_19

    sget-object v31, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v32, "TZY_BT_1920"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_19

    sget-object v31, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v32, "TZY_OEM"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_24

    .line 244
    :cond_19
    const/16 v31, 0x2819

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lsec/core/frame/ctrl/JText;

    .line 245
    .local v13, "headTxt":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v31, 0x2818

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 246
    .local v12, "headPic":Ljava/lang/String;
    const/16 v22, -0x1

    .line 247
    .local v22, "picId":I
    const-string v10, ""

    .line 248
    .local v10, "headABC":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1a

    .line 249
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 251
    :cond_1a
    const/16 v31, 0xf

    move/from16 v0, v22

    move/from16 v1, v31

    if-le v0, v1, :cond_1d

    .line 252
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/BTUtil;->getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 253
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1c

    .line 254
    new-instance v31, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v32, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-static {v7}, Lcom/syu/bt/util/BTUtil;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v33

    invoke-direct/range {v31 .. v33}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 302
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    :goto_9
    if-nez v5, :cond_1b

    .line 303
    sget-object v31, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1b

    .line 304
    sget-object v31, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v32, "UI7"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 305
    sget v31, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v31, :cond_23

    const/16 v31, 0xff

    const/16 v32, 0xff

    const/16 v33, 0xff

    invoke-static/range {v31 .. v33}, Landroid/graphics/Color;->rgb(III)I

    move-result v31

    :goto_a
    move/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 310
    :cond_1b
    invoke-virtual {v13, v10}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 256
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "headbig"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v31 .. v34}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 259
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    :cond_1d
    if-lez v22, :cond_1e

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "headbig"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v31 .. v34}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 262
    :cond_1e
    const/4 v15, 0x1

    .line 263
    .local v15, "isABC":Z
    const/16 v31, 0x281d

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 265
    .local v18, "nameCompare":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1f

    .line 266
    const/16 v31, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 267
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_21

    .line 268
    const-string v23, "[0-9`~!@#$%^&*()+=|{}\':;\',\\[\\].<>/?~\uff01@#\uffe5%\u2026\u2026&*\uff08\uff09\u2014\u2014+|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\u3002\uff0c\u3001\uff1f]"

    .line 269
    .local v23, "speChat":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v20

    .line 270
    .local v20, "p":Ljava/util/regex/Pattern;
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->matches()Z

    move-result v31

    if-eqz v31, :cond_1f

    .line 271
    const/4 v15, 0x0

    .line 282
    .end local v20    # "p":Ljava/util/regex/Pattern;
    .end local v23    # "speChat":Ljava/lang/String;
    :cond_1f
    :goto_b
    if-eqz v15, :cond_22

    .line 284
    const-string v21, "headbig_null"

    .line 285
    .local v21, "pathDrawable":Ljava/lang/String;
    sget-object v31, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_20

    .line 286
    sget-object v31, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v32, "UI7"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_20

    sget v31, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v31, :cond_20

    .line 287
    const-string v21, "headbig_null_night"

    .line 292
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v31

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v33, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 274
    .end local v21    # "pathDrawable":Ljava/lang/String;
    :cond_21
    const/16 v31, 0x281c

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 275
    .local v19, "nameCompare2":Ljava/lang/String;
    const/16 v31, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 276
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_1f

    .line 277
    const/4 v15, 0x0

    goto :goto_b

    .line 295
    .end local v19    # "nameCompare2":Ljava/lang/String;
    :cond_22
    const-string v10, ""

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v31

    const-string v32, "headbig16"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v31 .. v34}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 305
    .end local v15    # "isABC":Z
    .end local v18    # "nameCompare":Ljava/lang/String;
    :cond_23
    const/16 v31, 0x3c

    const/16 v32, 0x3c

    const/16 v33, 0x47

    invoke-static/range {v31 .. v33}, Landroid/graphics/Color;->rgb(III)I

    move-result v31

    goto/16 :goto_a

    .line 312
    .end local v10    # "headABC":Ljava/lang/String;
    .end local v12    # "headPic":Ljava/lang/String;
    .end local v13    # "headTxt":Lcom/lsec/core/frame/ctrl/JText;
    .end local v22    # "picId":I
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v31

    const-string v32, "bt_icocontact"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v31 .. v34}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 155
    :pswitch_data_0
    .packed-switch 0x2840
        :pswitch_0
    .end packed-switch
.end method

.method public ResponseClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2744

    if-eq v0, v1, :cond_2

    .line 136
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_state_using"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Favorite;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0, p1}, Lcom/syu/bt/Act_Bt;->MenuClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public ResponseLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x2840

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JGridView;

    iput-object v0, p0, Lcom/syu/bt/page/Page_Favorite;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    .line 120
    return-void
.end method

.method public invilatePlayList()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/syu/bt/page/Page_Favorite;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/syu/bt/page/Page_Favorite;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    .line 343
    :cond_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/syu/bt/page/Page_Favorite;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/syu/bt/page/Page_Favorite;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    .line 127
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/page/Page_Favorite;->bTop:Z

    .line 115
    return-void
.end method

.method public pressGridItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/ctrl/JPage;Z)V
    .locals 4
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "pagePressed"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p3, "pressed"    # Z

    .prologue
    .line 372
    if-eqz p3, :cond_4

    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    .line 373
    .local v0, "bFocus":Z
    :goto_0
    const/16 v3, 0x2815

    invoke-virtual {p1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .line 374
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 375
    instance-of v3, v2, Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v3, :cond_0

    .line 376
    check-cast v2, Lcom/lsec/core/frame/ctrl/JView;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/ctrl/JView;->setFocus(Z)V

    .line 379
    :cond_0
    const/16 v3, 0x2827

    invoke-virtual {p1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .line 380
    .restart local v2    # "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 381
    instance-of v3, v2, Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v3, :cond_1

    .line 382
    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 385
    :cond_1
    const/16 v3, 0x281f

    invoke-virtual {p1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 386
    .local v1, "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_2

    .line 387
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 389
    :cond_2
    const/16 v3, 0x2820

    invoke-virtual {p1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 390
    .restart local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_3

    .line 391
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 392
    :cond_3
    return-void

    .line 372
    .end local v0    # "bFocus":Z
    .end local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetList()V
    .locals 1

    .prologue
    .line 447
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v0}, Lcom/syu/bt/db/Bt_Info;->sortContact_Fav()V

    .line 449
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/syu/bt/page/Page_Favorite;->resetList(Ljava/util/List;)V

    .line 450
    return-void
.end method

.method public resetList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    const/16 v5, 0x2955

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 77
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v1

    if-nez v1, :cond_3

    .line 78
    iget-object v1, p0, Lcom/syu/bt/page/Page_Favorite;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lsec/core/frame/app/MyApplication;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    .line 83
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "tip":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/syu/bt/page/Page_Favorite;->tvTxtSum:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/syu/bt/page/Page_Favorite;->tvTxtSum:Lcom/lsec/core/frame/ctrl/JText;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/syu/bt/page/Page_Favorite;->tvTxtSum:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/syu/bt/page/Page_Favorite;->tvTxtSumStr:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/syu/bt/page/Page_Favorite;->tvTxtSumStr:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 109
    :cond_2
    :goto_1
    return-void

    .line 80
    .end local v0    # "tip":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/syu/bt/page/Page_Favorite;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-static {v1, p1}, Lcom/lsec/core/frame/app/MyApplication;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    goto :goto_0

    .line 98
    :cond_4
    iget-object v1, p0, Lcom/syu/bt/page/Page_Favorite;->tvTxtSum:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_5

    .line 99
    iget-object v1, p0, Lcom/syu/bt/page/Page_Favorite;->tvTxtSum:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v1, v4}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 101
    :cond_5
    iget-object v1, p0, Lcom/syu/bt/page/Page_Favorite;->tvTxtSumStr:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_6

    .line 102
    iget-object v1, p0, Lcom/syu/bt/page/Page_Favorite;->tvTxtSumStr:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v1, v4}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 104
    :cond_6
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Favorite;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 105
    .restart local v0    # "tip":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/syu/bt/page/Page_Favorite;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v0, v0, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/syu/bt/page/Page_Favorite;->bTop:Z

    .line 73
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Favorite;->resetList()V

    goto :goto_0
.end method
