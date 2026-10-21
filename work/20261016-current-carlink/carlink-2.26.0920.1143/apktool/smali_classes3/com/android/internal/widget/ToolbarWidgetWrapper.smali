.class public Lcom/android/internal/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/widget/DecorToolbar;


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final DEFAULT_FADE_DURATION_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "ToolbarWidgetWrapper"


# instance fields
.field private mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field private mToolbar:Landroid/widget/Toolbar;

.field private mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/widget/Toolbar;Z)V
    .locals 1

    const v0, 0x104004a

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/Toolbar;ZI)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 4
    iput v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 5
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 6
    invoke-virtual {p1}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p1}, Landroid/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 8
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 9
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v2, 0x10102ce

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v1, 0xd

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_c

    const/4 p2, 0x5

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const/16 p2, 0x9

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 17
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 p2, 0x6

    .line 18
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 19
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 20
    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 21
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 22
    :cond_4
    iget-object p2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    .line 23
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    const/16 p2, 0x8

    .line 24
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    const/16 p2, 0xa

    .line 25
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_6

    .line 26
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1, p2, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    .line 27
    iget p2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    :cond_6
    const/4 p2, 0x4

    .line 28
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    if-lez p2, :cond_7

    .line 29
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 30
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    iget-object p2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    const/16 p2, 0x16

    const/4 v1, -0x1

    .line 32
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    const/16 v2, 0x17

    .line 33
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    if-gez p2, :cond_8

    if-ltz v1, :cond_9

    .line 34
    :cond_8
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 35
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 36
    invoke-virtual {v2, p2, v1}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    :cond_9
    const/16 p2, 0xb

    .line 37
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_a

    .line 38
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    :cond_a
    const/16 p2, 0xc

    .line 39
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_b

    .line 40
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    :cond_b
    const/16 p2, 0x1a

    .line 41
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_d

    .line 42
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p2}, Landroid/widget/Toolbar;->setPopupTheme(I)V

    goto :goto_1

    .line 43
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->detectDisplayOptions()I

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 44
    :cond_d
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    .line 46
    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 47
    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    new-instance p2, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;

    invoke-direct {p2, p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {p1, p2}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/widget/Toolbar;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    return p0
.end method

.method private detectDisplayOptions()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    const/16 v0, 0xf

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v0, 0xb

    .line 21
    .line 22
    :goto_0
    return v0
.end method

.method private ensureSpinner()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/Spinner;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const v3, 0x10102d7

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    .line 19
    .line 20
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    .line 21
    .line 22
    const v1, 0x800013

    .line 23
    .line 24
    .line 25
    const/4 v2, -0x2

    .line 26
    invoke-direct {v0, v2, v2, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(III)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 4
    .line 5
    and-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private updateHomeAccessibility()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 16
    .line 17
    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method private updateNavigationIcon()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    :goto_1
    return-void
.end method

.method private updateToolbarLogo()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 2

    .line 1
    const-wide/16 v0, 0xc8

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public canSplit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->collapseActionView()V

    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public hasIcon()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLogo()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 2

    .line 1
    const-string v0, "ToolbarWidgetWrapper"

    .line 2
    .line 3
    const-string v1, "Progress display unsupported"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public initProgress()V
    .locals 2

    .line 1
    const-string v0, "ToolbarWidgetWrapper"

    .line 2
    .line 3
    const-string v1, "Progress display unsupported"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isSplit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCollapsible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setCollapsible(Z)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x10

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 21
    .line 22
    and-int/lit8 v0, v0, 0x10

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 2
    .line 3
    xor-int/2addr v0, p1

    .line 4
    iput p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 5
    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    and-int/lit8 v1, v0, 0x4

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    and-int/lit8 v1, p1, 0x4

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 20
    .line 21
    .line 22
    :cond_1
    and-int/lit8 v1, v0, 0x3

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 27
    .line 28
    .line 29
    :cond_2
    and-int/lit8 v1, v0, 0x8

    .line 30
    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    and-int/lit8 v1, p1, 0x8

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    :cond_4
    :goto_0
    and-int/lit8 v0, v0, 0x10

    .line 64
    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    and-int/lit8 p1, p1, 0x10

    .line 72
    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    :cond_6
    :goto_1
    return-void
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v0, "Can\'t set dropdown selected position without an adapter"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    .line 40
    .line 41
    const/4 v1, -0x2

    .line 42
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 43
    .line 44
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    .line 46
    const v1, 0x800053

    .line 47
    .line 48
    .line 49
    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/ActionMenuPresenter;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 17
    .line 18
    const v1, 0x1020186

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->setId(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 30
    .line 31
    check-cast p1, Lcom/android/internal/view/menu/MenuBuilder;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 34
    .line 35
    invoke-virtual {p2, p1, v0}, Landroid/widget/Toolbar;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;Landroid/widget/ActionMenuPresenter;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Toolbar;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 2
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_5

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 21
    .line 22
    if-ne v0, v3, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 39
    .line 40
    if-ne v0, v3, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    .line 43
    .line 44
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 48
    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    if-eq p1, v2, :cond_4

    .line 53
    .line 54
    if-ne p1, v1, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 57
    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 61
    .line 62
    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/widget/Toolbar$LayoutParams;

    .line 72
    .line 73
    const/4 v0, -0x2

    .line 74
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 75
    .line 76
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 77
    .line 78
    const v0, 0x800053

    .line 79
    .line 80
    .line 81
    iput v0, p1, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    const-string v1, "Invalid navigation mode "

    .line 87
    .line 88
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    .line 102
    .line 103
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_1
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot split an android.widget.Toolbar"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 4
    .line 5
    and-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 7
    .line 8
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 9
    .line 10
    new-array v1, v1, [F

    .line 11
    .line 12
    fill-array-data v1, :array_0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 20
    .line 21
    .line 22
    new-instance p2, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_0
    if-nez p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 34
    .line 35
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 36
    .line 37
    new-array v1, v1, [F

    .line 38
    .line 39
    fill-array-data v1, :array_1

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 47
    .line 48
    .line 49
    new-instance p2, Lcom/android/internal/widget/ToolbarWidgetWrapper$3;

    .line 50
    .line 51
    invoke-direct {p2, p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper$3;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_1
    const/4 p1, 0x0

    .line 59
    return-object p1

    .line 60
    nop

    .line 61
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
