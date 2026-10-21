.class Landroid/widget/DayPickerView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DayPickerView;


# direct methods
.method public constructor <init>(Landroid/widget/DayPickerView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/DayPickerView;->access$100(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/widget/DayPickerView;->access$200(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    move p1, v1

    .line 21
    :goto_0
    iget-object v0, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/widget/DayPickerView;->access$400(Landroid/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    xor-int/2addr v0, v1

    .line 32
    iget-object v1, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    .line 33
    .line 34
    invoke-static {v1}, Landroid/widget/DayPickerView;->access$500(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v1, p1

    .line 43
    iget-object p1, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    .line 44
    .line 45
    invoke-static {p1}, Landroid/widget/DayPickerView;->access$500(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method
