.class public final synthetic Landroid/hardware/radio/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/radio/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/b;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Landroid/os/HidlSupport;->b(Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Landroid/net/lowpan/LowpanScanner;->a(Ljava/lang/Integer;)I

    move-result p1

    return p1

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :goto_0
    invoke-static {p1}, Landroid/os/HidlSupport;->d(Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
