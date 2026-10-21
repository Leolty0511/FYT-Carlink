.class Landroid/view/accessibility/AccessibilityRequestPreparer$ViewAttachStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityRequestPreparer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewAttachStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/accessibility/AccessibilityRequestPreparer;


# direct methods
.method private constructor <init>(Landroid/view/accessibility/AccessibilityRequestPreparer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRequestPreparer$ViewAttachStateListener;->this$0:Landroid/view/accessibility/AccessibilityRequestPreparer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/accessibility/AccessibilityRequestPreparer;Landroid/view/accessibility/AccessibilityRequestPreparer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityRequestPreparer$ViewAttachStateListener;-><init>(Landroid/view/accessibility/AccessibilityRequestPreparer;)V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 14
    .line 15
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRequestPreparer$ViewAttachStateListener;->this$0:Landroid/view/accessibility/AccessibilityRequestPreparer;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityRequestPreparer(Landroid/view/accessibility/AccessibilityRequestPreparer;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
