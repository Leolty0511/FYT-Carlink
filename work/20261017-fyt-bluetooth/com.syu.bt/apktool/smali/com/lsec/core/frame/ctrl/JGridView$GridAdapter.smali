.class public Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;
.super Landroid/widget/BaseAdapter;
.source "JGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/ctrl/JGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridAdapter"
.end annotation


# instance fields
.field private mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

.field final synthetic this$0:Lcom/lsec/core/frame/ctrl/JGridView;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 147
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-static {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->access$0(Lcom/lsec/core/frame/ctrl/JGridView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-static {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->access$0(Lcom/lsec/core/frame/ctrl/JGridView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 162
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v0, v0, Lcom/lsec/core/frame/ctrl/JGridView;->mCnt:I

    goto :goto_0
.end method

.method public getGridView()Lcom/lsec/core/frame/ctrl/JGridView;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 172
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->getGridView()Lcom/lsec/core/frame/ctrl/JGridView;

    move-result-object v6

    .line 179
    .local v6, "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    const/16 v17, 0x0

    .line 180
    .local v17, "pageTmp":Lcom/lsec/core/frame/ctrl/JPage;
    if-nez p2, :cond_9

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JGridView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/lsec/core/frame/ctrl/JGridView;->access$1(Lcom/lsec/core/frame/ctrl/JGridView;)I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v17

    .line 183
    invoke-virtual/range {v17 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/app/MyUiItem;

    .line 184
    .local v8, "item":Lcom/lsec/core/frame/app/MyUiItem;
    iget-object v0, v8, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    .line 186
    new-instance v23, Landroid/widget/AbsListView$LayoutParams;

    iget-object v0, v8, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v24, v0

    iget-object v0, v8, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 185
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    .end local v8    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/lsec/core/frame/ctrl/JGridView;->access$2(Lcom/lsec/core/frame/ctrl/JGridView;)Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 193
    if-eqz v17, :cond_0

    .line 194
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setScrollX(I)V

    .line 197
    :cond_0
    const/4 v5, 0x0

    .line 198
    .local v5, "bContainsInPageInfos":Z
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v13, "pageInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JGridView;->mPageInfos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_a

    .line 209
    :goto_2
    if-nez v5, :cond_2

    .line 210
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/lsec/core/frame/ctrl/JPage;->setGridView(Lcom/lsec/core/frame/ctrl/JGridView;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JGridView;->mPageInfos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 212
    new-instance v15, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 213
    .local v15, "pageReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JGridView;->mPageInfos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v15    # "pageReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/app/MyUiItem;

    .line 217
    .restart local v8    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    const/16 v18, 0x0

    .line 218
    .local v18, "str":Ljava/lang/String;
    and-int/lit8 v23, p1, 0x1

    if-eqz v23, :cond_3

    .line 219
    invoke-virtual {v8}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v21

    .line 220
    .local v21, "strs":[Ljava/lang/String;
    if-eqz v21, :cond_3

    .line 221
    const/16 v23, 0x0

    aget-object v18, v21, v23

    .line 224
    .end local v21    # "strs":[Ljava/lang/String;
    :cond_3
    if-nez v18, :cond_4

    .line 225
    invoke-virtual {v8}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v18

    .line 227
    :cond_4
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setChildTag(I)V

    .line 228
    invoke-virtual/range {v17 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getStrDrawable()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 229
    if-eqz v18, :cond_5

    .line 230
    const/16 v23, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setStrDrawable(Ljava/lang/String;Z)V

    .line 233
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/lsec/core/frame/ctrl/JGridView;->access$0(Lcom/lsec/core/frame/ctrl/JGridView;)Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_11

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/lsec/core/frame/ctrl/JGridView;->access$0(Lcom/lsec/core/frame/ctrl/JGridView;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    .line 236
    .local v11, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v6}, Lcom/lsec/core/frame/ctrl/JGridView;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v14

    .line 237
    .local v14, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v14, :cond_6

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->getGridView()Lcom/lsec/core/frame/ctrl/JGridView;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, p1

    invoke-interface {v14, v0, v1, v11, v2}, Lcom/lsec/core/frame/page/IPageNotify;->InitGridItem(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Landroid/util/SparseArray;I)V

    .line 240
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/lsec/core/frame/ctrl/JGridView;->bDefaultSet:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 241
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    .local v12, "nsize":I
    :goto_3
    if-lt v7, v12, :cond_c

    .line 275
    .end local v7    # "i":I
    .end local v11    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v12    # "nsize":I
    :cond_7
    :goto_4
    move-object/from16 p2, v17

    .line 276
    return-object p2

    .line 188
    .end local v5    # "bContainsInPageInfos":Z
    .end local v13    # "pageInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;>;"
    .end local v14    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    .end local v18    # "str":Ljava/lang/String;
    :cond_8
    new-instance v23, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v8}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v24

    invoke-virtual {v8}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v25

    invoke-direct/range {v23 .. v25}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .end local v8    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_9
    move-object/from16 v17, p2

    .line 190
    check-cast v17, Lcom/lsec/core/frame/ctrl/JPage;

    goto/16 :goto_0

    .line 199
    .restart local v5    # "bContainsInPageInfos":Z
    .restart local v13    # "pageInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;>;"
    :cond_a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/ref/WeakReference;

    .line 200
    .local v16, "pageReferenceTmp":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 201
    const/4 v5, 0x1

    .line 202
    goto/16 :goto_2

    .line 205
    :cond_b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v24

    if-nez v24, :cond_1

    .line 206
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 242
    .end local v16    # "pageReferenceTmp":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    .restart local v7    # "i":I
    .restart local v8    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v11    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v12    # "nsize":I
    .restart local v14    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_c
    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 244
    .local v10, "key":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/lsec/core/frame/ctrl/JText;

    .line 245
    .local v22, "tv":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v22, :cond_e

    .line 246
    invoke-virtual/range {v22 .. v22}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v23

    if-nez v23, :cond_e

    .line 247
    const/4 v4, 0x0

    .line 248
    .local v4, "bAddPosition2Str":Z
    const-string v19, ". "

    .line 249
    .local v19, "strMid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JGridView;->strTail:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 250
    .local v20, "strTmp":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/lsec/core/frame/ctrl/JText;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/app/MyUiItem;

    .line 251
    .local v9, "itemTv":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v9}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v23

    if-eqz v23, :cond_d

    .line 252
    invoke-virtual {v9}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v23

    const/16 v24, 0x0

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 253
    const/4 v4, 0x1

    .line 261
    :cond_d
    :goto_5
    if-eqz v4, :cond_10

    .line 262
    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/lsec/core/frame/ctrl/JGridView;->mBegin:I

    move/from16 v24, v0

    add-int v24, v24, p1

    add-int/lit8 v24, v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .end local v4    # "bAddPosition2Str":Z
    .end local v9    # "itemTv":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v19    # "strMid":Ljava/lang/String;
    .end local v20    # "strTmp":Ljava/lang/String;
    :cond_e
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 254
    .restart local v4    # "bAddPosition2Str":Z
    .restart local v9    # "itemTv":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v19    # "strMid":Ljava/lang/String;
    .restart local v20    # "strTmp":Ljava/lang/String;
    :cond_f
    invoke-virtual {v9}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v23

    const/16 v24, 0x0

    aget v23, v23, v24

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 255
    const/4 v4, 0x1

    .line 256
    const-string v19, ""

    .line 257
    const-string v20, ""

    goto :goto_5

    .line 264
    :cond_10
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 270
    .end local v4    # "bAddPosition2Str":Z
    .end local v7    # "i":I
    .end local v9    # "itemTv":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v10    # "key":I
    .end local v11    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v12    # "nsize":I
    .end local v14    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    .end local v19    # "strMid":Ljava/lang/String;
    .end local v20    # "strTmp":Ljava/lang/String;
    .end local v22    # "tv":Lcom/lsec/core/frame/ctrl/JText;
    :cond_11
    invoke-virtual {v6}, Lcom/lsec/core/frame/ctrl/JGridView;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v14

    .line 271
    .restart local v14    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v14, :cond_7

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->getGridView()Lcom/lsec/core/frame/ctrl/JGridView;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    move/from16 v3, p1

    invoke-interface {v14, v0, v1, v2, v3}, Lcom/lsec/core/frame/page/IPageNotify;->InitGridItem(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Landroid/util/SparseArray;I)V

    goto/16 :goto_4
.end method

.method public setGridView(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 0
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    .line 151
    return-void
.end method
