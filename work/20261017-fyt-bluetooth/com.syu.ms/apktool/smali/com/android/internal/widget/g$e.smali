.class public Lcom/android/internal/widget/g$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Lcom/android/internal/widget/g;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/g$e;->c:Lcom/android/internal/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/internal/widget/g$e;->a:Z

    return-void
.end method


# virtual methods
.method public a(I)Lcom/android/internal/widget/g$e;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/widget/g$e;->b:I

    return-object p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/widget/g$e;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/internal/widget/g$e;->a:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/g$e;->c:Lcom/android/internal/widget/g;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/internal/widget/g;->j:Landroid/animation/Animator;

    .line 3
    iget v0, p0, Lcom/android/internal/widget/g$e;->b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/g$e;->c:Lcom/android/internal/widget/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/g$e;->c:Lcom/android/internal/widget/g;

    iput-object p1, v0, Lcom/android/internal/widget/g;->j:Landroid/animation/Animator;

    .line 3
    iput-boolean v1, p0, Lcom/android/internal/widget/g$e;->a:Z

    return-void
.end method
