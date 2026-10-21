.class public Lcom/lsec/core/frame/ctrl/JViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "JViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;
    }
.end annotation


# static fields
.field private static final Direction_Left:I = 0x1

.field private static final Direction_None:I = 0x0

.field private static final Direction_Right:I = 0x2


# instance fields
.field bActionDown:Z

.field bAttached:Z

.field bWillUpdateBackground:Z

.field private iDirection:I

.field isCanScroll:Z

.field private itemCur:I

.field mAdapter:Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;

.field public mArg2:I

.field public mContents:[I

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

.field mPager:Landroid/support/v4/view/ViewPager;

.field mStrDrawable:Ljava/lang/String;

.field mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mViewsReal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private page:Lcom/lsec/core/frame/ctrl/JPage;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 23
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->bActionDown:Z

    .line 24
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mArg2:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->isCanScroll:Z

    .line 31
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->itemCur:I

    .line 32
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->iDirection:I

    .line 36
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->bAttached:Z

    .line 37
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->bWillUpdateBackground:Z

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mDrawables:Ljava/util/HashMap;

    .line 42
    iput-object p0, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    .line 43
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->iDirection:I

    .line 44
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/lsec/core/frame/ctrl/JViewPager;)Lcom/lsec/core/frame/ctrl/JPage;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->page:Lcom/lsec/core/frame/ctrl/JPage;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lsec/core/frame/ctrl/JViewPager;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->iDirection:I

    return v0
.end method

.method static synthetic access$2(Lcom/lsec/core/frame/ctrl/JViewPager;I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->itemCur:I

    return-void
.end method

.method static synthetic access$3(Lcom/lsec/core/frame/ctrl/JViewPager;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->itemCur:I

    return v0
.end method

.method static synthetic access$4(Lcom/lsec/core/frame/ctrl/JViewPager;I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->iDirection:I

    return-void
.end method

.method private setLayoutParam(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 118
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 119
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 124
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    return-object p1

    .line 121
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method public AddRealView2Dst(II)V
    .locals 4
    .param p1, "indexSrc"    # I
    .param p2, "indexDst"    # I

    .prologue
    .line 133
    if-gez p2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt p2, v3, :cond_0

    .line 139
    if-ltz p1, :cond_0

    .line 142
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mViewsReal:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt p1, v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mViews:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 147
    .local v2, "view":Landroid/widget/FrameLayout;
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mViewsReal:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 148
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 150
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eq v0, v2, :cond_0

    .line 151
    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 154
    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 155
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 97
    .local v0, "iAction":I
    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    :pswitch_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 113
    :goto_1
    return v1

    .line 99
    :pswitch_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->bActionDown:Z

    goto :goto_0

    .line 103
    :pswitch_2
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->bActionDown:Z

    goto :goto_0

    .line 109
    :catch_0
    move-exception v2

    goto :goto_1

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getContents()[I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mContents:[I

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mContents:[I

    array-length v0, v0

    return v0
.end method

.method public isCanScroll(Z)V
    .locals 0
    .param p1, "isCanScroll"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->isCanScroll:Z

    .line 49
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->bAttached:Z

    .line 80
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->bWillUpdateBackground:Z

    .line 82
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JViewPager;->updateBackground()V

    .line 85
    :cond_0
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onAttachedToWindow()V

    .line 86
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->bAttached:Z

    .line 91
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onDetachedFromWindow()V

    .line 92
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->isCanScroll:Z

    if-eqz v0, :cond_0

    .line 373
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 375
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->isCanScroll:Z

    if-eqz v0, :cond_0

    .line 362
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 364
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mViewsReal:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mViewsReal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->bWillUpdateBackground:Z

    .line 53
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mStrDrawable:Ljava/lang/String;

    .line 54
    if-eqz p2, :cond_0

    .line 55
    if-nez p1, :cond_1

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JViewPager;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JViewPager;->updateBackground()V

    goto :goto_0
.end method

.method public varargs setUiLoader([I)V
    .locals 8
    .param p1, "content"    # [I

    .prologue
    const/4 v7, 0x1

    .line 161
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mContents:[I

    .line 162
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mContents:[I

    if-eqz v4, :cond_0

    .line 163
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mViews:Ljava/util/List;

    .line 164
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mViewsReal:Ljava/util/List;

    .line 165
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mContents:[I

    array-length v0, v4

    .line 166
    .local v0, "count":I
    if-le v0, v7, :cond_0

    .line 167
    add-int/lit8 v0, v0, 0x2

    .line 168
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 184
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 185
    new-instance v4, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mViews:Ljava/util/List;

    invoke-direct {v4, p0, v5}, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;-><init>(Lcom/lsec/core/frame/ctrl/JViewPager;Ljava/util/List;)V

    iput-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mAdapter:Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;

    .line 186
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mAdapter:Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;

    invoke-virtual {p0, v4}, Lcom/lsec/core/frame/ctrl/JViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 187
    new-instance v4, Lcom/lsec/core/frame/ctrl/JViewPager$1;

    invoke-direct {v4, p0}, Lcom/lsec/core/frame/ctrl/JViewPager$1;-><init>(Lcom/lsec/core/frame/ctrl/JViewPager;)V

    invoke-virtual {p0, v4}, Lcom/lsec/core/frame/ctrl/JViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 263
    invoke-virtual {p0, v7}, Lcom/lsec/core/frame/ctrl/JViewPager;->setCurrentItem(I)V

    .line 267
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 169
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v4, v4, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 170
    .local v3, "view":Landroid/widget/FrameLayout;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mViews:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/lsec/core/frame/ctrl/JViewPager;->setLayoutParam(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    if-eqz v1, :cond_2

    add-int/lit8 v4, v0, -0x1

    if-eq v1, v4, :cond_2

    .line 175
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mContents:[I

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    invoke-virtual {v4, v7, v5}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 176
    .local v2, "vGroup":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v2, :cond_2

    .line 177
    invoke-direct {p0, v2}, Lcom/lsec/core/frame/ctrl/JViewPager;->setLayoutParam(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .end local v2    # "vGroup":Lcom/lsec/core/frame/ctrl/JPage;
    check-cast v2, Lcom/lsec/core/frame/ctrl/JPage;

    .line 178
    .restart local v2    # "vGroup":Lcom/lsec/core/frame/ctrl/JPage;
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mViewsReal:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4, v1}, Lcom/lsec/core/frame/ctrl/JViewPager;->AddRealView2Dst(II)V

    .line 168
    .end local v2    # "vGroup":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public updateBackground()V
    .locals 5

    .prologue
    .line 63
    iget-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->bAttached:Z

    if-nez v1, :cond_1

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->bWillUpdateBackground:Z

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->bWillUpdateBackground:Z

    .line 69
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->page:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mStrDrawable:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mStrDrawable:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 72
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JViewPager;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
