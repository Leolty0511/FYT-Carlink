.class Lcom/google/common/collect/RegularImmutableMultiset;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lcom/google/common/collect/ImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMultiset<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ARRAY:[Lcom/google/common/collect/Multisets$ImmutableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/Multisets$ImmutableEntry<",
            "*>;"
        }
    .end annotation
.end field

.field static final HASH_FLOODING_FPP:D = 0.001
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_HASH_BUCKET_LENGTH:I = 0x9
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_LOAD_FACTOR:D = 1.0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private transient elementSet:Lcom/google/common/collect/ImmutableSet;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient entries:[Lcom/google/common/collect/Multisets$ImmutableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/Multisets$ImmutableEntry<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient hashCode:I

.field private final transient hashTable:[Lcom/google/common/collect/Multisets$ImmutableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/Multisets$ImmutableEntry<",
            "*>;"
        }
    .end annotation
.end field

.field private final transient size:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 3
    .line 4
    sput-object v0, Lcom/google/common/collect/RegularImmutableMultiset;->EMPTY_ARRAY:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 5
    .line 6
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMultiset;->create(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/common/collect/RegularImmutableMultiset;->EMPTY:Lcom/google/common/collect/ImmutableMultiset;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>([Lcom/google/common/collect/Multisets$ImmutableEntry;[Lcom/google/common/collect/Multisets$ImmutableEntry;IILcom/google/common/collect/ImmutableSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/collect/Multisets$ImmutableEntry<",
            "TE;>;[",
            "Lcom/google/common/collect/Multisets$ImmutableEntry<",
            "*>;II",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMultiset;->entries:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableMultiset;->hashTable:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/common/collect/RegularImmutableMultiset;->size:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/common/collect/RegularImmutableMultiset;->hashCode:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet:Lcom/google/common/collect/ImmutableSet;

    .line 13
    .line 14
    return-void
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/common/collect/Multiset$Entry<",
            "+TE;>;>;)",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v2, v0, [Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Lcom/google/common/collect/RegularImmutableMultiset;

    .line 10
    .line 11
    sget-object v3, Lcom/google/common/collect/RegularImmutableMultiset;->EMPTY_ARRAY:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    move-object v1, p0

    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/google/common/collect/RegularImmutableMultiset;-><init>([Lcom/google/common/collect/Multisets$ImmutableEntry;[Lcom/google/common/collect/Multisets$ImmutableEntry;IILcom/google/common/collect/ImmutableSet;)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 25
    .line 26
    invoke-static {v0, v3, v4}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/lit8 v1, v0, -0x1

    .line 31
    .line 32
    new-array v3, v0, [Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/4 v0, 0x0

    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    move v6, v0

    .line 42
    move v7, v6

    .line 43
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_4

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    check-cast v8, Lcom/google/common/collect/Multiset$Entry;

    .line 54
    .line 55
    invoke-interface {v8}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-interface {v8}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    invoke-static {v11}, Lcom/google/common/collect/Hashing;->smear(I)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    and-int/2addr v12, v1

    .line 76
    aget-object v13, v3, v12

    .line 77
    .line 78
    if-nez v13, :cond_3

    .line 79
    .line 80
    instance-of v13, v8, Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 81
    .line 82
    if-eqz v13, :cond_1

    .line 83
    .line 84
    instance-of v13, v8, Lcom/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;

    .line 85
    .line 86
    if-nez v13, :cond_1

    .line 87
    .line 88
    const/4 v13, 0x1

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    move v13, v0

    .line 91
    :goto_1
    if-eqz v13, :cond_2

    .line 92
    .line 93
    check-cast v8, Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    new-instance v8, Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 97
    .line 98
    invoke-direct {v8, v9, v10}, Lcom/google/common/collect/Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    new-instance v8, Lcom/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;

    .line 103
    .line 104
    invoke-direct {v8, v9, v10, v13}, Lcom/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;-><init>(Ljava/lang/Object;ILcom/google/common/collect/Multisets$ImmutableEntry;)V

    .line 105
    .line 106
    .line 107
    :goto_2
    xor-int v9, v11, v10

    .line 108
    .line 109
    add-int/2addr v6, v9

    .line 110
    add-int/lit8 v9, v7, 0x1

    .line 111
    .line 112
    aput-object v8, v2, v7

    .line 113
    .line 114
    aput-object v8, v3, v12

    .line 115
    .line 116
    int-to-long v7, v10

    .line 117
    add-long/2addr v4, v7

    .line 118
    move v7, v9

    .line 119
    goto :goto_0

    .line 120
    :cond_4
    invoke-static {v3}, Lcom/google/common/collect/RegularImmutableMultiset;->hashFloodingDetected([Lcom/google/common/collect/Multisets$ImmutableEntry;)Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-eqz p0, :cond_5

    .line 125
    .line 126
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-static {p0}, Lcom/google/common/collect/JdkBackedImmutableMultiset;->create(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    goto :goto_3

    .line 135
    :cond_5
    new-instance p0, Lcom/google/common/collect/RegularImmutableMultiset;

    .line 136
    .line 137
    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    const/4 v0, 0x0

    .line 142
    move-object v1, p0

    .line 143
    move v5, v6

    .line 144
    move-object v6, v0

    .line 145
    invoke-direct/range {v1 .. v6}, Lcom/google/common/collect/RegularImmutableMultiset;-><init>([Lcom/google/common/collect/Multisets$ImmutableEntry;[Lcom/google/common/collect/Multisets$ImmutableEntry;IILcom/google/common/collect/ImmutableSet;)V

    .line 146
    .line 147
    .line 148
    :goto_3
    return-object p0
.end method

.method private static hashFloodingDetected([Lcom/google/common/collect/Multisets$ImmutableEntry;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/collect/Multisets$ImmutableEntry<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p0

    .line 4
    if-ge v1, v2, :cond_2

    .line 5
    .line 6
    aget-object v2, p0, v1

    .line 7
    .line 8
    move v3, v0

    .line 9
    :goto_1
    if-eqz v2, :cond_1

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    add-int/2addr v3, v4

    .line 13
    const/16 v5, 0x9

    .line 14
    .line 15
    if-le v3, v5, :cond_0

    .line 16
    .line 17
    return v4

    .line 18
    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/Multisets$ImmutableEntry;->nextInBucket()Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    return v0
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->hashTable:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    array-length v3, v0

    .line 15
    add-int/lit8 v3, v3, -0x1

    .line 16
    .line 17
    and-int/2addr v2, v3

    .line 18
    aget-object v0, v0, v2

    .line 19
    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/common/collect/Multisets$ImmutableEntry;->getElement()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/common/collect/Multisets$ImmutableEntry;->getCount()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/Multisets$ImmutableEntry;->nextInBucket()Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    return v1
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet:Lcom/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$ElementSet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMultiset;->entries:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/ImmutableMultiset$ElementSet;-><init>(Ljava/util/List;Lcom/google/common/collect/Multiset;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->entries:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->hashCode:I

    return v0
.end method

.method public isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->size:I

    return v0
.end method
