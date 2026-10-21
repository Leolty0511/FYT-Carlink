.class public final synthetic Landroid/accessibilityservice/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IZLjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroid/accessibilityservice/d;->b:I

    iput-object p3, p0, Landroid/accessibilityservice/d;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Landroid/accessibilityservice/d;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroid/accessibilityservice/d;->b:I

    iget-boolean v1, p0, Landroid/accessibilityservice/d;->c:Z

    iget-object v2, p0, Landroid/accessibilityservice/d;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    invoke-static {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->b(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Z)V

    return-void

    :pswitch_1
    check-cast v2, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-static {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->c(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Z)V

    return-void

    :pswitch_2
    check-cast v2, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    invoke-static {v2, v1}, Landroid/accessibilityservice/FingerprintGestureController;->b(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Z)V

    return-void

    :goto_0
    check-cast v2, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-static {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->a(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
