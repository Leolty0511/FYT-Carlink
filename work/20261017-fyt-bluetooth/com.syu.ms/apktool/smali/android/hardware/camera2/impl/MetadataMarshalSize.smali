.class public Landroid/hardware/camera2/impl/MetadataMarshalSize;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/camera2/impl/MetadataMarshalClass;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/impl/MetadataMarshalClass<",
        "Landroid/hardware/camera2/Size;",
        ">;"
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x8


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
            "Landroid/hardware/camera2/Size;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/hardware/camera2/Size;

    return-object v0
.end method

.method public getNativeSize(I)I
    .locals 0

    const/16 p1, 0x8

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

.method public marshal(Landroid/hardware/camera2/Size;Ljava/nio/ByteBuffer;IZ)I
    .locals 0

    const/16 p3, 0x8

    if-eqz p4, :cond_0

    return p3

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/Size;->getWidth()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Landroid/hardware/camera2/Size;->getHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return p3
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;IZ)I
    .locals 0

    .line 1
    check-cast p1, Landroid/hardware/camera2/Size;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/MetadataMarshalSize;->marshal(Landroid/hardware/camera2/Size;Ljava/nio/ByteBuffer;IZ)I

    move-result p1

    return p1
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;I)Landroid/hardware/camera2/Size;
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 4
    new-instance v0, Landroid/hardware/camera2/Size;

    invoke-direct {v0, p2, p1}, Landroid/hardware/camera2/Size;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/impl/MetadataMarshalSize;->unmarshal(Ljava/nio/ByteBuffer;I)Landroid/hardware/camera2/Size;

    move-result-object p1

    return-object p1
.end method
