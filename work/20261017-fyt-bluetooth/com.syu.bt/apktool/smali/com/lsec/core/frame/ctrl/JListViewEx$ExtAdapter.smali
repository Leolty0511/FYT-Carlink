.class public Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "JListViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/ctrl/JListViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtAdapter"
.end annotation


# instance fields
.field private mListViewEx:Lcom/lsec/core/frame/ctrl/JListViewEx;

.field final synthetic this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JListViewEx;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    invoke-static {v0}, Lcom/lsec/core/frame/ctrl/JListViewEx;->access$0(Lcom/lsec/core/frame/ctrl/JListViewEx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/util/MyFolder;

    iget-object v0, v0, Lcom/lsec/core/util/MyFolder;->array:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 153
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/lsec/core/frame/ctrl/JListViewEx;->access$0(Lcom/lsec/core/frame/ctrl/JListViewEx;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lsec/core/util/MyFolder;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lsec/core/util/MyFolder;->array:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 243
    .local v9, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->getListViewEx()Lcom/lsec/core/frame/ctrl/JListViewEx;

    move-result-object v8

    .line 245
    .local v8, "listViewEx":Lcom/lsec/core/frame/ctrl/JListViewEx;
    const/4 v15, 0x0

    .line 246
    .local v15, "pageTmp":Lcom/lsec/core/frame/ctrl/JPage;
    if-nez p4, :cond_8

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/lsec/core/frame/ctrl/JListViewEx;->access$1(Lcom/lsec/core/frame/ctrl/JListViewEx;)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/lsec/core/frame/ctrl/JListViewEx;->idPageRowChild:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v15

    .line 249
    invoke-virtual {v15}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/app/MyUiItem;

    .line 250
    .local v5, "item":Lcom/lsec/core/frame/app/MyUiItem;
    iget-object v0, v5, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 252
    new-instance v19, Landroid/widget/AbsListView$LayoutParams;

    iget-object v0, v5, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v20, v0

    iget-object v0, v5, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 251
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JPage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    .end local v5    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/lsec/core/frame/ctrl/JListViewEx;->access$2(Lcom/lsec/core/frame/ctrl/JListViewEx;)Lcom/lsec/core/frame/ctrl/SwipeListViewHelper;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 259
    if-eqz v15, :cond_0

    .line 260
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JPage;->setScrollX(I)V

    .line 263
    :cond_0
    const/4 v3, 0x0

    .line 264
    .local v3, "bContainsInPageInfos":Z
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v11, "pageInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mPageInfos:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_9

    .line 275
    :goto_2
    if-nez v3, :cond_2

    .line 276
    invoke-virtual {v15, v8}, Lcom/lsec/core/frame/ctrl/JPage;->setListViewEx(Lcom/lsec/core/frame/ctrl/JListViewEx;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mPageInfos:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 278
    new-instance v13, Ljava/lang/ref/WeakReference;

    invoke-direct {v13, v15}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 279
    .local v13, "pageReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mPageInfos:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .end local v13    # "pageReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    :cond_2
    invoke-virtual {v15}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/app/MyUiItem;

    .line 283
    .restart local v5    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    const/16 v16, 0x0

    .line 284
    .local v16, "str":Ljava/lang/String;
    and-int/lit8 v19, p2, 0x1

    if-eqz v19, :cond_3

    .line 285
    invoke-virtual {v5}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v17

    .line 286
    .local v17, "strs":[Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 287
    const/16 v19, 0x0

    aget-object v16, v17, v19

    .line 290
    .end local v17    # "strs":[Ljava/lang/String;
    :cond_3
    if-nez v16, :cond_4

    .line 291
    invoke-virtual {v5}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v16

    .line 293
    :cond_4
    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JPage;->setGroupTag(I)V

    .line 294
    move/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JPage;->setChildTag(I)V

    .line 295
    invoke-virtual {v15}, Lcom/lsec/core/frame/ctrl/JPage;->getStrDrawable()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_5

    .line 296
    if-eqz v16, :cond_5

    .line 297
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setStrDrawable(Ljava/lang/String;Z)V

    .line 300
    :cond_5
    invoke-virtual {v8}, Lcom/lsec/core/frame/ctrl/JListViewEx;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v12

    .line 301
    .local v12, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v12, :cond_6

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->getListViewEx()Lcom/lsec/core/frame/ctrl/JListViewEx;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v12, v0, v15, v9, v1}, Lcom/lsec/core/frame/page/IPageNotify;->InitChildItem(Lcom/lsec/core/frame/ctrl/JListViewEx;Lcom/lsec/core/frame/ctrl/JPage;Landroid/util/SparseArray;I)V

    .line 304
    :cond_6
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    .local v10, "nsize":I
    :goto_3
    if-lt v4, v10, :cond_b

    .line 325
    move-object/from16 p4, v15

    .line 326
    return-object p4

    .line 254
    .end local v3    # "bContainsInPageInfos":Z
    .end local v4    # "i":I
    .end local v10    # "nsize":I
    .end local v11    # "pageInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;>;"
    .end local v12    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    .end local v16    # "str":Ljava/lang/String;
    :cond_7
    new-instance v19, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v5}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v20

    invoke-virtual {v5}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v21

    invoke-direct/range {v19 .. v21}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JPage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .end local v5    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_8
    move-object/from16 v15, p4

    .line 256
    check-cast v15, Lcom/lsec/core/frame/ctrl/JPage;

    goto/16 :goto_0

    .line 265
    .restart local v3    # "bContainsInPageInfos":Z
    .restart local v11    # "pageInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;>;"
    :cond_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/ref/WeakReference;

    .line 266
    .local v14, "pageReferenceTmp":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v15, :cond_a

    .line 267
    const/4 v3, 0x1

    .line 268
    goto/16 :goto_2

    .line 271
    :cond_a
    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_1

    .line 272
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 305
    .end local v14    # "pageReferenceTmp":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    .restart local v4    # "i":I
    .restart local v5    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v10    # "nsize":I
    .restart local v12    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    .restart local v16    # "str":Ljava/lang/String;
    :cond_b
    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 307
    .local v7, "key":I
    invoke-virtual {v15, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/lsec/core/frame/ctrl/JText;

    .line 308
    .local v18, "tv":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v18, :cond_d

    .line 309
    invoke-virtual/range {v18 .. v18}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v19

    if-nez v19, :cond_d

    .line 310
    const/4 v2, 0x0

    .line 311
    .local v2, "bAddPosition2Str":Z
    invoke-virtual/range {v18 .. v18}, Lcom/lsec/core/frame/ctrl/JText;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/app/MyUiItem;

    .line 312
    .local v6, "itemTv":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v6}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v19

    if-eqz v19, :cond_c

    .line 313
    invoke-virtual {v6}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v19

    const/16 v20, 0x0

    aget v19, v19, v20

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 314
    const/4 v2, 0x1

    .line 317
    :cond_c
    if-eqz v2, :cond_e

    .line 318
    new-instance v19, Ljava/lang/StringBuilder;

    add-int/lit8 v20, p2, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, ".  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 304
    .end local v2    # "bAddPosition2Str":Z
    .end local v6    # "itemTv":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_d
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 320
    .restart local v2    # "bAddPosition2Str":Z
    .restart local v6    # "itemTv":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_e
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    invoke-virtual/range {v18 .. v19}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 129
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    invoke-static {v1}, Lcom/lsec/core/frame/ctrl/JListViewEx;->access$0(Lcom/lsec/core/frame/ctrl/JListViewEx;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/util/MyFolder;

    .line 130
    .local v0, "folder":Lcom/lsec/core/util/MyFolder;
    if-eqz v0, :cond_0

    .line 131
    iget-object v1, v0, Lcom/lsec/core/util/MyFolder;->array:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 133
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    invoke-static {v0}, Lcom/lsec/core/frame/ctrl/JListViewEx;->access$0(Lcom/lsec/core/frame/ctrl/JListViewEx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    invoke-static {v0}, Lcom/lsec/core/frame/ctrl/JListViewEx;->access$0(Lcom/lsec/core/frame/ctrl/JListViewEx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 148
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .param p1, "position"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    invoke-static {v2}, Lcom/lsec/core/frame/ctrl/JListViewEx;->access$0(Lcom/lsec/core/frame/ctrl/JListViewEx;)Ljava/util/List;

    move-result-object v2

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/util/MyFolder;

    iget-object v4, v2, Lcom/lsec/core/util/MyFolder;->map:Landroid/util/SparseArray;

    .line 164
    .local v4, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->getListViewEx()Lcom/lsec/core/frame/ctrl/JListViewEx;

    move-result-object v12

    .line 166
    .local v12, "listViewEx":Lcom/lsec/core/frame/ctrl/JListViewEx;
    const/4 v3, 0x0

    .line 167
    .local v3, "pageTmp":Lcom/lsec/core/frame/ctrl/JPage;
    if-nez p3, :cond_7

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    invoke-static {v2}, Lcom/lsec/core/frame/ctrl/JListViewEx;->access$1(Lcom/lsec/core/frame/ctrl/JListViewEx;)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    iget-object v2, v2, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    iget v6, v6, Lcom/lsec/core/frame/ctrl/JListViewEx;->idPageRowGroup:I

    invoke-virtual {v2, v5, v6}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 170
    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/app/MyUiItem;

    .line 171
    .local v9, "item":Lcom/lsec/core/frame/app/MyUiItem;
    iget-object v2, v9, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_6

    .line 173
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget-object v5, v9, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v6, v9, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {v2, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 172
    invoke-virtual {v3, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    .end local v9    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    :goto_0
    const/4 v14, 0x0

    .line 180
    .local v14, "pageReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    iget-object v2, v2, Lcom/lsec/core/frame/ctrl/JListViewEx;->mPageInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8

    .line 187
    :goto_1
    if-eqz v14, :cond_1

    .line 188
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setListViewEx(Lcom/lsec/core/frame/ctrl/JListViewEx;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    iget-object v2, v2, Lcom/lsec/core/frame/ctrl/JListViewEx;->mPageInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 192
    :cond_1
    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/app/MyUiItem;

    .line 193
    .restart local v9    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    const/16 v16, 0x0

    .line 194
    .local v16, "str":Ljava/lang/String;
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    .line 195
    invoke-virtual {v9}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v17

    .line 196
    .local v17, "strs":[Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 197
    const/4 v2, 0x0

    aget-object v16, v17, v2

    .line 200
    .end local v17    # "strs":[Ljava/lang/String;
    :cond_2
    if-nez v16, :cond_3

    .line 201
    invoke-virtual {v9}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v16

    .line 203
    :cond_3
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JPage;->setChildTag(I)V

    .line 204
    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->getStrDrawable()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    if-eq v2, v0, :cond_4

    .line 205
    if-eqz v16, :cond_4

    .line 206
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setStrDrawable(Ljava/lang/String;Z)V

    .line 209
    :cond_4
    invoke-virtual {v12}, Lcom/lsec/core/frame/ctrl/JListViewEx;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v1

    .line 210
    .local v1, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v1, :cond_5

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->getListViewEx()Lcom/lsec/core/frame/ctrl/JListViewEx;

    move-result-object v2

    move/from16 v5, p2

    move/from16 v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/lsec/core/frame/page/IPageNotify;->InitGroupItem(Lcom/lsec/core/frame/ctrl/JListViewEx;Lcom/lsec/core/frame/ctrl/JPage;Landroid/util/SparseArray;ZI)V

    .line 214
    :cond_5
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v13

    .local v13, "nsize":I
    :goto_2
    if-lt v8, v13, :cond_9

    .line 235
    move-object/from16 p3, v3

    .line 236
    return-object p3

    .line 175
    .end local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    .end local v8    # "i":I
    .end local v13    # "nsize":I
    .end local v14    # "pageReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    .end local v16    # "str":Ljava/lang/String;
    :cond_6
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v9}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v5

    invoke-virtual {v9}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .end local v9    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_7
    move-object/from16 v3, p3

    .line 177
    check-cast v3, Lcom/lsec/core/frame/ctrl/JPage;

    goto/16 :goto_0

    .line 180
    .restart local v14    # "pageReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/ref/WeakReference;

    .line 181
    .local v15, "pageReferenceTmp":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_0

    .line 182
    move-object v14, v15

    .line 183
    goto/16 :goto_1

    .line 215
    .end local v15    # "pageReferenceTmp":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    .restart local v1    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    .restart local v8    # "i":I
    .restart local v9    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v13    # "nsize":I
    .restart local v16    # "str":Ljava/lang/String;
    :cond_9
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 217
    .local v11, "key":I
    invoke-virtual {v3, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/lsec/core/frame/ctrl/JText;

    .line 218
    .local v18, "tv":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v18, :cond_b

    .line 219
    invoke-virtual/range {v18 .. v18}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    .line 220
    const/4 v7, 0x0

    .line 221
    .local v7, "bAddPosition2Str":Z
    invoke-virtual/range {v18 .. v18}, Lcom/lsec/core/frame/ctrl/JText;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lsec/core/frame/app/MyUiItem;

    .line 222
    .local v10, "itemTv":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v10}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v2

    if-eqz v2, :cond_a

    .line 223
    invoke-virtual {v10}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v2

    const/4 v5, 0x0

    aget v2, v2, v5

    const/4 v5, 0x1

    if-ne v2, v5, :cond_a

    .line 224
    const/4 v7, 0x1

    .line 227
    :cond_a
    if-eqz v7, :cond_c

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .end local v7    # "bAddPosition2Str":Z
    .end local v10    # "itemTv":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_b
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 230
    .restart local v7    # "bAddPosition2Str":Z
    .restart local v10    # "itemTv":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_c
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public getListViewEx()Lcom/lsec/core/frame/ctrl/JListViewEx;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->mListViewEx:Lcom/lsec/core/frame/ctrl/JListViewEx;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public setListViewEx(Lcom/lsec/core/frame/ctrl/JListViewEx;)V
    .locals 0
    .param p1, "listViewEx"    # Lcom/lsec/core/frame/ctrl/JListViewEx;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->mListViewEx:Lcom/lsec/core/frame/ctrl/JListViewEx;

    .line 116
    return-void
.end method
