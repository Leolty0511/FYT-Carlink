.class public final synthetic Lcom/android/internal/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

.field public final synthetic c:Landroid/widget/ImageButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Landroid/widget/ImageButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/a;->b:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iput-object p2, p0, Lcom/android/internal/widget/a;->c:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/a;->b:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v1, p0, Lcom/android/internal/widget/a;->c:Landroid/widget/ImageButton;

    invoke-static {v0, v1, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->c(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Landroid/widget/ImageButton;Landroid/view/View;)V

    return-void
.end method
