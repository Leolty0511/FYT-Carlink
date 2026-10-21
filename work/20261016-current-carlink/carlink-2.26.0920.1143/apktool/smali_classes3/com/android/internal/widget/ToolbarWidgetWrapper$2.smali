.class Lcom/android/internal/widget/ToolbarWidgetWrapper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$000(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/widget/Toolbar;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
