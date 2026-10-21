.class public final synthetic Landroid/app/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/app/KeyguardManager$KeyguardDismissCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/KeyguardManager$KeyguardDismissCallback;I)V
    .locals 0

    iput p2, p0, Landroid/app/k;->b:I

    iput-object p1, p0, Landroid/app/k;->c:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroid/app/k;->b:I

    iget-object v1, p0, Landroid/app/k;->c:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissCancelled()V

    return-void

    :pswitch_1
    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissError()V

    return-void

    :goto_0
    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissSucceeded()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
