.class public Lj/a$b;
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
    iput-object p1, p0, Lj/a$b;->a:Lj/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lj/a$b;->a:Lj/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj/a;->j(Lj/a;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 2
    iget-object p1, p0, Lj/a$b;->a:Lj/a;

    invoke-static {p1}, Lj/a;->g(Lj/a;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
