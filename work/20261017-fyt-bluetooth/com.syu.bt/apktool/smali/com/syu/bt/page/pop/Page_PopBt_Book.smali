.class public Lcom/syu/bt/page/pop/Page_PopBt_Book;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopBt_Book.java"


# static fields
.field static comparator_Contact:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field bShowAllListBook:Z

.field mGridBook:Lcom/lsec/core/frame/ctrl/JGridView;

.field mGridHistory:Lcom/lsec/core/frame/ctrl/JGridView;

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

.field mListHistory:Ljava/util/List;
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

.field public mRunnableQueryHistory:Ljava/lang/Runnable;

.field public mRunnableResetListHistory:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 348
    new-instance v0, Lcom/syu/bt/page/pop/Page_PopBt_Book$3;

    invoke-direct {v0}, Lcom/syu/bt/page/pop/Page_PopBt_Book$3;-><init>()V

    sput-object v0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->comparator_Contact:Ljava/util/Comparator;

    .line 373
    return-void
.end method

.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    .line 45
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->bShowAllListBook:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mListHistory:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mList:Ljava/util/List;

    .line 328
    new-instance v0, Lcom/syu/bt/page/pop/Page_PopBt_Book$1;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book$1;-><init>(Lcom/syu/bt/page/pop/Page_PopBt_Book;)V

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mRunnableResetListHistory:Ljava/lang/Runnable;

    .line 335
    new-instance v0, Lcom/syu/bt/page/pop/Page_PopBt_Book$2;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book$2;-><init>(Lcom/syu/bt/page/pop/Page_PopBt_Book;)V

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mRunnableQueryHistory:Ljava/lang/Runnable;

    .line 46
    return-void
.end method


