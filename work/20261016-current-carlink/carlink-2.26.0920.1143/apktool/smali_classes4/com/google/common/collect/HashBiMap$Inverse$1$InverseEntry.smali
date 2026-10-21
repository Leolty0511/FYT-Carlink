.class Lcom/google/common/collect/HashBiMap$Inverse$1$InverseEntry;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap$Inverse$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InverseEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry<",
        "TV;TK;>;"
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

.field final synthetic this$2:Lcom/google/common/collect/HashBiMap$Inverse$1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/HashBiMap$Inverse$1;Lcom/google/common/collect/HashBiMap$BiEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->this$2:Lcom/google/common/collect/HashBiMap$Inverse$1;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

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
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableEntry;->key:Ljava/lang/Object;

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
            "(TK;)TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/collect/ImmutableEntry;->key:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 10
    .line 11
    iget v2, v2, Lcom/google/common/collect/HashBiMap$BiEntry;->keyHash:I

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
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->this$2:Lcom/google/common/collect/HashBiMap$Inverse$1;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$Inverse$1;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    .line 27
    .line 28
    invoke-static {v2, p1, v1}, Lcom/google/common/collect/HashBiMap;->access$300(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, 0x0

    .line 37
    :goto_0
    const-string v3, "value already present: %s"

    .line 38
    .line 39
    invoke-static {v2, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->this$2:Lcom/google/common/collect/HashBiMap$Inverse$1;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$Inverse$1;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 49
    .line 50
    invoke-static {v2, v3}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 56
    .line 57
    iget-object v4, v3, Lcom/google/common/collect/ImmutableEntry;->value:Ljava/lang/Object;

    .line 58
    .line 59
    iget v3, v3, Lcom/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    .line 60
    .line 61
    invoke-direct {v2, p1, v1, v4, v3}, Lcom/google/common/collect/HashBiMap$BiEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 65
    .line 66
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->this$2:Lcom/google/common/collect/HashBiMap$Inverse$1;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$Inverse$1;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-static {p1, v2, v1}, Lcom/google/common/collect/HashBiMap;->access$500(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->this$2:Lcom/google/common/collect/HashBiMap$Inverse$1;

    .line 77
    .line 78
    iget-object v1, p1, Lcom/google/common/collect/HashBiMap$Inverse$1;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    .line 81
    .line 82
    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iput v1, p1, Lcom/google/common/collect/HashBiMap$Itr;->expectedModCount:I

    .line 87
    .line 88
    return-object v0
.end method
