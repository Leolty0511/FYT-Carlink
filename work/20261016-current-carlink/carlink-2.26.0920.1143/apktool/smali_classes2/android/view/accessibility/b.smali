.class public final synthetic Landroid/view/accessibility/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/accessibility/AccessibilityManager$1;

.field public final synthetic c:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/accessibility/AccessibilityManager$1;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/accessibility/b;->b:Landroid/view/accessibility/AccessibilityManager$1;

    iput-object p2, p0, Landroid/view/accessibility/b;->c:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/view/accessibility/b;->b:Landroid/view/accessibility/AccessibilityManager$1;

    iget-object v1, p0, Landroid/view/accessibility/b;->c:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityManager$1;->a(Landroid/view/accessibility/AccessibilityManager$1;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    return-void
.end method
