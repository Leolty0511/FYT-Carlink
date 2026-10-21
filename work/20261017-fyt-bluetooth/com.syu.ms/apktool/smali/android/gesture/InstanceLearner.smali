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

    .line 1
    new-instance v0, Landroid/gesture/InstanceLearner$1;

    invoke-direct {v0}, Landroid/gesture/InstanceLearner$1;-><init>()V

    sput-object v0, Landroid/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
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

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/gesture/Learner;->getInstances()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    .line 5
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/Instance;

    .line 6
    iget-object v6, v5, Landroid/gesture/Instance;->vector:[F

    array-length v7, v6

    array-length v8, p3

    if-eq v7, v8, :cond_0

    goto :goto_3

    :cond_0
    const/4 v7, 0x2

    if-ne p1, v7, :cond_1

    .line 7
    invoke-static {v6, p3, p2}, Landroid/gesture/GestureUtils;->minimumCosineDistance([F[FI)F

    move-result v6

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {v6, p3}, Landroid/gesture/GestureUtils;->squaredEuclideanDistance([F[F)F

    move-result v6

    :goto_1
    float-to-double v6, v6

    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-nez v8, :cond_2

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_2

    :cond_2
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v6, v8, v6

    .line 9
    :goto_2
    iget-object v8, v5, Landroid/gesture/Instance;->label:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    if-eqz v8, :cond_3

    .line 10
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpl-double v8, v6, v8

    if-lez v8, :cond_4

    .line 11
    :cond_3
    iget-object v5, v5, Landroid/gesture/Instance;->label:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 13
    invoke-virtual {v3, p2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 14
    new-instance p3, Landroid/gesture/Prediction;

    invoke-direct {p3, p2, v1, v2}, Landroid/gesture/Prediction;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 15
    :cond_6
    sget-object p1, Landroid/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method
