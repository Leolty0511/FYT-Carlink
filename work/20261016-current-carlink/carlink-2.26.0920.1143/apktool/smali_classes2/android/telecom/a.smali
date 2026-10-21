.class public final synthetic Landroid/telecom/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/telecom/Call$Callback;

.field public final synthetic d:Landroid/telecom/Call;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;II)V
    .locals 0

    iput p4, p0, Landroid/telecom/a;->b:I

    iput-object p1, p0, Landroid/telecom/a;->c:Landroid/telecom/Call$Callback;

    iput-object p2, p0, Landroid/telecom/a;->d:Landroid/telecom/Call;

    iput p3, p0, Landroid/telecom/a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroid/telecom/a;->b:I

    iget-object v1, p0, Landroid/telecom/a;->c:Landroid/telecom/Call$Callback;

    iget v2, p0, Landroid/telecom/a;->e:I

    iget-object v3, p0, Landroid/telecom/a;->d:Landroid/telecom/Call;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1, v3, v2}, Landroid/telecom/Call;->b(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    return-void

    :pswitch_1
    invoke-static {v1, v3, v2}, Landroid/telecom/Call;->c(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    return-void

    :goto_0
    invoke-static {v1, v3, v2}, Landroid/telecom/Call;->a(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
