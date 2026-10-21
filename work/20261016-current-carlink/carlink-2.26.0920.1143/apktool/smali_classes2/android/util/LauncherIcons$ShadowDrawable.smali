.class Landroid/util/LauncherIcons$ShadowDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/LauncherIcons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShadowDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;
    }
.end annotation


# instance fields
.field final mState:Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 2
    new-instance v0, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v0, p0, Landroid/util/LauncherIcons$ShadowDrawable;->mState:Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;

    return-void
.end method

.method public constructor <init>(Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;)V
    .locals 1

    .line 3
    iget-object v0, p1, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iput-object p1, p0, Landroid/util/LauncherIcons$ShadowDrawable;->mState:Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/util/LauncherIcons$ShadowDrawable;->mState:Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;

    .line 6
    .line 7
    iget-object v2, v1, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;->mShadow:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iget-object v1, v1, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;->mPaint:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    const v2, 0x3f75c28e    # 0.9599999f

    .line 24
    .line 25
    .line 26
    mul-float/2addr v1, v2

    .line 27
    const v3, 0x3caaaaab

    .line 28
    .line 29
    .line 30
    mul-float/2addr v1, v3

    .line 31
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    int-to-float v0, v0

    .line 36
    mul-float/2addr v0, v2

    .line 37
    const v3, 0x3c2aaaab

    .line 38
    .line 39
    .line 40
    mul-float/2addr v0, v3

    .line 41
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 45
    .line 46
    .line 47
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Landroid/util/LauncherIcons$ShadowDrawable;->mState:Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;

    return-object v0
.end method
