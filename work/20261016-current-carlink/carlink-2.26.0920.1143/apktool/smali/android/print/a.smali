.class public final synthetic Landroid/print/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroid/print/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget v0, p0, Landroid/print/a;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Landroid/print/PrinterCapabilitiesInfo$Builder;->b(I)V

    return-void

    :pswitch_1
    invoke-static {p1}, Landroid/print/PrinterCapabilitiesInfo;->a(I)V

    return-void

    :pswitch_2
    invoke-static {p1}, Landroid/print/PrinterCapabilitiesInfo;->b(I)V

    return-void

    :goto_0
    invoke-static {p1}, Landroid/print/PrinterCapabilitiesInfo$Builder;->a(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
