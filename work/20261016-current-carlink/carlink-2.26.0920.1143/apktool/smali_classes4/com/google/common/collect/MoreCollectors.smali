.class public final Lcom/google/common/collect/MoreCollectors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MoreCollectors$ToOptionalState;
    }
.end annotation


# static fields
.field private static final NULL_PLACEHOLDER:Ljava/lang/Object;

.field private static final ONLY_ELEMENT:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final TO_OPTIONAL:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/common/collect/p;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lcom/google/common/collect/p;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/google/common/collect/r;

    .line 8
    .line 9
    invoke-direct {v2, v1}, Lcom/google/common/collect/r;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/google/common/collect/l;

    .line 13
    .line 14
    const/16 v3, 0x9

    .line 15
    .line 16
    invoke-direct {v1, v3}, Lcom/google/common/collect/l;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/google/common/collect/c;

    .line 20
    .line 21
    const/4 v4, 0x6

    .line 22
    invoke-direct {v3, v4}, Lcom/google/common/collect/c;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 27
    .line 28
    invoke-static {}, Lcom/google/common/collect/j;->m()Ljava/util/stream/Collector$Characteristics;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const/4 v7, 0x0

    .line 33
    aput-object v6, v5, v7

    .line 34
    .line 35
    invoke-static {v0, v2, v1, v3, v5}, Lcom/google/common/base/a;->n(Lcom/google/common/collect/p;Lcom/google/common/collect/r;Lcom/google/common/collect/l;Lcom/google/common/collect/c;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/google/common/collect/MoreCollectors;->TO_OPTIONAL:Ljava/util/stream/Collector;

    .line 40
    .line 41
    new-instance v0, Ljava/lang/Object;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/google/common/collect/MoreCollectors;->NULL_PLACEHOLDER:Ljava/lang/Object;

    .line 47
    .line 48
    new-instance v0, Lcom/google/common/collect/p;

    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    invoke-direct {v0, v1}, Lcom/google/common/collect/p;-><init>(I)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Lcom/google/common/collect/r;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Lcom/google/common/collect/r;-><init>(I)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lcom/google/common/collect/l;

    .line 60
    .line 61
    const/16 v3, 0xa

    .line 62
    .line 63
    invoke-direct {v1, v3}, Lcom/google/common/collect/l;-><init>(I)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Lcom/google/common/collect/c;

    .line 67
    .line 68
    const/4 v5, 0x7

    .line 69
    invoke-direct {v3, v5}, Lcom/google/common/collect/c;-><init>(I)V

    .line 70
    .line 71
    .line 72
    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 73
    .line 74
    invoke-static {}, Lcom/google/common/collect/j;->m()Ljava/util/stream/Collector$Characteristics;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    aput-object v5, v4, v7

    .line 79
    .line 80
    invoke-static {v0, v2, v1, v3, v4}, Lcom/google/common/base/a;->n(Lcom/google/common/collect/p;Lcom/google/common/collect/r;Lcom/google/common/collect/l;Lcom/google/common/collect/c;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sput-object v0, Lcom/google/common/collect/MoreCollectors;->ONLY_ELEMENT:Ljava/util/stream/Collector;

    .line 85
    .line 86
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/common/collect/MoreCollectors$ToOptionalState;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/MoreCollectors;->lambda$static$0(Lcom/google/common/collect/MoreCollectors$ToOptionalState;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/common/collect/MoreCollectors$ToOptionalState;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/MoreCollectors;->lambda$static$1(Lcom/google/common/collect/MoreCollectors$ToOptionalState;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Lcom/google/common/collect/MoreCollectors$ToOptionalState;Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/common/collect/MoreCollectors;->NULL_PLACEHOLDER:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->add(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$static$1(Lcom/google/common/collect/MoreCollectors$ToOptionalState;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->getElement()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/google/common/collect/MoreCollectors;->NULL_PLACEHOLDER:Ljava/lang/Object;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    :cond_0
    return-object p0
.end method

.method public static onlyElement()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TT;*TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/MoreCollectors;->ONLY_ELEMENT:Ljava/util/stream/Collector;

    return-object v0
.end method

.method public static toOptional()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/MoreCollectors;->TO_OPTIONAL:Ljava/util/stream/Collector;

    return-object v0
.end method
