.class public final Landroid/hardware/camera2/params/RggbChannelVector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BLUE:I = 0x3

.field public static final COUNT:I = 0x4

.field public static final GREEN_EVEN:I = 0x1

.field public static final GREEN_ODD:I = 0x2

.field public static final RED:I


# instance fields
.field private final mBlue:F

.field private final mGreenEven:F

.field private final mGreenOdd:F

.field private final mRed:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "red"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    .line 12
    .line 13
    const-string/jumbo p1, "greenEven"

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    .line 21
    .line 22
    const-string/jumbo p1, "greenOdd"

    .line 23
    .line 24
    .line 25
    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    .line 30
    .line 31
    const-string p1, "blue"

    .line 32
    .line 33
    invoke-static {p4, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    .line 38
    .line 39
    return-void
.end method

.method private toShortString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x2

    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x3

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    const-string/jumbo v1, "{R:%f, G_even:%f, G_odd:%f, B:%f}"

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method


# virtual methods
.method public copyTo([FI)V
    .locals 2

    .line 1
    const-string v0, "destination must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    sub-int/2addr v0, p2

    .line 8
    const/4 v1, 0x4

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    add-int/lit8 v0, p2, 0x0

    .line 12
    .line 13
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    .line 14
    .line 15
    aput v1, p1, v0

    .line 16
    .line 17
    add-int/lit8 v0, p2, 0x1

    .line 18
    .line 19
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    .line 20
    .line 21
    aput v1, p1, v0

    .line 22
    .line 23
    add-int/lit8 v0, p2, 0x2

    .line 24
    .line 25
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    .line 26
    .line 27
    aput v1, p1, v0

    .line 28
    .line 29
    add-int/lit8 p2, p2, 0x3

    .line 30
    .line 31
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    .line 32
    .line 33
    aput v0, p1, p2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 37
    .line 38
    const-string p2, "destination too small to fit elements"

    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-ne p0, p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/RggbChannelVector;

    .line 10
    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    check-cast p1, Landroid/hardware/camera2/params/RggbChannelVector;

    .line 14
    .line 15
    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    .line 16
    .line 17
    iget v3, p1, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    .line 18
    .line 19
    cmpl-float v2, v2, v3

    .line 20
    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    .line 24
    .line 25
    iget v3, p1, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    .line 26
    .line 27
    cmpl-float v2, v2, v3

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    .line 32
    .line 33
    iget v3, p1, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    .line 34
    .line 35
    cmpl-float v2, v2, v3

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    .line 40
    .line 41
    iget p1, p1, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    .line 42
    .line 43
    cmpl-float p1, v2, p1

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    move v0, v1

    .line 48
    :cond_2
    return v0
.end method

.method public getBlue()F
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    return v0
.end method

.method public getComponent(I)F
    .locals 2

    .line 1
    if-ltz p1, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    if-ge p1, v0, :cond_4

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    iget p1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 21
    .line 22
    const-string v1, "Unhandled case "

    .line 23
    .line 24
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    iget p1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    .line 33
    .line 34
    return p1

    .line 35
    :cond_2
    iget p1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    .line 36
    .line 37
    return p1

    .line 38
    :cond_3
    iget p1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    .line 39
    .line 40
    return p1

    .line 41
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v0, "Color channel out of range"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public getGreenEven()F
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    return v0
.end method

.method public getGreenOdd()F
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    return v0
.end method

.method public final getRed()F
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    xor-int/2addr v0, v1

    .line 21
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    xor-int/2addr v0, v1

    .line 28
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Landroid/hardware/camera2/params/RggbChannelVector;->toShortString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 10
    .line 11
    const-string v1, "RggbChannelVector%s"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
