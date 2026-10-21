.class public final synthetic Landroid/net/lowpan/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/net/lowpan/LowpanManager$2;

.field public final synthetic d:Landroid/net/lowpan/ILowpanInterface;

.field public final synthetic e:Landroid/net/lowpan/LowpanManager$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/net/lowpan/LowpanManager$2;Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;I)V
    .locals 0

    iput p4, p0, Landroid/net/lowpan/g;->b:I

    iput-object p1, p0, Landroid/net/lowpan/g;->c:Landroid/net/lowpan/LowpanManager$2;

    iput-object p2, p0, Landroid/net/lowpan/g;->d:Landroid/net/lowpan/ILowpanInterface;

    iput-object p3, p0, Landroid/net/lowpan/g;->e:Landroid/net/lowpan/LowpanManager$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroid/net/lowpan/g;->b:I

    iget-object v1, p0, Landroid/net/lowpan/g;->c:Landroid/net/lowpan/LowpanManager$2;

    iget-object v2, p0, Landroid/net/lowpan/g;->e:Landroid/net/lowpan/LowpanManager$Callback;

    iget-object v3, p0, Landroid/net/lowpan/g;->d:Landroid/net/lowpan/ILowpanInterface;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1, v3, v2}, Landroid/net/lowpan/LowpanManager$2;->b(Landroid/net/lowpan/LowpanManager$2;Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V

    return-void

    :goto_0
    invoke-static {v1, v3, v2}, Landroid/net/lowpan/LowpanManager$2;->a(Landroid/net/lowpan/LowpanManager$2;Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
