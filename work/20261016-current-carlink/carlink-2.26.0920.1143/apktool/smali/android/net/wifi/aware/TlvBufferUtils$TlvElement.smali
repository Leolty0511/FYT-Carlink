.class public Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/TlvBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlvElement"
.end annotation


# instance fields
.field public length:I

.field public offset:I

.field public refArray:[B

.field public type:I


# direct methods
.method private constructor <init>(II[BI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->type:I

    .line 4
    iput p2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    .line 5
    iput-object p3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->refArray:[B

    .line 6
    iput p4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    add-int/2addr p4, p2

    .line 7
    array-length p1, p3

    if-gt p4, p1, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method

.method public synthetic constructor <init>(II[BILandroid/net/wifi/aware/TlvBufferUtils$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;-><init>(II[BI)V

    return-void
.end method


# virtual methods
.method public getByte()B
    .locals 3

    .line 1
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->refArray:[B

    .line 7
    .line 8
    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    .line 9
    .line 10
    aget-byte v0, v0, v1

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Accesing a byte from a TLV element of length "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public getInt()I
    .locals 3

    .line 1
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->refArray:[B

    .line 7
    .line 8
    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    .line 9
    .line 10
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "Accesing an int from a TLV element of length "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public getShort()S
    .locals 3

    .line 1
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->refArray:[B

    .line 7
    .line 8
    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    .line 9
    .line 10
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "Accesing a short from a TLV element of length "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->refArray:[B

    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    iget v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method
