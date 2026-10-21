.class final Lcom/github/promeg/pinyinhelper/ForwardLongestSelector;
.super Ljava/lang/Object;
.source "ForwardLongestSelector.java"

# interfaces
.implements Lcom/github/promeg/pinyinhelper/SegmentationSelector;


# static fields
.field static final HIT_COMPARATOR:Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;

    invoke-direct {v0}, Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;-><init>()V

    sput-object v0, Lcom/github/promeg/pinyinhelper/ForwardLongestSelector;->HIT_COMPARATOR:Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/ahocorasick/trie/Emit;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/ahocorasick/trie/Emit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "emits":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ahocorasick/trie/Emit;>;"
    if-nez p1, :cond_0

    .line 25
    const/4 v3, 0x0

    .line 46
    :goto_0
    return-object v3

    .line 28
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lorg/ahocorasick/trie/Emit;>;"
    sget-object v4, Lcom/github/promeg/pinyinhelper/ForwardLongestSelector;->HIT_COMPARATOR:Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 32
    const/4 v2, -0x1

    .line 34
    .local v2, "endValueToRemove":I
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 36
    .local v1, "emitToRemove":Ljava/util/Set;, "Ljava/util/Set<Lorg/ahocorasick/trie/Emit;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ahocorasick/trie/Emit;

    .line 37
    .local v0, "emit":Lorg/ahocorasick/trie/Emit;
    invoke-virtual {v0}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v5

    if-le v5, v2, :cond_1

    invoke-virtual {v0}, Lorg/ahocorasick/trie/Emit;->getEnd()I

    move-result v5

    if-le v5, v2, :cond_1

    .line 38
    invoke-virtual {v0}, Lorg/ahocorasick/trie/Emit;->getEnd()I

    move-result v2

    goto :goto_1

    .line 40
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    .end local v0    # "emit":Lorg/ahocorasick/trie/Emit;
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
