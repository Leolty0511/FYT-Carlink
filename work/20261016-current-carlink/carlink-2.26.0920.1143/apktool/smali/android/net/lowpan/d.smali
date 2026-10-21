.class public final synthetic Landroid/net/lowpan/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/net/lowpan/LowpanInterface$Callback;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Landroid/net/lowpan/d;->b:I

    iput-object p1, p0, Landroid/net/lowpan/d;->c:Landroid/net/lowpan/LowpanInterface$Callback;

    iput-object p2, p0, Landroid/net/lowpan/d;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroid/net/lowpan/d;->b:I

    iget-object v1, p0, Landroid/net/lowpan/d;->d:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/lowpan/d;->c:Landroid/net/lowpan/LowpanInterface$Callback;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v2, v1}, Landroid/net/lowpan/LowpanInterface$1;->g(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V

    return-void

    :goto_0
    invoke-static {v2, v1}, Landroid/net/lowpan/LowpanInterface$1;->c(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
