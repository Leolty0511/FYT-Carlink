.class public final Landroid/animation/AnimatorSet;
.super Landroid/animation/Animator;
.source "SourceFile"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorSet$Builder;,
        Landroid/animation/AnimatorSet$SeekState;,
        Landroid/animation/AnimatorSet$AnimationEvent;,
        Landroid/animation/AnimatorSet$Node;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimatorSet"


# instance fields
.field private mChildrenInitialized:Z

.field private mDelayAnim:Landroid/animation/ValueAnimator;

.field private mDependencyDirty:Z

.field private mDummyListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDuration:J

.field private final mEndCanBeCalled:Z

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstFrame:J

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLastEventId:I

.field private mLastFrameTime:J

.field private mNodeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPauseTime:J

.field private mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mReversing:Z

.field private mRootNode:Landroid/animation/AnimatorSet$Node;

.field private mSeekState:Landroid/animation/AnimatorSet$SeekState;

.field private mSelfPulse:Z

.field private final mShouldIgnoreEndWithoutStart:Z

.field private final mShouldResetValuesAtStart:Z

.field private mStartDelay:J

.field private mStarted:Z

.field private mTotalDuration:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 36
    .line 37
    const-wide/16 v1, 0x0

    .line 38
    .line 39
    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 40
    .line 41
    const/4 v3, 0x2

    .line 42
    new-array v3, v3, [F

    .line 43
    .line 44
    fill-array-data v3, :array_0

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iput-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    new-instance v4, Landroid/animation/AnimatorSet$Node;

    .line 58
    .line 59
    invoke-direct {v4, v3}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    .line 60
    .line 61
    .line 62
    iput-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 63
    .line 64
    const-wide/16 v3, -0x1

    .line 65
    .line 66
    iput-wide v3, p0, Landroid/animation/AnimatorSet;->mDuration:J

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    iput-object v5, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 70
    .line 71
    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    .line 72
    .line 73
    iput-wide v3, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 74
    .line 75
    iput-wide v3, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 76
    .line 77
    const/4 v1, -0x1

    .line 78
    iput v1, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 79
    .line 80
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    .line 84
    .line 85
    new-instance v2, Landroid/animation/AnimatorSet$SeekState;

    .line 86
    .line 87
    invoke-direct {v2, p0, v5}, Landroid/animation/AnimatorSet$SeekState;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$1;)V

    .line 88
    .line 89
    .line 90
    iput-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 91
    .line 92
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    .line 93
    .line 94
    iput-wide v3, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 95
    .line 96
    new-instance v2, Landroid/animation/AnimatorSet$1;

    .line 97
    .line 98
    invoke-direct {v2, p0}, Landroid/animation/AnimatorSet$1;-><init>(Landroid/animation/AnimatorSet;)V

    .line 99
    .line 100
    .line 101
    iput-object v2, p0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    .line 102
    .line 103
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    .line 104
    .line 105
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    .line 106
    .line 107
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 108
    .line 109
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 113
    .line 114
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    if-eqz v2, :cond_2

    .line 124
    .line 125
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    if-nez v3, :cond_0

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_0
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 137
    .line 138
    const/16 v4, 0x18

    .line 139
    .line 140
    if-ge v3, v4, :cond_1

    .line 141
    .line 142
    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_1
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    .line 146
    .line 147
    :goto_0
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 152
    .line 153
    const/16 v3, 0x1a

    .line 154
    .line 155
    if-ge v2, v3, :cond_3

    .line 156
    .line 157
    :goto_1
    move v0, v1

    .line 158
    goto :goto_3

    .line 159
    :cond_2
    :goto_2
    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_3
    :goto_3
    xor-int/lit8 v2, v0, 0x1

    .line 163
    .line 164
    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mShouldResetValuesAtStart:Z

    .line 165
    .line 166
    xor-int/2addr v0, v1

    .line 167
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mEndCanBeCalled:Z

    .line 168
    .line 169
    return-void

    .line 170
    nop

    .line 171
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic access$100(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/animation/AnimatorSet;)J
    .locals 2

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public static synthetic access$300(Landroid/animation/AnimatorSet;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    return p0
.end method

.method public static synthetic access$402(Landroid/animation/AnimatorSet;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    return p1
.end method

.method public static synthetic access$500(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;
    .locals 0

    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet;->getNodeForAnimation(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;

    move-result-object p0

    return-object p0
.end method

.method private addAnimationCallback(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private addDummyListener()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 17
    .line 18
    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method private createDependencyGraph()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    move v0, v1

    .line 8
    :goto_0
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v0, v3, :cond_1

    .line 15
    .line 16
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 23
    .line 24
    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 25
    .line 26
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Landroid/animation/AnimatorSet$Node;

    .line 33
    .line 34
    iget-wide v4, v4, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/animation/Animator;->getTotalDuration()J

    .line 37
    .line 38
    .line 39
    move-result-wide v6

    .line 40
    cmp-long v3, v4, v6

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    move v0, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v0, v1

    .line 50
    :goto_1
    if-nez v0, :cond_2

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 54
    .line 55
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    move v3, v1

    .line 62
    :goto_2
    if-ge v3, v0, :cond_3

    .line 63
    .line 64
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Landroid/animation/AnimatorSet$Node;

    .line 71
    .line 72
    iput-boolean v1, v4, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 73
    .line 74
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move v3, v1

    .line 78
    :goto_3
    if-ge v3, v0, :cond_8

    .line 79
    .line 80
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Landroid/animation/AnimatorSet$Node;

    .line 87
    .line 88
    iget-boolean v5, v4, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 89
    .line 90
    if-eqz v5, :cond_4

    .line 91
    .line 92
    goto :goto_6

    .line 93
    :cond_4
    iput-boolean v2, v4, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 94
    .line 95
    iget-object v5, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 96
    .line 97
    if-nez v5, :cond_5

    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_5
    invoke-direct {p0, v4, v5}, Landroid/animation/AnimatorSet;->findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 101
    .line 102
    .line 103
    iget-object v5, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    iget-object v5, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    move v6, v1

    .line 115
    :goto_4
    if-ge v6, v5, :cond_6

    .line 116
    .line 117
    iget-object v7, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    check-cast v7, Landroid/animation/AnimatorSet$Node;

    .line 124
    .line 125
    iget-object v7, v7, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet$Node;->addParents(Ljava/util/ArrayList;)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v6, v6, 0x1

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_6
    move v6, v1

    .line 134
    :goto_5
    if-ge v6, v5, :cond_7

    .line 135
    .line 136
    iget-object v7, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    check-cast v7, Landroid/animation/AnimatorSet$Node;

    .line 143
    .line 144
    iget-object v8, v4, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet$Node;->addParents(Ljava/util/ArrayList;)V

    .line 147
    .line 148
    .line 149
    iput-boolean v2, v7, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 150
    .line 151
    add-int/lit8 v6, v6, 0x1

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_7
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_8
    :goto_7
    if-ge v1, v0, :cond_a

    .line 158
    .line 159
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 166
    .line 167
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 168
    .line 169
    if-eq v3, v4, :cond_9

    .line 170
    .line 171
    iget-object v5, v3, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    .line 172
    .line 173
    if-nez v5, :cond_9

    .line 174
    .line 175
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    .line 176
    .line 177
    .line 178
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    .line 182
    .line 183
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    .line 191
    .line 192
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 193
    .line 194
    const-wide/16 v3, 0x0

    .line 195
    .line 196
    iput-wide v3, v1, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 197
    .line 198
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    .line 199
    .line 200
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    .line 201
    .line 202
    .line 203
    move-result-wide v3

    .line 204
    iput-wide v3, v1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 205
    .line 206
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 207
    .line 208
    invoke-direct {p0, v1, v0}, Landroid/animation/AnimatorSet;->updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 209
    .line 210
    .line 211
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->sortAnimationEvents()V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    sub-int/2addr v1, v2

    .line 221
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 226
    .line 227
    invoke-virtual {v0}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    .line 228
    .line 229
    .line 230
    move-result-wide v0

    .line 231
    iput-wide v0, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    .line 232
    .line 233
    return-void
.end method

.method private endAnimation()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 3
    .line 4
    const-wide/16 v1, -0x1

    .line 5
    .line 6
    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 7
    .line 8
    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    iput v3, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 12
    .line 13
    iput-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 14
    .line 15
    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 16
    .line 17
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->removeAnimationCallback()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    move v3, v0

    .line 45
    :goto_0
    if-ge v3, v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    .line 52
    .line 53
    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 54
    .line 55
    invoke-interface {v4, p0, v5}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->removeDummyListener()V

    .line 62
    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    .line 66
    .line 67
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 68
    .line 69
    return-void
.end method

.method private findLatestEventIdForTime(J)I
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 8
    .line 9
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 10
    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    sub-long/2addr v2, p1

    .line 18
    iget p1, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 19
    .line 20
    const/4 p2, -0x1

    .line 21
    if-ne p1, p2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, p1

    .line 25
    :goto_0
    iput v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 26
    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    :goto_1
    if-ltz v0, :cond_4

    .line 30
    .line 31
    iget-object p1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    cmp-long p1, p1, v2

    .line 44
    .line 45
    if-ltz p1, :cond_1

    .line 46
    .line 47
    move v1, v0

    .line 48
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 52
    .line 53
    :goto_2
    if-ge v2, v0, :cond_4

    .line 54
    .line 55
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    const-wide/16 v6, -0x1

    .line 68
    .line 69
    cmp-long v4, v4, v6

    .line 70
    .line 71
    if-eqz v4, :cond_3

    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    cmp-long v3, v3, p1

    .line 78
    .line 79
    if-gtz v3, :cond_3

    .line 80
    .line 81
    move v1, v2

    .line 82
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    return v1
.end method

.method private findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet$Node;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ge v0, v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 31
    .line 32
    invoke-direct {p0, v1, p2}, Landroid/animation/AnimatorSet;->findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method private forceToEnd()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mEndCanBeCalled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    const-wide/16 v2, -0x1

    .line 29
    .line 30
    cmp-long v2, v0, v2

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    const-wide/32 v0, 0x7fffffff

    .line 35
    .line 36
    .line 37
    :cond_2
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 38
    .line 39
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    add-int/lit8 v3, v3, -0x1

    .line 46
    .line 47
    invoke-direct {p0, v2, v3, v0, v1}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private getNodeForAnimation(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/animation/AnimatorSet$Node;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/animation/AnimatorSet$Node;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-object v0
.end method

.method private getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;Z)J

    move-result-wide p1

    return-wide p1
.end method

.method private getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;Z)J
    .locals 2

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 3
    iget-wide p1, p3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    sub-long/2addr p1, v0

    return-wide p1

    .line 4
    :cond_0
    iget-wide p3, p3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long/2addr p1, p3

    return-wide p1
.end method

.method private handleAnimationEvents(IIJ)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    :cond_0
    sub-int/2addr p1, v5

    .line 20
    :goto_0
    if-lt p1, p2, :cond_8

    .line 21
    .line 22
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 29
    .line 30
    iget-object v6, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 31
    .line 32
    iget v7, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 33
    .line 34
    if-ne v7, v3, :cond_2

    .line 35
    .line 36
    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 37
    .line 38
    invoke-virtual {v7}, Landroid/animation/Animator;->isStarted()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_1

    .line 43
    .line 44
    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 45
    .line 46
    invoke-virtual {v7}, Landroid/animation/Animator;->cancel()V

    .line 47
    .line 48
    .line 49
    :cond_1
    iput-boolean v4, v6, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 50
    .line 51
    iget-object v7, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 52
    .line 53
    iget-object v0, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 54
    .line 55
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object v0, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 59
    .line 60
    invoke-virtual {v0, v5}, Landroid/animation/Animator;->startWithoutPulsing(Z)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v6, v1, v2}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    if-ne v7, v5, :cond_3

    .line 68
    .line 69
    iget-boolean v0, v6, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 70
    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    invoke-direct {p0, p3, p4, v6}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    invoke-direct {p0, v6, v7, v8}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    add-int/2addr p1, v5

    .line 84
    :goto_2
    if-gt p1, p2, :cond_8

    .line 85
    .line 86
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 93
    .line 94
    iget-object v5, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 95
    .line 96
    iget v0, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 97
    .line 98
    if-nez v0, :cond_6

    .line 99
    .line 100
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    iget-object v0, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    iget-object v0, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 116
    .line 117
    .line 118
    :cond_5
    iput-boolean v4, v5, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 119
    .line 120
    iget-object v0, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 121
    .line 122
    invoke-virtual {v0, v4}, Landroid/animation/Animator;->startWithoutPulsing(Z)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, v5, v1, v2}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_6
    if-ne v0, v3, :cond_7

    .line 130
    .line 131
    iget-boolean v0, v5, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 132
    .line 133
    if-nez v0, :cond_7

    .line 134
    .line 135
    invoke-direct {p0, p3, p4, v5}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J

    .line 136
    .line 137
    .line 138
    move-result-wide v6

    .line 139
    invoke-direct {p0, v5, v6, v7}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    .line 140
    .line 141
    .line 142
    :cond_7
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_8
    return-void
.end method

.method private initAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 21
    .line 22
    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 23
    .line 24
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private initChildren()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private static isEmptySet(Landroid/animation/AnimatorSet;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getStartDelay()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v0, v2, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/animation/Animator;

    .line 33
    .line 34
    instance-of v3, v2, Landroid/animation/AnimatorSet;

    .line 35
    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    return v1

    .line 39
    :cond_1
    check-cast v2, Landroid/animation/AnimatorSet;

    .line 40
    .line 41
    invoke-static {v2}, Landroid/animation/AnimatorSet;->isEmptySet(Landroid/animation/AnimatorSet;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    return v1

    .line 48
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 p0, 0x1

    .line 52
    return p0
.end method

.method private printChildCount()V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    const-string v1, "Current tree: "

    .line 18
    .line 19
    const-string v2, "AnimatorSet"

    .line 20
    .line 21
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    move v3, v1

    .line 26
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ge v3, v4, :cond_4

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    :goto_1
    if-ge v3, v4, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 48
    .line 49
    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 50
    .line 51
    if-eqz v7, :cond_1

    .line 52
    .line 53
    move v7, v1

    .line 54
    move v8, v7

    .line 55
    :goto_2
    iget-object v9, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-ge v7, v9, :cond_2

    .line 62
    .line 63
    iget-object v9, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    check-cast v9, Landroid/animation/AnimatorSet$Node;

    .line 70
    .line 71
    iget-object v10, v9, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 72
    .line 73
    if-ne v10, v6, :cond_0

    .line 74
    .line 75
    add-int/lit8 v8, v8, 0x1

    .line 76
    .line 77
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    move v8, v1

    .line 84
    :cond_2
    const-string v6, " "

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    return-void
.end method

.method private pulseFrame(Landroid/animation/AnimatorSet$Node;J)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    cmpl-float v1, v0, v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    :cond_0
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 17
    .line 18
    long-to-float p2, p2

    .line 19
    mul-float/2addr p2, v0

    .line 20
    float-to-long p2, p2

    .line 21
    invoke-virtual {v1, p2, p3}, Landroid/animation/Animator;->pulseAnimationFrame(J)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput-boolean p2, p1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method private removeAnimationCallback()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private removeDummyListener()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 17
    .line 18
    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method private skipToStartValue(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    return-void
.end method

.method private sortAnimationEvents()V
    .locals 13

    .line 1
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    move v1, v0

    .line 8
    :goto_0
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x2

    .line 15
    const/4 v4, 0x0

    .line 16
    if-ge v1, v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 25
    .line 26
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v6, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 29
    .line 30
    invoke-direct {v6, v2, v4}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 37
    .line 38
    new-instance v5, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 39
    .line 40
    invoke-direct {v5, v2, v0}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 47
    .line 48
    new-instance v5, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 49
    .line 50
    invoke-direct {v5, v2, v3}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 60
    .line 61
    new-instance v2, Landroid/animation/AnimatorSet$3;

    .line 62
    .line 63
    invoke-direct {v2, p0}, Landroid/animation/AnimatorSet$3;-><init>(Landroid/animation/AnimatorSet;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v2}, Landroid/animation/b;->y(Ljava/util/ArrayList;Ljava/util/Comparator;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    move v2, v4

    .line 76
    :goto_1
    if-ge v2, v1, :cond_b

    .line 77
    .line 78
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 85
    .line 86
    iget v6, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 87
    .line 88
    if-ne v6, v3, :cond_a

    .line 89
    .line 90
    iget-object v6, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 91
    .line 92
    iget-wide v7, v6, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 93
    .line 94
    iget-wide v9, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 95
    .line 96
    cmp-long v11, v7, v9

    .line 97
    .line 98
    if-nez v11, :cond_1

    .line 99
    .line 100
    move v6, v0

    .line 101
    goto :goto_2

    .line 102
    :cond_1
    iget-object v6, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 103
    .line 104
    invoke-virtual {v6}, Landroid/animation/Animator;->getStartDelay()J

    .line 105
    .line 106
    .line 107
    move-result-wide v11

    .line 108
    add-long/2addr v11, v7

    .line 109
    cmp-long v6, v9, v11

    .line 110
    .line 111
    if-nez v6, :cond_a

    .line 112
    .line 113
    move v6, v4

    .line 114
    :goto_2
    add-int/lit8 v7, v2, 0x1

    .line 115
    .line 116
    move v9, v1

    .line 117
    move v10, v9

    .line 118
    move v8, v7

    .line 119
    :goto_3
    if-ge v8, v1, :cond_5

    .line 120
    .line 121
    if-ge v9, v1, :cond_2

    .line 122
    .line 123
    if-ge v10, v1, :cond_2

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_2
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    check-cast v11, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 133
    .line 134
    iget-object v11, v11, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 135
    .line 136
    iget-object v12, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 137
    .line 138
    if-ne v11, v12, :cond_4

    .line 139
    .line 140
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    check-cast v11, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 147
    .line 148
    iget v11, v11, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 149
    .line 150
    if-nez v11, :cond_3

    .line 151
    .line 152
    move v9, v8

    .line 153
    goto :goto_4

    .line 154
    :cond_3
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    check-cast v11, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 161
    .line 162
    iget v11, v11, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 163
    .line 164
    if-ne v11, v0, :cond_4

    .line 165
    .line 166
    move v10, v8

    .line 167
    :cond_4
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_5
    :goto_5
    if-eqz v6, :cond_7

    .line 171
    .line 172
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eq v9, v5, :cond_6

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 182
    .line 183
    const-string v1, "Something went wrong, no start isfound after stop for an animation that has the same start and endtime."

    .line 184
    .line 185
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :cond_7
    :goto_6
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-eq v10, v5, :cond_9

    .line 196
    .line 197
    if-eqz v6, :cond_8

    .line 198
    .line 199
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    check-cast v5, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 206
    .line 207
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    move v2, v7

    .line 213
    :cond_8
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    check-cast v5, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 220
    .line 221
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    add-int/2addr v2, v3

    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 230
    .line 231
    const-string v1, "Something went wrong, no startdelay end is found after stop for an animation"

    .line 232
    .line 233
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v0

    .line 237
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 238
    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    :cond_b
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-nez v1, :cond_d

    .line 248
    .line 249
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 256
    .line 257
    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 258
    .line 259
    if-nez v1, :cond_c

    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 263
    .line 264
    const-string v1, "Sorting went bad, the start event should always be at index 0"

    .line 265
    .line 266
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v0

    .line 270
    :cond_d
    :goto_7
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 271
    .line 272
    new-instance v2, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 273
    .line 274
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 275
    .line 276
    invoke-direct {v2, v5, v4}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 283
    .line 284
    new-instance v2, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 285
    .line 286
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 287
    .line 288
    invoke-direct {v2, v4, v0}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 295
    .line 296
    new-instance v2, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 297
    .line 298
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 299
    .line 300
    invoke-direct {v2, v4, v3}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 307
    .line 308
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    sub-int/2addr v2, v0

    .line 313
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 318
    .line 319
    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 320
    .line 321
    if-eqz v1, :cond_e

    .line 322
    .line 323
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    sub-int/2addr v2, v0

    .line 330
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 335
    .line 336
    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 337
    .line 338
    if-eq v1, v0, :cond_e

    .line 339
    .line 340
    return-void

    .line 341
    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 342
    .line 343
    const-string v1, "Something went wrong, the last event is not an end event"

    .line 344
    .line 345
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    throw v0
.end method

.method private start(ZZ)V
    .locals 4

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 4
    iput-boolean p2, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Landroid/animation/Animator;->mPaused:Z

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 7
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 9
    iput-boolean p2, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 10
    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2, p2}, Landroid/animation/Animator;->setAllowRunningAsynchronously(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->canReverse()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot reverse infinite AnimatorSet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    :goto_1
    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 15
    invoke-static {p0}, Landroid/animation/AnimatorSet;->isEmptySet(Landroid/animation/AnimatorSet;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->startAnimation()V

    .line 17
    :cond_3
    iget-object v1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge p2, v2, :cond_4

    .line 20
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_5
    return-void

    .line 22
    :cond_6
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string p2, "Animators may only be run on Looper threads"

    invoke-direct {p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private startAnimation()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->addDummyListener()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->addAnimationCallback(J)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/animation/AnimatorSet$SeekState;->getPlayTimeNormalized()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    cmp-long v2, v2, v0

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mShouldResetValuesAtStart:Z

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 40
    .line 41
    xor-int/2addr v2, v3

    .line 42
    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initChildren()V

    .line 51
    .line 52
    .line 53
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 54
    .line 55
    xor-int/2addr v2, v3

    .line 56
    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    sub-int/2addr v2, v3

    .line 67
    :goto_0
    if-ltz v2, :cond_4

    .line 68
    .line 69
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 76
    .line 77
    iget v4, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 78
    .line 79
    if-ne v4, v3, :cond_3

    .line 80
    .line 81
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 88
    .line 89
    iget-object v4, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 90
    .line 91
    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 92
    .line 93
    invoke-virtual {v4}, Landroid/animation/Animator;->isInitialized()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_3

    .line 98
    .line 99
    invoke-virtual {v4, v3}, Landroid/animation/Animator;->skipToEndValue(Z)V

    .line 100
    .line 101
    .line 102
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    :goto_1
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 106
    .line 107
    if-nez v2, :cond_5

    .line 108
    .line 109
    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 110
    .line 111
    cmp-long v2, v4, v0

    .line 112
    .line 113
    if-eqz v2, :cond_5

    .line 114
    .line 115
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_9

    .line 122
    .line 123
    :cond_5
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 124
    .line 125
    invoke-virtual {v2}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_6

    .line 130
    .line 131
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 132
    .line 133
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$SeekState;->updateSeekDirection(Z)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    .line 141
    .line 142
    .line 143
    move-result-wide v0

    .line 144
    :cond_6
    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    const/4 v4, -0x1

    .line 149
    invoke-direct {p0, v4, v2, v0, v1}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    sub-int/2addr v0, v3

    .line 159
    :goto_2
    if-ltz v0, :cond_8

    .line 160
    .line 161
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 168
    .line 169
    iget-boolean v1, v1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 170
    .line 171
    if-eqz v1, :cond_7

    .line 172
    .line 173
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    :cond_7
    add-int/lit8 v0, v0, -0x1

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_8
    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 182
    .line 183
    :cond_9
    return-void
.end method

.method private updateAnimatorsDuration()V
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 25
    .line 26
    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 27
    .line 28
    iget-wide v3, p0, Landroid/animation/AnimatorSet;->mDuration:J

    .line 29
    .line 30
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 31
    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    iget-wide v1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet$Node;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    iget-object p2, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 9
    .line 10
    if-ne p1, p2, :cond_1

    .line 11
    .line 12
    :goto_0
    iget-object p1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-ge v1, p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/animation/AnimatorSet$Node;

    .line 27
    .line 28
    iget-object p2, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 29
    .line 30
    if-eq p1, p2, :cond_0

    .line 31
    .line 32
    iput-wide v2, p1, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 33
    .line 34
    iput-wide v2, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 35
    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void

    .line 40
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v0, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    :goto_1
    if-ge v1, v0, :cond_9

    .line 50
    .line 51
    iget-object v4, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Landroid/animation/AnimatorSet$Node;

    .line 58
    .line 59
    iget-object v5, v4, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 60
    .line 61
    invoke-virtual {v5}, Landroid/animation/Animator;->getTotalDuration()J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    iput-wide v5, v4, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    .line 66
    .line 67
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-ltz v5, :cond_4

    .line 72
    .line 73
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    const/4 v7, 0x0

    .line 78
    if-ge v5, v6, :cond_3

    .line 79
    .line 80
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 85
    .line 86
    iput-object v7, v6, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 87
    .line 88
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 93
    .line 94
    iput-wide v2, v6, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 95
    .line 96
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 101
    .line 102
    iput-wide v2, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 103
    .line 104
    add-int/lit8 v5, v5, 0x1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    iput-wide v2, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 108
    .line 109
    iput-wide v2, v4, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 110
    .line 111
    iput-object v7, v4, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 112
    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v5, "Cycle found in AnimatorSet: "

    .line 116
    .line 117
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    const-string v5, "AnimatorSet"

    .line 128
    .line 129
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_4
    iget-wide v5, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 134
    .line 135
    cmp-long v7, v5, v2

    .line 136
    .line 137
    if-eqz v7, :cond_8

    .line 138
    .line 139
    iget-wide v7, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 140
    .line 141
    cmp-long v9, v7, v2

    .line 142
    .line 143
    if-nez v9, :cond_5

    .line 144
    .line 145
    iput-object p1, v4, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 146
    .line 147
    iput-wide v2, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 148
    .line 149
    iput-wide v2, v4, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_5
    cmp-long v5, v7, v5

    .line 153
    .line 154
    if-ltz v5, :cond_6

    .line 155
    .line 156
    iput-object p1, v4, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 157
    .line 158
    iput-wide v7, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 159
    .line 160
    :cond_6
    iget-wide v5, v4, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    .line 161
    .line 162
    cmp-long v7, v5, v2

    .line 163
    .line 164
    if-nez v7, :cond_7

    .line 165
    .line 166
    move-wide v7, v2

    .line 167
    goto :goto_3

    .line 168
    :cond_7
    iget-wide v7, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 169
    .line 170
    add-long/2addr v7, v5

    .line 171
    :goto_3
    iput-wide v7, v4, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 172
    .line 173
    :cond_8
    :goto_4
    invoke-direct {p0, v4, p2}, Landroid/animation/AnimatorSet;->updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 174
    .line 175
    .line 176
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 177
    .line 178
    goto/16 :goto_1

    .line 179
    .line 180
    :cond_9
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    return-void
.end method


# virtual methods
.method public animateBasedOnPlayTime(JJZ)V
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_9

    .line 6
    .line 7
    cmp-long v0, p3, v0

    .line 8
    .line 9
    if-ltz v0, :cond_9

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p5, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    cmp-long p5, v3, v0

    .line 21
    .line 22
    if-eqz p5, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    iget-wide v5, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 29
    .line 30
    sub-long/2addr v3, v5

    .line 31
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    sub-long p1, v3, p1

    .line 36
    .line 37
    sub-long p3, v3, p3

    .line 38
    .line 39
    move p5, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 42
    .line 43
    const-string p2, "Cannot reverse AnimatorSet with infinite duration"

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    :goto_0
    invoke-direct {p0, v2}, Landroid/animation/AnimatorSet;->skipToStartValue(Z)V

    .line 50
    .line 51
    .line 52
    new-instance v9, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    move v3, v2

    .line 58
    :goto_1
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-ge v3, v4, :cond_6

    .line 65
    .line 66
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 73
    .line 74
    invoke-virtual {v4}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    .line 75
    .line 76
    .line 77
    move-result-wide v5

    .line 78
    cmp-long v5, v5, p1

    .line 79
    .line 80
    if-gtz v5, :cond_6

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    .line 83
    .line 84
    .line 85
    move-result-wide v5

    .line 86
    cmp-long v5, v5, v0

    .line 87
    .line 88
    if-nez v5, :cond_2

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    iget v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 92
    .line 93
    const/4 v6, 0x1

    .line 94
    if-ne v5, v6, :cond_4

    .line 95
    .line 96
    iget-object v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 97
    .line 98
    iget-wide v6, v5, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 99
    .line 100
    cmp-long v8, v6, v0

    .line 101
    .line 102
    if-eqz v8, :cond_3

    .line 103
    .line 104
    cmp-long v6, v6, p1

    .line 105
    .line 106
    if-lez v6, :cond_4

    .line 107
    .line 108
    :cond_3
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    :cond_4
    iget v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 112
    .line 113
    const/4 v6, 0x2

    .line 114
    if-ne v5, v6, :cond_5

    .line 115
    .line 116
    iget-object v4, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 117
    .line 118
    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 119
    .line 120
    invoke-virtual {v4, v2}, Landroid/animation/Animator;->skipToEndValue(Z)V

    .line 121
    .line 122
    .line 123
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_6
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-ge v2, v0, :cond_8

    .line 131
    .line 132
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroid/animation/AnimatorSet$Node;

    .line 137
    .line 138
    invoke-direct {p0, p1, p2, v0, p5}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;Z)J

    .line 139
    .line 140
    .line 141
    move-result-wide v3

    .line 142
    if-nez p5, :cond_7

    .line 143
    .line 144
    iget-object v1, v0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 145
    .line 146
    invoke-virtual {v1}, Landroid/animation/Animator;->getStartDelay()J

    .line 147
    .line 148
    .line 149
    move-result-wide v5

    .line 150
    sub-long/2addr v3, v5

    .line 151
    :cond_7
    move-wide v4, v3

    .line 152
    iget-object v3, v0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 153
    .line 154
    move-wide v6, p3

    .line 155
    move v8, p5

    .line 156
    invoke-virtual/range {v3 .. v8}, Landroid/animation/Animator;->animateBasedOnPlayTime(JJZ)V

    .line 157
    .line 158
    .line 159
    add-int/lit8 v2, v2, 0x1

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_8
    return-void

    .line 163
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 164
    .line 165
    const-string p2, "Error: Play time should never be negative."

    .line 166
    .line 167
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p1
.end method

.method public canReverse()Z
    .locals 4

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancel()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    move v3, v1

    .line 29
    :goto_0
    if-ge v3, v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    .line 36
    .line 37
    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 44
    .line 45
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    :goto_1
    if-ge v1, v2, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 61
    .line 62
    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void

    .line 79
    :cond_3
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 80
    .line 81
    const-string v1, "Animators may only be run on Looper threads"

    .line 82
    .line 83
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/AnimatorSet;
    .locals 12

    .line 3
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 4
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, v0, Landroid/animation/AnimatorSet;->mStarted:Z

    const-wide/16 v3, -0x1

    .line 6
    iput-wide v3, v0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 7
    iput-wide v3, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const/4 v5, -0x1

    .line 8
    iput v5, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 9
    iput-boolean v2, v0, Landroid/animation/Animator;->mPaused:Z

    .line 10
    iput-wide v3, v0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 11
    new-instance v3, Landroid/animation/AnimatorSet$SeekState;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/animation/AnimatorSet$SeekState;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$1;)V

    iput-object v3, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    const/4 v3, 0x1

    .line 12
    iput-boolean v3, v0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    .line 13
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 14
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    .line 15
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 17
    new-instance v5, Landroid/animation/AnimatorSet$2;

    invoke-direct {v5, p0, v0}, Landroid/animation/AnimatorSet$2;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    .line 18
    iput-boolean v2, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 19
    iput-boolean v3, v0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 20
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    move v5, v2

    :goto_0
    if-ge v5, v1, :cond_0

    .line 21
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 22
    invoke-virtual {v6}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    move-result-object v7

    .line 23
    iget-object v8, v7, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v6, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v6, v0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    iget-object v8, v7, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v6, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 27
    :cond_0
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 28
    iget-object v5, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    check-cast v5, Landroid/animation/ValueAnimator;

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_8

    .line 29
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 30
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    .line 31
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    if-nez v8, :cond_1

    move-object v8, v4

    goto :goto_2

    .line 32
    :cond_1
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    :goto_2
    iput-object v8, v7, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 33
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v8, :cond_2

    move v8, v2

    goto :goto_3

    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_3
    move v9, v2

    :goto_4
    if-ge v9, v8, :cond_3

    .line 34
    iget-object v10, v7, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 35
    :cond_3
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v8, :cond_4

    move v8, v2

    goto :goto_5

    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_5
    move v9, v2

    :goto_6
    if-ge v9, v8, :cond_5

    .line 36
    iget-object v10, v7, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 37
    :cond_5
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v8, :cond_6

    move v8, v2

    goto :goto_7

    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_7
    move v9, v2

    :goto_8
    if-ge v9, v8, :cond_7

    .line 38
    iget-object v10, v7, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public commitAnimationFrame(J)V
    .locals 0

    return-void
.end method

.method public doAnimationFrame(J)Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v1, v0, v1

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->forceToEnd()V

    .line 12
    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    iget-wide v3, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 16
    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    cmp-long v1, v3, v5

    .line 20
    .line 21
    if-gez v1, :cond_1

    .line 22
    .line 23
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 24
    .line 25
    :cond_1
    iget-boolean v1, p0, Landroid/animation/Animator;->mPaused:Z

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 31
    .line 32
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->removeAnimationCallback()V

    .line 33
    .line 34
    .line 35
    return v3

    .line 36
    :cond_2
    iget-wide v7, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 37
    .line 38
    cmp-long v1, v7, v5

    .line 39
    .line 40
    if-lez v1, :cond_3

    .line 41
    .line 42
    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 43
    .line 44
    sub-long v6, p1, v7

    .line 45
    .line 46
    add-long/2addr v6, v4

    .line 47
    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 48
    .line 49
    const-wide/16 v4, -0x1

    .line 50
    .line 51
    iput-wide v4, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 52
    .line 53
    :cond_3
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 62
    .line 63
    iget-boolean v4, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 64
    .line 65
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$SeekState;->updateSeekDirection(Z)V

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 69
    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    long-to-float v1, p1

    .line 73
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    long-to-float v4, v4

    .line 80
    mul-float/2addr v4, v0

    .line 81
    sub-float/2addr v1, v4

    .line 82
    float-to-long v4, v1

    .line 83
    iput-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    long-to-float v1, p1

    .line 87
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 88
    .line 89
    invoke-virtual {v4}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 94
    .line 95
    add-long/2addr v4, v6

    .line 96
    long-to-float v4, v4

    .line 97
    mul-float/2addr v4, v0

    .line 98
    sub-float/2addr v1, v4

    .line 99
    float-to-long v4, v1

    .line 100
    iput-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 101
    .line 102
    :goto_0
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    .line 105
    .line 106
    .line 107
    :cond_5
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 108
    .line 109
    if-nez v1, :cond_6

    .line 110
    .line 111
    long-to-float v1, p1

    .line 112
    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 113
    .line 114
    long-to-float v4, v4

    .line 115
    iget-wide v5, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 116
    .line 117
    long-to-float v5, v5

    .line 118
    mul-float/2addr v5, v0

    .line 119
    add-float/2addr v5, v4

    .line 120
    cmpg-float v1, v1, v5

    .line 121
    .line 122
    if-gez v1, :cond_6

    .line 123
    .line 124
    return v3

    .line 125
    :cond_6
    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 126
    .line 127
    sub-long v4, p1, v4

    .line 128
    .line 129
    long-to-float v1, v4

    .line 130
    div-float/2addr v1, v0

    .line 131
    float-to-long v0, v1

    .line 132
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 133
    .line 134
    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    iget p2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 139
    .line 140
    invoke-direct {p0, p2, p1, v0, v1}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    .line 141
    .line 142
    .line 143
    iput p1, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 144
    .line 145
    move p1, v3

    .line 146
    :goto_1
    iget-object p2, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-ge p1, p2, :cond_8

    .line 153
    .line 154
    iget-object p2, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    check-cast p2, Landroid/animation/AnimatorSet$Node;

    .line 161
    .line 162
    iget-boolean v4, p2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 163
    .line 164
    if-nez v4, :cond_7

    .line 165
    .line 166
    invoke-direct {p0, v0, v1, p2}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J

    .line 167
    .line 168
    .line 169
    move-result-wide v4

    .line 170
    invoke-direct {p0, p2, v4, v5}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    .line 171
    .line 172
    .line 173
    :cond_7
    add-int/lit8 p1, p1, 0x1

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_8
    iget-object p1, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    sub-int/2addr p1, v2

    .line 183
    :goto_2
    if-ltz p1, :cond_a

    .line 184
    .line 185
    iget-object p2, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    check-cast p2, Landroid/animation/AnimatorSet$Node;

    .line 192
    .line 193
    iget-boolean p2, p2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 194
    .line 195
    if-eqz p2, :cond_9

    .line 196
    .line 197
    iget-object p2, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    :cond_9
    add-int/lit8 p1, p1, -0x1

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_a
    iget-boolean p1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 206
    .line 207
    if-eqz p1, :cond_d

    .line 208
    .line 209
    iget-object p1, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-ne p1, v2, :cond_b

    .line 216
    .line 217
    iget-object p1, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    iget-object p2, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 224
    .line 225
    if-ne p1, p2, :cond_b

    .line 226
    .line 227
    :goto_3
    move p1, v2

    .line 228
    goto :goto_4

    .line 229
    :cond_b
    iget-object p1, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    if-eqz p1, :cond_c

    .line 236
    .line 237
    iget p1, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 238
    .line 239
    const/4 p2, 0x3

    .line 240
    if-ge p1, p2, :cond_c

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_c
    move p1, v3

    .line 244
    goto :goto_4

    .line 245
    :cond_d
    iget-object p1, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-eqz p1, :cond_c

    .line 252
    .line 253
    iget p1, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 254
    .line 255
    iget-object p2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    sub-int/2addr p2, v2

    .line 262
    if-ne p1, p2, :cond_c

    .line 263
    .line 264
    goto :goto_3

    .line 265
    :goto_4
    if-eqz p1, :cond_e

    .line 266
    .line 267
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    .line 268
    .line 269
    .line 270
    return v2

    .line 271
    :cond_e
    return v3
.end method

.method public end()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_9

    .line 23
    .line 24
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    const/4 v2, 0x1

    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 31
    .line 32
    const/4 v3, -0x1

    .line 33
    if-ne v0, v3, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :cond_1
    iput v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 42
    .line 43
    :cond_2
    :goto_0
    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 44
    .line 45
    if-lez v0, :cond_8

    .line 46
    .line 47
    add-int/lit8 v0, v0, -0x1

    .line 48
    .line 49
    iput v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 50
    .line 51
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 58
    .line 59
    iget-object v3, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 60
    .line 61
    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 62
    .line 63
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Landroid/animation/AnimatorSet$Node;

    .line 70
    .line 71
    iget-boolean v4, v4, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 72
    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    iget v0, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 77
    .line 78
    if-ne v0, v1, :cond_4

    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/animation/Animator;->reverse()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    if-ne v0, v2, :cond_2

    .line 85
    .line 86
    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    :goto_1
    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 97
    .line 98
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    sub-int/2addr v3, v2

    .line 105
    if-ge v0, v3, :cond_8

    .line 106
    .line 107
    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 108
    .line 109
    add-int/2addr v0, v2

    .line 110
    iput v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 111
    .line 112
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 119
    .line 120
    iget-object v3, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 121
    .line 122
    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 123
    .line 124
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    .line 125
    .line 126
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    check-cast v4, Landroid/animation/AnimatorSet$Node;

    .line 131
    .line 132
    iget-boolean v4, v4, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 133
    .line 134
    if-eqz v4, :cond_6

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_6
    iget v0, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 138
    .line 139
    if-nez v0, :cond_7

    .line 140
    .line 141
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_7
    if-ne v0, v1, :cond_5

    .line 146
    .line 147
    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_5

    .line 152
    .line 153
    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_8
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 160
    .line 161
    .line 162
    :cond_9
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_a
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 167
    .line 168
    const-string v1, "Animators may only be run on Looper threads"

    .line 169
    .line 170
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v0
.end method

.method public getChangingConfigurations()I
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/animation/Animator;->getChangingConfigurations()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_0

    .line 13
    .line 14
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 21
    .line 22
    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/animation/Animator;->getChangingConfigurations()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    or-int/2addr v0, v3

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return v0
.end method

.method public getChildAnimations()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 22
    .line 23
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 24
    .line 25
    if-eq v3, v4, :cond_0

    .line 26
    .line 27
    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-object v0
.end method

.method public getCurrentPlayTime()J
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    :cond_0
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 17
    .line 18
    const-wide/16 v2, -0x1

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    return-wide v0

    .line 27
    :cond_1
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    cmpl-float v1, v0, v1

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    .line 38
    :cond_2
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    iget-wide v1, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 43
    .line 44
    iget-wide v3, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 45
    .line 46
    sub-long/2addr v1, v3

    .line 47
    long-to-float v1, v1

    .line 48
    div-float/2addr v1, v0

    .line 49
    float-to-long v0, v1

    .line 50
    return-wide v0

    .line 51
    :cond_3
    iget-wide v1, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 52
    .line 53
    iget-wide v3, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 54
    .line 55
    sub-long/2addr v1, v3

    .line 56
    iget-wide v3, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 57
    .line 58
    sub-long/2addr v1, v3

    .line 59
    long-to-float v1, v1

    .line 60
    div-float/2addr v1, v0

    .line 61
    float-to-long v0, v1

    .line 62
    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public getTotalDuration()J
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    .line 8
    .line 9
    return-wide v0
.end method

.method public isInitialized()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    move v2, v0

    .line 9
    :goto_0
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v2, v3, :cond_2

    .line 16
    .line 17
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 24
    .line 25
    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/animation/Animator;->isInitialized()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    move v1, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    :goto_1
    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    .line 39
    .line 40
    return v1
.end method

.method public isRunning()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return v0
.end method

.method public pause()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 8
    .line 9
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    .line 10
    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    iput-wide v0, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 24
    .line 25
    const-string v1, "Animators may only be run on Looper threads"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Landroid/animation/AnimatorSet$Builder;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public playSequentially(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_1

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public varargs playSequentially([Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    array-length v0, p1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_1

    .line 4
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public playTogether(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs playTogether([Landroid/animation/Animator;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pulseAnimationFrame(J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->doAnimationFrame(J)Z

    move-result p1

    return p1
.end method

.method public resume()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 8
    .line 9
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    .line 10
    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 19
    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    cmp-long v0, v0, v2

    .line 23
    .line 24
    if-ltz v0, :cond_0

    .line 25
    .line 26
    invoke-direct {p0, v2, v3}, Landroid/animation/AnimatorSet;->addAnimationCallback(J)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 31
    .line 32
    const-string v1, "Animators may only be run on Looper threads"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public reverse()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Landroid/animation/AnimatorSet;->start(ZZ)V

    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    cmp-long v0, v3, v1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 17
    .line 18
    const-string p2, "Error: Cannot seek in reverse in an infinite AnimatorSet"

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    cmp-long v0, v3, v1

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 37
    .line 38
    sub-long/2addr v0, v2

    .line 39
    cmp-long v0, p1, v0

    .line 40
    .line 41
    if-gtz v0, :cond_6

    .line 42
    .line 43
    :cond_2
    const-wide/16 v0, 0x0

    .line 44
    .line 45
    cmp-long v2, p1, v0

    .line 46
    .line 47
    if-ltz v2, :cond_6

    .line 48
    .line 49
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_5

    .line 57
    .line 58
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 59
    .line 60
    if-nez v2, :cond_4

    .line 61
    .line 62
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initChildren()V

    .line 74
    .line 75
    .line 76
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 77
    .line 78
    invoke-direct {p0, v2}, Landroid/animation/AnimatorSet;->skipToStartValue(Z)V

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 82
    .line 83
    iget-boolean v3, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 84
    .line 85
    invoke-virtual {v2, v0, v1, v3}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    .line 86
    .line 87
    .line 88
    :cond_3
    const-wide/16 v7, 0x0

    .line 89
    .line 90
    iget-boolean v9, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 91
    .line 92
    move-object v4, p0

    .line 93
    move-wide v5, p1

    .line 94
    invoke-virtual/range {v4 .. v9}, Landroid/animation/AnimatorSet;->animateBasedOnPlayTime(JJZ)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 98
    .line 99
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 100
    .line 101
    invoke-virtual {v0, p1, p2, v1}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 106
    .line 107
    const-string p2, "Error: Something went wrong. mReversing should not be set when AnimatorSet is not started."

    .line 108
    .line 109
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :cond_5
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 114
    .line 115
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 116
    .line 117
    invoke-virtual {v0, p1, p2, v1}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    .line 118
    .line 119
    .line 120
    :goto_1
    return-void

    .line 121
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 122
    .line 123
    const-string p2, "Error: Play time should always be in between0 and duration."

    .line 124
    .line 125
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Landroid/animation/AnimatorSet;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 3
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mDuration:J

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "duration must be a value of zero or greater"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setStartDelay(J)V
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    const-string p1, "AnimatorSet"

    .line 8
    .line 9
    const-string p2, "Start delay should always be non-negative"

    .line 10
    .line 11
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-wide p1, v0

    .line 15
    :cond_0
    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 16
    .line 17
    sub-long v2, p1, v2

    .line 18
    .line 19
    cmp-long v0, v2, v0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 25
    .line 26
    iget-boolean p1, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 27
    .line 28
    if-nez p1, :cond_6

    .line 29
    .line 30
    iget-object p1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const/4 p2, 0x0

    .line 37
    :goto_0
    const-wide/16 v0, -0x1

    .line 38
    .line 39
    if-ge p2, p1, :cond_5

    .line 40
    .line 41
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Landroid/animation/AnimatorSet$Node;

    .line 48
    .line 49
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 50
    .line 51
    if-ne v4, v5, :cond_2

    .line 52
    .line 53
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 54
    .line 55
    iput-wide v0, v4, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_2
    iget-wide v5, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 59
    .line 60
    cmp-long v7, v5, v0

    .line 61
    .line 62
    if-nez v7, :cond_3

    .line 63
    .line 64
    move-wide v5, v0

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    add-long/2addr v5, v2

    .line 67
    :goto_1
    iput-wide v5, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 68
    .line 69
    iget-wide v5, v4, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 70
    .line 71
    cmp-long v7, v5, v0

    .line 72
    .line 73
    if-nez v7, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    add-long v0, v5, v2

    .line 77
    .line 78
    :goto_2
    iput-wide v0, v4, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 79
    .line 80
    :goto_3
    add-int/lit8 p2, p2, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    iget-wide p1, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    .line 84
    .line 85
    cmp-long v0, p1, v0

    .line 86
    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    add-long/2addr p1, v2

    .line 90
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    .line 91
    .line 92
    :cond_6
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 17
    .line 18
    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 19
    .line 20
    instance-of v3, v2, Landroid/animation/AnimatorSet;

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    check-cast v2, Landroid/animation/AnimatorSet;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    instance-of v3, v2, Landroid/animation/ObjectAnimator;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    check-cast v2, Landroid/animation/ObjectAnimator;

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method

.method public setupEndValues()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 17
    .line 18
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 19
    .line 20
    if-eq v2, v3, :cond_0

    .line 21
    .line 22
    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/animation/Animator;->setupEndValues()V

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public setupStartValues()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 17
    .line 18
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 19
    .line 20
    if-eq v2, v3, :cond_0

    .line 21
    .line 22
    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/animation/Animator;->setupStartValues()V

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public shouldPlayTogether()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 8
    .line 9
    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    sub-int/2addr v2, v1

    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :cond_1
    :goto_0
    return v1
.end method

.method public skipToEndValue(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x1

    .line 19
    sub-int/2addr p1, v0

    .line 20
    :goto_0
    if-ltz p1, :cond_3

    .line 21
    .line 22
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 29
    .line 30
    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 31
    .line 32
    if-ne v1, v0, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 41
    .line 42
    iget-object v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 43
    .line 44
    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/animation/Animator;->skipToEndValue(Z)V

    .line 47
    .line 48
    .line 49
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    move v0, p1

    .line 54
    :goto_1
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-ge v0, v1, :cond_3

    .line 61
    .line 62
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 69
    .line 70
    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 71
    .line 72
    const/4 v2, 0x2

    .line 73
    if-ne v1, v2, :cond_2

    .line 74
    .line 75
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 82
    .line 83
    iget-object v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 84
    .line 85
    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 86
    .line 87
    invoke-virtual {v1, p1}, Landroid/animation/Animator;->skipToEndValue(Z)V

    .line 88
    .line 89
    .line 90
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    return-void

    .line 94
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 95
    .line 96
    const-string v0, "Children must be initialized."

    .line 97
    .line 98
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->start(ZZ)V

    return-void
.end method

.method public startWithoutPulsing(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/AnimatorSet;->start(ZZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AnimatorSet@"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string/jumbo v1, "{"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-ge v2, v1, :cond_0

    .line 37
    .line 38
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 45
    .line 46
    const-string v4, "\n    "

    .line 47
    .line 48
    invoke-static {v0, v4}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const-string v1, "\n}"

    .line 69
    .line 70
    invoke-static {v0, v1}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method
