.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final SHOW_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DateTimeView"

.field private static final TWELVE_HOURS_IN_MINUTES:J = 0x2d0L

.field private static final TWENTY_FOUR_HOURS_IN_MILLIS:J = 0x5265c00L


# instance fields
.field private mAttachedToWindow:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field public mLastDisplay:I

.field public mLastFormat:Ljava/text/DateFormat;

.field public mTime:Ljava/util/Date;

.field public mTimeMillis:J

.field private mUpdateTimeMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 3
    new-instance p1, Landroid/widget/DateTimeView$1;

    invoke-direct {p1, p0}, Landroid/widget/DateTimeView$1;-><init>(Landroid/widget/DateTimeView;)V

    iput-object p1, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4
    new-instance p1, Landroid/widget/DateTimeView$2;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Landroid/widget/DateTimeView$2;-><init>(Landroid/widget/DateTimeView;Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 7
    new-instance p1, Landroid/widget/DateTimeView$1;

    invoke-direct {p1, p0}, Landroid/widget/DateTimeView$1;-><init>(Landroid/widget/DateTimeView;)V

    iput-object p1, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 8
    new-instance p1, Landroid/widget/DateTimeView$2;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Landroid/widget/DateTimeView$2;-><init>(Landroid/widget/DateTimeView;Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static synthetic access$000(Landroid/widget/DateTimeView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-wide v0
.end method

.method private getDateFormat()Ljava/text/DateFormat;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    const-string v2, ""

    .line 2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 4
    :catch_0
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private registerReceivers()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.TIME_TICK"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIME_SET"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "date_format"

    .line 8
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Landroid/widget/DateTimeView;->registerReceivers()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/widget/DateTimeView;->mAttachedToWindow:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Landroid/widget/DateTimeView;->unregisterReceivers()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/widget/DateTimeView;->mAttachedToWindow:Z

    return-void
.end method

.method public setTime(J)V
    .locals 8
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    const/4 p1, 0x0

    .line 3
    iput p1, v0, Landroid/text/format/Time;->second:I

    .line 4
    invoke-virtual {v0, p1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 5
    new-instance p1, Ljava/util/Date;

    iget p2, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, p2, -0x76c

    iget v3, v0, Landroid/text/format/Time;->month:I

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    iget v5, v0, Landroid/text/format/Time;->hour:I

    iget v6, v0, Landroid/text/format/Time;->minute:I

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Ljava/util/Date;-><init>(IIIIII)V

    iput-object p1, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    .line 6
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method public update()V
    .locals 14

    .line 1
    iget-object v0, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 3
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 4
    iget-wide v1, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 6
    iget v2, v0, Landroid/text/format/Time;->hour:I

    add-int/lit8 v2, v2, -0xc

    iput v2, v0, Landroid/text/format/Time;->hour:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 8
    iget v4, v0, Landroid/text/format/Time;->hour:I

    add-int/lit8 v4, v4, 0xc

    iput v4, v0, Landroid/text/format/Time;->hour:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 10
    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 11
    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 13
    iget v8, v0, Landroid/text/format/Time;->monthDay:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Landroid/text/format/Time;->monthDay:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 16
    invoke-virtual {v0, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 17
    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v12

    cmp-long v0, v12, v6

    if-ltz v0, :cond_1

    cmp-long v0, v12, v10

    if-ltz v0, :cond_3

    :cond_1
    cmp-long v0, v12, v2

    if-ltz v0, :cond_2

    cmp-long v0, v12, v4

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v9

    .line 19
    :cond_3
    :goto_0
    iget v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_6

    if-ne v1, v9, :cond_5

    .line 20
    invoke-direct {p0}, Landroid/widget/DateTimeView;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_1

    .line 21
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown display value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_6
    invoke-direct {p0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 23
    :goto_1
    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 24
    :goto_2
    iget-object v8, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    invoke-virtual {v0, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_8

    cmp-long v0, v4, v10

    if-lez v0, :cond_7

    goto :goto_3

    :cond_7
    move-wide v4, v10

    .line 26
    :goto_3
    iput-wide v4, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_5

    .line 27
    :cond_8
    iget-wide v0, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v0, v0, v12

    if-gez v0, :cond_9

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_5

    :cond_9
    cmp-long v0, v2, v6

    if-gez v0, :cond_a

    goto :goto_4

    :cond_a
    move-wide v2, v6

    .line 29
    :goto_4
    iput-wide v2, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 30
    :goto_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    return-void
.end method
