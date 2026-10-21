.class public final synthetic Landroid/net/lowpan/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Landroid/net/lowpan/a;->b:I

    iput-object p1, p0, Landroid/net/lowpan/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroid/net/lowpan/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroid/net/lowpan/a;->b:I

    iget-object v1, p0, Landroid/net/lowpan/a;->d:Ljava/lang/Object;

    iget-object v2, p0, Landroid/net/lowpan/a;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroid/net/lowpan/LowpanInterface$Callback;

    check-cast v1, Landroid/net/lowpan/LowpanIdentity;

    invoke-static {v2, v1}, Landroid/net/lowpan/LowpanInterface$1;->h(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/lowpan/LowpanIdentity;)V

    return-void

    :pswitch_1
    check-cast v2, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;

    check-cast v1, [B

    invoke-static {v2, v1}, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->a(Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;[B)V

    return-void

    :goto_0
    check-cast v2, Landroid/net/lowpan/LowpanScanner$Callback;

    check-cast v1, Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-static {v2, v1}, Landroid/net/lowpan/LowpanScanner$1;->a(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/net/lowpan/LowpanBeaconInfo;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
