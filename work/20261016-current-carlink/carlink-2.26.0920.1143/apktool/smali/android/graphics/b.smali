.class public final synthetic Landroid/graphics/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroid/graphics/b;->a:I

    iput-object p1, p0, Landroid/graphics/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .locals 1

    iget v0, p0, Landroid/graphics/b;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/graphics/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {v0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->g(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide p1

    return-wide p1

    :pswitch_1
    iget-object v0, p0, Landroid/graphics/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {v0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->h(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide p1

    return-wide p1

    :pswitch_2
    iget-object v0, p0, Landroid/graphics/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {v0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->i(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide p1

    return-wide p1

    :pswitch_3
    iget-object v0, p0, Landroid/graphics/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {v0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->d(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide p1

    return-wide p1

    :goto_0
    iget-object v0, p0, Landroid/graphics/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    invoke-static {v0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->f(Landroid/graphics/ColorSpace$Rgb;D)D

    move-result-wide p1

    return-wide p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
