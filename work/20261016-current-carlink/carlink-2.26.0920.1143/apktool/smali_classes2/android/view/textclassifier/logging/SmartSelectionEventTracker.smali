.class public final Landroid/view/textclassifier/logging/SmartSelectionEventTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;,
        Landroid/view/textclassifier/logging/SmartSelectionEventTracker$WidgetType;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final EDITTEXT:Ljava/lang/String; = "edittext"

.field private static final EDIT_WEBVIEW:Ljava/lang/String; = "edit-webview"

.field private static final EVENT_INDICES:I = 0x462

.field private static final INDEX:I = 0x460

.field private static final LOG_TAG:Ljava/lang/String; = "SmartSelectEventTracker"

.field private static final PREV_EVENT_DELTA:I = 0x45e

.field private static final SESSION_ID:I = 0x45f

.field private static final SMART_INDICES:I = 0x463

.field private static final START_EVENT_DELTA:I = 0x45d

.field private static final TEXTVIEW:Ljava/lang/String; = "textview"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final VERSION_TAG:I = 0x461

.field private static final WEBVIEW:Ljava/lang/String; = "webview"

.field private static final ZERO:Ljava/lang/String; = "0"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIndex:I

.field private mLastEventTime:J

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mOrigStart:I

.field private final mPrevIndices:[I

.field private mSessionId:Ljava/lang/String;

.field private mSessionStartTime:J

.field private final mSmartIndices:[I

.field private mSmartSelectionTriggered:Z

.field private mVersionTag:Ljava/lang/String;

.field private final mWidgetType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v1, v0, [I

    .line 13
    .line 14
    iput-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    .line 15
    .line 16
    new-array v0, v0, [I

    .line 17
    .line 18
    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    .line 19
    .line 20
    iput p2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mWidgetType:I

    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/content/Context;

    .line 27
    .line 28
    iput-object p1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    return-void
.end method

.method private static clamp(I)I
    .locals 1

    const/16 v0, 0x7fff

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 v0, -0x8000

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static createSessionId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static debugLog(Landroid/metrics/LogMaker;)V
    .locals 0

    return-void
.end method

.method private endSession()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    .line 3
    .line 4
    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    aput v0, v1, v2

    .line 8
    .line 9
    aput v0, v1, v0

    .line 10
    .line 11
    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    .line 12
    .line 13
    aput v0, v1, v2

    .line 14
    .line 15
    aput v0, v1, v0

    .line 16
    .line 17
    iput v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mIndex:I

    .line 18
    .line 19
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    iput-wide v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionStartTime:J

    .line 22
    .line 23
    iput-wide v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mLastEventTime:J

    .line 24
    .line 25
    iput-boolean v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartSelectionTriggered:Z

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getVersionTag(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mVersionTag:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    .line 35
    .line 36
    return-void
.end method

.method private getEventDelta(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$200(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    invoke-static {v0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->clamp(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    shl-int/lit8 v0, v0, 0x10

    .line 13
    .line 14
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$100(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    .line 19
    .line 20
    sub-int/2addr p1, v1

    .line 21
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->clamp(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const v1, 0xffff

    .line 26
    .line 27
    .line 28
    and-int/2addr p1, v1

    .line 29
    or-int/2addr p1, v0

    .line 30
    return p1
.end method

.method private static getLogSubType(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .locals 6

    invoke-static {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$400(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "other"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "email"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v5, v3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "url"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_0

    :sswitch_4
    const-string v0, "address"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    return v4

    :pswitch_0
    return v1

    :pswitch_1
    return v3

    :pswitch_2
    return v2

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    const/4 p0, 0x5

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x4468640c -> :sswitch_4
        0x1c56f -> :sswitch_3
        0x5c24b9c -> :sswitch_2
        0x6527f10 -> :sswitch_1
        0x65b3d6e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getLogSubTypeString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string/jumbo p0, "url"

    return-object p0

    :cond_1
    const-string p0, "address"

    return-object p0

    :cond_2
    const-string p0, "phone"

    return-object p0

    :cond_3
    const-string p0, "email"

    return-object p0

    :cond_4
    const-string p0, "other"

    return-object p0
.end method

.method private static getLogType(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .locals 1

    invoke-static {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$000(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x45c

    return p0

    :pswitch_1
    const/16 p0, 0x45b

    return p0

    :pswitch_2
    const/16 p0, 0x45a

    return p0

    :pswitch_3
    const/16 p0, 0x459

    return p0

    :pswitch_4
    const/16 p0, 0x458

    return p0

    :pswitch_5
    const/16 p0, 0x457

    return p0

    :pswitch_6
    const/16 p0, 0x456

    return p0

    :pswitch_7
    const/16 p0, 0x455

    return p0

    :pswitch_8
    const/16 p0, 0x454

    return p0

    :cond_0
    const/16 p0, 0x450

    return p0

    :cond_1
    const/16 p0, 0x44f

    return p0

    :cond_2
    const/16 p0, 0x453

    return p0

    :cond_3
    const/16 p0, 0x452

    return p0

    :cond_4
    const/16 p0, 0x451

    return p0

    :cond_5
    const/16 p0, 0x44e

    return p0

    :cond_6
    const/16 p0, 0x44d

    return p0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getLogTypeString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "unknown"

    return-object p0

    :pswitch_0
    const-string p0, "OTHER"

    return-object p0

    :pswitch_1
    const-string p0, "ABANDON"

    return-object p0

    :pswitch_2
    const-string p0, "DRAG"

    return-object p0

    :pswitch_3
    const-string p0, "SMART_SHARE"

    return-object p0

    :pswitch_4
    const-string p0, "SHARE"

    return-object p0

    :pswitch_5
    const-string p0, "CUT"

    return-object p0

    :pswitch_6
    const-string p0, "PASTE"

    return-object p0

    :pswitch_7
    const-string p0, "COPY"

    return-object p0

    :pswitch_8
    const-string p0, "OVERTYPE"

    return-object p0

    :pswitch_9
    const-string p0, "AUTO_SELECTION"

    return-object p0

    :pswitch_a
    const-string p0, "SMART_SELECTION_MULTI"

    return-object p0

    :pswitch_b
    const-string p0, "SMART_SELECTION_SINGLE"

    return-object p0

    :pswitch_c
    const-string p0, "RESET"

    return-object p0

    :pswitch_d
    const-string p0, "SELECT_ALL"

    return-object p0

    :pswitch_e
    const-string p0, "SELECTION_MODIFIED"

    return-object p0

    :pswitch_f
    const-string p0, "SELECTION_STARTED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x44d
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSmartDelta()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartSelectionTriggered:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    .line 10
    iget v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    .line 11
    .line 12
    sub-int/2addr v0, v1

    .line 13
    invoke-static {v0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->clamp(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    shl-int/lit8 v0, v0, 0x10

    .line 18
    .line 19
    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    aget v1, v1, v2

    .line 23
    .line 24
    iget v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    .line 25
    .line 26
    sub-int/2addr v1, v2

    .line 27
    invoke-static {v1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->clamp(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const v2, 0xffff

    .line 32
    .line 33
    .line 34
    and-int/2addr v1, v2

    .line 35
    or-int/2addr v0, v1

    .line 36
    return v0

    .line 37
    :cond_0
    return v1
.end method

.method private getVersionTag(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mWidgetType:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_3

    .line 6
    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    if-eq v0, v3, :cond_1

    .line 11
    .line 12
    const/4 v3, 0x4

    .line 13
    if-eq v0, v3, :cond_0

    .line 14
    .line 15
    const-string/jumbo v0, "unknown"

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "edit-webview"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string v0, "edittext"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const-string/jumbo v0, "webview"

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    const-string/jumbo v0, "textview"

    .line 30
    .line 31
    .line 32
    :goto_0
    const-string v3, ""

    .line 33
    .line 34
    if-nez p1, :cond_4

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_4
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$500(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    :goto_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    aput-object v0, p1, v1

    .line 49
    .line 50
    aput-object v3, p1, v2

    .line 51
    .line 52
    const-string v0, "%s/%s"

    .line 53
    .line 54
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method

.method private startNewSession()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->endSession()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->createSessionId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    .line 9
    .line 10
    return-object v0
.end method

.method private writeEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;J)V
    .locals 6

    .line 1
    iget-wide v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mLastEventTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sub-long v2, p2, v0

    .line 11
    .line 12
    :goto_0
    new-instance v0, Landroid/metrics/LogMaker;

    .line 13
    .line 14
    const/16 v1, 0x44c

    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getLogType(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getLogSubType(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p2, p3}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-wide v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionStartTime:J

    .line 50
    .line 51
    sub-long v4, p2, v4

    .line 52
    .line 53
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/16 v4, 0x45d

    .line 58
    .line 59
    invoke-virtual {v0, v4, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/16 v1, 0x45e

    .line 64
    .line 65
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mIndex:I

    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const/16 v2, 0x460

    .line 80
    .line 81
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/16 v1, 0x461

    .line 86
    .line 87
    iget-object v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mVersionTag:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getSmartDelta()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const/16 v2, 0x463

    .line 102
    .line 103
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-direct {p0, p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getEventDelta(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const/16 v2, 0x462

    .line 116
    .line 117
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const/16 v1, 0x45f

    .line 122
    .line 123
    iget-object v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 130
    .line 131
    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->debugLog(Landroid/metrics/LogMaker;)V

    .line 135
    .line 136
    .line 137
    iput-wide p2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mLastEventTime:J

    .line 138
    .line 139
    iget-object p2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    .line 140
    .line 141
    const/4 p3, 0x0

    .line 142
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$200(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    aput v0, p2, p3

    .line 147
    .line 148
    iget-object p2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    .line 149
    .line 150
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$100(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    const/4 p3, 0x1

    .line 155
    aput p1, p2, p3

    .line 156
    .line 157
    iget p1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mIndex:I

    .line 158
    .line 159
    add-int/2addr p1, p3

    .line 160
    iput p1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mIndex:I

    .line 161
    .line 162
    return-void
.end method


# virtual methods
.method public logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$000(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$000(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eq v2, v4, :cond_2

    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    if-eq v2, v5, :cond_1

    .line 21
    .line 22
    const/4 v5, 0x3

    .line 23
    if-eq v2, v5, :cond_0

    .line 24
    .line 25
    const/4 v5, 0x4

    .line 26
    if-eq v2, v5, :cond_0

    .line 27
    .line 28
    const/4 v5, 0x5

    .line 29
    if-eq v2, v5, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iput-boolean v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartSelectionTriggered:Z

    .line 33
    .line 34
    invoke-direct {p0, p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getVersionTag(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iput-object v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mVersionTag:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    .line 41
    .line 42
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$200(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    aput v5, v2, v3

    .line 47
    .line 48
    iget-object v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    .line 49
    .line 50
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$100(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    aput v3, v2, v4

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    .line 58
    .line 59
    aget v2, v2, v3

    .line 60
    .line 61
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$200(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-ne v2, v3, :cond_4

    .line 66
    .line 67
    iget-object v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    .line 68
    .line 69
    aget v2, v2, v4

    .line 70
    .line 71
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$100(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-ne v2, v3, :cond_4

    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->startNewSession()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iput-object v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$100(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$200(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    add-int/2addr v5, v4

    .line 93
    if-ne v2, v5, :cond_3

    .line 94
    .line 95
    move v3, v4

    .line 96
    :cond_3
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$200(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    iput v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    .line 104
    .line 105
    iput-wide v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionStartTime:J

    .line 106
    .line 107
    :cond_4
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->writeEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;J)V

    .line 108
    .line 109
    .line 110
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$300(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_5

    .line 115
    .line 116
    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->endSession()V

    .line 117
    .line 118
    .line 119
    :cond_5
    return-void
.end method
