.class final Landroid/graphics/drawable/RotateDrawable$RotateState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RotateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RotateState"
.end annotation


# instance fields
.field private mCanConstantState:Z

.field public mChangingConfigurations:I

.field private mCheckedConstantState:Z

.field public mCurrentDegrees:F

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mFromDegrees:F

.field public mPivotX:F

.field public mPivotXRel:Z

.field public mPivotY:F

.field public mPivotYRel:Z

.field public mToDegrees:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/graphics/drawable/RotateDrawable;Landroid/content/res/Resources;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 2
    iget-object v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4
    :goto_0
    iget-object p3, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    iget-object p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p3, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 6
    iget-boolean p2, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    iput-boolean p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    .line 7
    iget p2, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    iput p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 8
    iget-boolean p2, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    iput-boolean p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    .line 9
    iget p2, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    iput p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 10
    iget p2, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    iput p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    iput p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    .line 11
    iget p1, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    iput p1, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCheckedConstantState:Z

    iput-boolean p1, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCanConstantState:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public canConstantState()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCheckedConstantState:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCanConstantState:Z

    .line 3
    iput-boolean v1, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCheckedConstantState:Z

    .line 4
    :cond_1
    iget-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCanConstantState:Z

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/RotateDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/RotateDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 2
    new-instance v0, Landroid/graphics/drawable/RotateDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/RotateDrawable$1;)V

    return-object v0
.end method
