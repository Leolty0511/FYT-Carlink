.class public final synthetic Landroid/app/f;
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

    iput p2, p0, Landroid/app/f;->b:I

    iput-object p1, p0, Landroid/app/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroid/app/f;->b:I

    iget-object v1, p0, Landroid/app/f;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismissDialog()V

    return-void

    :pswitch_1
    check-cast v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;

    invoke-static {v1}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->a(Landroid/app/LoadedApk$ReceiverDispatcher$Args;)V

    return-void

    :pswitch_2
    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/app/FragmentTransition;->c(Ljava/util/ArrayList;)V

    return-void

    :pswitch_3
    check-cast v1, Landroid/app/EnterTransitionCoordinator;

    invoke-static {v1}, Landroid/app/EnterTransitionCoordinator;->c(Landroid/app/EnterTransitionCoordinator;)V

    return-void

    :goto_0
    check-cast v1, Landroid/app/Fragment;

    invoke-static {v1}, Landroid/app/Fragment;->a(Landroid/app/Fragment;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
