.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->openOverflow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

.field final synthetic val$startHeight:I

.field final synthetic val$startY:F

.field final synthetic val$targetHeight:I


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIF)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iput p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;->val$targetHeight:I

    iput p3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;->val$startHeight:I

    iput p4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;->val$startY:F

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;->val$targetHeight:I

    .line 2
    .line 3
    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;->val$startHeight:I

    .line 4
    .line 5
    sub-int/2addr p2, v0

    .line 6
    int-to-float p2, p2

    .line 7
    mul-float/2addr p1, p2

    .line 8
    float-to-int p1, p1

    .line 9
    iget-object p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;->val$startHeight:I

    .line 16
    .line 17
    add-int/2addr v0, p1

    .line 18
    invoke-static {p2, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1600(Landroid/view/View;I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1700(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;->val$startY:F

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;->val$startHeight:I

    .line 48
    .line 49
    sub-int/2addr v0, v1

    .line 50
    int-to-float v0, v0

    .line 51
    sub-float/2addr p2, v0

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1800(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method
