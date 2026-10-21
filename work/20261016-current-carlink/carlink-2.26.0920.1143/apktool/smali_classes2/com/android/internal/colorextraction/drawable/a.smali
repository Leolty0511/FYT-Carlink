.class public final synthetic Lcom/android/internal/colorextraction/drawable/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/colorextraction/drawable/GradientDrawable;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/colorextraction/drawable/a;->a:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    iput p2, p0, Lcom/android/internal/colorextraction/drawable/a;->b:I

    iput p3, p0, Lcom/android/internal/colorextraction/drawable/a;->c:I

    iput p4, p0, Lcom/android/internal/colorextraction/drawable/a;->d:I

    iput p5, p0, Lcom/android/internal/colorextraction/drawable/a;->e:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/a;->a:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/internal/colorextraction/drawable/a;->b:I

    iget v2, p0, Lcom/android/internal/colorextraction/drawable/a;->c:I

    iget v3, p0, Lcom/android/internal/colorextraction/drawable/a;->d:I

    iget v4, p0, Lcom/android/internal/colorextraction/drawable/a;->e:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->a(Lcom/android/internal/colorextraction/drawable/GradientDrawable;IIIILandroid/animation/ValueAnimator;)V

    return-void
.end method
