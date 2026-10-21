.class Lcom/google/common/collect/HashBiMap$1$MapEntry;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field delegate:Lcom/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/HashBiMap$1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/HashBiMap$1;Lcom/google/common/collect/HashBiMap$BiEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/collect/ImmutableEntry;->value:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 10
    .line 11
    iget v2, v2, Lcom/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$1;->this$0:Lcom/google/common/collect/HashBiMap;

    .line 25
    .line 26
    invoke-static {v2, p1, v1}, Lcom/google/common/collect/HashBiMap;->access$400(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v2, 0x0

    .line 35
    :goto_0
    const-string v3, "value already present: %s"

    .line 36
    .line 37
    invoke-static {v2, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$1;->this$0:Lcom/google/common/collect/HashBiMap;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 45
    .line 46
    invoke-static {v2, v3}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 52
    .line 53
    iget-object v4, v3, Lcom/google/common/collect/ImmutableEntry;->key:Ljava/lang/Object;

    .line 54
    .line 55
    iget v3, v3, Lcom/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    .line 56
    .line 57
    invoke-direct {v2, v4, v3, p1, v1}, Lcom/google/common/collect/HashBiMap$BiEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$1;->this$0:Lcom/google/common/collect/HashBiMap;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 65
    .line 66
    invoke-static {p1, v2, v1}, Lcom/google/common/collect/HashBiMap;->access$500(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    iput-object v1, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 73
    .line 74
    iput-object v1, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 75
    .line 76
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    .line 77
    .line 78
    iget-object v1, p1, Lcom/google/common/collect/HashBiMap$1;->this$0:Lcom/google/common/collect/HashBiMap;

    .line 79
    .line 80
    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    iput v1, p1, Lcom/google/common/collect/HashBiMap$Itr;->expectedModCount:I

    .line 85
    .line 86
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    .line 87
    .line 88
    iget-object v1, p1, Lcom/google/common/collect/HashBiMap$Itr;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 89
    .line 90
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 91
    .line 92
    if-ne v1, v3, :cond_2

    .line 93
    .line 94
    iput-object v2, p1, Lcom/google/common/collect/HashBiMap$Itr;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 95
    .line 96
    :cond_2
    iput-object v2, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 97
    .line 98
    return-object v0
.end method