# virtual methods
.method public ConvPinyin2Num(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 6
    .param p1, "strPinyin"    # Ljava/lang/String;

    .prologue
    .line 268
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 270
    .local v3, "strBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "strLower":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 272
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 322
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 323
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    :cond_0
    return-object v3

    .line 273
    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 274
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 272
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :pswitch_0
    const/16 v5, 0x32

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 283
    :pswitch_1
    const/16 v5, 0x33

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 288
    :pswitch_2
    const/16 v5, 0x34

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 293
    :pswitch_3
    const/16 v5, 0x35

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 298
    :pswitch_4
    const/16 v5, 0x36

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 304
    :pswitch_5
    const/16 v5, 0x37

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 309
    :pswitch_6
    const/16 v5, 0x38

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 315
    :pswitch_7
    const/16 v5, 0x39

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 274
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public InitGridItem(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Landroid/util/SparseArray;I)V
    .locals 32
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
    .line 110
    .local p3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v13

    .line 111
    .local v13, "id":I
    packed-switch v13, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 113
    :pswitch_0
    const/16 v2, 0x62

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v28

    .line 114
    .local v28, "viewContent":Landroid/view/View;
    if-eqz v28, :cond_1

    .line 115
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 116
    const/16 v2, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :cond_1
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 123
    const/16 v2, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v26

    .line 122
    check-cast v26, Lcom/lsec/core/frame/ctrl/JText;

    .line 125
    .local v26, "textNumber":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v2, 0x65

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    .line 124
    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    .line 126
    .local v4, "textName":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v2, 0x281e

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 127
    .local v21, "strNumer":Ljava/lang/String;
    const/16 v2, 0x281c

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 129
    .local v20, "strName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 130
    .local v9, "bHighlightNumber":Z
    const/4 v8, 0x0

    .line 132
    .local v8, "bHighlightName":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->bShowAllListBook:Z

    if-nez v2, :cond_2

    .line 133
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 134
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 135
    .local v11, "iStart":I
    if-ltz v11, :cond_5

    .line 136
    new-instance v23, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 139
    .local v23, "style":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 140
    const/4 v3, 0x0

    const/16 v6, 0xe6

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 139
    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 141
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v11

    .line 142
    const/16 v6, 0x21

    .line 138
    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v11, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 143
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const/4 v9, 0x1

    .line 175
    .end local v11    # "iStart":I
    .end local v23    # "style":Landroid/text/SpannableStringBuilder;
    :cond_2
    :goto_2
    if-nez v9, :cond_3

    .line 176
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_3
    if-nez v8, :cond_0

    .line 179
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 118
    .end local v4    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    .end local v8    # "bHighlightName":Z
    .end local v9    # "bHighlightNumber":Z
    .end local v20    # "strName":Ljava/lang/String;
    .end local v21    # "strNumer":Ljava/lang/String;
    .end local v26    # "textNumber":Lcom/lsec/core/frame/ctrl/JText;
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 147
    .restart local v4    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v8    # "bHighlightName":Z
    .restart local v9    # "bHighlightNumber":Z
    .restart local v11    # "iStart":I
    .restart local v20    # "strName":Ljava/lang/String;
    .restart local v21    # "strNumer":Ljava/lang/String;
    .restart local v26    # "textNumber":Lcom/lsec/core/frame/ctrl/JText;
    :cond_5
    const/16 v2, 0x281a

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 149
    .local v18, "strIndex1":Ljava/lang/String;
    const/16 v2, 0x281b

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 150
    .local v19, "strIndex2":Ljava/lang/String;
    if-eqz v18, :cond_2

    if-eqz v19, :cond_2

    .line 152
    :try_start_0
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 153
    .local v14, "index1":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 154
    .local v15, "index2":I
    if-ltz v14, :cond_2

    .line 155
    new-instance v23, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 158
    .restart local v23    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 159
    const/4 v3, 0x0

    const/16 v6, 0xe6

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 158
    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 162
    const/16 v3, 0x21

    .line 157
    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v14, v15, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 163
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    const/4 v8, 0x1

    goto :goto_2

    .line 184
    .end local v4    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    .end local v8    # "bHighlightName":Z
    .end local v9    # "bHighlightNumber":Z
    .end local v11    # "iStart":I
    .end local v14    # "index1":I
    .end local v15    # "index2":I
    .end local v18    # "strIndex1":Ljava/lang/String;
    .end local v19    # "strIndex2":Ljava/lang/String;
    .end local v20    # "strName":Ljava/lang/String;
    .end local v21    # "strNumer":Ljava/lang/String;
    .end local v23    # "style":Landroid/text/SpannableStringBuilder;
    .end local v26    # "textNumber":Lcom/lsec/core/frame/ctrl/JText;
    .end local v28    # "viewContent":Landroid/view/View;
    :pswitch_1
    const/16 v2, 0x283b

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 185
    .local v5, "num":Ljava/lang/String;
    const/16 v2, 0x283c

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 187
    .local v10, "date":Ljava/lang/String;
    const/16 v2, 0x62

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v28

    .line 188
    .restart local v28    # "viewContent":Landroid/view/View;
    if-eqz v28, :cond_7

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 190
    const/16 v2, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 193
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :cond_7
    const/16 v2, 0x65

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    .line 196
    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    .line 199
    .restart local v4    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v2, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v25

    .line 198
    check-cast v25, Lcom/lsec/core/frame/ctrl/JText;

    .line 201
    .local v25, "textNum":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v2, 0x66

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v24

    .line 200
    check-cast v24, Lcom/lsec/core/frame/ctrl/JText;

    .line 202
    .local v24, "textDate":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v25, :cond_8

    .line 203
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_8
    if-eqz v4, :cond_9

    .line 206
    sget-object v30, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v31, "Thread-GetNameByNumberPopBtBook"

    .line 207
    new-instance v2, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mList:Ljava/util/List;

    .line 208
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v7, "unknown"

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 207
    invoke-direct/range {v2 .. v7}, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 209
    const/4 v3, 0x0

    const/4 v6, 0x5

    .line 206
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v2, v3, v6}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 211
    :cond_9
    if-eqz v24, :cond_a

    .line 212
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_a
    const/16 v2, 0x2837

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 216
    .local v12, "iType":I
    const/16 v2, 0x67

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v27

    .line 217
    .local v27, "view":Landroid/view/View;
    if-eqz v27, :cond_0

    .line 218
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/app/MyUiItem;

    .line 219
    .local v16, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual/range {v16 .. v16}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 220
    move-object/from16 v0, v27

    instance-of v2, v0, Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v2, :cond_0

    move-object/from16 v29, v27

    .line 221
    check-cast v29, Lcom/lsec/core/frame/ctrl/JView;

    .line 223
    .local v29, "viewIco":Lcom/lsec/core/frame/ctrl/JView;
    const/16 v17, 0x0

    .line 224
    .local v17, "str":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v22

    .line 225
    .local v22, "strs":[Ljava/lang/String;
    packed-switch v12, :pswitch_data_1

    .line 237
    :goto_3
    if-nez v17, :cond_b

    .line 238
    invoke-virtual/range {v16 .. v16}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v17

    .line 240
    :cond_b
    invoke-virtual/range {v29 .. v29}, Lcom/lsec/core/frame/ctrl/JView;->getStrDrawable()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    if-eq v2, v0, :cond_0

    .line 241
    if-eqz v17, :cond_0

    .line 242
    const/4 v2, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 227
    :pswitch_2
    const/4 v2, 0x0

    aget-object v17, v22, v2

    .line 228
    goto :goto_3

    .line 230
    :pswitch_3
    const/4 v2, 0x1

    aget-object v17, v22, v2

    .line 231
    goto :goto_3

    .line 233
    :pswitch_4
    const/4 v2, 0x2

    aget-object v17, v22, v2

    goto :goto_3

    .line 246
    .end local v17    # "str":Ljava/lang/String;
    .end local v22    # "strs":[Ljava/lang/String;
    .end local v29    # "viewIco":Lcom/lsec/core/frame/ctrl/JView;
    :cond_c
    packed-switch v12, :pswitch_data_2

    goto/16 :goto_0

    .line 248
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const-string v3, "bt_icoincall"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    iget-object v7, v7, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 252
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const-string v3, "bt_icooutcall"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    iget-object v7, v7, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 256
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const-string v3, "bt_icomisscall"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    iget-object v7, v7, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 167
    .end local v5    # "num":Ljava/lang/String;
    .end local v10    # "date":Ljava/lang/String;
    .end local v12    # "iType":I
    .end local v16    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v24    # "textDate":Lcom/lsec/core/frame/ctrl/JText;
    .end local v25    # "textNum":Lcom/lsec/core/frame/ctrl/JText;
    .end local v27    # "view":Landroid/view/View;
    .restart local v8    # "bHighlightName":Z
    .restart local v9    # "bHighlightNumber":Z
    .restart local v11    # "iStart":I
    .restart local v18    # "strIndex1":Ljava/lang/String;
    .restart local v19    # "strIndex2":Ljava/lang/String;
    .restart local v20    # "strName":Ljava/lang/String;
    .restart local v21    # "strNumer":Ljava/lang/String;
    .restart local v26    # "textNumber":Lcom/lsec/core/frame/ctrl/JText;
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 225
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 246
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public ResponseClick(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 531
    packed-switch p1, :pswitch_data_0

    .line 538
    :goto_0
    return-void

    .line 533
    :pswitch_0
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->downloadBook()V

    goto :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch
.end method

.method public ResponseClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 526
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 527
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->ResponseClick(I)V

    .line 528
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 51
    const/16 v1, 0x60

    .line 50
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JGridView;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mGridBook:Lcom/lsec/core/frame/ctrl/JGridView;

    .line 52
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 53
    const/16 v1, 0x61

    .line 52
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JGridView;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mGridHistory:Lcom/lsec/core/frame/ctrl/JGridView;

    .line 54
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->showGridBook()V

    .line 55
    return-void
.end method

.method public isNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v1, "[0-9]*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 104
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)Z
    .locals 14
    .param p1, "pyNums"    # [Ljava/lang/String;
    .param p2, "qry"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 376
    .local p3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 377
    const/4 v2, 0x0

    .line 435
    :cond_0
    :goto_0
    return v2

    .line 379
    :cond_1
    const/4 v2, 0x0

    .line 381
    .local v2, "bRet":Z
    array-length v10, p1

    .line 382
    .local v10, "lenPys":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    .line 383
    .local v11, "lenQry":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v10, :cond_0

    .line 385
    const/4 v1, 0x1

    .line 386
    .local v1, "bFix":Z
    move v5, v9

    .line 387
    .local v5, "index1":I
    const/4 v6, 0x0

    .line 389
    .local v6, "index2":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-lt v4, v11, :cond_3

    .line 420
    :goto_3
    if-eqz v1, :cond_9

    .line 421
    move v7, v9

    .line 422
    .local v7, "index_Fix1":I
    sub-int v12, v5, v9

    add-int/lit8 v8, v12, 0x1

    .line 423
    .local v8, "index_Fix2":I
    if-le v8, v10, :cond_2

    .line 424
    move v8, v10

    .line 426
    :cond_2
    const/16 v12, 0x281a

    .line 427
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 426
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 428
    const/16 v12, 0x281b

    .line 429
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 428
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    const/4 v2, 0x1

    .line 431
    goto :goto_0

    .line 390
    .end local v7    # "index_Fix1":I
    .end local v8    # "index_Fix2":I
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 391
    .local v3, "c":C
    if-lt v5, v10, :cond_4

    .line 392
    const/4 v1, 0x0

    .line 393
    goto :goto_3

    .line 396
    :cond_4
    aget-object v12, p1, v5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_5

    .line 397
    const/4 v1, 0x0

    .line 398
    goto :goto_3

    .line 401
    :cond_5
    aget-object v12, p1, v5

    invoke-virtual {v12, v6}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v3, :cond_7

    .line 402
    add-int/lit8 v6, v6, 0x1

    .line 403
    aget-object v12, p1, v5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v6, v12, :cond_6

    .line 404
    add-int/lit8 v5, v5, 0x1

    .line 405
    const/4 v6, 0x0

    .line 389
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 408
    :cond_7
    if-nez v6, :cond_8

    .line 409
    const/4 v1, 0x0

    .line 410
    goto :goto_3

    .line 413
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 414
    const/4 v6, 0x0

    .line 415
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 383
    .end local v3    # "c":C
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public queryCalls()V
    .locals 5

    .prologue
    .line 344
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v1, "db-operation-history"

    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mRunnableQueryHistory:Ljava/lang/Runnable;

    const/4 v3, 0x1

    .line 345
    const/16 v4, 0xa

    .line 344
    invoke-static {v0, v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 346
    return-void
.end method

.method public queryContacts(Ljava/lang/String;)V
    .locals 19
    .param p1, "qry"    # Ljava/lang/String;

    .prologue
    .line 439
    const-string v16, "*"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->showGridHistory()V

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->queryCalls()V

    .line 522
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->showGridBook()V

    .line 446
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mList:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->resetList_Book(Ljava/util/List;)V

    goto :goto_0

    .line 451
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v7, "listContact":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->isNumber(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 453
    const-string v16, "1"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 454
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v8, "listContact1":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_6

    .line 470
    sget-object v16, Lcom/syu/bt/page/pop/Page_PopBt_Book;->comparator_Contact:Ljava/util/Comparator;

    move-object/from16 v0, v16

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 471
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 473
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v9, "listContact2":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_7

    .line 496
    sget-object v16, Lcom/syu/bt/page/pop/Page_PopBt_Book;->comparator_Contact:Ljava/util/Comparator;

    move-object/from16 v0, v16

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 497
    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 500
    .end local v8    # "listContact1":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .end local v9    # "listContact2":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_a

    .line 509
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->resetList_Book(Ljava/util/List;)V

    goto/16 :goto_0

    .line 455
    .restart local v8    # "listContact1":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 456
    .local v10, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v17, 0x281c

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 458
    .local v11, "name":Ljava/lang/String;
    invoke-static {v11}, Lcom/syu/bt/util/HanziToPinyin;->getHeadPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 457
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->ConvPinyin2Num(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    .line 458
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 459
    .local v12, "number":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 460
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 461
    .local v5, "iStart":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    add-int v4, v5, v17

    .line 462
    .local v4, "iEnd":I
    const/16 v17, 0x281a

    .line 463
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 462
    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    const/16 v17, 0x281b

    .line 465
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 464
    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 474
    .end local v4    # "iEnd":I
    .end local v5    # "iStart":I
    .end local v10    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "number":Ljava/lang/String;
    .restart local v9    # "listContact2":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 475
    .restart local v10    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 478
    const/16 v17, 0x281c

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 480
    .restart local v11    # "name":Ljava/lang/String;
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 481
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 485
    .local v15, "strPinYin":Ljava/lang/String;
    :goto_4
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 486
    .local v14, "pys":[Ljava/lang/String;
    array-length v6, v14

    .line 487
    .local v6, "len":I
    new-array v13, v6, [Ljava/lang/String;

    .line 488
    .local v13, "pyNums":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-lt v3, v6, :cond_9

    .line 491
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v1, v10}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->query([Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)Z

    move-result v2

    .line 492
    .local v2, "bFix":Z
    if-eqz v2, :cond_3

    .line 493
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 483
    .end local v2    # "bFix":Z
    .end local v3    # "i":I
    .end local v6    # "len":I
    .end local v13    # "pyNums":[Ljava/lang/String;
    .end local v14    # "pys":[Ljava/lang/String;
    .end local v15    # "strPinYin":Ljava/lang/String;
    :cond_8
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v0, v1}, Lcom/syu/bt/util/HanziToPinyin;->getPinYin(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "strPinYin":Ljava/lang/String;
    goto :goto_4

    .line 489
    .restart local v3    # "i":I
    .restart local v6    # "len":I
    .restart local v13    # "pyNums":[Ljava/lang/String;
    .restart local v14    # "pys":[Ljava/lang/String;
    :cond_9
    aget-object v17, v14, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->ConvPinyin2Num(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v13, v3

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 500
    .end local v3    # "i":I
    .end local v6    # "len":I
    .end local v8    # "listContact1":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .end local v9    # "listContact2":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .end local v10    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "pyNums":[Ljava/lang/String;
    .end local v14    # "pys":[Ljava/lang/String;
    .end local v15    # "strPinYin":Ljava/lang/String;
    :cond_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 501
    .restart local v10    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 504
    const/16 v17, 0x281e

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 505
    .restart local v12    # "number":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 506
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 511
    .end local v10    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v12    # "number":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_c
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_d

    .line 520
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->resetList_Book(Ljava/util/List;)V

    goto/16 :goto_0

    .line 511
    :cond_d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 512
    .restart local v10    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v17, 0x281c

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 513
    .restart local v11    # "name":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 514
    invoke-static {v11}, Lcom/syu/bt/util/HanziToPinyin;->getHeadPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 515
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    .line 514
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    .line 515
    if-eqz v17, :cond_c

    .line 516
    :cond_e
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public resetList_Book(Ljava/util/List;)V
    .locals 2
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
    .line 88
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mList:Ljava/util/List;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->bShowAllListBook:Z

    .line 89
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mGridBook:Lcom/lsec/core/frame/ctrl/JGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lsec/core/frame/app/MyApplication;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    .line 93
    :goto_1
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mGridBook:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-static {v0, p1}, Lcom/lsec/core/frame/app/MyApplication;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    goto :goto_1
.end method

.method public resetList_History()V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mGridHistory:Lcom/lsec/core/frame/ctrl/JGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lsec/core/frame/app/MyApplication;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mGridHistory:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mListHistory:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/lsec/core/frame/app/MyApplication;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->resume()V

    .line 76
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v0}, Lcom/syu/bt/db/Bt_Info;->sortContact()V

    .line 77
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mList:Ljava/util/List;

    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->showGridBook()V

    .line 80
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->updateListBook()V

    .line 81
    return-void
.end method

.method public showGridBook()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mGridBook:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mGridBook:Lcom/lsec/core/frame/ctrl/JGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JGridView;->setVisibility(I)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mGridHistory:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mGridHistory:Lcom/lsec/core/frame/ctrl/JGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JGridView;->setVisibility(I)V

    .line 63
    :cond_1
    return-void
.end method

.method public showGridHistory()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mGridBook:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mGridBook:Lcom/lsec/core/frame/ctrl/JGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JGridView;->setVisibility(I)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mGridHistory:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mGridHistory:Lcom/lsec/core/frame/ctrl/JGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JGridView;->setVisibility(I)V

    .line 71
    :cond_1
    return-void
.end method

.method public updateListBook()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->resetList_Book(Ljava/util/List;)V

    .line 85
    return-void
.end method
