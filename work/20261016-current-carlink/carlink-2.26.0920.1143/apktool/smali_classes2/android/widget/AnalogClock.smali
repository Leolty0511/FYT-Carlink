.class public Landroid/widget/AnalogClock;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private mDialWidth:I

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance v0, Landroid/widget/AnalogClock$1;

    invoke-direct {v0, p0}, Landroid/widget/AnalogClock$1;-><init>(Landroid/widget/AnalogClock;)V

    iput-object v0, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    sget-object v0, Lcom/android/internal/R$styleable;->AnalogClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_0

    const p3, 0x1080249

    .line 9
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 p3, 0x1

    .line 10
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_1

    const p3, 0x108024a

    .line 11
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 p3, 0x2

    .line 12
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_2

    const p2, 0x108024b

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 14
    :cond_2
    new-instance p1, Landroid/text/format/Time;

    invoke-direct {p1}, Landroid/text/format/Time;-><init>()V

    iput-object p1, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 15
    iget-object p1, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    .line 16
    iget-object p1, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    return-void
.end method

.method public static synthetic access$002(Landroid/widget/AnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0

    iput-object p1, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method

.method public static synthetic access$100(Landroid/widget/AnalogClock;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AnalogClock;->onTimeChanged()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 7
    .line 8
    iget v1, v0, Landroid/text/format/Time;->hour:I

    .line 9
    .line 10
    iget v2, v0, Landroid/text/format/Time;->minute:I

    .line 11
    .line 12
    iget v3, v0, Landroid/text/format/Time;->second:I

    .line 13
    .line 14
    int-to-float v2, v2

    .line 15
    int-to-float v3, v3

    .line 16
    const/high16 v4, 0x42700000    # 60.0f

    .line 17
    .line 18
    div-float/2addr v3, v4

    .line 19
    add-float/2addr v3, v2

    .line 20
    iput v3, p0, Landroid/widget/AnalogClock;->mMinutes:F

    .line 21
    .line 22
    int-to-float v1, v1

    .line 23
    div-float/2addr v3, v4

    .line 24
    add-float/2addr v3, v1

    .line 25
    iput v3, p0, Landroid/widget/AnalogClock;->mHour:F

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 29
    .line 30
    invoke-direct {p0, v0}, Landroid/widget/AnalogClock;->updateContentDescription(Landroid/text/format/Time;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private updateContentDescription(Landroid/text/format/Time;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1}, Landroid/text/format/Time;->toMillis(Z)J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    const/16 p1, 0x81

    .line 9
    .line 10
    invoke-static {v0, v1, v2, p1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mAttached:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mAttached:Z

    .line 10
    .line 11
    new-instance v4, Landroid/content/IntentFilter;

    .line 12
    .line 13
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v0, "android.intent.action.TIME_TICK"

    .line 17
    .line 18
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "android.intent.action.TIME_SET"

    .line 22
    .line 23
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 27
    .line 28
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    .line 37
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 55
    .line 56
    invoke-direct {p0}, Landroid/widget/AnalogClock;->onTimeChanged()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mAttached:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mAttached:Z

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-boolean v1, p0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 10
    .line 11
    :cond_0
    iget v2, p0, Landroid/view/View;->mRight:I

    .line 12
    .line 13
    iget v3, p0, Landroid/view/View;->mLeft:I

    .line 14
    .line 15
    sub-int/2addr v2, v3

    .line 16
    iget v3, p0, Landroid/view/View;->mBottom:I

    .line 17
    .line 18
    iget v4, p0, Landroid/view/View;->mTop:I

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    div-int/lit8 v4, v2, 0x2

    .line 22
    .line 23
    div-int/lit8 v5, v3, 0x2

    .line 24
    .line 25
    iget-object v6, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    if-lt v2, v7, :cond_1

    .line 36
    .line 37
    if-ge v3, v8, :cond_2

    .line 38
    .line 39
    :cond_1
    int-to-float v1, v2

    .line 40
    int-to-float v2, v7

    .line 41
    div-float/2addr v1, v2

    .line 42
    int-to-float v2, v3

    .line 43
    int-to-float v3, v8

    .line 44
    div-float/2addr v2, v3

    .line 45
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 50
    .line 51
    .line 52
    int-to-float v2, v4

    .line 53
    int-to-float v3, v5

    .line 54
    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    :cond_2
    if-eqz v0, :cond_3

    .line 59
    .line 60
    div-int/lit8 v7, v7, 0x2

    .line 61
    .line 62
    sub-int v2, v4, v7

    .line 63
    .line 64
    div-int/lit8 v8, v8, 0x2

    .line 65
    .line 66
    sub-int v3, v5, v8

    .line 67
    .line 68
    add-int/2addr v7, v4

    .line 69
    add-int/2addr v8, v5

    .line 70
    invoke-virtual {v6, v2, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 77
    .line 78
    .line 79
    iget v2, p0, Landroid/widget/AnalogClock;->mHour:F

    .line 80
    .line 81
    const/high16 v3, 0x41400000    # 12.0f

    .line 82
    .line 83
    div-float/2addr v2, v3

    .line 84
    const/high16 v3, 0x43b40000    # 360.0f

    .line 85
    .line 86
    mul-float/2addr v2, v3

    .line 87
    int-to-float v6, v4

    .line 88
    int-to-float v7, v5

    .line 89
    invoke-virtual {p1, v2, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    div-int/lit8 v8, v8, 0x2

    .line 105
    .line 106
    sub-int v10, v4, v8

    .line 107
    .line 108
    div-int/lit8 v9, v9, 0x2

    .line 109
    .line 110
    sub-int v11, v5, v9

    .line 111
    .line 112
    add-int/2addr v8, v4

    .line 113
    add-int/2addr v9, v5

    .line 114
    invoke-virtual {v2, v10, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 115
    .line 116
    .line 117
    :cond_4
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 124
    .line 125
    .line 126
    iget v2, p0, Landroid/widget/AnalogClock;->mMinutes:F

    .line 127
    .line 128
    const/high16 v8, 0x42700000    # 60.0f

    .line 129
    .line 130
    div-float/2addr v2, v8

    .line 131
    mul-float/2addr v2, v3

    .line 132
    invoke-virtual {p1, v2, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 136
    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    div-int/lit8 v0, v0, 0x2

    .line 148
    .line 149
    sub-int v6, v4, v0

    .line 150
    .line 151
    div-int/lit8 v3, v3, 0x2

    .line 152
    .line 153
    sub-int v7, v5, v3

    .line 154
    .line 155
    add-int/2addr v4, v0

    .line 156
    add-int/2addr v5, v3

    .line 157
    invoke-virtual {v2, v6, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 158
    .line 159
    .line 160
    :cond_5
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 164
    .line 165
    .line 166
    if-eqz v1, :cond_6

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 169
    .line 170
    .line 171
    :cond_6
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/high16 v4, 0x3f800000    # 1.0f

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget v0, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    .line 22
    .line 23
    if-ge v1, v0, :cond_0

    .line 24
    .line 25
    int-to-float v1, v1

    .line 26
    int-to-float v0, v0

    .line 27
    div-float/2addr v1, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, v4

    .line 30
    :goto_0
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget v0, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    .line 33
    .line 34
    if-ge v3, v0, :cond_1

    .line 35
    .line 36
    int-to-float v2, v3

    .line 37
    int-to-float v0, v0

    .line 38
    div-float v4, v2, v0

    .line 39
    .line 40
    :cond_1
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget v1, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    .line 45
    .line 46
    int-to-float v1, v1

    .line 47
    mul-float/2addr v1, v0

    .line 48
    float-to-int v1, v1

    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-static {v1, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iget v1, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    .line 55
    .line 56
    int-to-float v1, v1

    .line 57
    mul-float/2addr v1, v0

    .line 58
    float-to-int v0, v1

    .line 59
    invoke-static {v0, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 6
    .line 7
    return-void
.end method
