.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector$MarshalerRggbChannelVector;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MarshalerRggbChannelVector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Landroid/hardware/camera2/params/RggbChannelVector;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Landroid/hardware/camera2/params/RggbChannelVector;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector$MarshalerRggbChannelVector;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public marshal(Landroid/hardware/camera2/params/RggbChannelVector;Ljava/nio/ByteBuffer;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/RggbChannelVector;->getComponent(I)F

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector$MarshalerRggbChannelVector;->marshal(Landroid/hardware/camera2/params/RggbChannelVector;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/RggbChannelVector;
    .locals 4

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    .line 6
    new-instance v3, Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-direct {v3, v0, v1, v2, p1}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    return-object v3
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector$MarshalerRggbChannelVector;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/RggbChannelVector;

    move-result-object p1

    return-object p1
.end method
