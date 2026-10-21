.class final Landroid/graphics/drawable/ScaleDrawable$ScaleState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ScaleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScaleState"
.end annotation


# static fields
.field private static final DO_NOT_SCALE:F = -1.0f


# instance fields
.field mGravity:I

.field mInitialLevel:I

.field mScaleHeight:F

.field mScaleWidth:F

.field private mThemeAttrs:[I

.field mUseIntrinsicSizeAsMin:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 2
    .line 3
    .line 4
    const/high16 p2, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput p2, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    .line 7
    .line 8
    iput p2, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    .line 9
    .line 10
    const/4 p2, 0x3

    .line 11
    iput p2, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    iput-boolean p2, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    .line 15
    .line 16
    iput p2, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget p2, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    .line 21
    .line 22
    iput p2, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    .line 23
    .line 24
    iget p2, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    .line 25
    .line 26
    iput p2, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    .line 27
    .line 28
    iget p2, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    .line 29
    .line 30
    iput p2, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    .line 31
    .line 32
    iget-boolean p2, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    .line 33
    .line 34
    iput-boolean p2, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    .line 35
    .line 36
    iget p1, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    .line 37
    .line 38
    iput p1, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public static synthetic access$000(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I
    .locals 0

    iget-object p0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mThemeAttrs:[I

    return-object p0
.end method

.method public static synthetic access$002(Landroid/graphics/drawable/ScaleDrawable$ScaleState;[I)[I
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mThemeAttrs:[I

    return-object p1
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ScaleDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;Landroid/graphics/drawable/ScaleDrawable$1;)V

    return-object v0
.end method
