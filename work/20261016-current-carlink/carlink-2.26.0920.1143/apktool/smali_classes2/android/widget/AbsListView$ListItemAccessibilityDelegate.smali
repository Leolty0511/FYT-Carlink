.class Landroid/widget/AbsListView$ListItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v0, p2}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-object p3, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    .line 10
    .line 11
    invoke-virtual {p3, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    const/4 v1, -0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eq p3, v1, :cond_c

    .line 18
    .line 19
    iget-object v3, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    .line 20
    .line 21
    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 22
    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_1
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-lt p3, v3, :cond_2

    .line 32
    .line 33
    return v2

    .line 34
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    instance-of v4, v3, Landroid/widget/AbsListView$LayoutParams;

    .line 39
    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 43
    .line 44
    iget-boolean v3, v3, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    move v3, v2

    .line 48
    :goto_0
    iget-object v4, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_c

    .line 55
    .line 56
    if-nez v3, :cond_4

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    const/4 v3, 0x4

    .line 60
    if-eq p2, v3, :cond_b

    .line 61
    .line 62
    const/16 v3, 0x8

    .line 63
    .line 64
    if-eq p2, v3, :cond_9

    .line 65
    .line 66
    const/16 v0, 0x10

    .line 67
    .line 68
    if-eq p2, v0, :cond_7

    .line 69
    .line 70
    const/16 v0, 0x20

    .line 71
    .line 72
    if-eq p2, v0, :cond_5

    .line 73
    .line 74
    return v2

    .line 75
    :cond_5
    iget-object p2, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/view/View;->isLongClickable()Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_6

    .line 82
    .line 83
    iget-object p2, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    .line 84
    .line 85
    invoke-virtual {p2, p3}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    iget-object p2, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    .line 90
    .line 91
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    return p1

    .line 96
    :cond_6
    return v2

    .line 97
    :cond_7
    iget-object p2, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    .line 98
    .line 99
    invoke-static {p2, p1}, Landroid/widget/AbsListView;->access$300(Landroid/widget/AbsListView;Landroid/view/View;)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_8

    .line 104
    .line 105
    iget-object p2, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    .line 106
    .line 107
    invoke-virtual {p2, p3}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    iget-object p2, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    .line 112
    .line 113
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    return p1

    .line 118
    :cond_8
    return v2

    .line 119
    :cond_9
    iget-object p1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-ne p1, p3, :cond_a

    .line 126
    .line 127
    iget-object p1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    .line 128
    .line 129
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 130
    .line 131
    .line 132
    return v0

    .line 133
    :cond_a
    return v2

    .line 134
    :cond_b
    iget-object p1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eq p1, p3, :cond_c

    .line 141
    .line 142
    iget-object p1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    .line 143
    .line 144
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 145
    .line 146
    .line 147
    return v0

    .line 148
    :cond_c
    :goto_1
    return v2
.end method
