.class public Landroid/hardware/camera2/CameraMetadata$Key;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraMetadata;
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Key needs a valid name"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Type needs to be non-null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mName:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Landroid/hardware/camera2/CameraMetadata$Key;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Landroid/hardware/camera2/CameraMetadata$Key;

    .line 3
    iget-object v0, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mName:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/camera2/CameraMetadata$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mHasTag:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTag(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mTag:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mHasTag:Z

    .line 4
    :cond_0
    iget v0, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mTag:I

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

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
