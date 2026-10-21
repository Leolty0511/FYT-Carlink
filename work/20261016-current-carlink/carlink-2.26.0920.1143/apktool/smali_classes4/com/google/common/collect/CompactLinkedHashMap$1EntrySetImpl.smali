.class Lcom/google/common/collect/CompactLinkedHashMap$1EntrySetImpl;
.super Lcom/google/common/collect/CompactHashMap$EntrySetView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/CompactLinkedHashMap;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntrySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/CompactHashMap<",
        "TK;TV;>.EntrySetView;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/collect/CompactLinkedHashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap$EntrySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-void
.end method


# virtual methods
.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/y;->d(Ljava/util/Collection;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
