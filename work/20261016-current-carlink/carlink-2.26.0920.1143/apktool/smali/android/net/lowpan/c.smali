.class public final synthetic Landroid/net/lowpan/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/net/lowpan/LowpanInterface$Callback;

.field public final synthetic d:Landroid/net/LinkAddress;


# direct methods
.method public synthetic constructor <init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;I)V
    .locals 0

    iput p3, p0, Landroid/net/lowpan/c;->b:I

    iput-object p1, p0, Landroid/net/lowpan/c;->c:Landroid/net/lowpan/LowpanInterface$Callback;

    iput-object p2, p0, Landroid/net/lowpan/c;->d:Landroid/net/LinkAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroid/net/lowpan/c;->b:I

    iget-object v1, p0, Landroid/net/lowpan/c;->d:Landroid/net/LinkAddress;

    iget-object v2, p0, Landroid/net/lowpan/c;->c:Landroid/net/lowpan/LowpanInterface$Callback;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v2, v1}, Landroid/net/lowpan/LowpanInterface$1;->i(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V

    return-void

    :goto_0
    invoke-static {v2, v1}, Landroid/net/lowpan/LowpanInterface$1;->e(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
