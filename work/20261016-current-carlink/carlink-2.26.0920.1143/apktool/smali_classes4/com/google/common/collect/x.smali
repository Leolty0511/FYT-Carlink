.class public final synthetic Lcom/google/common/collect/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/common/collect/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newFlatMapSpliterator(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;
    .locals 19

    move-object/from16 v7, p0

    iget v0, v7, Lcom/google/common/collect/x;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong;

    move-object/from16 v9, p1

    check-cast v9, Ljava/util/Spliterator$OfLong;

    move-object v8, v0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-wide/from16 v13, p5

    invoke-direct/range {v8 .. v14}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong;-><init>(Ljava/util/Spliterator$OfLong;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfInt;

    move-object/from16 v11, p1

    check-cast v11, Ljava/util/Spliterator$OfInt;

    move-object v10, v0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    move-wide/from16 v15, p5

    invoke-direct/range {v10 .. v16}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfInt;-><init>(Ljava/util/Spliterator$OfInt;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;

    move-object/from16 v13, p1

    check-cast v13, Ljava/util/Spliterator$OfDouble;

    move-object v12, v0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v16, p4

    move-wide/from16 v17, p5

    invoke-direct/range {v12 .. v18}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;-><init>(Ljava/util/Spliterator$OfDouble;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)V

    return-object v0

    :goto_0
    new-instance v8, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject;

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)V

    return-object v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
