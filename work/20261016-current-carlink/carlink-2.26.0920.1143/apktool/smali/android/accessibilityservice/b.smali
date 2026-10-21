.class public final synthetic Landroid/accessibilityservice/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/accessibilityservice/AccessibilityButtonController;

.field public final synthetic c:Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroid/accessibilityservice/AccessibilityButtonController;Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/b;->b:Landroid/accessibilityservice/AccessibilityButtonController;

    iput-object p2, p0, Landroid/accessibilityservice/b;->c:Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    iput-boolean p3, p0, Landroid/accessibilityservice/b;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/accessibilityservice/b;->c:Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    iget-boolean v1, p0, Landroid/accessibilityservice/b;->d:Z

    iget-object v2, p0, Landroid/accessibilityservice/b;->b:Landroid/accessibilityservice/AccessibilityButtonController;

    invoke-static {v2, v0, v1}, Landroid/accessibilityservice/AccessibilityButtonController;->a(Landroid/accessibilityservice/AccessibilityButtonController;Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Z)V

    return-void
.end method
