.class public Landroid/widget/TableLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 4
    invoke-direct {p0, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    const/4 p1, -0x1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    const/4 p1, -0x1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    instance-of v0, p1, Landroid/widget/TableLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 10
    check-cast p1, Landroid/widget/TableLayout$LayoutParams;

    iget p1, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_0
    return-void
.end method


# virtual methods
.method public setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 0

    .line 1
    const/4 p2, -0x1

    .line 2
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    .line 4
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const-string p2, "layout_height"

    .line 11
    .line 12
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, -0x2

    .line 20
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    .line 22
    :goto_0
    return-void
.end method
