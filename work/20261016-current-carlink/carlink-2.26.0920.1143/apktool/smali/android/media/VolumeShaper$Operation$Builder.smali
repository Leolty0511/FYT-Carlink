.class public final Landroid/media/VolumeShaper$Operation$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mFlags:I

.field mReplaceId:I

.field mXOffset:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mReplaceId:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 4
    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mXOffset:F

    return-void
.end method

.method public constructor <init>(Landroid/media/VolumeShaper$Operation;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Landroid/media/VolumeShaper$Operation;->access$500(Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mReplaceId:I

    .line 7
    invoke-static {p1}, Landroid/media/VolumeShaper$Operation;->access$600(Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    .line 8
    invoke-static {p1}, Landroid/media/VolumeShaper$Operation;->access$700(Landroid/media/VolumeShaper$Operation;)F

    move-result p1

    iput p1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mXOffset:F

    return-void
.end method

.method private setFlags(I)Landroid/media/VolumeShaper$Operation$Builder;
    .locals 2

    .line 1
    and-int/lit8 v0, p1, -0x4

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, -0x4

    .line 8
    .line 9
    or-int/2addr p1, v0

    .line 10
    iput p1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v1, "flag has unknown bits set: "

    .line 16
    .line 17
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method


# virtual methods
.method public build()Landroid/media/VolumeShaper$Operation;
    .locals 5

    new-instance v0, Landroid/media/VolumeShaper$Operation;

    iget v1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    iget v2, p0, Landroid/media/VolumeShaper$Operation$Builder;->mReplaceId:I

    iget v3, p0, Landroid/media/VolumeShaper$Operation$Builder;->mXOffset:F

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/VolumeShaper$Operation;-><init>(IIFLandroid/media/VolumeShaper$1;)V

    return-object v0
.end method

.method public createIfNeeded()Landroid/media/VolumeShaper$Operation$Builder;
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    return-object p0
.end method

.method public defer()Landroid/media/VolumeShaper$Operation$Builder;
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    return-object p0
.end method

.method public replace(IZ)Landroid/media/VolumeShaper$Operation$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mReplaceId:I

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    .line 6
    .line 7
    or-int/lit8 p1, p1, 0x4

    .line 8
    .line 9
    iput p1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    .line 13
    .line 14
    and-int/lit8 p1, p1, -0x5

    .line 15
    .line 16
    iput p1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    .line 17
    .line 18
    :goto_0
    return-object p0
.end method

.method public reverse()Landroid/media/VolumeShaper$Operation$Builder;
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    return-object p0
.end method

.method public setXOffset(F)Landroid/media/VolumeShaper$Operation$Builder;
    .locals 1

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    cmpl-float v0, p1, v0

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    iput p1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mXOffset:F

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string/jumbo v0, "xOffset > 1.f not allowed"

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v0, "Negative xOffset not allowed"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public terminate()Landroid/media/VolumeShaper$Operation$Builder;
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    return-object p0
.end method
