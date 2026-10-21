.class public final synthetic Landroid/provider/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/provider/FontsContract$FontRequestCallback;

.field public final synthetic d:Landroid/graphics/Typeface;


# direct methods
.method public synthetic constructor <init>(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;I)V
    .locals 0

    iput p3, p0, Landroid/provider/c;->b:I

    iput-object p1, p0, Landroid/provider/c;->c:Landroid/provider/FontsContract$FontRequestCallback;

    iput-object p2, p0, Landroid/provider/c;->d:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroid/provider/c;->b:I

    iget-object v1, p0, Landroid/provider/c;->d:Landroid/graphics/Typeface;

    iget-object v2, p0, Landroid/provider/c;->c:Landroid/provider/FontsContract$FontRequestCallback;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v2, v1}, Landroid/provider/FontsContract;->b(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V

    return-void

    :pswitch_1
    invoke-static {v2, v1}, Landroid/provider/FontsContract;->a(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V

    return-void

    :goto_0
    invoke-static {v2, v1}, Landroid/provider/FontsContract;->g(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
