.class Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/MarshalRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarshalToken"
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
.field private final hash:I

.field final nativeType:I

.field final typeReference:Landroid/hardware/camera2/utils/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->typeReference:Landroid/hardware/camera2/utils/TypeReference;

    .line 5
    .line 6
    iput p2, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->nativeType:I

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    xor-int/2addr p1, p2

    .line 13
    iput p1, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->hash:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;

    .line 7
    .line 8
    iget-object v0, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->typeReference:Landroid/hardware/camera2/utils/TypeReference;

    .line 9
    .line 10
    iget-object v2, p1, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->typeReference:Landroid/hardware/camera2/utils/TypeReference;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/utils/TypeReference;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget v0, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->nativeType:I

    .line 19
    .line 20
    iget p1, p1, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->nativeType:I

    .line 21
    .line 22
    if-ne v0, p1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->hash:I

    return v0
.end method
