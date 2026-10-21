.class public final Landroid/hardware/camera2/Size;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/hardware/camera2/Size;->mWidth:I

    .line 3
    iput p2, p0, Landroid/hardware/camera2/Size;->mHeight:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/Size;

    if-eqz v2, :cond_2

    .line 2
    check-cast p1, Landroid/hardware/camera2/Size;

    .line 3
    iget v2, p0, Landroid/hardware/camera2/Size;->mWidth:I

    iget v3, p1, Landroid/hardware/camera2/Size;->mWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/camera2/Size;->mHeight:I

    iget p1, p1, Landroid/hardware/camera2/Size;->mHeight:I

    if-ne v2, p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/camera2/Size;->mHeight:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/camera2/Size;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Landroid/hardware/camera2/Size;->mWidth:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    .line 2
    iget v4, p0, Landroid/hardware/camera2/Size;->mHeight:I

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/hardware/camera2/Size;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/camera2/Size;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
