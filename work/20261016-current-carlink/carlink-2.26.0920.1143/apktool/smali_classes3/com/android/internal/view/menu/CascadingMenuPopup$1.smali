.class Lcom/android/internal/view/menu/CascadingMenuPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->access$000(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->access$000(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isModal()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->access$100(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->access$000(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->dismiss()V

    .line 88
    .line 89
    .line 90
    :cond_2
    return-void
.end method
