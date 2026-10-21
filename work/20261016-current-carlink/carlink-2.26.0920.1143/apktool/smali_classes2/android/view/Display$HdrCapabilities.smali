.class public final Landroid/view/Display$HdrCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HdrCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$HdrCapabilities$HdrType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/Display$HdrCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final HDR_TYPE_DOLBY_VISION:I = 0x1

.field public static final HDR_TYPE_HDR10:I = 0x2

.field public static final HDR_TYPE_HLG:I = 0x3

.field public static final INVALID_LUMINANCE:F = -1.0f


# instance fields
.field private mMaxAverageLuminance:F

.field private mMaxLuminance:F

.field private mMinLuminance:F

.field private mSupportedHdrTypes:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/Display$HdrCapabilities$1;

    invoke-direct {v0}, Landroid/view/Display$HdrCapabilities$1;-><init>()V

    sput-object v0, Landroid/view/Display$HdrCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 5
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 6
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 13
    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    const/high16 v0, -0x40800000    # -1.0f

    .line 14
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 15
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 16
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/Display$HdrCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/Display$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/Display$HdrCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([IFFF)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 9
    iput p2, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 10
    iput p3, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 11
    iput p4, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

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
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/view/Display$HdrCapabilities;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroid/view/Display$HdrCapabilities;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 14
    .line 15
    iget-object v3, p1, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 16
    .line 17
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 24
    .line 25
    iget v3, p1, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 26
    .line 27
    cmpl-float v1, v1, v3

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 32
    .line 33
    iget v3, p1, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 34
    .line 35
    cmpl-float v1, v1, v3

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 40
    .line 41
    iget p1, p1, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 42
    .line 43
    cmpl-float p1, v1, p1

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v0, v2

    .line 49
    :goto_0
    return v0
.end method

.method public getDesiredMaxAverageLuminance()F
    .locals 1

    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    return v0
.end method

.method public getDesiredMaxLuminance()F
    .locals 1

    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    return v0
.end method

.method public getDesiredMinLuminance()F
    .locals 1

    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    return v0
.end method

.method public getSupportedHdrTypes()[I
    .locals 1

    iget-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit16 v0, v0, 0x187

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x11

    .line 10
    .line 11
    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    mul-int/lit8 v1, v1, 0x11

    .line 19
    .line 20
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/2addr v0, v1

    .line 27
    mul-int/lit8 v0, v0, 0x11

    .line 28
    .line 29
    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    return v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    iput-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    aput v3, v2, v1

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 40
    .line 41
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 2
    .line 3
    array-length p2, p2

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :goto_0
    iget-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    if-ge p2, v1, :cond_0

    .line 12
    .line 13
    aget v0, v0, p2

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 p2, p2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget p2, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
