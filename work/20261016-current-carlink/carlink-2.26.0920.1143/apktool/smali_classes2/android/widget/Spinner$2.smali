.class Landroid/widget/Spinner$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Spinner;->access$100(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/widget/Spinner;->access$100(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getTextDirection()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getTextAlignment()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-interface {v0, v1, v2}, Landroid/widget/Spinner$SpinnerPopup;->show(II)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method
