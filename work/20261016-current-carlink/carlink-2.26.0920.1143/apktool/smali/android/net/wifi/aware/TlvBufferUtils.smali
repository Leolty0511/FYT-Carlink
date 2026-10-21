.class public Landroid/net/wifi/aware/TlvBufferUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;,
        Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;,
        Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValid([BII)Z
    .locals 6

    .line 1
    if-ltz p1, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-gt p1, v0, :cond_5

    .line 5
    .line 6
    if-lez p2, :cond_4

    .line 7
    .line 8
    if-gt p2, v0, :cond_4

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    add-int v3, v2, p1

    .line 17
    .line 18
    add-int v4, v3, p2

    .line 19
    .line 20
    array-length v5, p0

    .line 21
    if-gt v4, v5, :cond_2

    .line 22
    .line 23
    if-ne p2, v0, :cond_1

    .line 24
    .line 25
    aget-byte v2, p0, v3

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 29
    .line 30
    invoke-static {p0, v3, v2}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    :goto_1
    add-int/2addr v2, p2

    .line 35
    add-int/2addr v2, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    array-length p0, p0

    .line 38
    if-ne v2, p0, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    move v0, v1

    .line 42
    :goto_2
    return v0

    .line 43
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string p1, "Invalid arguments - lengthSize must be 1 or 2: lengthSize="

    .line 46
    .line 47
    invoke-static {p1, p2}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string p2, "Invalid arguments - typeSize must be 0, 1, or 2: typeSize="

    .line 58
    .line 59
    invoke-static {p2, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0
.end method
