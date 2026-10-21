.class public final Landroid/view/InputEventConsistencyVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputEventConsistencyVerifier$KeyState;
    }
.end annotation


# static fields
.field private static final EVENT_TYPE_GENERIC_MOTION:Ljava/lang/String; = "GenericMotionEvent"

.field private static final EVENT_TYPE_KEY:Ljava/lang/String; = "KeyEvent"

.field private static final EVENT_TYPE_TOUCH:Ljava/lang/String; = "TouchEvent"

.field private static final EVENT_TYPE_TRACKBALL:Ljava/lang/String; = "TrackballEvent"

.field public static final FLAG_RAW_DEVICE_INPUT:I = 0x1

.field private static final IS_ENG_BUILD:Z

.field private static final RECENT_EVENTS_TO_LOG:I = 0x5


# instance fields
.field private mButtonsPressed:I

.field private final mCaller:Ljava/lang/Object;

.field private mCurrentEvent:Landroid/view/InputEvent;

.field private mCurrentEventType:Ljava/lang/String;

.field private final mFlags:I

.field private mHoverEntered:Z

.field private mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field private mLastEventSeq:I

.field private mLastEventType:Ljava/lang/String;

.field private mLastNestingLevel:I

.field private final mLogTag:Ljava/lang/String;

.field private mMostRecentEventIndex:I

