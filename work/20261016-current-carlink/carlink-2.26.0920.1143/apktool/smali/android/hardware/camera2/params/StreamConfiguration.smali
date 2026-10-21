.class public final Landroid/hardware/camera2/params/StreamConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mFormat:I

.field private final mHeight:I

.field private final mInput:Z

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    .line 9
    .line 10
    const-string/jumbo p1, "width must be positive"

    .line 11
    .line 12
    .line 13
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    .line 18
    .line 19
    const-string/jumbo p1, "height must be positive"

    .line 20
    .line 21
    .line 22
    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    .line 27
    .line 28
    iput-boolean p4, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    .line 29
    .line 30
    return-void
.end method


# virtual methods
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
    instance-of v2, p1, Landroid/hardware/camera2/params/StreamConfiguration;

    .line 10
    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    check-cast p1, Landroid/hardware/camera2/params/StreamConfiguration;

    .line 14
    .line 15
    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    .line 16
    .line 17
    iget v3, p1, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    .line 18
    .line 19
    if-ne v2, v3, :cond_2

    .line 20
    .line 21
    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    .line 22
    .line 23
    iget v3, p1, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    .line 28
    .line 29
    iget v3, p1, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    .line 30
    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    iget-boolean v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    .line 34
    .line 35
    iget-boolean p1, p1, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    .line 36
    .line 37
    if-ne v2, p1, :cond_2

    .line 38
    .line 39
    move v0, v1

    .line 40
    :cond_2
    return v0
.end method

.method public final getFormat()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    return v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 3

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    .line 6
    .line 7
    aput v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    .line 11
    .line 12
    aput v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    .line 16
    .line 17
    aput v2, v0, v1

    .line 18
    .line 19
    iget-boolean v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput v1, v0, v2

    .line 23
    .line 24
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public isInput()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    return v0
.end method

.method public isOutput()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
