.class final Lcom/github/promeg/pinyinhelper/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;
    }
.end annotation


# static fields
.field static final EMIT_COMPARATOR:Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;

    invoke-direct {v0}, Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;-><init>()V

    sput-object v0, Lcom/github/promeg/pinyinhelper/Engine;->EMIT_COMPARATOR:Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static pinyinFromDict(Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .param p0, "wordInDict"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "pinyinDictSet":Ljava/util/List;, "Ljava/util/List<Lcom/github/promeg/pinyinhelper/PinyinDict;>;"
    if-eqz p1, :cond_1

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/promeg/pinyinhelper/PinyinDict;

    .line 83
    .local v0, "dict":Lcom/github/promeg/pinyinhelper/PinyinDict;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/github/promeg/pinyinhelper/PinyinDict;->words()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/github/promeg/pinyinhelper/PinyinDict;->words()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-interface {v0, p0}, Lcom/github/promeg/pinyinhelper/PinyinDict;->toPinyin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 89
    .end local v0    # "dict":Lcom/github/promeg/pinyinhelper/PinyinDict;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No pinyin dict contains word: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static toPinyin(Ljava/lang/String;Lorg/ahocorasick/trie/Trie;Ljava/util/List;Ljava/lang/String;Lcom/github/promeg/pinyinhelper/SegmentationSelector;)Ljava/lang/String;
    .locals 7
    .param p0, "inputStr"    # Ljava/lang/String;
    .param p1, "trie"    # Lorg/ahocorasick/trie/Trie;
    .param p3, "separator"    # Ljava/lang/String;
    .param p4, "selector"    # Lcom/github/promeg/pinyinhelper/SegmentationSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/ahocorasick/trie/Trie;",
            "Ljava/util/List",
            "<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/github/promeg/pinyinhelper/SegmentationSelector;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "pinyinDictList":Ljava/util/List;, "Ljava/util/List<Lcom/github/promeg/pinyinhelper/PinyinDict;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 77
    .end local p0    # "inputStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 32
    .restart local p0    # "inputStr":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    if-nez p4, :cond_5

    .line 34
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    .local v4, "resultPinyinStrBuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_3

    .line 38
    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 41
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    .end local v4    # "resultPinyinStrBuf":Ljava/lang/StringBuffer;
    :cond_5
    invoke-virtual {p1, p0}, Lorg/ahocorasick/trie/Trie;->parseText(Ljava/lang/CharSequence;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {p4, v6}, Lcom/github/promeg/pinyinhelper/SegmentationSelector;->select(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    .line 46
    .local v5, "selectedEmits":Ljava/util/List;, "Ljava/util/List<Lorg/ahocorasick/trie/Emit;>;"
    sget-object v6, Lcom/github/promeg/pinyinhelper/Engine;->EMIT_COMPARATOR:Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .restart local v4    # "resultPinyinStrBuf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 52
    .local v3, "nextHitIndex":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :cond_6
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_a

    .line 54
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_9

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ahocorasick/trie/Emit;

    invoke-virtual {v6}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v6

    if-ne v1, v6, :cond_9

    .line 56
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ahocorasick/trie/Emit;

    invoke-virtual {v6}, Lorg/ahocorasick/trie/Emit;->getKeyword()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/github/promeg/pinyinhelper/Engine;->pinyinFromDict(Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "fromDicts":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    array-length v6, v0

    if-ge v2, v6, :cond_8

    .line 58
    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-eq v2, v6, :cond_7

    .line 60
    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 64
    :cond_8
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ahocorasick/trie/Emit;

    invoke-virtual {v6}, Lorg/ahocorasick/trie/Emit;->size()I

    move-result v6

    add-int/2addr v1, v6

    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 72
    .end local v0    # "fromDicts":[Ljava/lang/String;
    .end local v2    # "j":I
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v1, v6, :cond_6

    .line 73
    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 68
    :cond_9
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 77
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
