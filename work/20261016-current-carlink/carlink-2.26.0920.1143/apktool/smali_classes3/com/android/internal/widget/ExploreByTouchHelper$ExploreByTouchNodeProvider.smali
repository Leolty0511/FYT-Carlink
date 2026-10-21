.class Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExploreByTouchNodeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ExploreByTouchHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ExploreByTouchHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/android/internal/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/widget/ExploreByTouchHelper;Lcom/android/internal/widget/ExploreByTouchHelper$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/android/internal/widget/ExploreByTouchHelper;)V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/android/internal/widget/ExploreByTouchHelper;

    invoke-static {v0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->access$100(Lcom/android/internal/widget/ExploreByTouchHelper;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/android/internal/widget/ExploreByTouchHelper;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->access$200(Lcom/android/internal/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
