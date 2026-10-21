.class public Lcom/syu/bt/page/pop/Page_PopBtHead;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopBtHead.java"


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;

.field bExist:Z


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 43
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/page/pop/Page_PopBtHead;->bExist:Z

    .line 44
    iput-object p2, p0, Lcom/syu/bt/page/pop/Page_PopBtHead;->actBt:Lcom/syu/bt/Act_Bt;

    .line 45
    return-void
.end method

.method private updateSelect()V
    .locals 11

    .prologue
    const/16 v10, 0x281e

    const/16 v8, 0x2818

    const/4 v9, 0x1

    .line 59
    sget v6, Lcom/syu/bt/App_Bt;->iIcoType:I

    if-lez v6, :cond_0

    .line 60
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    sget v7, Lcom/syu/bt/App_Bt;->iIcoType:I

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sput-object v6, Lcom/syu/bt/App_Bt;->mIcoNumber:Ljava/lang/String;

    .line 63
    :cond_0
    sget-object v6, Lcom/syu/bt/App_Bt;->mIcoNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContactHeadId:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_5

    .line 78
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBtHead;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x291f

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JView;

    .line 79
    .local v5, "personHead":Lcom/lsec/core/frame/ctrl/JView;
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBtHead;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x291e

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    .line 80
    .local v2, "head16":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v5, :cond_4

    .line 81
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v6

    sget-object v7, Lcom/syu/bt/App_Bt;->mIcoNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/syu/bt/util/BTUtil;->getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 83
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v7, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/syu/bt/util/BTUtil;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    if-eqz v2, :cond_4

    .line 85
    const-string v6, "headnull"

    invoke-virtual {v2, v6, v9}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 94
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_4
    :goto_3
    sget v6, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    sput v6, Lcom/syu/bt/App_Bt;->iFavHeadSelectCopy:I

    .line 95
    sget v6, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    if-lez v6, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBtHead;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    sget v7, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    add-int/lit16 v7, v7, 0x290f

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 97
    .local v1, "button":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v1, :cond_1

    .line 98
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    goto :goto_0

    .line 68
    .end local v1    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v2    # "head16":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v5    # "personHead":Lcom/lsec/core/frame/ctrl/JView;
    :cond_5
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContactHeadId:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 70
    .local v4, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sget-object v6, Lcom/syu/bt/App_Bt;->mIcoNumber:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 71
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 72
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    goto/16 :goto_2

    .line 66
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 88
    .end local v4    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "head16":Lcom/lsec/core/frame/ctrl/JButton;
    .restart local v5    # "personHead":Lcom/lsec/core/frame/ctrl/JView;
    :cond_7
    if-eqz v2, :cond_4

    .line 89
    const-string v6, "head16"

    invoke-virtual {v2, v6, v9}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_3
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v11, 0x283b

    const/16 v10, 0x281e

    const/4 v9, 0x1

    const/16 v8, 0x2818

    .line 127
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    sget-boolean v6, Lcom/syu/bt/App_Bt;->bPop3rdPhone:Z

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    if-nez v6, :cond_0

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 134
    .local v3, "id":I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 136
    :pswitch_0
    iget-object v6, p0, Lcom/syu/bt/page/pop/Page_PopBtHead;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v6}, Lcom/syu/bt/Act_Bt;->DismissPopHead()V

    goto :goto_0

    .line 155
    :pswitch_1
    add-int/lit16 v6, v3, -0x290f

    add-int/lit8 v5, v6, 0x1

    .line 157
    .local v5, "select":I
    sget v6, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    if-eq v5, v6, :cond_4

    .line 159
    sget v6, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    if-lt v6, v9, :cond_3

    sget v6, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    const/16 v7, 0x10

    if-gt v6, v7, :cond_3

    .line 160
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBtHead;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    sget v7, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    add-int/lit16 v7, v7, 0x290f

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 161
    .local v0, "button":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {v0, v9}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBtHead;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 165
    .local v1, "button2":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v1, :cond_3

    .line 166
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 169
    .end local v0    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v1    # "button2":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_3
    sput v5, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    .line 172
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_5

    .line 179
    :goto_2
    const/4 v2, 0x0

    :goto_3
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContactHeadId:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_7

    .line 187
    :goto_4
    const/4 v2, 0x0

    :goto_5
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_9

    .line 195
    :goto_6
    const/4 v2, 0x0

    :goto_7
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_b

    .line 201
    const/4 v2, 0x0

    :goto_8
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_d

    .line 207
    const/4 v2, 0x0

    :goto_9
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_f

    .line 214
    sget v6, Lcom/syu/bt/App_Bt;->iIcoType:I

    if-lt v6, v9, :cond_11

    sget v6, Lcom/syu/bt/App_Bt;->iIcoType:I

    const/4 v7, 0x6

    if-gt v6, v7, :cond_11

    .line 215
    iget-object v6, p0, Lcom/syu/bt/page/pop/Page_PopBtHead;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v6}, Lcom/syu/bt/Act_Bt;->getPageDial()Lcom/syu/bt/page/Page_Dial;

    move-result-object v6

    sget v7, Lcom/syu/bt/App_Bt;->iIcoType:I

    invoke-virtual {v6, v7, v5}, Lcom/syu/bt/page/Page_Dial;->updateHead(II)V

    goto/16 :goto_0

    .line 173
    :cond_5
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 174
    .local v4, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sget-object v6, Lcom/syu/bt/App_Bt;->mIcoNumber:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 175
    sget v6, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 172
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 180
    .end local v4    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_7
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContactHeadId:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 181
    .restart local v4    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sget-object v6, Lcom/syu/bt/App_Bt;->mIcoNumber:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 182
    iput-boolean v9, p0, Lcom/syu/bt/page/pop/Page_PopBtHead;->bExist:Z

    .line 183
    sget v6, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 179
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 188
    .end local v4    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_9
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 189
    .restart local v4    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sget-object v6, Lcom/syu/bt/App_Bt;->mIcoNumber:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 190
    sget v6, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 187
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 196
    .end local v4    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_b
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 197
    .restart local v4    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sget-object v7, Lcom/syu/bt/App_Bt;->mIcoNumber:Ljava/lang/String;

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 198
    sget v6, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 202
    .end local v4    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_d
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 203
    .restart local v4    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sget-object v7, Lcom/syu/bt/App_Bt;->mIcoNumber:Ljava/lang/String;

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 204
    sget v6, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 208
    .end local v4    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_f
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 209
    .restart local v4    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sget-object v7, Lcom/syu/bt/App_Bt;->mIcoNumber:Ljava/lang/String;

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 210
    sget v6, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 216
    .end local v4    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_11
    sget-object v6, Lcom/syu/bt/App_Bt;->mIcoNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 217
    sget v6, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    const/16 v7, 0x2718

    if-ne v6, v7, :cond_12

    .line 218
    iget-object v6, p0, Lcom/syu/bt/page/pop/Page_PopBtHead;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v6}, Lcom/syu/bt/Act_Bt;->getPageHistory()Lcom/syu/bt/page/Page_History;

    move-result-object v6

    invoke-virtual {v6}, Lcom/syu/bt/page/Page_History;->updateList()V

    goto/16 :goto_0

    .line 219
    :cond_12
    sget v6, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    const/16 v7, 0x2720

    if-ne v6, v7, :cond_13

    .line 220
    iget-object v6, p0, Lcom/syu/bt/page/pop/Page_PopBtHead;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v6}, Lcom/syu/bt/Act_Bt;->getPageFavorite()Lcom/syu/bt/page/Page_Favorite;

    move-result-object v6

    invoke-virtual {v6}, Lcom/syu/bt/page/Page_Favorite;->invilatePlayList()V

    goto/16 :goto_0

    .line 222
    :cond_13
    iget-object v6, p0, Lcom/syu/bt/page/pop/Page_PopBtHead;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v6}, Lcom/syu/bt/Act_Bt;->getPageContact()Lcom/syu/bt/page/Page_Contact;

    move-result-object v6

    invoke-virtual {v6}, Lcom/syu/bt/page/Page_Contact;->invilatePlayList()V

    goto/16 :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x290e
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, -0x1

    sput v0, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    .line 50
    invoke-direct {p0}, Lcom/syu/bt/page/pop/Page_PopBtHead;->updateSelect()V

    .line 51
    return-void
.end method

.method public onDismiss()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 105
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->onDismiss()V

    .line 106
    sget v1, Lcom/syu/bt/App_Bt;->iFavHeadSelectCopy:I

    sget v2, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    if-eq v1, v2, :cond_1

    .line 107
    sget v1, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    sput v1, Lcom/syu/bt/App_Bt;->iFavHeadSelectCopy:I

    .line 109
    iget-boolean v1, p0, Lcom/syu/bt/page/pop/Page_PopBtHead;->bExist:Z

    if-nez v1, :cond_0

    .line 110
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 111
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x281e

    sget-object v2, Lcom/syu/bt/App_Bt;->mIcoNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    const/16 v1, 0x2818

    sget v2, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListContactHeadId:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_0
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v2, "Thread-DownContact"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mRunnable_WriteContactHeadToFile:Ljava/lang/Runnable;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 119
    :cond_1
    sput v6, Lcom/syu/bt/App_Bt;->iIcoType:I

    .line 120
    const-string v1, ""

    sput-object v1, Lcom/syu/bt/App_Bt;->mIcoNumber:Ljava/lang/String;

    .line 121
    sput v6, Lcom/syu/bt/App_Bt;->iFavHeadSelect:I

    .line 122
    return-void
.end method
