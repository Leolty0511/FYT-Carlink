.class public final synthetic Lcom/google/common/util/concurrent/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/DoubleBinaryOperator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/common/util/concurrent/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(DD)D
    .locals 1

    iget v0, p0, Lcom/google/common/util/concurrent/j;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-double/2addr p1, p3

    return-wide p1

    :pswitch_1
    add-double/2addr p1, p3

    return-wide p1

    :pswitch_2
    add-double/2addr p1, p3

    return-wide p1

    :goto_0
    add-double/2addr p1, p3

    return-wide p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
