.class Landroid/widget/ListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/ListPopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    float-to-int v0, v0

    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    float-to-int p2, p2

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    .line 18
    .line 19
    iget-object v1, v1, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    if-ltz v0, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    .line 32
    .line 33
    iget-object v1, v1, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ge v0, v1, :cond_0

    .line 40
    .line 41
    if-ltz p2, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    .line 44
    .line 45
    iget-object v0, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-ge p2, v0, :cond_0

    .line 52
    .line 53
    iget-object p1, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    .line 54
    .line 55
    invoke-static {p1}, Landroid/widget/ListPopupWindow;->access$700(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p2, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    .line 60
    .line 61
    invoke-static {p2}, Landroid/widget/ListPopupWindow;->access$600(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const-wide/16 v0, 0xfa

    .line 66
    .line 67
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/4 p2, 0x1

    .line 72
    if-ne p1, p2, :cond_1

    .line 73
    .line 74
    iget-object p1, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    .line 75
    .line 76
    invoke-static {p1}, Landroid/widget/ListPopupWindow;->access$700(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p2, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    .line 81
    .line 82
    invoke-static {p2}, Landroid/widget/ListPopupWindow;->access$600(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 90
    return p1
.end method
