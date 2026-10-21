.class public final synthetic Landroid/companion/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/companion/CompanionDeviceManager$CallbackProxy;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/companion/CompanionDeviceManager$CallbackProxy;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Landroid/companion/a;->b:I

    iput-object p1, p0, Landroid/companion/a;->c:Landroid/companion/CompanionDeviceManager$CallbackProxy;

    iput-object p2, p0, Landroid/companion/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroid/companion/a;->b:I

    iget-object v1, p0, Landroid/companion/a;->c:Landroid/companion/CompanionDeviceManager$CallbackProxy;

    iget-object v2, p0, Landroid/companion/a;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroid/app/PendingIntent;

    invoke-static {v1, v2}, Landroid/companion/CompanionDeviceManager$CallbackProxy;->b(Landroid/companion/CompanionDeviceManager$CallbackProxy;Landroid/app/PendingIntent;)V

    return-void

    :goto_0
    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/companion/CompanionDeviceManager$CallbackProxy;->a(Landroid/companion/CompanionDeviceManager$CallbackProxy;Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
