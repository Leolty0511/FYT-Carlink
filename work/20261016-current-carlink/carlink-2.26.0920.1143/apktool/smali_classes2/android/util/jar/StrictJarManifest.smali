.class public Landroid/util/jar/StrictJarManifest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/jar/StrictJarManifest$Chunk;
    }
.end annotation


# static fields
.field static final LINE_LENGTH_LIMIT:I = 0x48

.field private static final LINE_SEPARATOR:[B

.field private static final VALUE_SEPARATOR:[B


# instance fields
.field private chunks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/jar/StrictJarManifest$Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private final entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private final mainAttributes:Ljava/util/jar/Attributes;

.field private mainEnd:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    .line 8
    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    fill-array-data v0, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroid/util/jar/StrictJarManifest;->VALUE_SEPARATOR:[B

    .line 15
    .line 16
    return-void

    .line 17
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    nop

    :array_1
    .array-data 1
        0x3at
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    return-void
.end method

.method public constructor <init>(Landroid/util/jar/StrictJarManifest;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 8
    invoke-virtual {p1}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifest;-><init>()V

    .line 5
    invoke-static {p1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/jar/StrictJarManifest;->read([B)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifest;-><init>()V

    if-eqz p2, :cond_0

    .line 10
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Landroid/util/jar/StrictJarManifest;->read([B)V

    return-void
.end method

.method private read([B)V
    .locals 2

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/util/jar/StrictJarManifestReader;

    iget-object v1, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-direct {v0, p1, v1}, Landroid/util/jar/StrictJarManifestReader;-><init>([BLjava/util/jar/Attributes;)V

    .line 4
    invoke-virtual {v0}, Landroid/util/jar/StrictJarManifestReader;->getEndOfMainSection()I

    move-result p1

    iput p1, p0, Landroid/util/jar/StrictJarManifest;->mainEnd:I

    .line 5
    iget-object p1, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    iget-object v1, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Landroid/util/jar/StrictJarManifestReader;->readEntries(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static write(Landroid/util/jar/StrictJarManifest;Ljava/io/OutputStream;)V
    .locals 7

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    const/16 v1, 0x48

    .line 3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4
    sget-object v2, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    .line 5
    iget-object v3, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6
    sget-object v2, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    .line 7
    iget-object v3, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_2

    .line 8
    invoke-static {p1, v2, v3, v0, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    .line 9
    iget-object v3, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v3}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 10
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/Attributes$Name;

    .line 12
    invoke-virtual {v4, v2}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 13
    iget-object v5, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v5, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5, v0, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 14
    :cond_2
    sget-object v2, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 15
    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 16
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 18
    sget-object v4, Ljava/util/jar/Attributes$Name;->NAME:Ljava/util/jar/Attributes$Name;

    invoke-static {p1, v4, v3, v0, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    .line 19
    iget-object v4, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/Attributes;

    .line 20
    invoke-virtual {v3}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 21
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 22
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/Attributes$Name;

    .line 23
    invoke-virtual {v3, v5}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6, v0, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 24
    :cond_3
    sget-object v3, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private static writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Landroid/util/jar/StrictJarManifest;->VALUE_SEPARATOR:[B

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    rsub-int/lit8 p1, p1, 0x48

    .line 31
    .line 32
    add-int/lit8 p1, p1, -0x2

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    const/4 p2, 0x1

    .line 42
    invoke-virtual {p3, p1, p4, p2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 47
    .line 48
    if-ne v0, p2, :cond_0

    .line 49
    .line 50
    invoke-virtual {p3, p4}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    :cond_0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p4}, Ljava/nio/Buffer;->position()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 67
    .line 68
    .line 69
    sget-object v0, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 72
    .line 73
    .line 74
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 75
    .line 76
    if-ne v0, p2, :cond_1

    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    const/16 p2, 0x20

    .line 80
    .line 81
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    const/16 v0, 0x47

    .line 89
    .line 90
    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 91
    .line 92
    .line 93
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/util/jar/StrictJarManifest;

    invoke-direct {v0, p0}, Landroid/util/jar/StrictJarManifest;-><init>(Landroid/util/jar/StrictJarManifest;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    iget-object v1, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 17
    .line 18
    check-cast p1, Landroid/util/jar/StrictJarManifest;

    .line 19
    .line 20
    iget-object v2, p1, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/util/jar/Attributes;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    return v0

    .line 29
    :cond_2
    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;
    .locals 1

    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/jar/Attributes;

    return-object p1
.end method

.method public getChunk(Ljava/lang/String;)Landroid/util/jar/StrictJarManifest$Chunk;
    .locals 1

    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/jar/StrictJarManifest$Chunk;

    return-object p1
.end method

.method public getEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMainAttributes()Ljava/util/jar/Attributes;
    .locals 1

    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    return-object v0
.end method

.method public getMainAttributesEnd()I
    .locals 1

    iget v0, p0, Landroid/util/jar/StrictJarManifest;->mainEnd:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-static {p1}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/jar/StrictJarManifest;->read([B)V

    return-void
.end method

.method public removeChunks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/util/jar/StrictJarManifest;->write(Landroid/util/jar/StrictJarManifest;Ljava/io/OutputStream;)V

    return-void
.end method
