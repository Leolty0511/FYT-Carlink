.class Landroid/view/ViewPropertyAnimator$NameValuesHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameValuesHolder"
.end annotation


# instance fields
.field mDeltaValue:F

.field mFromValue:F

.field mNameConstant:I


# direct methods
.method public constructor <init>(IFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    .line 5
    .line 6
    iput p2, p0, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mFromValue:F

    .line 7
    .line 8
    iput p3, p0, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mDeltaValue:F

    .line 9
    .line 10
    return-void
.end method
