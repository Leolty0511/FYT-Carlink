.class Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/LauncherIcons$ShadowDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyConstantState"
.end annotation


# instance fields
.field final mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

.field final mPaint:Landroid/graphics/Paint;

.field final mShadow:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;->mPaint:Landroid/graphics/Paint;

    .line 11
    .line 12
    iput-object p1, p0, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;->mShadow:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    iput-object p2, p0, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    iget-object v0, p0, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Landroid/util/LauncherIcons$ShadowDrawable;

    invoke-direct {v0, p0}, Landroid/util/LauncherIcons$ShadowDrawable;-><init>(Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;)V

    return-object v0
.end method
