.class Lcom/android/internal/policy/PhoneWindow$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow;->registerSwipeCallbacks(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeCancelled(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 8
    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 14
    .line 15
    cmpl-float v0, v0, v1

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 21
    .line 22
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    .line 30
    .line 31
    const/16 v0, 0x400

    .line 32
    .line 33
    const/16 v1, 0x600

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public onSwipeProgressChanged(Lcom/android/internal/widget/SwipeDismissLayout;FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    float-to-int p3, p3

    .line 8
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 9
    .line 10
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 11
    .line 12
    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Lcom/android/internal/policy/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 15
    .line 16
    .line 17
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const/16 p1, 0x400

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 p1, 0x200

    .line 25
    .line 26
    :goto_0
    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    .line 27
    .line 28
    const/16 p3, 0x600

    .line 29
    .line 30
    invoke-virtual {p2, p1, p3}, Landroid/view/Window;->setFlags(II)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
