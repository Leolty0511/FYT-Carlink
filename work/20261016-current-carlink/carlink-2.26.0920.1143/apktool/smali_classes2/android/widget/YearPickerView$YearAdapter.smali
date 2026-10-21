.class Landroid/widget/YearPickerView$YearAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YearPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YearAdapter"
.end annotation


# static fields
.field private static final ITEM_LAYOUT:I = 0x1090116

.field private static final ITEM_TEXT_ACTIVATED_APPEARANCE:I = 0x1030385

.field private static final ITEM_TEXT_APPEARANCE:I = 0x1030384


# instance fields
.field private mActivatedYear:I

.field private mCount:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMinYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroid/widget/YearPickerView$YearAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getPositionForYear(I)I
    .locals 1

    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v1

    .line 8
    :goto_0
    if-eqz v2, :cond_1

    .line 9
    .line 10
    iget-object p2, p0, Landroid/widget/YearPickerView$YearAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 11
    .line 12
    const v3, 0x1090116

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Landroid/widget/TextView;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    check-cast p2, Landroid/widget/TextView;

    .line 23
    .line 24
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget p3, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    .line 29
    .line 30
    if-ne p3, p1, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v0, v1

    .line 34
    :goto_2
    if-nez v2, :cond_3

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/View;->isActivated()Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-eq p3, v0, :cond_5

    .line 41
    .line 42
    :cond_3
    if-eqz v0, :cond_4

    .line 43
    .line 44
    const p3, 0x1030385

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_4
    const p3, 0x1030384

    .line 49
    .line 50
    .line 51
    :goto_3
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setActivated(Z)V

    .line 55
    .line 56
    .line 57
    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getYearForPosition(I)I
    .locals 1

    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    add-int/2addr v0, p1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p2}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    sub-int/2addr p2, p1

    .line 10
    add-int/lit8 p2, p2, 0x1

    .line 11
    .line 12
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    .line 13
    .line 14
    if-ne v0, p1, :cond_0

    .line 15
    .line 16
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    .line 17
    .line 18
    if-eq v0, p2, :cond_1

    .line 19
    .line 20
    :cond_0
    iput p1, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    .line 21
    .line 22
    iput p2, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public setSelection(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method
