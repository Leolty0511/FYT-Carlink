.class public final synthetic Landroid/telecom/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/telecom/Connection;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/Connection;I)V
    .locals 0

    iput p2, p0, Landroid/telecom/d;->b:I

    iput-object p1, p0, Landroid/telecom/d;->c:Landroid/telecom/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroid/telecom/d;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/telecom/d;->c:Landroid/telecom/Connection;

    check-cast p1, Landroid/telecom/Connection$Listener;

    invoke-static {v0, p1}, Landroid/telecom/Connection;->b(Landroid/telecom/Connection;Landroid/telecom/Connection$Listener;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/telecom/d;->c:Landroid/telecom/Connection;

    check-cast p1, Landroid/telecom/Connection$Listener;

    invoke-static {v0, p1}, Landroid/telecom/Connection;->d(Landroid/telecom/Connection;Landroid/telecom/Connection$Listener;)V

    return-void

    :goto_0
    iget-object v0, p0, Landroid/telecom/d;->c:Landroid/telecom/Connection;

    check-cast p1, Landroid/telecom/Connection$Listener;

    invoke-static {v0, p1}, Landroid/telecom/Connection;->a(Landroid/telecom/Connection;Landroid/telecom/Connection$Listener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