.field private mRecentEvents:[Landroid/view/InputEvent;

.field private mRecentEventsUnhandled:[Z

.field private mTouchEventStreamDeviceId:I

.field private mTouchEventStreamIsTainted:Z

.field private mTouchEventStreamPointers:I

.field private mTouchEventStreamSource:I

.field private mTouchEventStreamUnhandled:Z

.field private mTrackballDown:Z

.field private mTrackballUnhandled:Z

.field private mViolationMessage:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/view/InputEventConsistencyVerifier;->IS_ENG_BUILD:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    .line 4
    iput-object p1, p0, Landroid/view/InputEventConsistencyVerifier;->mCaller:Ljava/lang/Object;

    .line 5
    iput p2, p0, Landroid/view/InputEventConsistencyVerifier;->mFlags:I

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "InputEventConsistencyVerifier"

    .line 6
    :goto_0
    iput-object p3, p0, Landroid/view/InputEventConsistencyVerifier;->mLogTag:Ljava/lang/String;

    return-void
.end method

.method private addKeyState(III)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/view/InputEventConsistencyVerifier$KeyState;->obtain(III)Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 6
    .line 7
    iput-object p2, p1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 8
    .line 9
    iput-object p1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 10
    .line 11
    return-void
.end method

.method private static appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    const-string p1, ": sent at "

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/InputEvent;->getEventTimeNano()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ", "

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    const-string p1, "(unhandled) "

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "No action button set. Action button should always be non-zero for "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "History size is "

    .line 8
    .line 9
    const-string v2, " but it should always be 0 for "

    .line 10
    .line 11
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method private ensureMetaStateIsNormalized(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    aput-object p1, v1, v2

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    aput-object v0, v1, p1

    .line 23
    .line 24
    const-string p1, "Metastate not normalized.  Was 0x%08x but expected 0x%08x."

    .line 25
    .line 26
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method private ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const-string v1, "Pointer count is "

    .line 9
    .line 10
    const-string v2, " but it should always be 1 for "

    .line 11
    .line 12
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move-object v2, v1

    .line 5
    :goto_0
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget v3, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->deviceId:I

    .line 8
    .line 9
    if-ne v3, p1, :cond_2

    .line 10
    .line 11
    iget v3, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->source:I

    .line 12
    .line 13
    if-ne v3, p2, :cond_2

    .line 14
    .line 15
    iget v3, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->keyCode:I

    .line 16
    .line 17
    if-ne v3, p3, :cond_2

    .line 18
    .line 19
    if-eqz p4, :cond_1

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object p1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 24
    .line 25
    iput-object p1, v2, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object p1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 29
    .line 30
    iput-object p1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 31
    .line 32
    :goto_1
    iput-object v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 33
    .line 34
    :cond_1
    return-object v0

    .line 35
    :cond_2
    iget-object v2, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 36
    .line 37
    move-object v4, v2

    .line 38
    move-object v2, v0

    .line 39
    move-object v0, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    return-object v1
.end method

.method private finishEvent()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x5

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/InputEvent;->isTainted()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "\n  in "

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mCaller:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v4, "\n  "

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    .line 42
    .line 43
    iget-object v5, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    .line 44
    .line 45
    invoke-static {v0, v2, v5, v2}, Landroid/view/InputEventConsistencyVerifier;->appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v5, "\n  -- recent events --"

    .line 55
    .line 56
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    move v0, v2

    .line 60
    :goto_0
    if-ge v0, v3, :cond_1

    .line 61
    .line 62
    iget v5, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    .line 63
    .line 64
    add-int/2addr v5, v3

    .line 65
    sub-int/2addr v5, v0

    .line 66
    rem-int/2addr v5, v3

    .line 67
    iget-object v6, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    .line 68
    .line 69
    aget-object v6, v6, v5

    .line 70
    .line 71
    if-nez v6, :cond_0

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_0
    iget-object v7, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v7, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    .line 80
    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 82
    .line 83
    iget-object v8, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    .line 84
    .line 85
    aget-boolean v5, v8, v5

    .line 86
    .line 87
    invoke-static {v7, v0, v6, v5}, Landroid/view/InputEventConsistencyVerifier;->appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLogTag:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/InputEvent;->setTainted(Z)V

    .line 105
    .line 106
    .line 107
    :cond_2
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 110
    .line 111
    .line 112
    :cond_3
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    .line 113
    .line 114
    if-nez v0, :cond_4

    .line 115
    .line 116
    new-array v0, v3, [Landroid/view/InputEvent;

    .line 117
    .line 118
    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    .line 119
    .line 120
    new-array v0, v3, [Z

    .line 121
    .line 122
    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    .line 123
    .line 124
    :cond_4
    iget v0, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    .line 125
    .line 126
    add-int/2addr v0, v1

    .line 127
    rem-int/2addr v0, v3

    .line 128
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    .line 129
    .line 130
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    .line 131
    .line 132
    aget-object v1, v1, v0

    .line 133
    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/view/InputEvent;->recycle()V

    .line 137
    .line 138
    .line 139
    :cond_5
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    .line 140
    .line 141
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    .line 142
    .line 143
    invoke-virtual {v3}, Landroid/view/InputEvent;->copy()Landroid/view/InputEvent;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    aput-object v3, v1, v0

    .line 148
    .line 149
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    .line 150
    .line 151
    aput-boolean v2, v1, v0

    .line 152
    .line 153
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    .line 155
    .line 156
    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    .line 157
    .line 158
    return-void
.end method

.method public static isInstrumentationEnabled()Z
    .locals 1

    sget-boolean v0, Landroid/view/InputEventConsistencyVerifier;->IS_ENG_BUILD:Z

    return v0
.end method

.method private problem(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ": "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "\n  "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    .line 11
    .line 12
    if-ge p2, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    .line 15
    .line 16
    if-ne p3, v1, :cond_0

    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    if-lez p2, :cond_1

    .line 20
    .line 21
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    .line 22
    .line 23
    iput-object p3, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    .line 24
    .line 25
    iput p2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p2, -0x1

    .line 29
    iput p2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    iput-object p2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    .line 33
    .line 34
    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    .line 35
    .line 36
    :goto_0
    iput-object p1, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    .line 37
    .line 38
    iput-object p3, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    return p1
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 10

    .line 1
    const-string v0, "Action button for ACTION_BUTTON_RELEASE event is "

    .line 2
    .line 3
    const-string v1, "Action button for ACTION_BUTTON_PRESS event is "

    .line 4
    .line 5
    const-string v2, "GenericMotionEvent"

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, v2}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    .line 34
    .line 35
    .line 36
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    and-int/lit8 v5, v2, 0x2

    .line 38
    .line 39
    const/4 v6, 0x2

    .line 40
    if-eqz v5, :cond_8

    .line 41
    .line 42
    const-string v2, "Reported button state differs from expected button state based on press and release events. Is 0x%08x but expected 0x%08x."

    .line 43
    .line 44
    const/16 v5, 0x40

    .line 45
    .line 46
    const/16 v7, 0x20

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x1

    .line 50
    packed-switch p2, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    :try_start_1
    const-string p1, "Invalid action for generic pointer event."

    .line 54
    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 58
    .line 59
    .line 60
    iget p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 61
    .line 62
    and-int/2addr p1, v4

    .line 63
    if-eq p1, v4, :cond_1

    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p2, ", but it was either never pressed or has already been released."

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 86
    .line 87
    not-int p2, v4

    .line 88
    and-int/2addr p1, p2

    .line 89
    iput p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 90
    .line 91
    if-ne v4, v7, :cond_2

    .line 92
    .line 93
    and-int/lit8 p2, v3, 0x2

    .line 94
    .line 95
    if-nez p2, :cond_2

    .line 96
    .line 97
    and-int/lit8 p1, p1, -0x3

    .line 98
    .line 99
    iput p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    if-ne v4, v5, :cond_3

    .line 103
    .line 104
    and-int/lit8 p2, v3, 0x4

    .line 105
    .line 106
    if-nez p2, :cond_3

    .line 107
    .line 108
    and-int/lit8 p1, p1, -0x5

    .line 109
    .line 110
    iput p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 111
    .line 112
    :cond_3
    :goto_0
    iget p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 113
    .line 114
    if-eq p1, v3, :cond_a

    .line 115
    .line 116
    new-array p1, v6, [Ljava/lang/Object;

    .line 117
    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    aput-object p2, p1, v8

    .line 123
    .line 124
    iget p2, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 125
    .line 126
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    aput-object p2, p1, v9

    .line 131
    .line 132
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_3

    .line 140
    .line 141
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 142
    .line 143
    .line 144
    iget p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 145
    .line 146
    and-int/2addr p1, v4

    .line 147
    if-eqz p1, :cond_4

    .line 148
    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string p2, ", but it has already been pressed and has yet to be released."

    .line 158
    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_4
    iget p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 170
    .line 171
    or-int/2addr p1, v4

    .line 172
    iput p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 173
    .line 174
    if-ne v4, v7, :cond_5

    .line 175
    .line 176
    and-int/lit8 p2, v3, 0x2

    .line 177
    .line 178
    if-eqz p2, :cond_5

    .line 179
    .line 180
    or-int/2addr p1, v6

    .line 181
    iput p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_5
    if-ne v4, v5, :cond_6

    .line 185
    .line 186
    and-int/lit8 p2, v3, 0x4

    .line 187
    .line 188
    if-eqz p2, :cond_6

    .line 189
    .line 190
    or-int/lit8 p1, p1, 0x4

    .line 191
    .line 192
    iput p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 193
    .line 194
    :cond_6
    :goto_1
    iget p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 195
    .line 196
    if-eq p1, v3, :cond_a

    .line 197
    .line 198
    new-array p1, v6, [Ljava/lang/Object;

    .line 199
    .line 200
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    aput-object p2, p1, v8

    .line 205
    .line 206
    iget p2, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 207
    .line 208
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    aput-object p2, p1, v9

    .line 213
    .line 214
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 223
    .line 224
    .line 225
    iget-boolean p1, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    .line 226
    .line 227
    if-nez p1, :cond_7

    .line 228
    .line 229
    const-string p1, "ACTION_HOVER_EXIT without prior ACTION_HOVER_ENTER"

    .line 230
    .line 231
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_7
    iput-boolean v8, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 238
    .line 239
    .line 240
    iput-boolean v9, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 244
    .line 245
    .line 246
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 247
    .line 248
    .line 249
    goto :goto_3

    .line 250
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :goto_2
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_8
    and-int/lit8 v0, v2, 0x10

    .line 259
    .line 260
    if-eqz v0, :cond_a

    .line 261
    .line 262
    if-eq p2, v6, :cond_9

    .line 263
    .line 264
    const-string p1, "Invalid action for generic joystick event."

    .line 265
    .line 266
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_9
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    .line 272
    .line 273
    :cond_a
    :goto_3
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :catchall_0
    move-exception p1

    .line 278
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 279
    .line 280
    .line 281
    throw p1

    .line 282
    nop

    .line 283
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/KeyEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/view/KeyEvent;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    and-int/lit8 v0, v0, 0x4

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0, p1, p2}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 5

    .line 1
    const-string v0, "Invalid action "

    .line 2
    .line 3
    const-string v1, "KeyEvent"

    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v1}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    if-eq p2, v4, :cond_1

    .line 39
    .line 40
    const/4 p1, 0x2

    .line 41
    if-eq p2, p1, :cond_6

    .line 42
    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p2, " for key event."

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-direct {p0, v1, v2, v3, v4}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-nez p1, :cond_2

    .line 73
    .line 74
    const-string p1, "ACTION_UP but key was not down."

    .line 75
    .line 76
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Landroid/view/InputEventConsistencyVerifier$KeyState;->recycle()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    const/4 p2, 0x0

    .line 85
    invoke-direct {p0, v1, v2, v3, p2}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    iget-boolean v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    .line 92
    .line 93
    if-eqz v1, :cond_4

    .line 94
    .line 95
    iput-boolean p2, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    iget p2, p0, Landroid/view/InputEventConsistencyVerifier;->mFlags:I

    .line 99
    .line 100
    and-int/2addr p2, v4

    .line 101
    if-nez p2, :cond_6

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_6

    .line 108
    .line 109
    const-string p1, "ACTION_DOWN but key is already down and this event is not a key repeat."

    .line 110
    .line 111
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    invoke-direct {p0, v1, v2, v3}, Landroid/view/InputEventConsistencyVerifier;->addKeyState(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    :cond_6
    :goto_0
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :catchall_0
    move-exception p1

    .line 123
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 124
    .line 125
    .line 126
    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "ACTION_POINTER_DOWN specified pointer id "

    .line 6
    .line 7
    const-string v3, "ACTION_POINTER_UP specified pointer id "

    .line 8
    .line 9
    const-string v4, "ACTION_POINTER_DOWN index is "

    .line 10
    .line 11
    const-string v5, "ACTION_POINTER_UP index is "

    .line 12
    .line 13
    const-string v6, "Invalid action "

    .line 14
    .line 15
    const-string v7, "ACTION_MOVE contained "

    .line 16
    .line 17
    const-string v8, "Touch event stream contains events from multiple sources: previous device id "

    .line 18
    .line 19
    const-string v9, "TouchEvent"

    .line 20
    .line 21
    move/from16 v10, p2

    .line 22
    .line 23
    invoke-direct {v1, v0, v10, v9}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    if-nez v9, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    const/4 v10, 0x4

    .line 35
    const/4 v11, 0x3

    .line 36
    const/4 v12, 0x0

    .line 37
    const/4 v13, 0x1

    .line 38
    if-eqz v9, :cond_2

    .line 39
    .line 40
    if-eq v9, v11, :cond_2

    .line 41
    .line 42
    if-ne v9, v10, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v14, v12

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :goto_0
    move v14, v13

    .line 48
    :goto_1
    if-eqz v14, :cond_4

    .line 49
    .line 50
    iget-boolean v15, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 51
    .line 52
    if-nez v15, :cond_3

    .line 53
    .line 54
    iget-boolean v15, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    .line 55
    .line 56
    if-eqz v15, :cond_4

    .line 57
    .line 58
    :cond_3
    iput-boolean v12, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 59
    .line 60
    iput-boolean v12, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    .line 61
    .line 62
    iput v12, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 63
    .line 64
    :cond_4
    iget-boolean v15, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 65
    .line 66
    if-eqz v15, :cond_5

    .line 67
    .line 68
    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->setTainted(Z)V

    .line 69
    .line 70
    .line 71
    :cond_5
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 72
    .line 73
    .line 74
    move-result v15

    .line 75
    invoke-direct {v1, v15}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 79
    .line 80
    .line 81
    move-result v15

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    if-nez v14, :cond_7

    .line 87
    .line 88
    iget v14, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    .line 89
    .line 90
    const/4 v10, -0x1

    .line 91
    if-eq v14, v10, :cond_7

    .line 92
    .line 93
    if-ne v14, v15, :cond_6

    .line 94
    .line 95
    iget v10, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    .line 96
    .line 97
    if-eq v10, v12, :cond_7

    .line 98
    .line 99
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget v8, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    .line 105
    .line 106
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v8, ", previous source "

    .line 110
    .line 111
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget v8, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    .line 115
    .line 116
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v8, ", new device id "

    .line 124
    .line 125
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v8, ", new source "

    .line 132
    .line 133
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    invoke-direct {v1, v8}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_7
    iput v15, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    .line 151
    .line 152
    iput v12, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    .line 153
    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    const/4 v10, 0x2

    .line 159
    and-int/2addr v12, v10

    .line 160
    if-eqz v12, :cond_18

    .line 161
    .line 162
    if-eqz v9, :cond_16

    .line 163
    .line 164
    if-eq v9, v13, :cond_15

    .line 165
    .line 166
    if-eq v9, v10, :cond_14

    .line 167
    .line 168
    if-eq v9, v11, :cond_13

    .line 169
    .line 170
    const/4 v7, 0x4

    .line 171
    if-eq v9, v7, :cond_11

    .line 172
    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 178
    .line 179
    .line 180
    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    const/4 v11, 0x5

    .line 182
    const-string v12, "."

    .line 183
    .line 184
    const-string v14, " but the pointer count is "

    .line 185
    .line 186
    if-ne v7, v11, :cond_c

    .line 187
    .line 188
    :try_start_1
    iget v3, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 189
    .line 190
    if-nez v3, :cond_8

    .line 191
    .line 192
    const-string v3, "ACTION_POINTER_DOWN but no other pointers were down."

    .line 193
    .line 194
    invoke-direct {v1, v3}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iput-boolean v13, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 198
    .line 199
    :cond_8
    if-ltz v10, :cond_b

    .line 200
    .line 201
    if-lt v10, v8, :cond_9

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_9
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    shl-int v4, v13, v3

    .line 209
    .line 210
    iget v5, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 211
    .line 212
    and-int v6, v5, v4

    .line 213
    .line 214
    if-eqz v6, :cond_a

    .line 215
    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v2, " which is already down."

    .line 225
    .line 226
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-direct {v1, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iput-boolean v13, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_a
    or-int v2, v5, v4

    .line 240
    .line 241
    iput v2, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_b
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-direct {v1, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iput-boolean v13, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 269
    .line 270
    :goto_3
    invoke-direct/range {p0 .. p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_6

    .line 274
    .line 275
    :cond_c
    const/4 v2, 0x6

    .line 276
    if-ne v7, v2, :cond_10

    .line 277
    .line 278
    if-ltz v10, :cond_f

    .line 279
    .line 280
    if-lt v10, v8, :cond_d

    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_d
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    shl-int v4, v13, v2

    .line 288
    .line 289
    iget v5, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 290
    .line 291
    and-int v6, v5, v4

    .line 292
    .line 293
    if-nez v6, :cond_e

    .line 294
    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v2, " which is not currently down."

    .line 304
    .line 305
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-direct {v1, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iput-boolean v13, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_e
    not-int v2, v4

    .line 319
    and-int/2addr v2, v5

    .line 320
    iput v2, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_f
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-direct {v1, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iput-boolean v13, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 348
    .line 349
    :goto_5
    invoke-direct/range {p0 .. p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_6

    .line 353
    .line 354
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-static {v9}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v2, " for touch event."

    .line 367
    .line 368
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-direct {v1, v0}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    goto :goto_6

    .line 379
    :cond_11
    iget v2, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 380
    .line 381
    if-eqz v2, :cond_12

    .line 382
    .line 383
    const-string v2, "ACTION_OUTSIDE but pointers are still down."

    .line 384
    .line 385
    invoke-direct {v1, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    :cond_12
    invoke-direct/range {p0 .. p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 389
    .line 390
    .line 391
    invoke-direct/range {p0 .. p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 392
    .line 393
    .line 394
    const/4 v0, 0x0

    .line 395
    iput-boolean v0, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 396
    .line 397
    goto :goto_6

    .line 398
    :cond_13
    const/4 v0, 0x0

    .line 399
    iput v0, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 400
    .line 401
    iput-boolean v0, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 402
    .line 403
    goto :goto_6

    .line 404
    :cond_14
    iget v0, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 405
    .line 406
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-eq v8, v0, :cond_19

    .line 411
    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const-string v3, " pointers but there are currently "

    .line 421
    .line 422
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    const-string v0, " pointers down."

    .line 429
    .line 430
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-direct {v1, v0}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    iput-boolean v13, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 441
    .line 442
    goto :goto_6

    .line 443
    :cond_15
    invoke-direct/range {p0 .. p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 444
    .line 445
    .line 446
    invoke-direct/range {p0 .. p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 447
    .line 448
    .line 449
    const/4 v0, 0x0

    .line 450
    iput v0, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 451
    .line 452
    iput-boolean v0, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 453
    .line 454
    goto :goto_6

    .line 455
    :cond_16
    iget v2, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 456
    .line 457
    if-eqz v2, :cond_17

    .line 458
    .line 459
    const-string v2, "ACTION_DOWN but pointers are already down.  Probably missing ACTION_UP from previous gesture."

    .line 460
    .line 461
    invoke-direct {v1, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    :cond_17
    invoke-direct/range {p0 .. p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 465
    .line 466
    .line 467
    invoke-direct/range {p0 .. p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 468
    .line 469
    .line 470
    const/4 v2, 0x0

    .line 471
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    shl-int v0, v13, v0

    .line 476
    .line 477
    iput v0, v1, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 478
    .line 479
    goto :goto_6

    .line 480
    :cond_18
    const-string v0, "Source was not SOURCE_CLASS_POINTER."

    .line 481
    .line 482
    invoke-direct {v1, v0}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    .line 484
    .line 485
    :cond_19
    :goto_6
    invoke-direct/range {p0 .. p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 486
    .line 487
    .line 488
    return-void

    .line 489
    :catchall_0
    move-exception v0

    .line 490
    invoke-direct/range {p0 .. p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 491
    .line 492
    .line 493
    throw v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;I)V
    .locals 3

    .line 1
    const-string v0, "Invalid action "

    .line 2
    .line 3
    const-string v1, "TrackballEvent"

    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v1}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    and-int/lit8 v1, v1, 0x4

    .line 28
    .line 29
    if-eqz v1, :cond_7

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz p2, :cond_4

    .line 34
    .line 35
    if-eq p2, v1, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    if-eq p2, v1, :cond_1

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p2, " for trackball event."

    .line 53
    .line 54
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    iget-boolean p2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    .line 70
    .line 71
    if-nez p2, :cond_3

    .line 72
    .line 73
    const-string p2, "ACTION_UP but trackball is not down."

    .line 74
    .line 75
    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    .line 80
    .line 81
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    .line 82
    .line 83
    :goto_0
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    iget-boolean p2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    .line 91
    .line 92
    if-eqz p2, :cond_5

    .line 93
    .line 94
    iget-boolean p2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    .line 95
    .line 96
    if-nez p2, :cond_5

    .line 97
    .line 98
    const-string p2, "ACTION_DOWN but trackball is already down."

    .line 99
    .line 100
    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    .line 105
    .line 106
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    .line 107
    .line 108
    :goto_1
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 112
    .line 113
    .line 114
    :goto_2
    iget-boolean p2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    .line 115
    .line 116
    const/4 v0, 0x0

    .line 117
    if-eqz p2, :cond_6

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    cmpg-float p2, p2, v0

    .line 124
    .line 125
    if-gtz p2, :cond_6

    .line 126
    .line 127
    const-string p1, "Trackball is down but pressure is not greater than 0."

    .line 128
    .line 129
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    iget-boolean p2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    .line 134
    .line 135
    if-nez p2, :cond_8

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    cmpl-float p1, p1, v0

    .line 142
    .line 143
    if-eqz p1, :cond_8

    .line 144
    .line 145
    const-string p1, "Trackball is up but pressure is not equal to 0."

    .line 146
    .line 147
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_7
    const-string p1, "Source was not SOURCE_CLASS_TRACKBALL."

    .line 152
    .line 153
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .line 155
    .line 156
    :cond_8
    :goto_3
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :catchall_0
    move-exception p1

    .line 161
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 162
    .line 163
    .line 164
    throw p1
.end method

.method public onUnhandledEvent(Landroid/view/InputEvent;I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    .line 2
    .line 3
    if-eq p2, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p2, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    .line 12
    .line 13
    aput-boolean v0, p2, v1

    .line 14
    .line 15
    :cond_1
    instance-of p2, p1, Landroid/view/KeyEvent;

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    check-cast p1, Landroid/view/KeyEvent;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p2, v1, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    iput-boolean v0, p1, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    check-cast p1, Landroid/view/MotionEvent;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    and-int/lit8 p1, p1, 0x4

    .line 59
    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    iget-boolean p1, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    .line 63
    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    .line 67
    .line 68
    :cond_4
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    .line 6
    .line 7
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    .line 10
    .line 11
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 12
    .line 13
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    .line 18
    .line 19
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 20
    .line 21
    :goto_0
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 26
    .line 27
    iput-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/InputEventConsistencyVerifier$KeyState;->recycle()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method
