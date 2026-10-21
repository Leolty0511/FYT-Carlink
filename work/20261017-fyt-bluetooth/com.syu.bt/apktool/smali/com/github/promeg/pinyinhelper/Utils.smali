.class final Lcom/github/promeg/pinyinhelper/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static dictsToTrie(Ljava/util/List;)Lorg/ahocorasick/trie/Trie;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;)",
            "Lorg/ahocorasick/trie/Trie;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "pinyinDicts":Ljava/util/List;, "Ljava/util/List<Lcom/github/promeg/pinyinhelper/PinyinDict;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 22
    .local v0, "all":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lorg/ahocorasick/trie/Trie;->builder()Lorg/ahocorasick/trie/Trie$TrieBuilder;

    move-result-object v1

    .line 24
    .local v1, "builder":Lorg/ahocorasick/trie/Trie$TrieBuilder;
    if-eqz p0, :cond_3

    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/promeg/pinyinhelper/PinyinDict;

    .line 26
    .local v2, "dict":Lcom/github/promeg/pinyinhelper/PinyinDict;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/github/promeg/pinyinhelper/PinyinDict;->words()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 27
    invoke-interface {v2}, Lcom/github/promeg/pinyinhelper/PinyinDict;->words()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 30
    .end local v2    # "dict":Lcom/github/promeg/pinyinhelper/PinyinDict;
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 31
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 32
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/ahocorasick/trie/Trie$TrieBuilder;->addKeyword(Ljava/lang/String;)Lorg/ahocorasick/trie/Trie$TrieBuilder;

    goto :goto_1

    .line 34
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Lorg/ahocorasick/trie/Trie$TrieBuilder;->build()Lorg/ahocorasick/trie/Trie;

    move-result-object v4

    .line 38
    :goto_2
    return-object v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method
