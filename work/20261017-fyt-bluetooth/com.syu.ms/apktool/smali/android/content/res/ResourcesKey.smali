.class public final Landroid/content/res/ResourcesKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mDisplayId:I

.field private final mHash:I

.field public final mOverrideConfiguration:Landroid/content/res/Configuration;

.field public final mResDir:Ljava/lang/String;

.field public final mScale:F

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/res/Configuration;FLandroid/os/IBinder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 3
    iput-object p1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 4
    iput p2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {v0, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6
    :cond_0
    iput p4, p0, Landroid/content/res/ResourcesKey;->mScale:F

    .line 7
    iput-object p5, p0, Landroid/content/res/ResourcesKey;->mToken:Landroid/os/IBinder;

    const/16 p3, 0x20f

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    :goto_0
    add-int/2addr p3, p1

    mul-int/lit8 p3, p3, 0x1f

    add-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0x1f

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Configuration;->hashCode()I

    move-result p1

    add-int/2addr p3, p1

    mul-int/lit8 p3, p3, 0x1f

    .line 10
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    add-int/2addr p3, p1

    .line 11
    iput p3, p0, Landroid/content/res/ResourcesKey;->mHash:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/content/res/ResourcesKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Landroid/content/res/ResourcesKey;

    .line 3
    iget-object v0, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget v0, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget v2, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-eq v0, v2, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-eq v0, v2, :cond_5

    if-eqz v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    :goto_0
    return v1

    .line 7
    :cond_5
    iget v0, p0, Landroid/content/res/ResourcesKey;->mScale:F

    iget p1, p1, Landroid/content/res/ResourcesKey;->mScale:F

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public hasOverrideConfiguration()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
