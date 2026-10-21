.class public final synthetic Landroid/provider/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroid/provider/b;->b:I

    iput-object p1, p0, Landroid/provider/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroid/provider/b;->b:I

    iget-object v1, p0, Landroid/provider/b;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v1}, Landroid/provider/FontsContract;->h(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void

    :pswitch_1
    check-cast v1, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v1}, Landroid/provider/FontsContract;->d(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void

    :pswitch_2
    check-cast v1, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v1}, Landroid/provider/FontsContract;->e(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void

    :pswitch_3
    check-cast v1, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v1}, Landroid/provider/FontsContract;->f(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void

    :pswitch_4
    check-cast v1, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v1}, Landroid/provider/FontsContract;->c(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void

    :pswitch_5
    check-cast v1, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v1}, Landroid/provider/FontsContract;->n(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void

    :pswitch_6
    check-cast v1, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v1}, Landroid/provider/FontsContract;->m(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void

    :goto_0
    check-cast v1, Landroid/provider/Settings$NameValueCache;

    invoke-static {v1}, Landroid/provider/Settings$NameValueCache;->a(Landroid/provider/Settings$NameValueCache;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
