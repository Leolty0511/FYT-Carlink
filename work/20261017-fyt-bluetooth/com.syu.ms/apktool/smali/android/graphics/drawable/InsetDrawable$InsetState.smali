.class final Landroid/graphics/drawable/InsetDrawable$InsetState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/InsetDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InsetState"
.end annotation


# instance fields
.field public mCanConstantState:Z

.field public mChangingConfigurations:I

.field public mCheckedConstantState:Z

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mInsetBottom:I

.field public mInsetLeft:I

.field public mInsetRight:I

.field public mInsetTop:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/graphics/drawable/InsetDrawable;Landroid/content/res/Resources;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 2
    iget-object v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4
    :goto_0
    iget-object p3, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    iget-object p2, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p3, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 6
    iget p2, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    iput p2, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    .line 7
    iget p2, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    iput p2, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    .line 8
    iget p2, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    iput p2, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    .line 9
    iget p1, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    iput p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mCanConstantState:Z

    iput-boolean p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mCheckedConstantState:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public canConstantState()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mCheckedConstantState:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mCanConstantState:Z

    .line 3
    iput-boolean v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mCheckedConstantState:Z

    .line 4
    :cond_1
    iget-boolean v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mCanConstantState:Z

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 2
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable$1;)V

    return-object v0
.end method
