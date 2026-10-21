.class public Landroid/hardware/camera2/impl/MetadataMarshalRect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/camera2/impl/MetadataMarshalClass;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/impl/MetadataMarshalClass<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMarshalingClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public getNativeSize(I)I
    .locals 0

    const/16 p1, 0x10

    return p1
.end method

.method public isNativeTypeSupported(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public marshal(Landroid/graphics/Rect;Ljava/nio/ByteBuffer;IZ)I
    .locals 0

    const/16 p3, 0x10

    if-eqz p4, :cond_0

    return p3

    .line 2
    :cond_0
    iget p4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    iget p4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return p3
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;IZ)I
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/MetadataMarshalRect;->marshal(Landroid/graphics/Rect;Ljava/nio/ByteBuffer;IZ)I

    move-result p1

    return p1
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;I)Landroid/graphics/Rect;
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    add-int/2addr v1, p2

    add-int/2addr p1, v0

    .line 6
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2, v0, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/impl/MetadataMarshalRect;->unmarshal(Ljava/nio/ByteBuffer;I)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method
