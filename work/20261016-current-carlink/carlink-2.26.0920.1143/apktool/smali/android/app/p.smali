.class public final synthetic Landroid/app/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Landroid/os/Binder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Binder;ZI)V
    .locals 0

    iput p3, p0, Landroid/app/p;->b:I

    iput-object p1, p0, Landroid/app/p;->d:Landroid/os/Binder;

    iput-boolean p2, p0, Landroid/app/p;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroid/app/p;->b:I

    iget-boolean v1, p0, Landroid/app/p;->c:Z

    iget-object v2, p0, Landroid/app/p;->d:Landroid/os/Binder;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroid/app/VrManager$CallbackEntry$1;

    invoke-static {v2, v1}, Landroid/app/VrManager$CallbackEntry$1;->a(Landroid/app/VrManager$CallbackEntry$1;Z)V

    return-void

    :goto_0
    check-cast v2, Landroid/app/VrManager$CallbackEntry$2;

    invoke-static {v2, v1}, Landroid/app/VrManager$CallbackEntry$2;->a(Landroid/app/VrManager$CallbackEntry$2;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
