.class public Lcom/android/internal/app/PlatLogoActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lcom/android/internal/app/PlatLogoActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$a;->c:Lcom/android/internal/app/PlatLogoActivity;

    iput-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$a;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/android/internal/app/PlatLogoActivity$a;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity$a;->a:I

    const/4 v0, 0x6

    if-lt p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$a;->c:Lcom/android/internal/app/PlatLogoActivity;

    iget-object p1, p1, Lcom/android/internal/app/PlatLogoActivity;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    float-to-int p1, p1

    const/16 v0, 0x168

    rem-int/2addr p1, v0

    int-to-float p1, p1

    .line 5
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, -0x168

    :goto_0
    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x2bc

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
