.class public final synthetic Landroid/graphics/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:D


# direct methods
.method public synthetic constructor <init>(DI)V
    .locals 0

    iput p3, p0, Landroid/graphics/c;->a:I

    iput-wide p1, p0, Landroid/graphics/c;->b:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .locals 2

    iget v0, p0, Landroid/graphics/c;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-wide v0, p0, Landroid/graphics/c;->b:D

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->c(DD)D

    move-result-wide p1

    return-wide p1

    :goto_0
    iget-wide v0, p0, Landroid/graphics/c;->b:D

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->e(DD)D

    move-result-wide p1

    return-wide p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
