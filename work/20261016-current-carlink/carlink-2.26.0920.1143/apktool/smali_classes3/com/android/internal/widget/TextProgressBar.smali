.class public Lcom/android/internal/widget/TextProgressBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Chronometer$OnChronometerTickListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field static final CHRONOMETER_ID:I = 0x1020014

.field static final PROGRESSBAR_ID:I = 0x102000d

.field public static final TAG:Ljava/lang/String; = "TextProgressBar"


# instance fields
.field mChronometer:Landroid/widget/Chronometer;

.field mChronometerFollow:Z

.field mChronometerGravity:I

.field mDuration:I

.field mDurationBase:J

.field mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 24
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 v0, -0x1

    .line 25
    iput-wide v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 28
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 17
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 p1, -0x1

    .line 18
    iput-wide p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 21
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 10
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 p1, -0x1

    .line 11
    iput-wide p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 14
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 3
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 p1, -0x1

    .line 4
    iput-wide p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 7
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const v0, 0x1020014

    .line 9
    .line 10
    .line 11
    if-ne p2, v0, :cond_1

    .line 12
    .line 13
    instance-of v0, p1, Landroid/widget/Chronometer;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p1, Landroid/widget/Chronometer;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    .line 22
    .line 23
    .line 24
    iget p1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 25
    .line 26
    const/4 p2, -0x2

    .line 27
    if-ne p1, p2, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const p2, 0x800007

    .line 41
    .line 42
    .line 43
    and-int/2addr p1, p2

    .line 44
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const p3, 0x102000d

    .line 48
    .line 49
    .line 50
    if-ne p2, p3, :cond_2

    .line 51
    .line 52
    instance-of p2, p1, Landroid/widget/ProgressBar;

    .line 53
    .line 54
    if-eqz p2, :cond_2

    .line 55
    .line 56
    check-cast p1, Landroid/widget/ProgressBar;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 59
    .line 60
    :cond_2
    :goto_1
    return-void
.end method

.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    .line 10
    .line 11
    cmp-long p1, v0, v2

    .line 12
    .line 13
    if-ltz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/Chronometer;->stop()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    .line 21
    .line 22
    sub-long/2addr v2, v0

    .line 23
    long-to-int p1, v2

    .line 24
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 25
    .line 26
    iget v1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    .line 27
    .line 28
    sub-int/2addr v1, p1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 30
    .line 31
    .line 32
    iget-boolean p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 33
    .line 34
    if-eqz p1, :cond_5

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 51
    .line 52
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 53
    .line 54
    add-int/2addr v1, v2

    .line 55
    sub-int/2addr v0, v1

    .line 56
    iget-object v1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    mul-int/2addr v1, v0

    .line 63
    iget-object v2, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    div-int/2addr v1, v2

    .line 70
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 71
    .line 72
    add-int/2addr v1, v2

    .line 73
    iget-object v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    iget v3, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    .line 80
    .line 81
    const v4, 0x800005

    .line 82
    .line 83
    .line 84
    if-ne v3, v4, :cond_1

    .line 85
    .line 86
    neg-int v3, v2

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const/4 v4, 0x1

    .line 89
    if-ne v3, v4, :cond_2

    .line 90
    .line 91
    div-int/lit8 v3, v2, 0x2

    .line 92
    .line 93
    neg-int v3, v3

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    const/4 v3, 0x0

    .line 96
    :goto_0
    add-int/2addr v1, v3

    .line 97
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 98
    .line 99
    sub-int/2addr v0, v3

    .line 100
    sub-int/2addr v0, v2

    .line 101
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 102
    .line 103
    if-ge v1, p1, :cond_3

    .line 104
    .line 105
    move v1, p1

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    if-le v1, v0, :cond_4

    .line 108
    .line 109
    move v1, v0

    .line 110
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 117
    .line 118
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 123
    .line 124
    .line 125
    :cond_5
    return-void

    .line 126
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 127
    .line 128
    const-string v0, "Expecting child ProgressBar with id \'android.R.id.progress\'"

    .line 129
    .line 130
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1
.end method

.method public setDurationBase(J)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/Chronometer;->getBase()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    sub-long/2addr p1, v0

    .line 16
    long-to-int p1, p1

    .line 17
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    .line 18
    .line 19
    if-gtz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 25
    .line 26
    iget p2, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 33
    .line 34
    const-string p2, "Expecting child ProgressBar with id \'android.R.id.progress\' and Chronometer id \'android.R.id.text1\'"

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method
