.class final Landroid/graphics/drawable/RotateDrawable$RotateState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
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
.field mCurrentDegrees:F

.field mFromDegrees:F

.field mPivotX:F

.field mPivotXRel:Z

.field mPivotY:F

.field mPivotYRel:Z

.field private mThemeAttrs:[I

.field mToDegrees:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    .line 6
    .line 7
    const/high16 v0, 0x3f000000    # 0.5f

    .line 8
    .line 9
    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 10
    .line 11
    iput-boolean p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    .line 12
    .line 13
    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iput p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    .line 17
    .line 18
    const/high16 v0, 0x43b40000    # 360.0f

    .line 19
    .line 20
    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    .line 21
    .line 22
    iput p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-boolean p2, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    .line 27
    .line 28
    iput-boolean p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    .line 29
    .line 30
    iget p2, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 31
    .line 32
    iput p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 33
    .line 34
    iget-boolean p2, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    .line 35
    .line 36
    iput-boolean p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    .line 37
    .line 38
    iget p2, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 39
    .line 40
    iput p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 41
    .line 42
    iget p2, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    .line 43
    .line 44
    iput p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    .line 45
    .line 46
    iget p2, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    .line 47
    .line 48
    iput p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    .line 49
    .line 50
    iget p1, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    .line 51
    .line 52
    iput p1, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public static synthetic access$000(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I
    .locals 0

    iget-object p0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mThemeAttrs:[I

    return-object p0
.end method

.method public static synthetic access$002(Landroid/graphics/drawable/RotateDrawable$RotateState;[I)[I
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mThemeAttrs:[I

    return-object p1
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/RotateDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/RotateDrawable$1;)V

    return-object v0
.end method
