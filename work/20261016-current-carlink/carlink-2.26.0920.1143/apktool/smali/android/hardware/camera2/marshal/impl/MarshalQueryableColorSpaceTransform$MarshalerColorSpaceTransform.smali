.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform$MarshalerColorSpaceTransform;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MarshalerColorSpaceTransform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Landroid/hardware/camera2/params/ColorSpaceTransform;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Landroid/hardware/camera2/params/ColorSpaceTransform;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform$MarshalerColorSpaceTransform;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;

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

    const/16 v0, 0x48

    return v0
.end method

.method public marshal(Landroid/hardware/camera2/params/ColorSpaceTransform;Ljava/nio/ByteBuffer;)V
    .locals 3

    const/16 v0, 0x12

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([II)V

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    aget p1, v1, v2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform$MarshalerColorSpaceTransform;->marshal(Landroid/hardware/camera2/params/ColorSpaceTransform;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 4

    const/16 v0, 0x12

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-direct {p1, v1}, Landroid/hardware/camera2/params/ColorSpaceTransform;-><init>([I)V

    return-object p1
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform$MarshalerColorSpaceTransform;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object p1

    return-object p1
.end method
