.class Landroid/gesture/InstanceLearner;
.super Landroid/gesture/Learner;
.source "SourceFile"


# static fields
.field private static final sComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/gesture/InstanceLearner$1;

    invoke-direct {v0}, Landroid/gesture/InstanceLearner$1;-><init>()V

    sput-object v0, Landroid/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/gesture/Learner;-><init>()V

    return-void
.end method


# virtual methods
.method public classify(II[F)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[F)",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/gesture/Learner;->getInstances()Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    new-instance v3, Ljava/util/TreeMap;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    if-ge v4, v2, :cond_5

    .line 21
    .line 22
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Landroid/gesture/Instance;

    .line 27
    .line 28
    iget-object v6, v5, Landroid/gesture/Instance;->vector:[F

    .line 29
    .line 30
    array-length v7, v6

    .line 31
    array-length v8, p3

    .line 32
    if-eq v7, v8, :cond_0

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_0
    const/4 v7, 0x2

    .line 36
    if-ne p1, v7, :cond_1

    .line 37
    .line 38
    invoke-static {v6, p3, p2}, Landroid/gesture/GestureUtils;->minimumCosineDistance([F[FI)F

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-static {v6, p3}, Landroid/gesture/GestureUtils;->squaredEuclideanDistance([F[F)F

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    :goto_1
    float-to-double v6, v6

    .line 48
    const-wide/16 v8, 0x0

    .line 49
    .line 50
    cmpl-double v8, v6, v8

    .line 51
    .line 52
    if-nez v8, :cond_2

    .line 53
    .line 54
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 61
    .line 62
    div-double v6, v8, v6

    .line 63
    .line 64
    :goto_2
    iget-object v8, v5, Landroid/gesture/Instance;->label:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v3, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    check-cast v8, Ljava/lang/Double;

    .line 71
    .line 72
    if-eqz v8, :cond_3

    .line 73
    .line 74
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    .line 75
    .line 76
    .line 77
    move-result-wide v8

    .line 78
    cmpl-double v8, v6, v8

    .line 79
    .line 80
    if-lez v8, :cond_4

    .line 81
    .line 82
    :cond_3
    iget-object v5, v5, Landroid/gesture/Instance;->label:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v3, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_6

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v3, p2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    check-cast p3, Ljava/lang/Double;

    .line 119
    .line 120
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    .line 121
    .line 122
    .line 123
    move-result-wide v1

    .line 124
    new-instance p3, Landroid/gesture/Prediction;

    .line 125
    .line 126
    invoke-direct {p3, p2, v1, v2}, Landroid/gesture/Prediction;-><init>(Ljava/lang/String;D)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_6
    sget-object p1, Landroid/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    .line 134
    .line 135
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    .line 137
    .line 138
    return-object v0
.end method
