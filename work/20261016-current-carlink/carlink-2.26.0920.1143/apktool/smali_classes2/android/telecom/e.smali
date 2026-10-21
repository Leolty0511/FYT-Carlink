.class public final synthetic Landroid/telecom/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/telecom/RemoteConnection$Callback;

.field public final synthetic d:Landroid/telecom/RemoteConnection;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V
    .locals 0

    iput p3, p0, Landroid/telecom/e;->b:I

    iput-object p1, p0, Landroid/telecom/e;->c:Landroid/telecom/RemoteConnection$Callback;

    iput-object p2, p0, Landroid/telecom/e;->d:Landroid/telecom/RemoteConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroid/telecom/e;->b:I

    iget-object v1, p0, Landroid/telecom/e;->d:Landroid/telecom/RemoteConnection;

    iget-object v2, p0, Landroid/telecom/e;->c:Landroid/telecom/RemoteConnection$Callback;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v2, v1}, Landroid/telecom/RemoteConnection;->a(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    return-void

    :pswitch_1
    invoke-static {v2, v1}, Landroid/telecom/RemoteConnection;->b(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    return-void

    :goto_0
    invoke-static {v2, v1}, Landroid/telecom/RemoteConnection;->d(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
