.class public Landroid/hardware/camera2/impl/CameraMetadataNative$Key;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraMetadataNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasTag:Z

.field private final mHash:I

.field private final mName:Ljava/lang/String;

.field private mTag:I

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mTypeReference:Landroid/hardware/camera2/utils/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mVendorId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 19
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mVendorId:J

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 20
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    .line 21
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mType:Ljava/lang/Class;

    .line 22
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->hashCode()I

    move-result p2

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHash:I

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "TypeReference needs to be non-null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Key needs a valid name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 11
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mVendorId:J

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 12
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mType:Ljava/lang/Class;

    .line 14
    invoke-static {p2}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/Class;)Landroid/hardware/camera2/utils/TypeReference;

    move-result-object p2

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->hashCode()I

    move-result p2

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHash:I

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Type needs to be non-null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Key needs a valid name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mVendorId:J

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mType:Ljava/lang/Class;

    .line 5
    iput-wide p3, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mVendorId:J

    .line 6
    invoke-static {p2}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/Class;)Landroid/hardware/camera2/utils/TypeReference;

    move-result-object p2

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->hashCode()I

    move-result p2

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHash:I

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Type needs to be non-null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Key needs a valid name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
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
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/CaptureResult$Key;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    check-cast p1, Landroid/hardware/camera2/CaptureResult$Key;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    instance-of v2, p1, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    check-cast p1, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    instance-of v2, p1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :cond_4
    instance-of v2, p1, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 53
    .line 54
    if-eqz v2, :cond_6

    .line 55
    .line 56
    check-cast p1, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 57
    .line 58
    :goto_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v3, p1, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_5

    .line 67
    .line 68
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    .line 69
    .line 70
    iget-object p1, p1, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Landroid/hardware/camera2/utils/TypeReference;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    move v0, v1

    .line 80
    :goto_1
    return v0

    .line 81
    :cond_6
    :goto_2
    return v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHasTag:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mVendorId:J

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTag(Ljava/lang/String;J)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTag:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHasTag:Z

    .line 17
    .line 18
    :cond_0
    iget v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTag:I

    .line 19
    .line 20
    return v0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public final getTypeReference()Landroid/hardware/camera2/utils/TypeReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    return-object v0
.end method

.method public final getVendorId()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mVendorId:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHash:I

    return v0
.end method
