.class final Landroid/widget/AbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;

.field x:F

.field y:F


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    .line 2
    .line 3
    iget v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4
    .line 5
    if-nez v1, :cond_6

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 9
    .line 10
    iget v2, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 11
    .line 12
    iget v3, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 13
    .line 14
    sub-int/2addr v2, v3

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->hasExplicitFocusable()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_6

    .line 26
    .line 27
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    iput v3, v2, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 31
    .line 32
    iget-boolean v4, v2, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 33
    .line 34
    const/4 v5, 0x2

    .line 35
    if-nez v4, :cond_5

    .line 36
    .line 37
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1000(Landroid/widget/AbsListView;)[F

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget v4, p0, Landroid/widget/AbsListView$CheckForTap;->x:F

    .line 42
    .line 43
    aput v4, v2, v3

    .line 44
    .line 45
    iget v4, p0, Landroid/widget/AbsListView$CheckForTap;->y:F

    .line 46
    .line 47
    aput v4, v2, v1

    .line 48
    .line 49
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    .line 50
    .line 51
    invoke-virtual {v4, v2, v0}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 52
    .line 53
    .line 54
    aget v3, v2, v3

    .line 55
    .line 56
    aget v2, v2, v1

    .line 57
    .line 58
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    .line 75
    .line 76
    iget v2, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 77
    .line 78
    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/view/View;->isLongClickable()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    .line 97
    .line 98
    iget-object v2, v2, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 99
    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-eqz v2, :cond_1

    .line 107
    .line 108
    instance-of v3, v2, Landroid/graphics/drawable/TransitionDrawable;

    .line 109
    .line 110
    if-eqz v3, :cond_1

    .line 111
    .line 112
    if-eqz v1, :cond_0

    .line 113
    .line 114
    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    .line 115
    .line 116
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_0
    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    .line 121
    .line 122
    invoke-virtual {v2}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 123
    .line 124
    .line 125
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    .line 126
    .line 127
    iget-object v2, v2, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 128
    .line 129
    iget v3, p0, Landroid/widget/AbsListView$CheckForTap;->x:F

    .line 130
    .line 131
    iget v4, p0, Landroid/widget/AbsListView$CheckForTap;->y:F

    .line 132
    .line 133
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 134
    .line 135
    .line 136
    :cond_2
    if-eqz v1, :cond_4

    .line 137
    .line 138
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    .line 139
    .line 140
    invoke-static {v1}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-nez v1, :cond_3

    .line 145
    .line 146
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    .line 147
    .line 148
    new-instance v2, Landroid/widget/AbsListView$CheckForLongPress;

    .line 149
    .line 150
    const/4 v3, 0x0

    .line 151
    invoke-direct {v2, v1, v3}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v1, v2}, Landroid/widget/AbsListView;->access$1102(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;

    .line 155
    .line 156
    .line 157
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    .line 158
    .line 159
    invoke-static {v1}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iget v2, p0, Landroid/widget/AbsListView$CheckForTap;->x:F

    .line 164
    .line 165
    iget v3, p0, Landroid/widget/AbsListView$CheckForTap;->y:F

    .line 166
    .line 167
    invoke-static {v1, v2, v3}, Landroid/widget/AbsListView$CheckForLongPress;->access$1300(Landroid/widget/AbsListView$CheckForLongPress;FF)V

    .line 168
    .line 169
    .line 170
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    .line 171
    .line 172
    invoke-static {v1}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Landroid/widget/AbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    .line 180
    .line 181
    invoke-static {v1}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    int-to-long v3, v0

    .line 186
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    .line 191
    .line 192
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_5
    iput v5, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 196
    .line 197
    :cond_6
    :goto_1
    return-void
.end method
