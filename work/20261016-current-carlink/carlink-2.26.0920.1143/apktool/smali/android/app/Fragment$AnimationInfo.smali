.class Landroid/app/Fragment$AnimationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationInfo"
.end annotation


# instance fields
.field private mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field mAnimatingAway:Landroid/animation/Animator;

.field private mEnterTransition:Landroid/transition/Transition;

.field mEnterTransitionCallback:Landroid/app/SharedElementCallback;

.field mEnterTransitionPostponed:Z

.field private mExitTransition:Landroid/transition/Transition;

.field mExitTransitionCallback:Landroid/app/SharedElementCallback;

.field mIsHideReplaced:Z

.field mNextAnim:I

.field mNextTransition:I

.field mNextTransitionStyle:I

.field private mReenterTransition:Landroid/transition/Transition;

.field private mReturnTransition:Landroid/transition/Transition;

.field private mSharedElementEnterTransition:Landroid/transition/Transition;

.field private mSharedElementReturnTransition:Landroid/transition/Transition;

.field mStartEnterTransitionListener:Landroid/app/Fragment$OnStartEnterTransitionListener;

.field mStateAfterAnimating:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mEnterTransition:Landroid/transition/Transition;

    .line 6
    .line 7
    invoke-static {}, Landroid/app/Fragment;->access$800()Landroid/transition/Transition;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Landroid/app/Fragment$AnimationInfo;->mReturnTransition:Landroid/transition/Transition;

    .line 12
    .line 13
    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mExitTransition:Landroid/transition/Transition;

    .line 14
    .line 15
    invoke-static {}, Landroid/app/Fragment;->access$800()Landroid/transition/Transition;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Landroid/app/Fragment$AnimationInfo;->mReenterTransition:Landroid/transition/Transition;

    .line 20
    .line 21
    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 22
    .line 23
    invoke-static {}, Landroid/app/Fragment;->access$800()Landroid/transition/Transition;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 28
    .line 29
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 30
    .line 31
    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    .line 32
    .line 33
    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic access$000(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic access$002(Landroid/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    return-object p1
.end method

.method public static synthetic access$100(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    return-object p1
.end method

.method public static synthetic access$200(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .locals 0

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mEnterTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method public static synthetic access$202(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mEnterTransition:Landroid/transition/Transition;

    return-object p1
.end method

.method public static synthetic access$300(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .locals 0

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mReturnTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method public static synthetic access$302(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mReturnTransition:Landroid/transition/Transition;

    return-object p1
.end method

.method public static synthetic access$400(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .locals 0

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mExitTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method public static synthetic access$402(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mExitTransition:Landroid/transition/Transition;

    return-object p1
.end method

.method public static synthetic access$500(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .locals 0

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mReenterTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method public static synthetic access$502(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mReenterTransition:Landroid/transition/Transition;

    return-object p1
.end method

.method public static synthetic access$600(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .locals 0

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method public static synthetic access$602(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object p1
.end method

.method public static synthetic access$700(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .locals 0

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method public static synthetic access$702(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Landroid/transition/Transition;

    return-object p1
.end method
