.class public final synthetic Landroid/view/textclassifier/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Landroid/view/textclassifier/d;->b:I

    iput-object p1, p0, Landroid/view/textclassifier/d;->c:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/textclassifier/d;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/textclassifier/d;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/view/textclassifier/d;->c:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/view/textclassifier/d;->d:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    check-cast v2, Landroid/content/Intent;

    .line 12
    .line 13
    invoke-static {v1, v2, p1}, Landroid/view/textclassifier/TextClassification;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :goto_0
    check-cast v1, Lcom/syu/carlink/MainActivity;

    .line 18
    .line 19
    check-cast v2, Lcom/syu/carlink/ui/a;

    .line 20
    .line 21
    const-string/jumbo p1, "this$0"

    .line 22
    .line 23
    .line 24
    invoke-static {v1, p1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p1, "$window"

    .line 28
    .line 29
    invoke-static {v2, p1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v0, "==================>>>  setOnClickListener 22  "

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, v1, Lcom/syu/carlink/MainActivity;->k:Lcom/syu/carlink/ui/a;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "HDL"

    .line 49
    .line 50
    invoke-static {v0, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/syu/carlink/ui/a;->a()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
