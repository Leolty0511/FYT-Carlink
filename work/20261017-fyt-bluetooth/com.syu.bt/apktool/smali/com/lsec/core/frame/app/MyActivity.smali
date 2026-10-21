.class public abstract Lcom/lsec/core/frame/app/MyActivity;
.super Landroid/app/Activity;
.source "MyActivity.java"


# instance fields
.field public bTop:Z

.field public mAnimSet:Landroid/animation/AnimatorSet;

.field public mPage:Lcom/lsec/core/frame/ctrl/JPage;

.field public mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

.field public mPageMain:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    .line 20
    return-void
.end method


# virtual methods
.method public doActionPause()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public doActionResume()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public getPageNotify(Lcom/lsec/core/frame/app/MyUi;I)Lcom/lsec/core/frame/page/IPageNotify;
    .locals 3
    .param p1, "ui"    # Lcom/lsec/core/frame/app/MyUi;
    .param p2, "idPage"    # I

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz p1, :cond_0

    .line 142
    iget-object v2, p1, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JPage;

    .line 143
    .local v0, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v1

    .line 147
    .end local v0    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_0
    return-object v1
.end method

.method public goPage(I)V
    .locals 0
    .param p1, "idPageTo"    # I

    .prologue
    .line 137
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    return-void
.end method

.method public handleSizeChanged()V
    .locals 6

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 103
    .local v3, "viewDecor":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 104
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 105
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 106
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lez v4, :cond_1

    .line 107
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int v0, v4, v5

    .line 108
    .local v0, "areaRect":I
    invoke-static {p0}, Lcom/lsec/core/util/FuncUtils;->getDisplayMetrics(Landroid/content/Context;)V

    .line 109
    sget-object v4, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v5, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int v1, v4, v5

    .line 110
    .local v1, "areaScreen":I
    mul-int/lit8 v4, v0, 0x2

    if-gt v4, v1, :cond_3

    .line 111
    sget-object v4, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v5, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v5, :cond_2

    .line 112
    const-string v4, "half_ver_"

    sput-object v4, Lcom/lsec/core/frame/app/MyUi;->mStrHeadXml:Ljava/lang/String;

    .line 118
    :goto_0
    sget-object v4, Lcom/lsec/core/frame/app/MyUi;->mStrHeadXml:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 119
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    .line 120
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->doActionResume()V

    .line 123
    :cond_0
    iget-object v4, p0, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v4, :cond_1

    .line 124
    iget-object v4, p0, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JPage;->isNeedReload()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    iget-object v4, p0, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    .line 129
    .end local v0    # "areaRect":I
    .end local v1    # "areaScreen":I
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_1
    return-void

    .line 114
    .restart local v0    # "areaRect":I
    .restart local v1    # "areaScreen":I
    .restart local v2    # "rect":Landroid/graphics/Rect;
    :cond_2
    const-string v4, "half_hor_"

    sput-object v4, Lcom/lsec/core/frame/app/MyUi;->mStrHeadXml:Ljava/lang/String;

    goto :goto_0

    .line 116
    :cond_3
    const-string v4, ""

    sput-object v4, Lcom/lsec/core/frame/app/MyUi;->mStrHeadXml:Ljava/lang/String;

    goto :goto_0
.end method

.method public hideSystemUi()V
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 164
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFitSystemWindows()V

    .line 165
    return-void
.end method

.method public isSystemUiVisible()Z
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mActs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mActs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_0
    new-instance v0, Lcom/lsec/core/frame/ctrl/JPage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lsec/core/frame/ctrl/JPage;-><init>(Landroid/content/Context;Lcom/lsec/core/frame/app/MyUi;)V

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyActivity;->mPage:Lcom/lsec/core/frame/ctrl/JPage;

    .line 33
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyActivity;->mPage:Lcom/lsec/core/frame/ctrl/JPage;

    new-instance v1, Lcom/lsec/core/frame/page/Page_ContentView;

    iget-object v2, p0, Lcom/lsec/core/frame/app/MyActivity;->mPage:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-direct {v1, v2, p0}, Lcom/lsec/core/frame/page/Page_ContentView;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyActivity;)V

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setNotify(Lcom/lsec/core/frame/page/IPageNotify;)V

    .line 34
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyActivity;->mPage:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/app/MyActivity;->setContentView(Landroid/view/View;)V

    .line 36
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyActivity;->mPageMain:Landroid/view/ViewGroup;

    .line 37
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyActivity;->mPage:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v1, p0, Lcom/lsec/core/frame/app/MyActivity;->mPageMain:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->addView(Landroid/view/View;)V

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/app/MyActivity;->handleIntent(Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    .line 47
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->doActionPause()V

    .line 50
    :cond_0
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mActs:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 51
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mActs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 53
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 54
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/app/MyActivity;->handleIntent(Landroid/content/Intent;)V

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/lsec/core/frame/app/MyUi;->mStrHeadXml:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    .line 60
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->doActionPause()V

    .line 63
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 64
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    .line 69
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->doActionResume()V

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    .line 95
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->doActionPause()V

    .line 98
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 99
    return-void
.end method

.method public requestAppIdRight()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public setTransParentWindow(Z)V
    .locals 6
    .param p1, "bTrans"    # Z

    .prologue
    const/high16 v5, 0x8000000

    const/high16 v4, 0x4000000

    const/16 v3, 0x400

    const/16 v2, 0x9

    .line 172
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v1, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v1, :cond_0

    .line 173
    iget-boolean v0, p0, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-eqz v0, :cond_0

    .line 174
    if-eqz p1, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->hideSystemUi()V

    .line 176
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 177
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 178
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->mIdPlatForm:I

    if-ne v0, v2, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 182
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 183
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->mIdPlatForm:I

    if-ne v0, v2, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->showSystemUi()V

    goto :goto_0
.end method

.method public showSystemUi()V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 157
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFitSystemWindows()V

    .line 158
    return-void
.end method
