.class public final synthetic Landroid/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/app/EnterTransitionCoordinator$3;

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;I)V
    .locals 0

    iput p3, p0, Landroid/app/g;->b:I

    iput-object p1, p0, Landroid/app/g;->c:Landroid/app/EnterTransitionCoordinator$3;

    iput-object p2, p0, Landroid/app/g;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroid/app/g;->b:I

    iget-object v1, p0, Landroid/app/g;->d:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/g;->c:Landroid/app/EnterTransitionCoordinator$3;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v2, v1}, Landroid/app/EnterTransitionCoordinator$3;->a(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V

    return-void

    :goto_0
    invoke-static {v2, v1}, Landroid/app/EnterTransitionCoordinator$3;->b(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
