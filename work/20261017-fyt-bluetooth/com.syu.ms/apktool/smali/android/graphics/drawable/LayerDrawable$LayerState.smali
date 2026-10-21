.class Landroid/graphics/drawable/LayerDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayerState"
.end annotation


# instance fields
.field private mAutoMirrored:Z

.field private mCanConstantState:Z

.field public mChangingConfigurations:I

.field private mCheckedConstantState:Z

.field public mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

.field public mChildrenChangingConfigurations:I

.field private mHaveOpacity:Z

.field private mHaveStateful:Z

.field public mNum:I

.field private mOpacity:I

.field private mStateful:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    .line 3
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    if-eqz p1, :cond_2

    .line 4
    iget-object v1, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 5
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 6
    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 7
    new-array v3, v2, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iput-object v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 8
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 9
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    :goto_0
    if-ge v0, v2, :cond_1

    .line 10
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    new-instance v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>()V

    aput-object v4, v3, v0

    .line 11
    aget-object v3, v1, v0

    if-eqz p3, :cond_0

    .line 12
    iget-object v5, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 13
    :cond_0
    iget-object v5, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    :goto_1
    iget-object v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 15
    iget-object v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 16
    iget v5, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 17
    iget v5, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 18
    iget v5, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 19
    iget v5, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 20
    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    iput v3, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_1
    iget-boolean p2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    iput-boolean p2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    .line 22
    iget p2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    iput p2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 23
    iget-boolean p2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    iput-boolean p2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    .line 24
    iget-boolean p2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mStateful:Z

    iput-boolean p2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mStateful:Z

    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCanConstantState:Z

    iput-boolean p2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedConstantState:Z

    .line 26
    iget-boolean p1, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    iput-boolean p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    goto :goto_2

    .line 27
    :cond_2
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    :goto_2
    return-void
.end method

.method public static synthetic access$000(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    return p0
.end method

.method public static synthetic access$002(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    return p1
.end method


# virtual methods
.method public canConstantState()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedConstantState:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCanConstantState:Z

    .line 3
    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 4
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v4, v4, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-nez v4, :cond_0

    .line 5
    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCanConstantState:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedConstantState:Z

    .line 7
    :cond_2
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCanConstantState:Z

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    return v0
.end method

.method public final getOpacity()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    return v0

    .line 3
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    if-lez v0, :cond_1

    .line 4
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x2

    :goto_0
    const/4 v2, 0x1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    .line 5
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v4, v4, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    invoke-static {v1, v4}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_2
    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 7
    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    return v1
.end method

.method public final isStateful()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mStateful:Z

    return v0

    .line 3
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 4
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    :goto_1
    iput-boolean v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mStateful:Z

    .line 6
    iput-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    return v1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method
