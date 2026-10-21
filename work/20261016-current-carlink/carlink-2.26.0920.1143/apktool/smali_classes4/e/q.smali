.class public final synthetic Le/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/syu/carlink/ui/a;


# direct methods
.method public synthetic constructor <init>(Lcom/syu/carlink/ui/a;I)V
    .locals 0

    iput p2, p0, Le/q;->b:I

    iput-object p1, p0, Le/q;->c:Lcom/syu/carlink/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Le/q;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Le/q;->c:Lcom/syu/carlink/ui/a;

    .line 4
    .line 5
    const-string v1, "$window"

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    invoke-static {v0, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/syu/carlink/ui/a;->a()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    invoke-static {v0, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/syu/carlink/ui/a;->a()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :goto_0
    invoke-static {v0, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/syu/carlink/ui/a;->a()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
