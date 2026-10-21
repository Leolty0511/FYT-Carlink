.class Landroid/graphics/drawable/VectorDrawable$VClipPath;
.super Landroid/graphics/drawable/VectorDrawable$VPath;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VClipPath"
.end annotation


# static fields
.field private static final NATIVE_ALLOCATION_SIZE:I = 0x78


# instance fields
.field private final mNativePtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    .line 2
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->access$3700()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VClipPath;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    .line 4
    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$3800(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    or-int/2addr v0, v1

    .line 8
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    .line 18
    .line 19
    iget-wide v1, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Landroid/graphics/drawable/VectorDrawable;->access$2000(JLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    new-instance v0, Landroid/util/PathParser$PathData;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 37
    .line 38
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-static {v0, v1, p1, v2}, Landroid/graphics/drawable/VectorDrawable;->access$3900(JLjava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    return-wide v0
.end method

.method public getNativeSize()I
    .locals 1

    const/16 v0, 0x78

    return v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/internal/R$styleable;->VectorDrawableClipPath:[I

    .line 2
    .line 3
    invoke-static {p1, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStateChange([I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
