.class public final synthetic Landroid/app/c;
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

    iput p3, p0, Landroid/app/c;->b:I

    iput-object p1, p0, Landroid/app/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroid/app/c;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroid/app/c;->b:I

    iget-object v1, p0, Landroid/app/c;->d:Ljava/lang/Object;

    iget-object v2, p0, Landroid/app/c;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroid/app/EnterTransitionCoordinator;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-static {v2, v1}, Landroid/app/EnterTransitionCoordinator;->d(Landroid/app/EnterTransitionCoordinator;Landroid/util/ArrayMap;)V

    return-void

    :pswitch_1
    check-cast v2, Landroid/app/ActivityTransitionState;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v2, v1}, Landroid/app/ActivityTransitionState;->a(Landroid/app/ActivityTransitionState;Landroid/app/Activity;)V

    return-void

    :pswitch_2
    check-cast v2, Landroid/app/ActivityTransitionCoordinator;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Landroid/app/ActivityTransitionCoordinator;->b(Landroid/app/ActivityTransitionCoordinator;Ljava/util/ArrayList;)V

    return-void

    :goto_0
    check-cast v2, Landroid/app/ExitTransitionCoordinator;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Landroid/app/ExitTransitionCoordinator;->c(Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
