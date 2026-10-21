.class public Landroid/widget/DigitalClock;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DigitalClock$FormatChangeObserver;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mCalendar:Ljava/util/Calendar;

.field mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

.field private mHandler:Landroid/os/Handler;

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    .line 3
    invoke-direct {p0}, Landroid/widget/DigitalClock;->initClock()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    .line 6
    invoke-direct {p0}, Landroid/widget/DigitalClock;->initClock()V

    return-void
.end method

.method public static synthetic access$000(Landroid/widget/DigitalClock;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    return p0
.end method

.method public static synthetic access$100(Landroid/widget/DigitalClock;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/widget/DigitalClock;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/widget/DigitalClock;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/DigitalClock;->setFormat()V

    return-void
.end method

.method private initClock()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private setFormat()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DigitalClock;->mFormat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/DigitalClock;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/widget/DigitalClock$FormatChangeObserver;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroid/widget/DigitalClock$FormatChangeObserver;-><init>(Landroid/widget/DigitalClock;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    iget-object v3, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Landroid/widget/DigitalClock;->setFormat()V

    .line 31
    .line 32
    .line 33
    new-instance v0, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Landroid/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    new-instance v0, Landroid/widget/DigitalClock$1;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Landroid/widget/DigitalClock$1;-><init>(Landroid/widget/DigitalClock;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
