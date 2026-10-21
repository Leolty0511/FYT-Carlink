.class Lcom/android/internal/os/FuseAppLoop$BytesMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/FuseAppLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesMap"
.end annotation


# instance fields
.field final mEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop$BytesMap;->mEntries:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/os/FuseAppLoop$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/android/internal/os/FuseAppLoop$BytesMap;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop$BytesMap;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public startUsing(J)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop$BytesMap;->mEntries:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;-><init>(Lcom/android/internal/os/FuseAppLoop$1;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop$BytesMap;->mEntries:Ljava/util/Map;

    .line 22
    .line 23
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    iget p1, v0, Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;->counter:I

    .line 31
    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    iput p1, v0, Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;->counter:I

    .line 35
    .line 36
    iget-object p1, v0, Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;->bytes:[B

    .line 37
    .line 38
    return-object p1
.end method

.method public stopUsing(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop$BytesMap;->mEntries:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget v1, v0, Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;->counter:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    iput v1, v0, Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;->counter:I

    .line 21
    .line 22
    if-gtz v1, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop$BytesMap;->mEntries:Ljava/util/Map;

    .line 25
    .line 26
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
