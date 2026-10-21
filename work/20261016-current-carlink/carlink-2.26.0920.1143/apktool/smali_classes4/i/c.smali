.class public final Li/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/syu/carlink/fragment/CarplayFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/syu/carlink/fragment/CarplayFragment;I)V
    .locals 0

    iput p2, p0, Li/c;->a:I

    iput-object p1, p0, Li/c;->b:Lcom/syu/carlink/fragment/CarplayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Li/c;->a:I

    .line 2
    .line 3
    const-string v1, "animation"

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-static {p1, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :goto_0
    invoke-static {p1, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget v0, p0, Li/c;->a:I

    const/16 v1, 0x8

    iget-object v2, p0, Li/c;->b:Lcom/syu/carlink/fragment/CarplayFragment;

    const-string v3, "animation"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {p1, v3}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Lcom/syu/carlink/fragment/CarplayFragment;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 3
    :goto_0
    invoke-static {p1, v3}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Lcom/syu/carlink/fragment/CarplayFragment;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 1

    .line 5
    iget v0, p0, Li/c;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1, p2}, Landroid/animation/a;->a(Landroid/animation/Animator$AnimatorListener;Landroid/animation/Animator;Z)V

    return-void

    :goto_0
    invoke-static {p0, p1, p2}, Landroid/animation/a;->a(Landroid/animation/Animator$AnimatorListener;Landroid/animation/Animator;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Li/c;->a:I

    .line 2
    .line 3
    const-string v1, "animation"

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-static {p1, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :goto_0
    invoke-static {p1, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget v0, p0, Li/c;->a:I

    const-string v1, "animation"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {p1, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2
    :goto_0
    invoke-static {p1, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 1

    .line 3
    iget v0, p0, Li/c;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1, p2}, Landroid/animation/a;->b(Landroid/animation/Animator$AnimatorListener;Landroid/animation/Animator;Z)V

    return-void

    :goto_0
    invoke-static {p0, p1, p2}, Landroid/animation/a;->b(Landroid/animation/Animator$AnimatorListener;Landroid/animation/Animator;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
