.class public Landroid/hardware/input/TouchCalibration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/TouchCalibration;",
            ">;"
        }
    .end annotation
.end field

.field public static final IDENTITY:Landroid/hardware/input/TouchCalibration;


# instance fields
.field private final mXOffset:F

.field private final mXScale:F

.field private final mXYMix:F

.field private final mYOffset:F

.field private final mYScale:F

.field private final mYXMix:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/input/TouchCalibration;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/hardware/input/TouchCalibration;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    .line 7
    .line 8
    new-instance v0, Landroid/hardware/input/TouchCalibration$1;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/hardware/input/TouchCalibration$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    .line 4
    iput p2, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    .line 5
    iput p3, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    .line 6
    iput p4, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    .line 7
    iput p5, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    .line 8
    iput p6, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/hardware/input/TouchCalibration;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Landroid/hardware/input/TouchCalibration;

    .line 11
    .line 12
    iget v1, p1, Landroid/hardware/input/TouchCalibration;->mXScale:F

    .line 13
    .line 14
    iget v3, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    .line 15
    .line 16
    cmpl-float v1, v1, v3

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget v1, p1, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    .line 21
    .line 22
    iget v3, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    .line 23
    .line 24
    cmpl-float v1, v1, v3

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget v1, p1, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    .line 29
    .line 30
    iget v3, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    .line 31
    .line 32
    cmpl-float v1, v1, v3

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    iget v1, p1, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    .line 37
    .line 38
    iget v3, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    .line 39
    .line 40
    cmpl-float v1, v1, v3

    .line 41
    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    iget v1, p1, Landroid/hardware/input/TouchCalibration;->mYScale:F

    .line 45
    .line 46
    iget v3, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    .line 47
    .line 48
    cmpl-float v1, v1, v3

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    iget p1, p1, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    .line 53
    .line 54
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    .line 55
    .line 56
    cmpl-float p1, p1, v1

    .line 57
    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move v0, v2

    .line 62
    :goto_0
    return v0

    .line 63
    :cond_2
    return v2
.end method

.method public getAffineTransform()[F
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget v2, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    .line 6
    .line 7
    aput v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget v2, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    .line 11
    .line 12
    aput v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget v2, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    .line 16
    .line 17
    aput v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    iget v2, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    .line 21
    .line 22
    aput v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    iget v2, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    .line 26
    .line 27
    aput v2, v0, v1

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    iget v2, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    .line 31
    .line 32
    aput v2, v0, v1

    .line 33
    .line 34
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

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
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

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
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

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
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    xor-int/2addr v0, v1

    .line 35
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    xor-int/2addr v0, v1

    .line 42
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

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
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

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
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

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
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

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
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x4

    .line 47
    aput-object v1, v0, v2

    .line 48
    .line 49
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x5

    .line 56
    aput-object v1, v0, v2

    .line 57
    .line 58
    const-string v1, "[%f, %f, %f, %f, %f, %f]"

    .line 59
    .line 60
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
