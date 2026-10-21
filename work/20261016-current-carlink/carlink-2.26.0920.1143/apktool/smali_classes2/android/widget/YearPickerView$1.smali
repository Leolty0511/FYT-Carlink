.class Landroid/widget/YearPickerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/YearPickerView;


# direct methods
.method public constructor <init>(Landroid/widget/YearPickerView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/widget/YearPickerView;->access$000(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$YearAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p3}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object p2, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    .line 12
    .line 13
    invoke-static {p2}, Landroid/widget/YearPickerView;->access$000(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$YearAdapter;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2, p1}, Landroid/widget/YearPickerView$YearAdapter;->setSelection(I)Z

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    .line 21
    .line 22
    invoke-static {p2}, Landroid/widget/YearPickerView;->access$100(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$OnYearSelectedListener;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    iget-object p2, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    .line 29
    .line 30
    invoke-static {p2}, Landroid/widget/YearPickerView;->access$100(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$OnYearSelectedListener;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iget-object p3, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    .line 35
    .line 36
    invoke-interface {p2, p3, p1}, Landroid/widget/YearPickerView$OnYearSelectedListener;->onYearChanged(Landroid/widget/YearPickerView;I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
