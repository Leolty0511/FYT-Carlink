.class public Lj/a$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj/a;


# direct methods
.method public constructor <init>(Lj/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a$a;->a:Lj/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lj/a$a;->a:Lj/a;

    invoke-static {p1}, Lj/a;->a(Lj/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj/a$a;->a:Lj/a;

    invoke-static {p1}, Lj/a;->b(Lj/a;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lj/a$a;->a:Lj/a;

    invoke-static {p1}, Lj/a;->b(Lj/a;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    iget-object p1, p0, Lj/a$a;->a:Lj/a;

    invoke-static {p1}, Lj/a;->g(Lj/a;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 4
    :cond_0
    iget-object p1, p0, Lj/a$a;->a:Lj/a;

    invoke-static {p1}, Lj/a;->h(Lj/a;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Lj/a$a;->a:Lj/a;

    invoke-static {p1}, Lj/a;->i(Lj/a;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 5
    iget-object p1, p0, Lj/a$a;->a:Lj/a;

    invoke-static {p1}, Lj/a;->h(Lj/a;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 6
    :cond_1
    iget-object p1, p0, Lj/a$a;->a:Lj/a;

    invoke-static {p1}, Lj/a;->g(Lj/a;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lj/a$a;->a:Lj/a;

    invoke-static {p1}, Lj/a;->g(Lj/a;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 8
    iget-object p1, p0, Lj/a$a;->a:Lj/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj/a;->j(Lj/a;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 9
    iget-object p1, p0, Lj/a$a;->a:Lj/a;

    invoke-virtual {p1}, Lj/a;->r()V

    .line 10
    iget-object p1, p0, Lj/a$a;->a:Lj/a;

    invoke-static {p1}, Lj/a;->k(Lj/a;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lj/a$a;->a:Lj/a;

    invoke-static {p1}, Lj/a;->k(Lj/a;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFitSystemWindows()V

    :cond_2
    return-void
.end method
