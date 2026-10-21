.class public Landroid/hardware/camera2/impl/MetadataMarshalString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/camera2/impl/MetadataMarshalClass;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/impl/MetadataMarshalClass<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final UTF8_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/impl/MetadataMarshalString;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNativeSize(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public isNativeTypeSupported(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;IZ)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/MetadataMarshalString;->marshal(Ljava/lang/String;Ljava/nio/ByteBuffer;IZ)I

    move-result p1

    return p1
.end method

.method public marshal(Ljava/lang/String;Ljava/nio/ByteBuffer;IZ)I
    .locals 0

    .line 2
    sget-object p3, Landroid/hardware/camera2/impl/MetadataMarshalString;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    if-nez p4, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p3, 0x0

    .line 4
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5
    :cond_0
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/impl/MetadataMarshalString;->unmarshal(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    const/4 p2, 0x0

    move v0, p2

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, p2

    :goto_1
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    add-int/lit8 v1, v0, 0x1

    .line 6
    new-array v2, v1, [B

    .line 7
    invoke-virtual {p1, v2, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 8
    new-instance p1, Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/impl/MetadataMarshalString;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p1, v2, p2, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Strings must be null-terminated"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
