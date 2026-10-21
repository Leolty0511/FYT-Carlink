.class public Lcom/lsec/core/frame/ctrl/JPage;
.super Landroid/widget/FrameLayout;
.source "JPage.java"


# instance fields
.field bAttached:Z

.field bWillUpdateBackground:Z

.field private dlg:Landroid/app/Dialog;

.field public focus:Z

.field public gridView:Lcom/lsec/core/frame/ctrl/JGridView;

.field iChildTag:I

.field iGroupTag:I

.field iKeyChildView:I

.field iState:I

.field public listApp:Lcom/lsec/core/frame/ctrl/JListApp;

.field public listViewEx:Lcom/lsec/core/frame/ctrl/JListViewEx;

.field public mChildView:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mDrawables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mLanguage:Ljava/lang/String;

.field public mListChildPageId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mListParseViewId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mNotify:Lcom/lsec/core/frame/page/IPageNotify;

.field mStrDrawable:Ljava/lang/String;

.field mStrDrawableFix:Ljava/lang/String;

.field public mStrHeadXml:Ljava/lang/String;

.field public ui:Lcom/lsec/core/frame/app/MyUi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lsec/core/frame/app/MyUi;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ui"    # Lcom/lsec/core/frame/app/MyUi;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    iput-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JPage;->bAttached:Z

    .line 24
    iput-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JPage;->bWillUpdateBackground:Z

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->mListChildPageId:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->mListParseViewId:Ljava/util/List;

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->mChildView:Landroid/util/SparseArray;

    .line 29
    const v0, 0x3fffffff    # 1.9999999f

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->iKeyChildView:I

    .line 30
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->iState:I

    .line 31
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->iChildTag:I

    .line 32
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->iGroupTag:I

    .line 43
    iput-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JPage;->focus:Z

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->mLanguage:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->mStrHeadXml:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    .line 50
    iput-object p2, p0, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    .line 51
    return-void
.end method


