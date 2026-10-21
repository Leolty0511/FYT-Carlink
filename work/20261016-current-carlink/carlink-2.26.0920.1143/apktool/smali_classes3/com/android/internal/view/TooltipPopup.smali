.class public Lcom/android/internal/view/TooltipPopup;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TooltipPopup"


# instance fields
.field private final mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mMessageView:Landroid/widget/TextView;

.field private final mTmpAnchorPos:[I

.field private final mTmpAppPos:[I

.field private final mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    new-instance v1, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    new-array v2, v1, [I

    .line 20
    .line 21
    iput-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    .line 22
    .line 23
    new-array v1, v1, [I

    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const v2, 0x1090106

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    .line 42
    .line 43
    const v2, 0x102000b

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    .line 53
    .line 54
    const v1, 0x1040635

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 69
    .line 70
    const/16 p1, 0x3ed

    .line 71
    .line 72
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 73
    .line 74
    const/4 p1, -0x2

    .line 75
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 76
    .line 77
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 78
    .line 79
    const/4 p1, -0x3

    .line 80
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 81
    .line 82
    const p1, 0x1030300

    .line 83
    .line 84
    .line 85
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 86
    .line 87
    const/16 p1, 0x18

    .line 88
    .line 89
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 90
    .line 91
    return-void
.end method

.method private computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x10501a1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-lt v1, v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    div-int/lit8 p2, p2, 0x2

    .line 32
    .line 33
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x0

    .line 38
    if-lt v1, v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const v1, 0x10501a0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    add-int v1, p3, v0

    .line 54
    .line 55
    sub-int/2addr p3, v0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    move p3, v2

    .line 62
    :goto_1
    const/16 v0, 0x31

    .line 63
    .line 64
    iput v0, p5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz p4, :cond_2

    .line 73
    .line 74
    const v3, 0x10501a4

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    const v3, 0x10501a3

    .line 79
    .line 80
    .line 81
    :goto_2
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    if-nez v3, :cond_3

    .line 98
    .line 99
    const-string p1, "TooltipPopup"

    .line 100
    .line 101
    const-string p2, "Cannot find app view"

    .line 102
    .line 103
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_3
    iget-object v4, p0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 108
    .line 109
    invoke-virtual {v3, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 110
    .line 111
    .line 112
    iget-object v4, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    .line 113
    .line 114
    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 115
    .line 116
    .line 117
    iget-object v3, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    .line 118
    .line 119
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    .line 123
    .line 124
    aget v3, p1, v2

    .line 125
    .line 126
    iget-object v4, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    .line 127
    .line 128
    aget v5, v4, v2

    .line 129
    .line 130
    sub-int/2addr v3, v5

    .line 131
    aput v3, p1, v2

    .line 132
    .line 133
    const/4 v5, 0x1

    .line 134
    aget v6, p1, v5

    .line 135
    .line 136
    aget v4, v4, v5

    .line 137
    .line 138
    sub-int/2addr v6, v4

    .line 139
    aput v6, p1, v5

    .line 140
    .line 141
    add-int/2addr v3, p2

    .line 142
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    div-int/lit8 p1, p1, 0x2

    .line 149
    .line 150
    sub-int/2addr v3, p1

    .line 151
    iput v3, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 152
    .line 153
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    iget-object p2, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    .line 158
    .line 159
    invoke-virtual {p2, p1, p1}, Landroid/view/View;->measure(II)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    iget-object p2, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    .line 169
    .line 170
    aget p2, p2, v5

    .line 171
    .line 172
    add-int/2addr p3, p2

    .line 173
    sub-int/2addr p3, v0

    .line 174
    sub-int/2addr p3, p1

    .line 175
    add-int/2addr p2, v1

    .line 176
    add-int/2addr p2, v0

    .line 177
    if-eqz p4, :cond_5

    .line 178
    .line 179
    if-ltz p3, :cond_4

    .line 180
    .line 181
    iput p3, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_4
    iput p2, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_5
    add-int/2addr p1, p2

    .line 188
    iget-object p4, p0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 189
    .line 190
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 191
    .line 192
    .line 193
    move-result p4

    .line 194
    if-gt p1, p4, :cond_6

    .line 195
    .line 196
    iput p2, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_6
    iput p3, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 200
    .line 201
    :goto_3
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v1, "window"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/WindowManager;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object v6, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 16
    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p1

    .line 19
    move v3, p2

    .line 20
    move v4, p3

    .line 21
    move v5, p4

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/view/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string p2, "window"

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/view/WindowManager;

    .line 34
    .line 35
    iget-object p2, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    .line 36
    .line 37
    iget-object p3, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 38
    .line 39
    invoke-interface {p1, p2, p3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
