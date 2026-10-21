.class public final synthetic Lcom/google/common/math/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/common/math/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/common/math/b;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/google/common/math/StatsAccumulator;

    check-cast p2, Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {p1, p2}, Lcom/google/common/math/StatsAccumulator;->addAll(Lcom/google/common/math/StatsAccumulator;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/google/common/math/StatsAccumulator;

    check-cast p2, Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {p1, p2}, Lcom/google/common/math/StatsAccumulator;->addAll(Lcom/google/common/math/StatsAccumulator;)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/google/common/math/StatsAccumulator;

    check-cast p2, Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {p1, p2}, Lcom/google/common/math/StatsAccumulator;->addAll(Lcom/google/common/math/StatsAccumulator;)V

    return-void

    :pswitch_3
    check-cast p1, Lcom/google/common/math/StatsAccumulator;

    check-cast p2, Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {p1, p2}, Lcom/google/common/math/StatsAccumulator;->addAll(Lcom/google/common/math/StatsAccumulator;)V

    return-void

    :pswitch_4
    check-cast p1, Lcom/google/common/math/StatsAccumulator;

    check-cast p2, Ljava/lang/Number;

    invoke-static {p1, p2}, Lcom/google/common/math/Stats;->b(Lcom/google/common/math/StatsAccumulator;Ljava/lang/Number;)V

    return-void

    :pswitch_5
    check-cast p1, Lcom/google/common/math/StatsAccumulator;

    check-cast p2, Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {p1, p2}, Lcom/google/common/math/StatsAccumulator;->addAll(Lcom/google/common/math/StatsAccumulator;)V

    return-void

    :goto_0
    check-cast p1, Lcom/google/common/math/StatsAccumulator;

    check-cast p2, Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {p1, p2}, Lcom/google/common/math/StatsAccumulator;->addAll(Lcom/google/common/math/StatsAccumulator;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
