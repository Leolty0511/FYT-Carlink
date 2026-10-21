.class public Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/video/DimensionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenSettings"
.end annotation


# instance fields
.field private final mAdvertisedDpi:F

.field private final mHeight:I

.field private final mPhysicalDpi:F

.field private final mScale:Z

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIFFZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->mWidth:I

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->mHeight:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->mAdvertisedDpi:F

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->mPhysicalDpi:F

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->mScale:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getEmulatedDpi()F
    .locals 1

    iget v0, p0, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->mAdvertisedDpi:F

    return v0
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->mHeight:I

    return v0
.end method

.method public final getPhysicalDpi()F
    .locals 1

    iget v0, p0, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->mPhysicalDpi:F

    return v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->mWidth:I

    return v0
.end method

.method public final isNativeSize()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->mWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->mHeight:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isScaled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->mScale:Z

    return v0
.end method
