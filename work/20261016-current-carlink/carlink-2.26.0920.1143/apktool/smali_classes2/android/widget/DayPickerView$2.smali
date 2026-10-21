.class Landroid/widget/DayPickerView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


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

    iput-object p1, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 1
    const/high16 p1, 0x3f000000    # 0.5f

    .line 2
    .line 3
    sub-float/2addr p1, p2

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/high16 p2, 0x40000000    # 2.0f

    .line 9
    .line 10
    mul-float/2addr p1, p2

    .line 11
    iget-object p2, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    .line 12
    .line 13
    invoke-static {p2}, Landroid/widget/DayPickerView;->access$100(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    .line 21
    .line 22
    invoke-static {p2}, Landroid/widget/DayPickerView;->access$200(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v0, p1}, Landroid/widget/DayPickerView;->access$300(Landroid/widget/DayPickerView;I)V

    return-void
.end method
