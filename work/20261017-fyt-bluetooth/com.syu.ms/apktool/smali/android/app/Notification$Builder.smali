.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final MAX_ACTION_BUTTONS:I = 0x3


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioStreamType:I

.field private mContentInfo:Ljava/lang/CharSequence;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mContentText:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mDefaults:I

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mFullScreenIntent:Landroid/app/PendingIntent;

.field private mKindList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mLedArgb:I

.field private mLedOffMs:I

.field private mLedOnMs:I

.field private mNumber:I

.field private mPriority:I

.field private mProgress:I

.field private mProgressIndeterminate:Z

.field private mProgressMax:I

.field private mShowWhen:Z

.field private mSmallIcon:I

.field private mSmallIconLevel:I

.field private mSound:Landroid/net/Uri;

.field private mStyle:Landroid/app/Notification$Style;

.field private mSubText:Ljava/lang/CharSequence;

.field private mTickerText:Ljava/lang/CharSequence;

.field private mTickerView:Landroid/widget/RemoteViews;

.field private mUseChronometer:Z

.field private mVibrate:[J

.field private mWhen:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mKindList:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 4
    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    .line 5
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification$Builder;->mWhen:J

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Landroid/app/Notification$Builder;->mPriority:I

    return-void
.end method

.method public static synthetic access$102(Landroid/app/Notification$Builder;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/app/Notification$Builder;->mFlags:I

    return p1
.end method

.method public static synthetic access$200(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$402(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic access$500(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$502(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private applyStandardTemplate(IZ)Landroid/widget/RemoteViews;
    .locals 10

    .line 1
    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2
    iget-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    const v0, 0x1020006

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v6, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const p1, 0x1020263

    goto :goto_0

    :cond_0
    move p1, v0

    .line 4
    :goto_0
    iget v1, p0, Landroid/app/Notification$Builder;->mPriority:I

    const/4 v2, -0x1

    if-ge v1, v2, :cond_1

    const v1, 0x108068e

    const-string/jumbo v2, "setBackgroundResource"

    .line 5
    invoke-virtual {v6, v0, v2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v0, 0x10202e6

    const v1, 0x108044c

    .line 6
    invoke-virtual {v6, v0, v2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7
    :cond_1
    iget v0, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v6, p1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 9
    invoke-virtual {v6, p1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v6, p1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11
    :goto_1
    iget-object p1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    const v0, 0x1020016

    .line 12
    invoke-virtual {v6, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 13
    :cond_3
    iget-object p1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    const v0, 0x1020046

    const/4 v9, 0x1

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {v6, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move p1, v9

    goto :goto_2

    :cond_4
    move p1, v8

    .line 15
    :goto_2
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    const v2, 0x10202ea

    if-eqz v1, :cond_5

    .line 16
    invoke-virtual {v6, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v6, v2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_3
    move p1, v9

    goto :goto_5

    .line 18
    :cond_5
    iget v1, p0, Landroid/app/Notification$Builder;->mNumber:I

    if-lez v1, :cond_7

    .line 19
    iget-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10e0003

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 20
    iget v1, p0, Landroid/app/Notification$Builder;->mNumber:I

    if-le v1, p1, :cond_6

    .line 21
    iget-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1040017

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_4

    .line 22
    :cond_6
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object p1

    .line 23
    iget v1, p0, Landroid/app/Notification$Builder;->mNumber:I

    int-to-long v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 24
    :goto_4
    invoke-virtual {v6, v2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    .line 25
    :cond_7
    invoke-virtual {v6, v2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 26
    :goto_5
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    const v2, 0x1020015

    if-eqz v1, :cond_9

    .line 27
    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 28
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    .line 29
    invoke-virtual {v6, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 30
    invoke-virtual {v6, v2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_8

    .line 31
    :cond_8
    invoke-virtual {v6, v2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_6

    .line 32
    :cond_9
    invoke-virtual {v6, v2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 33
    iget v1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    const v2, 0x102000d

    if-nez v1, :cond_b

    iget-boolean v3, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    if-eqz v3, :cond_a

    goto :goto_7

    .line 34
    :cond_a
    invoke-virtual {v6, v2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_6
    move v1, v8

    goto :goto_9

    .line 35
    :cond_b
    :goto_7
    iget v3, p0, Landroid/app/Notification$Builder;->mProgress:I

    iget-boolean v4, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    invoke-virtual {v6, v2, v1, v3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 36
    invoke-virtual {v6, v2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_8
    move v1, v9

    :goto_9
    if-eqz v1, :cond_d

    if-eqz p2, :cond_c

    .line 37
    iget-object p2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1050059

    .line 38
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    .line 39
    invoke-virtual {v6, v0, v8, p2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :cond_c
    const v1, 0x10202e7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    .line 40
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 41
    :cond_d
    iget-wide v0, p0, Landroid/app/Notification$Builder;->mWhen:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    const v0, 0x1020064

    if-eqz p2, :cond_f

    iget-boolean p2, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    if-eqz p2, :cond_f

    .line 42
    iget-boolean p2, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    if-eqz p2, :cond_e

    const p2, 0x10202e8

    .line 43
    invoke-virtual {v6, p2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 44
    iget-wide v0, p0, Landroid/app/Notification$Builder;->mWhen:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-string/jumbo v2, "setBase"

    invoke-virtual {v6, p2, v2, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    const-string/jumbo v0, "setStarted"

    .line 45
    invoke-virtual {v6, p2, v0, v9}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto :goto_a

    .line 46
    :cond_e
    invoke-virtual {v6, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 47
    iget-wide v1, p0, Landroid/app/Notification$Builder;->mWhen:J

    const-string/jumbo p2, "setTime"

    invoke-virtual {v6, v0, p2, v1, v2}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto :goto_a

    .line 48
    :cond_f
    invoke-virtual {v6, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_a
    const p2, 0x10202e9

    if-eqz p1, :cond_10

    move v0, v8

    goto :goto_b

    :cond_10
    move v0, v7

    .line 49
    :goto_b
    invoke-virtual {v6, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const p2, 0x10202ee

    if-eqz p1, :cond_11

    move v7, v8

    .line 50
    :cond_11
    invoke-virtual {v6, p2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v6
.end method

.method private applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 2
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const v2, 0x10202e3

    .line 3
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x10202ec

    .line 4
    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v3, 0x3

    if-le v1, v3, :cond_0

    move v1, v3

    .line 5
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    :goto_0
    if-ge v0, v1, :cond_1

    .line 6
    iget-object v3, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 7
    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private generateActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;
    .locals 8

    .line 1
    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const v2, 0x1090062

    goto :goto_1

    :cond_1
    const v2, 0x1090060

    :goto_1
    invoke-direct {v7, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v2, 0x10202e2

    .line 3
    iget v3, p1, Landroid/app/Notification$Action;->icon:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawablesRelative(IIIII)V

    .line 4
    iget-object v1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 6
    :cond_2
    iget-object p1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v2, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    return-object v7
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0x1090065

    .line 2
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private makeContentView()Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x1090064

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private makeTickerView()Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const v0, 0x10900a4

    goto :goto_0

    :cond_1
    const v0, 0x10900a5

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private setFlag(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget p2, p0, Landroid/app/Notification$Builder;->mFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/app/Notification$Builder;->mFlags:I

    goto :goto_0

    .line 2
    :cond_0
    iget p2, p0, Landroid/app/Notification$Builder;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/app/Notification$Builder;->mFlags:I

    :goto_0
    return-void
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {v1, p1, p2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    const-string v1, "android.title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    const-string v1, "android.text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    const-string v1, "android.subText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    const-string v1, "android.infoText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5
    iget v0, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    const-string v1, "android.icon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget v0, p0, Landroid/app/Notification$Builder;->mProgress:I

    const-string v1, "android.progress"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    iget v0, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    const-string v1, "android.progressMax"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    const-string v1, "android.progressIndeterminate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    const-string v1, "android.showChronometer"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    const-string v1, "android.showWhen"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const-string v1, "android.largeIcon"

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public addKind(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mKindList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v0

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)V

    .line 6
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_2

    .line 7
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    :cond_2
    return-object v0
.end method

.method public buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    return-object p1
.end method

.method public buildUnstyled()Landroid/app/Notification;
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 2
    iget-wide v1, p0, Landroid/app/Notification$Builder;->mWhen:J

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 3
    iget v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 4
    iget v1, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    iput v1, v0, Landroid/app/Notification;->iconLevel:I

    .line 5
    iget v1, p0, Landroid/app/Notification$Builder;->mNumber:I

    iput v1, v0, Landroid/app/Notification;->number:I

    .line 6
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 8
    iget-object v1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 9
    iget-object v1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 10
    iget-object v1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 11
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeTickerView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 12
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 13
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 14
    iget v1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 15
    iget-object v1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    iput-object v1, v0, Landroid/app/Notification;->vibrate:[J

    .line 16
    iget v1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 17
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 18
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    .line 19
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 20
    iget v1, p0, Landroid/app/Notification$Builder;->mFlags:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 21
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 22
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    if-eqz v1, :cond_1

    .line 23
    :cond_0
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 24
    :cond_1
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 25
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 26
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$Builder;->mKindList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 27
    iget-object v1, p0, Landroid/app/Notification$Builder;->mKindList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    .line 28
    iget-object v2, p0, Landroid/app/Notification$Builder;->mKindList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 29
    iput-object v1, v0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    .line 30
    :goto_0
    iget v1, p0, Landroid/app/Notification$Builder;->mPriority:I

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 31
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 32
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 33
    iget-object v2, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    const/16 p1, 0x80

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    .line 2
    iput p2, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    .line 3
    iput p3, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/app/Notification$Builder;->mNumber:I

    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setPriority(I)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/app/Notification$Builder;->mPriority:I

    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    .line 2
    iput p2, p0, Landroid/app/Notification$Builder;->mProgress:I

    .line 3
    iput-boolean p3, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    return-object p0
.end method

.method public setShowWhen(Z)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    return-object p0
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .locals 0

    .line 2
    iput p1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    .line 3
    iput p2, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 0

    .line 3
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 4
    iput p2, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    return-object p0
.end method

.method public setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    :cond_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0

    .line 2
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 3
    iput-object p2, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/app/Notification$Builder;->mWhen:J

    return-object p0
.end method