# virtual methods
.method public addChildView(Landroid/view/View;Lcom/lsec/core/frame/app/MyUiItem;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lcom/lsec/core/frame/app/MyUiItem;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getType()I

    move-result v0

    .line 104
    .local v0, "iType":I
    sparse-switch v0, :sswitch_data_0

    .line 172
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    const/4 v4, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 174
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JPage;->mChildView:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    :goto_1
    instance-of v4, p1, Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v4, :cond_1

    .line 179
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JPage;->mListChildPageId:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_1
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JPage;->mListParseViewId:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget v4, p0, Lcom/lsec/core/frame/ctrl/JPage;->iKeyChildView:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/lsec/core/frame/ctrl/JPage;->iKeyChildView:I

    .line 183
    return-void

    .line 106
    :sswitch_0
    new-instance v4, Lcom/lsec/core/frame/ctrl/JPage$1;

    invoke-direct {v4, p0}, Lcom/lsec/core/frame/ctrl/JPage$1;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->isLongClick()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    new-instance v4, Lcom/lsec/core/frame/ctrl/JPage$2;

    invoke-direct {v4, p0}, Lcom/lsec/core/frame/ctrl/JPage$2;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 128
    :sswitch_1
    new-instance v4, Lcom/lsec/core/frame/ctrl/JPage$3;

    invoke-direct {v4, p0}, Lcom/lsec/core/frame/ctrl/JPage$3;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :sswitch_2
    move-object v3, p1

    .line 138
    check-cast v3, Lcom/lsec/core/frame/ctrl/JSwitchButton;

    .line 139
    .local v3, "switchButton":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    iget-boolean v4, v3, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bIsCheckBox:Z

    if-eqz v4, :cond_0

    .line 140
    new-instance v4, Lcom/lsec/core/frame/ctrl/JPage$4;

    invoke-direct {v4, p0}, Lcom/lsec/core/frame/ctrl/JPage$4;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 153
    .end local v3    # "switchButton":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    :sswitch_3
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "strPara":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 155
    array-length v5, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_0

    aget-object v2, v1, v4

    .line 156
    .local v2, "strTmp":Ljava/lang/String;
    const-string v6, "click"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 157
    new-instance v4, Lcom/lsec/core/frame/ctrl/JPage$5;

    invoke-direct {v4, p0}, Lcom/lsec/core/frame/ctrl/JPage$5;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 155
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 176
    .end local v1    # "strPara":[Ljava/lang/String;
    .end local v2    # "strTmp":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JPage;->mChildView:Landroid/util/SparseArray;

    iget v5, p0, Lcom/lsec/core/frame/ctrl/JPage;->iKeyChildView:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 104
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_3
        0xb -> :sswitch_0
        0x13 -> :sswitch_2
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 297
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v0, :cond_0

    .line 298
    invoke-interface {v0, p1}, Lcom/lsec/core/frame/page/IPageNotify;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 302
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 307
    :goto_0
    return v1

    .line 303
    :catch_0
    move-exception v1

    .line 307
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildTag()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->iChildTag:I

    return v0
.end method

.method public getChildViewByid(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 186
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->mChildView:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 187
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->dlg:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 291
    .local p2, "mapDrawables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    .local p3, "tmpMapDrawables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getGroupTag()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->iGroupTag:I

    return v0
.end method

.method public getNotify()Lcom/lsec/core/frame/page/IPageNotify;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->mNotify:Lcom/lsec/core/frame/page/IPageNotify;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->iState:I

    return v0
.end method

.method public getStrDrawable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->mStrDrawable:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedReload()Z
    .locals 2

    .prologue
    .line 340
    invoke-static {}, Lcom/lsec/core/frame/app/MyUi;->getCurrentLang()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lsec/core/frame/app/MyUi;->mStrHeadXml:Ljava/lang/String;

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->mStrHeadXml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->bAttached:Z

    .line 346
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->bWillUpdateBackground:Z

    .line 348
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JPage;->updateBackground()V

    .line 351
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 352
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->bAttached:Z

    .line 357
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 358
    return-void
.end method

.method public onPress(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 212
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->listApp:Lcom/lsec/core/frame/ctrl/JListApp;

    if-eqz v1, :cond_2

    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->listApp:Lcom/lsec/core/frame/ctrl/JListApp;

    iput-object p0, v1, Lcom/lsec/core/frame/ctrl/JListApp;->viewAppSelect:Landroid/view/View;

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->listApp:Lcom/lsec/core/frame/ctrl/JListApp;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JListApp;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 217
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v0, :cond_1

    .line 218
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->listApp:Lcom/lsec/core/frame/ctrl/JListApp;

    invoke-interface {v0, v1, p0, p1}, Lcom/lsec/core/frame/page/IPageNotify;->listAppPressed(Lcom/lsec/core/frame/ctrl/JListApp;Lcom/lsec/core/frame/ctrl/JPage;Z)V

    .line 233
    .end local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->gridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v1, :cond_3

    .line 220
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->gridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JPage;->getChildTag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JGridView;->setPosition(I)V

    .line 222
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->gridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JGridView;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 223
    .restart local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v0, :cond_1

    .line 224
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->gridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-interface {v0, v1, p0, p1}, Lcom/lsec/core/frame/page/IPageNotify;->GridPressed(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Z)V

    goto :goto_0

    .line 225
    .end local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_3
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->listViewEx:Lcom/lsec/core/frame/ctrl/JListViewEx;

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->listViewEx:Lcom/lsec/core/frame/ctrl/JListViewEx;

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JPage;->getGroupTag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JListViewEx;->setPositionGroup(I)V

    .line 227
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->listViewEx:Lcom/lsec/core/frame/ctrl/JListViewEx;

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JPage;->getChildTag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JListViewEx;->setPositionChild(I)V

    .line 229
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->listViewEx:Lcom/lsec/core/frame/ctrl/JListViewEx;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JListViewEx;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 230
    .restart local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v0, :cond_1

    .line 231
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->listViewEx:Lcom/lsec/core/frame/ctrl/JListViewEx;

    invoke-interface {v0, v1, p0, p1}, Lcom/lsec/core/frame/page/IPageNotify;->ItemExPressed(Lcom/lsec/core/frame/ctrl/JListViewEx;Lcom/lsec/core/frame/ctrl/JPage;Z)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 313
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lsec/core/frame/page/IPageNotify;->onSizeChanged(IIII)V

    .line 316
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 317
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 364
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v0, :cond_0

    .line 365
    invoke-interface {v0, p1}, Lcom/lsec/core/frame/page/IPageNotify;->touchEvent(Landroid/view/MotionEvent;)V

    .line 367
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 327
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0}, Lcom/lsec/core/frame/page/IPageNotify;->pause()V

    .line 329
    :cond_0
    return-void
.end method

.method public removeFromUiPages()V
    .locals 4

    .prologue
    .line 332
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->mListChildPageId:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->removePage(I)V

    .line 336
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->mListChildPageId:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 337
    return-void

    .line 332
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 333
    .local v0, "integer":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->removePage(I)V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 321
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v0, :cond_0

    .line 322
    invoke-interface {v0}, Lcom/lsec/core/frame/page/IPageNotify;->resume()V

    .line 323
    :cond_0
    return-void
.end method

.method public setChildTag(I)V
    .locals 0
    .param p1, "iTag"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JPage;->iChildTag:I

    .line 192
    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dlg"    # Landroid/app/Dialog;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JPage;->dlg:Landroid/app/Dialog;

    .line 75
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 245
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JPage;->updateBackground()V

    .line 246
    return-void
.end method

.method public setFocus(Z)V
    .locals 0
    .param p1, "focus"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/lsec/core/frame/ctrl/JPage;->focus:Z

    .line 208
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JPage;->updateBackground()V

    .line 209
    return-void
.end method

.method public setGridView(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 0
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JPage;->gridView:Lcom/lsec/core/frame/ctrl/JGridView;

    .line 59
    return-void
.end method

.method public setGroupTag(I)V
    .locals 0
    .param p1, "iTag"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JPage;->iGroupTag:I

    .line 200
    return-void
.end method

.method public setListApp(Lcom/lsec/core/frame/ctrl/JListApp;)V
    .locals 0
    .param p1, "listApp"    # Lcom/lsec/core/frame/ctrl/JListApp;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JPage;->listApp:Lcom/lsec/core/frame/ctrl/JListApp;

    .line 55
    return-void
.end method

.method public setListViewEx(Lcom/lsec/core/frame/ctrl/JListViewEx;)V
    .locals 0
    .param p1, "listViewEx"    # Lcom/lsec/core/frame/ctrl/JListViewEx;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JPage;->listViewEx:Lcom/lsec/core/frame/ctrl/JListViewEx;

    .line 63
    return-void
.end method

.method public setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V
    .locals 0
    .param p1, "page"    # Lcom/lsec/core/frame/page/IPageNotify;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JPage;->mNotify:Lcom/lsec/core/frame/page/IPageNotify;

    .line 67
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 238
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JPage;->updateBackground()V

    .line 239
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/ctrl/JPage;->onPress(Z)V

    .line 240
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->iState:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JPage;->bWillUpdateBackground:Z

    .line 88
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JPage;->mStrDrawable:Ljava/lang/String;

    .line 89
    if-eqz p2, :cond_0

    .line 90
    if-nez p1, :cond_1

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JPage;->updateBackground()V

    goto :goto_0
.end method

.method public updateBackground()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 249
    iget-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JPage;->bAttached:Z

    if-nez v2, :cond_1

    .line 250
    iput-boolean v3, p0, Lcom/lsec/core/frame/ctrl/JPage;->bWillUpdateBackground:Z

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iput-boolean v4, p0, Lcom/lsec/core/frame/ctrl/JPage;->bWillUpdateBackground:Z

    .line 255
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    if-eqz v2, :cond_0

    .line 256
    iget v1, p0, Lcom/lsec/core/frame/ctrl/JPage;->iState:I

    .line 257
    .local v1, "iStateBak":I
    iget-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JPage;->focus:Z

    if-eqz v2, :cond_2

    .line 258
    iput v3, p0, Lcom/lsec/core/frame/ctrl/JPage;->iState:I

    .line 268
    :goto_1
    iget v2, p0, Lcom/lsec/core/frame/ctrl/JPage;->iState:I

    if-eq v1, v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JPage;->mStrDrawable:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JPage;->mStrDrawable:Ljava/lang/String;

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JPage;->mStrDrawableFix:Ljava/lang/String;

    .line 271
    iget v2, p0, Lcom/lsec/core/frame/ctrl/JPage;->iState:I

    packed-switch v2, :pswitch_data_0

    .line 282
    :goto_2
    :pswitch_0
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JPage;->mStrDrawableFix:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0, v2, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 260
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JPage;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 261
    const/4 v2, 0x2

    iput v2, p0, Lcom/lsec/core/frame/ctrl/JPage;->iState:I

    goto :goto_1

    .line 262
    :cond_3
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JPage;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    iput v3, p0, Lcom/lsec/core/frame/ctrl/JPage;->iState:I

    goto :goto_1

    .line 265
    :cond_4
    iput v4, p0, Lcom/lsec/core/frame/ctrl/JPage;->iState:I

    goto :goto_1

    .line 275
    :pswitch_1
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JPage;->mStrDrawableFix:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_p"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JPage;->mStrDrawableFix:Ljava/lang/String;

    goto :goto_2

    .line 278
    :pswitch_2
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JPage;->mStrDrawableFix:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_u"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JPage;->mStrDrawableFix:Ljava/lang/String;

    goto :goto_2

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
