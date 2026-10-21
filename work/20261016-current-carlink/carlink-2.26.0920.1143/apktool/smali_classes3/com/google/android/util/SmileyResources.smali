.class public Lcom/google/android/util/SmileyResources;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/util/AbstractMessageParser$Resources;


# instance fields
.field private mSmileyToRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;


# direct methods
.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/util/SmileyResources;->mSmileyToRes:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$TrieNode;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/util/SmileyResources;->smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    array-length v1, p1

    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/util/SmileyResources;->smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;

    .line 23
    .line 24
    aget-object v2, p1, v0

    .line 25
    .line 26
    const-string v3, ""

    .line 27
    .line 28
    invoke-static {v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->addToTrie(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/util/SmileyResources;->mSmileyToRes:Ljava/util/HashMap;

    .line 32
    .line 33
    aget-object v2, p1, v0

    .line 34
    .line 35
    aget v3, p2, v0

    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public getAcronyms()Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDomainSuffixes()Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmileyRes(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/util/SmileyResources;->mSmileyToRes:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public getSmileys()Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/util/SmileyResources;->smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;

    return-object v0
.end method
