.class Landroid/widget/Spinner$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 11
    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Landroid/widget/Spinner$DropdownPopup$1;

    .line 18
    .line 19
    invoke-direct {p2, p0, p1}, Landroid/widget/Spinner$DropdownPopup$1;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/widget/Spinner;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static synthetic access$300(Landroid/widget/Spinner$DropdownPopup;)Landroid/widget/ListAdapter;
    .locals 0

    iget-object p0, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method public static synthetic access$701(Landroid/widget/Spinner$DropdownPopup;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method public computeContentWidth()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRtl()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 34
    .line 35
    invoke-static {v0}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 40
    .line 41
    neg-int v0, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 44
    .line 45
    invoke-static {v0}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 50
    .line 51
    invoke-static {v1}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x0

    .line 56
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 57
    .line 58
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 59
    .line 60
    move v0, v2

    .line 61
    :goto_0
    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iget-object v3, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    iget-object v4, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 80
    .line 81
    iget v5, v4, Landroid/widget/Spinner;->mDropDownWidth:I

    .line 82
    .line 83
    const/4 v6, -0x2

    .line 84
    if-ne v5, v6, :cond_3

    .line 85
    .line 86
    iget-object v5, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 87
    .line 88
    check-cast v5, Landroid/widget/SpinnerAdapter;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v4, v5, v6}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    iget-object v5, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 99
    .line 100
    invoke-static {v5}, Landroid/widget/Spinner;->access$500(Landroid/widget/Spinner;)Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 113
    .line 114
    iget-object v6, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 115
    .line 116
    invoke-static {v6}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 121
    .line 122
    sub-int/2addr v5, v6

    .line 123
    iget-object v6, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 124
    .line 125
    invoke-static {v6}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 130
    .line 131
    sub-int/2addr v5, v6

    .line 132
    if-le v4, v5, :cond_2

    .line 133
    .line 134
    move v4, v5

    .line 135
    :cond_2
    sub-int v5, v3, v1

    .line 136
    .line 137
    sub-int/2addr v5, v2

    .line 138
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-virtual {p0, v4}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    const/4 v4, -0x1

    .line 147
    if-ne v5, v4, :cond_4

    .line 148
    .line 149
    sub-int v4, v3, v1

    .line 150
    .line 151
    sub-int/2addr v4, v2

    .line 152
    invoke-virtual {p0, v4}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_4
    invoke-virtual {p0, v5}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 157
    .line 158
    .line 159
    :goto_1
    iget-object v4, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 160
    .line 161
    invoke-virtual {v4}, Landroid/view/View;->isLayoutRtl()Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_5

    .line 166
    .line 167
    sub-int/2addr v3, v2

    .line 168
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getWidth()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    sub-int/2addr v3, v1

    .line 173
    add-int/2addr v3, v0

    .line 174
    goto :goto_2

    .line 175
    :cond_5
    add-int v3, v0, v1

    .line 176
    .line 177
    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 5
    .line 6
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-void
.end method

.method public show(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->computeContentWidth()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Landroid/view/View;->setTextDirection(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Landroid/view/View;->setTextAlignment(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    .line 36
    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    new-instance p2, Landroid/widget/Spinner$DropdownPopup$2;

    .line 50
    .line 51
    invoke-direct {p2, p0}, Landroid/widget/Spinner$DropdownPopup$2;-><init>(Landroid/widget/Spinner$DropdownPopup;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Landroid/widget/Spinner$DropdownPopup$3;

    .line 58
    .line 59
    invoke-direct {p1, p0, p2}, Landroid/widget/Spinner$DropdownPopup$3;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method
