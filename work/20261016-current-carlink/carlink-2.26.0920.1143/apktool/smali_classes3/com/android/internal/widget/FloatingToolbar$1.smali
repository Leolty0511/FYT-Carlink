.class Lcom/android/internal/widget/FloatingToolbar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final mNewRect:Landroid/graphics/Rect;

.field private final mOldRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/internal/widget/FloatingToolbar;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/FloatingToolbar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$1;->mNewRect:Landroid/graphics/Rect;

    .line 12
    .line 13
    new-instance p1, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$1;->mOldRect:Landroid/graphics/Rect;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$1;->mNewRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$1;->mOldRect:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p1, p6, p7, p8, p9}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->access$000(Lcom/android/internal/widget/FloatingToolbar;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$1;->mNewRect:Landroid/graphics/Rect;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/internal/widget/FloatingToolbar$1;->mOldRect:Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    .line 34
    .line 35
    const/4 p2, 0x1

    .line 36
    invoke-static {p1, p2}, Lcom/android/internal/widget/FloatingToolbar;->access$102(Lcom/android/internal/widget/FloatingToolbar;Z)Z

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/android/internal/widget/FloatingToolbar;->updateLayout()Lcom/android/internal/widget/FloatingToolbar;

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method
