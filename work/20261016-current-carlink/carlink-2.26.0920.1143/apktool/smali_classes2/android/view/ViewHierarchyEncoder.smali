.class public Landroid/view/ViewHierarchyEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SIG_BOOLEAN:B = 0x5at

.field private static final SIG_BYTE:B = 0x42t

.field private static final SIG_DOUBLE:B = 0x44t

.field private static final SIG_END_MAP:S = 0x0s

.field private static final SIG_FLOAT:B = 0x46t

.field private static final SIG_INT:B = 0x49t

.field private static final SIG_LONG:B = 0x4at

.field private static final SIG_MAP:B = 0x4dt

.field private static final SIG_SHORT:B = 0x53t

.field private static final SIG_STRING:B = 0x52t


# instance fields
.field private mCharset:Ljava/nio/charset/Charset;

.field private mPropertyId:S

.field private final mPropertyNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private final mStream:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    const/16 v1, 0xc8

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-short v0, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyId:S

    .line 15
    .line 16
    const-string/jumbo v0, "utf-8"

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mCharset:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    new-instance v0, Ljava/io/DataOutputStream;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    .line 31
    .line 32
    return-void
.end method

.method private createPropertyIndex(Ljava/lang/String;)S
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Short;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-short v0, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyId:S

    .line 12
    .line 13
    add-int/lit8 v1, v0, 0x1

    .line 14
    .line 15
    int-to-short v1, v1

    .line 16
    iput-short v1, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyId:S

    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method private endPropertyMap()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    return-void
.end method

.method private startPropertyMap()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private writeBoolean(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    .line 2
    .line 3
    const/16 v1, 0x5a

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    return-void
.end method

.method private writeFloat(F)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    .line 2
    .line 3
    const/16 v1, 0x46

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    return-void
.end method

.method private writeInt(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    .line 2
    .line 3
    const/16 v1, 0x49

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    return-void
.end method

.method private writeShort(S)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    .line 2
    .line 3
    const/16 v1, 0x53

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    return-void
.end method

.method private writeString(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    .line 6
    .line 7
    const/16 v1, 0x52

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mCharset:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    array-length v0, p1

    .line 19
    const/16 v1, 0x7fff

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    int-to-short v0, v0

    .line 26
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v1, p1, v2, v0}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    return-void
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;F)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result p1

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    .line 8
    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeFloat(F)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result p1

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    .line 6
    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeInt(I)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result p1

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    .line 10
    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;S)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result p1

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    .line 4
    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result p1

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    .line 2
    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeBoolean(Z)V

    return-void
.end method

.method public addPropertyKey(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result p1

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    return-void
.end method

.method public beginObject(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->startPropertyMap()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "meta:__name__"

    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "meta:__hash__"

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public endObject()V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->endPropertyMap()V

    return-void
.end method

.method public endStream()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->startPropertyMap()V

    .line 2
    .line 3
    .line 4
    const-string v0, "__name__"

    .line 5
    .line 6
    const-string v1, "propertyIndex"

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/Short;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-direct {p0, v2}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {p0, v1}, Landroid/view/ViewHierarchyEncoder;->writeString(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->endPropertyMap()V

    .line 57
    .line 58
    .line 59
    return-void
.end method
