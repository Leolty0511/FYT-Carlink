.class public Lcom/google/protobuf/MapField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MutabilityOracle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/MapField$MutabilityAwareMap;,
        Lcom/google/protobuf/MapField$ImmutableMessageConverter;,
        Lcom/google/protobuf/MapField$Converter;,
        Lcom/google/protobuf/MapField$StorageMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/MutabilityOracle;"
    }
.end annotation


# instance fields
.field private final converter:Lcom/google/protobuf/MapField$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapField$Converter<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile isMutable:Z

.field private listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mapData:Lcom/google/protobuf/MapField$MutabilityAwareMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapField$MutabilityAwareMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile mode:Lcom/google/protobuf/MapField$StorageMode;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/MapEntry;Lcom/google/protobuf/MapField$StorageMode;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MapEntry<",
            "TK;TV;>;",
            "Lcom/google/protobuf/MapField$StorageMode;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/protobuf/MapField$ImmutableMessageConverter;

    invoke-direct {v0, p1}, Lcom/google/protobuf/MapField$ImmutableMessageConverter;-><init>(Lcom/google/protobuf/MapEntry;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/google/protobuf/MapField;-><init>(Lcom/google/protobuf/MapField$Converter;Lcom/google/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/MapField$Converter;Lcom/google/protobuf/MapField$StorageMode;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MapField$Converter<",
            "TK;TV;>;",
            "Lcom/google/protobuf/MapField$StorageMode;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/MapField;->converter:Lcom/google/protobuf/MapField$Converter;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/protobuf/MapField;->isMutable:Z

    .line 4
    iput-object p2, p0, Lcom/google/protobuf/MapField;->mode:Lcom/google/protobuf/MapField$StorageMode;

    .line 5
    new-instance p1, Lcom/google/protobuf/MapField$MutabilityAwareMap;

    invoke-direct {p1, p0, p3}, Lcom/google/protobuf/MapField$MutabilityAwareMap;-><init>(Lcom/google/protobuf/MutabilityOracle;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/google/protobuf/MapField;->mapData:Lcom/google/protobuf/MapField$MutabilityAwareMap;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/google/protobuf/MapField;->listData:Ljava/util/List;

    return-void
.end method

.method private convertKeyAndValueToMessage(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/protobuf/Message;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/MapField;->converter:Lcom/google/protobuf/MapField$Converter;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/MapField$Converter;->convertKeyAndValueToMessage(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method private convertListToMap(Ljava/util/List;)Lcom/google/protobuf/MapField$MutabilityAwareMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Message;",
            ">;)",
            "Lcom/google/protobuf/MapField$MutabilityAwareMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/google/protobuf/Message;

    .line 21
    .line 22
    invoke-direct {p0, v1, v0}, Lcom/google/protobuf/MapField;->convertMessageToKeyAndValue(Lcom/google/protobuf/Message;Ljava/util/Map;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lcom/google/protobuf/MapField$MutabilityAwareMap;

    .line 27
    .line 28
    invoke-direct {p1, p0, v0}, Lcom/google/protobuf/MapField$MutabilityAwareMap;-><init>(Lcom/google/protobuf/MutabilityOracle;Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method

.method private convertMapToList(Lcom/google/protobuf/MapField$MutabilityAwareMap;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MapField$MutabilityAwareMap<",
            "TK;TV;>;)",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Message;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/MapField$MutabilityAwareMap;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {p0, v2, v1}, Lcom/google/protobuf/MapField;->convertKeyAndValueToMessage(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/Message;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-object v0
.end method

.method private convertMessageToKeyAndValue(Lcom/google/protobuf/Message;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Message;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/MapField;->converter:Lcom/google/protobuf/MapField$Converter;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/MapField$Converter;->convertMessageToKeyAndValue(Lcom/google/protobuf/Message;Ljava/util/Map;)V

    return-void
.end method

.method public static emptyMapField(Lcom/google/protobuf/MapEntry;)Lcom/google/protobuf/MapField;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/MapEntry<",
            "TK;TV;>;)",
            "Lcom/google/protobuf/MapField<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/MapField;

    sget-object v1, Lcom/google/protobuf/MapField$StorageMode;->MAP:Lcom/google/protobuf/MapField$StorageMode;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/MapField;-><init>(Lcom/google/protobuf/MapEntry;Lcom/google/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-object v0
.end method

.method public static newMapField(Lcom/google/protobuf/MapEntry;)Lcom/google/protobuf/MapField;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/MapEntry<",
            "TK;TV;>;)",
            "Lcom/google/protobuf/MapField<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/MapField;

    sget-object v1, Lcom/google/protobuf/MapField$StorageMode;->MAP:Lcom/google/protobuf/MapField$StorageMode;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/MapField;-><init>(Lcom/google/protobuf/MapEntry;Lcom/google/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/MapField$MutabilityAwareMap;

    .line 2
    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/MapField$MutabilityAwareMap;-><init>(Lcom/google/protobuf/MutabilityOracle;Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/protobuf/MapField;->mapData:Lcom/google/protobuf/MapField$MutabilityAwareMap;

    .line 12
    .line 13
    sget-object v0, Lcom/google/protobuf/MapField$StorageMode;->MAP:Lcom/google/protobuf/MapField$StorageMode;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/protobuf/MapField;->mode:Lcom/google/protobuf/MapField$StorageMode;

    .line 16
    .line 17
    return-void
.end method

.method public copy()Lcom/google/protobuf/MapField;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapField<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/MapField;

    iget-object v1, p0, Lcom/google/protobuf/MapField;->converter:Lcom/google/protobuf/MapField$Converter;

    sget-object v2, Lcom/google/protobuf/MapField$StorageMode;->MAP:Lcom/google/protobuf/MapField$StorageMode;

    invoke-virtual {p0}, Lcom/google/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/MapFieldLite;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/MapField;-><init>(Lcom/google/protobuf/MapField$Converter;Lcom/google/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-object v0
.end method

.method public ensureMutable()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/MapField;->isMutable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/MapField;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Lcom/google/protobuf/MapField;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/MapField;->getMap()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/google/protobuf/MapField;->getMap()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {v0, p1}, Lcom/google/protobuf/MapFieldLite;->equals(Ljava/util/Map;Ljava/util/Map;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public getList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Message;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MapField;->mode:Lcom/google/protobuf/MapField$StorageMode;

    .line 2
    .line 3
    sget-object v1, Lcom/google/protobuf/MapField$StorageMode;->MAP:Lcom/google/protobuf/MapField$StorageMode;

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/MapField;->mode:Lcom/google/protobuf/MapField$StorageMode;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/protobuf/MapField;->mapData:Lcom/google/protobuf/MapField$MutabilityAwareMap;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/google/protobuf/MapField;->convertMapToList(Lcom/google/protobuf/MapField$MutabilityAwareMap;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/google/protobuf/MapField;->listData:Ljava/util/List;

    .line 19
    .line 20
    sget-object v0, Lcom/google/protobuf/MapField$StorageMode;->BOTH:Lcom/google/protobuf/MapField$StorageMode;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/protobuf/MapField;->mode:Lcom/google/protobuf/MapField$StorageMode;

    .line 23
    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/MapField;->listData:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MapField;->mode:Lcom/google/protobuf/MapField$StorageMode;

    .line 2
    .line 3
    sget-object v1, Lcom/google/protobuf/MapField$StorageMode;->LIST:Lcom/google/protobuf/MapField$StorageMode;

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/MapField;->mode:Lcom/google/protobuf/MapField$StorageMode;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/protobuf/MapField;->listData:Ljava/util/List;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/google/protobuf/MapField;->convertListToMap(Ljava/util/List;)Lcom/google/protobuf/MapField$MutabilityAwareMap;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/google/protobuf/MapField;->mapData:Lcom/google/protobuf/MapField$MutabilityAwareMap;

    .line 19
    .line 20
    sget-object v0, Lcom/google/protobuf/MapField$StorageMode;->BOTH:Lcom/google/protobuf/MapField$StorageMode;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/protobuf/MapField;->mode:Lcom/google/protobuf/MapField$StorageMode;

    .line 23
    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/MapField;->mapData:Lcom/google/protobuf/MapField$MutabilityAwareMap;

    .line 30
    .line 31
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public getMapEntryMessageDefaultInstance()Lcom/google/protobuf/Message;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/MapField;->converter:Lcom/google/protobuf/MapField$Converter;

    invoke-interface {v0}, Lcom/google/protobuf/MapField$Converter;->getMessageDefaultInstance()Lcom/google/protobuf/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMutableList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Message;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MapField;->mode:Lcom/google/protobuf/MapField$StorageMode;

    .line 2
    .line 3
    sget-object v1, Lcom/google/protobuf/MapField$StorageMode;->LIST:Lcom/google/protobuf/MapField$StorageMode;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/protobuf/MapField;->mode:Lcom/google/protobuf/MapField$StorageMode;

    .line 8
    .line 9
    sget-object v2, Lcom/google/protobuf/MapField$StorageMode;->MAP:Lcom/google/protobuf/MapField$StorageMode;

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/protobuf/MapField;->mapData:Lcom/google/protobuf/MapField$MutabilityAwareMap;

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/google/protobuf/MapField;->convertMapToList(Lcom/google/protobuf/MapField$MutabilityAwareMap;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/protobuf/MapField;->listData:Ljava/util/List;

    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/google/protobuf/MapField;->mapData:Lcom/google/protobuf/MapField$MutabilityAwareMap;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/google/protobuf/MapField;->mode:Lcom/google/protobuf/MapField$StorageMode;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/MapField;->listData:Ljava/util/List;

    .line 27
    .line 28
    return-object v0
.end method

.method public getMutableMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MapField;->mode:Lcom/google/protobuf/MapField$StorageMode;

    .line 2
    .line 3
    sget-object v1, Lcom/google/protobuf/MapField$StorageMode;->MAP:Lcom/google/protobuf/MapField$StorageMode;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/protobuf/MapField;->mode:Lcom/google/protobuf/MapField$StorageMode;

    .line 8
    .line 9
    sget-object v2, Lcom/google/protobuf/MapField$StorageMode;->LIST:Lcom/google/protobuf/MapField$StorageMode;

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/protobuf/MapField;->listData:Ljava/util/List;

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/google/protobuf/MapField;->convertListToMap(Ljava/util/List;)Lcom/google/protobuf/MapField$MutabilityAwareMap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/protobuf/MapField;->mapData:Lcom/google/protobuf/MapField$MutabilityAwareMap;

    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/google/protobuf/MapField;->listData:Ljava/util/List;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/google/protobuf/MapField;->mode:Lcom/google/protobuf/MapField$StorageMode;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/MapField;->mapData:Lcom/google/protobuf/MapField$MutabilityAwareMap;

    .line 27
    .line 28
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/MapFieldLite;->calculateHashCodeForMap(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public isMutable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/MapField;->isMutable:Z

    return v0
.end method

.method public makeImmutable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MapField;->isMutable:Z

    return-void
.end method

.method public mergeFrom(Lcom/google/protobuf/MapField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MapField<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/MapFieldLite;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
