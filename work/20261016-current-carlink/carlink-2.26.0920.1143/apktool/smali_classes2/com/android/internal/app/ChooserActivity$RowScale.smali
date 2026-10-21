.class Lcom/android/internal/app/ChooserActivity$RowScale;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowScale"
.end annotation


# static fields
.field private static final DURATION:I = 0x190

.field public static final PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/internal/app/ChooserActivity$RowScale;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field private final mAnimator:Landroid/animation/ObjectAnimator;

.field mScale:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/app/ChooserActivity$RowScale$1;

    const-string v1, "scale"

    invoke-direct {v0, v1}, Lcom/android/internal/app/ChooserActivity$RowScale$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/app/ChooserActivity$RowScale;->PROPERTY:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;FF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mScale:F

    .line 7
    .line 8
    cmpl-float p1, p2, p3

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object p1, Lcom/android/internal/app/ChooserActivity$RowScale;->PROPERTY:Landroid/util/FloatProperty;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [F

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    aput p2, v0, v1

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    aput p3, v0, p2

    .line 26
    .line 27
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-wide/16 p2, 0x190

    .line 32
    .line 33
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 38
    .line 39
    new-instance p2, Lcom/android/internal/app/ChooserActivity$RowScale$2;

    .line 40
    .line 41
    invoke-direct {p2, p0}, Lcom/android/internal/app/ChooserActivity$RowScale$2;-><init>(Lcom/android/internal/app/ChooserActivity$RowScale;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public get()F
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mScale:F

    return v0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/internal/app/ChooserActivity$RowScale;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-object p0
.end method

.method public startAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
