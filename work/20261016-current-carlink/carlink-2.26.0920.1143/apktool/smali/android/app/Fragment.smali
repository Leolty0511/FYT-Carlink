.class public Landroid/app/Fragment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Fragment$AnimationInfo;,
        Landroid/app/Fragment$OnStartEnterTransitionListener;,
        Landroid/app/Fragment$InstantiationException;,
        Landroid/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final INVALID_STATE:I = -0x1

.field static final RESUMED:I = 0x5

.field static final STARTED:I = 0x4

.field static final STOPPED:I = 0x3

.field private static final USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final sClassMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mCheckedForLoaderManager:Z

.field mChildFragmentManager:Landroid/app/FragmentManagerImpl;

.field mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Landroid/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Landroid/app/FragmentHostCallback;

.field mInLayout:Z

.field mIndex:I

.field mIsCreated:Z

.field mIsNewlyAdded:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLoaderManager:Landroid/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mMenuVisible:Z

.field mParentFragment:Landroid/app/Fragment;

.field mPerformedCreateView:Z

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroid/app/Fragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/Fragment;->sClassMap:Landroid/util/ArrayMap;

    .line 7
    .line 8
    new-instance v0, Landroid/transition/TransitionSet;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroid/app/Fragment;->mIndex:I

    .line 9
    .line 10
    iput v0, p0, Landroid/app/Fragment;->mTargetIndex:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Landroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;->callStartTransitionListener()V

    return-void
.end method

.method public static synthetic access$800()Landroid/transition/Transition;
    .locals 1

    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    return-object v0
.end method

.method private callStartTransitionListener()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    iput-boolean v2, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 9
    .line 10
    iget-object v2, v0, Landroid/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/app/Fragment$OnStartEnterTransitionListener;

    .line 11
    .line 12
    iput-object v1, v0, Landroid/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/app/Fragment$OnStartEnterTransitionListener;

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    :goto_0
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v1}, Landroid/app/Fragment$OnStartEnterTransitionListener;->onStartEnterTransition()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method private ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/app/Fragment$AnimationInfo;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/app/Fragment$AnimationInfo;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 13
    .line 14
    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;
    .locals 5

    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    const-string v2, "Trying to instantiate a class "

    .line 2
    :try_start_0
    sget-object v3, Landroid/app/Fragment;->sClassMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    if-nez v4, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 4
    const-class p0, Landroid/app/Fragment;

    invoke-virtual {p0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {v3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Landroid/app/Fragment$InstantiationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " that is not a Fragment"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/ClassCastException;

    invoke-direct {v2}, Ljava/lang/ClassCastException;-><init>()V

    invoke-direct {p0, p2, v2}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    new-array v2, p0, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v4, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Fragment;

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 9
    invoke-virtual {p0, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    .line 10
    new-instance p2, Landroid/app/Fragment$InstantiationException;

    const-string v0, ": calling Fragment constructor caused an exception"

    .line 11
    invoke-static {v1, p1, v0}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p2, p1, p0}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p0

    .line 13
    new-instance p2, Landroid/app/Fragment$InstantiationException;

    const-string v0, ": could not find Fragment constructor"

    .line 14
    invoke-static {v1, p1, v0}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {p2, p1, p0}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p0

    .line 16
    new-instance p2, Landroid/app/Fragment$InstantiationException;

    .line 17
    invoke-static {v1, p1, v0}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-direct {p2, p1, p0}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p0

    .line 19
    new-instance p2, Landroid/app/Fragment$InstantiationException;

    .line 20
    invoke-static {v1, p1, v0}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {p2, p1, p0}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_4
    move-exception p0

    .line 22
    new-instance p2, Landroid/app/Fragment$InstantiationException;

    .line 23
    invoke-static {v1, p1, v0}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-direct {p2, p1, p0}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private static loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;
    .locals 0

    .line 1
    if-eq p2, p3, :cond_0

    .line 2
    .line 3
    return-object p2

    .line 4
    :cond_0
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/high16 p2, 0x10f0000

    .line 12
    .line 13
    if-eq p1, p2, :cond_1

    .line 14
    .line 15
    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    instance-of p0, p3, Landroid/transition/TransitionSet;

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    move-object p0, p3

    .line 28
    check-cast p0, Landroid/transition/TransitionSet;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    const/4 p3, 0x0

    .line 37
    :cond_1
    return-object p3
.end method

.method private shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "mFragmentId=#"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Landroid/app/Fragment;->mFragmentId:I

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, " mContainerId=#"

    .line 20
    .line 21
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Landroid/app/Fragment;->mContainerId:I

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, " mTag="

    .line 34
    .line 35
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v0, "mState="

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget v0, p0, Landroid/app/Fragment;->mState:I

    .line 53
    .line 54
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 55
    .line 56
    .line 57
    const-string v0, " mIndex="

    .line 58
    .line 59
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    .line 63
    .line 64
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 65
    .line 66
    .line 67
    const-string v0, " mWho="

    .line 68
    .line 69
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v0, " mBackStackNesting="

    .line 78
    .line 79
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget v0, p0, Landroid/app/Fragment;->mBackStackNesting:I

    .line 83
    .line 84
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string/jumbo v0, "mAdded="

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-boolean v0, p0, Landroid/app/Fragment;->mAdded:Z

    .line 97
    .line 98
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 99
    .line 100
    .line 101
    const-string v0, " mRemoving="

    .line 102
    .line 103
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-boolean v0, p0, Landroid/app/Fragment;->mRemoving:Z

    .line 107
    .line 108
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 109
    .line 110
    .line 111
    const-string v0, " mFromLayout="

    .line 112
    .line 113
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-boolean v0, p0, Landroid/app/Fragment;->mFromLayout:Z

    .line 117
    .line 118
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 119
    .line 120
    .line 121
    const-string v0, " mInLayout="

    .line 122
    .line 123
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-boolean v0, p0, Landroid/app/Fragment;->mInLayout:Z

    .line 127
    .line 128
    const-string/jumbo v1, "mHidden="

    .line 129
    .line 130
    .line 131
    invoke-static {p3, v0, p1, v1}, Landroid/accessibilityservice/c;->y(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    .line 135
    .line 136
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 137
    .line 138
    .line 139
    const-string v0, " mDetached="

    .line 140
    .line 141
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-boolean v0, p0, Landroid/app/Fragment;->mDetached:Z

    .line 145
    .line 146
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 147
    .line 148
    .line 149
    const-string v0, " mMenuVisible="

    .line 150
    .line 151
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    .line 155
    .line 156
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 157
    .line 158
    .line 159
    const-string v0, " mHasMenu="

    .line 160
    .line 161
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    .line 165
    .line 166
    const-string/jumbo v1, "mRetainInstance="

    .line 167
    .line 168
    .line 169
    invoke-static {p3, v0, p1, v1}, Landroid/accessibilityservice/c;->y(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-boolean v0, p0, Landroid/app/Fragment;->mRetainInstance:Z

    .line 173
    .line 174
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 175
    .line 176
    .line 177
    const-string v0, " mRetaining="

    .line 178
    .line 179
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-boolean v0, p0, Landroid/app/Fragment;->mRetaining:Z

    .line 183
    .line 184
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 185
    .line 186
    .line 187
    const-string v0, " mUserVisibleHint="

    .line 188
    .line 189
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 193
    .line 194
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 198
    .line 199
    if-eqz v0, :cond_0

    .line 200
    .line 201
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string/jumbo v0, "mFragmentManager="

    .line 205
    .line 206
    .line 207
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 211
    .line 212
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 216
    .line 217
    if-eqz v0, :cond_1

    .line 218
    .line 219
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const-string/jumbo v0, "mHost="

    .line 223
    .line 224
    .line 225
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 229
    .line 230
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    .line 234
    .line 235
    if-eqz v0, :cond_2

    .line 236
    .line 237
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const-string/jumbo v0, "mParentFragment="

    .line 241
    .line 242
    .line 243
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    .line 247
    .line 248
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    :cond_2
    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 252
    .line 253
    if-eqz v0, :cond_3

    .line 254
    .line 255
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const-string/jumbo v0, "mArguments="

    .line 259
    .line 260
    .line 261
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 265
    .line 266
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    :cond_3
    iget-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 270
    .line 271
    if-eqz v0, :cond_4

    .line 272
    .line 273
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const-string/jumbo v0, "mSavedFragmentState="

    .line 277
    .line 278
    .line 279
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 283
    .line 284
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    :cond_4
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 288
    .line 289
    if-eqz v0, :cond_5

    .line 290
    .line 291
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    const-string/jumbo v0, "mSavedViewState="

    .line 295
    .line 296
    .line 297
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 301
    .line 302
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    :cond_5
    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 306
    .line 307
    if-eqz v0, :cond_6

    .line 308
    .line 309
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    const-string/jumbo v0, "mTarget="

    .line 313
    .line 314
    .line 315
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 319
    .line 320
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    const-string v0, " mTargetRequestCode="

    .line 324
    .line 325
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    iget v0, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    .line 329
    .line 330
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 331
    .line 332
    .line 333
    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getNextAnim()I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_7

    .line 338
    .line 339
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    const-string/jumbo v0, "mNextAnim="

    .line 343
    .line 344
    .line 345
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0}, Landroid/app/Fragment;->getNextAnim()I

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 353
    .line 354
    .line 355
    :cond_7
    iget-object v0, p0, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 356
    .line 357
    if-eqz v0, :cond_8

    .line 358
    .line 359
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    const-string/jumbo v0, "mContainer="

    .line 363
    .line 364
    .line 365
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    iget-object v0, p0, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 369
    .line 370
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    :cond_8
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 374
    .line 375
    if-eqz v0, :cond_9

    .line 376
    .line 377
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    const-string/jumbo v0, "mView="

    .line 381
    .line 382
    .line 383
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 387
    .line 388
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    :cond_9
    invoke-virtual {p0}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    if-eqz v0, :cond_a

    .line 396
    .line 397
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    const-string/jumbo v0, "mAnimatingAway="

    .line 401
    .line 402
    .line 403
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p0}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    const-string/jumbo v0, "mStateAfterAnimating="

    .line 417
    .line 418
    .line 419
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p0}, Landroid/app/Fragment;->getStateAfterAnimating()I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 427
    .line 428
    .line 429
    :cond_a
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 430
    .line 431
    const-string v1, "  "

    .line 432
    .line 433
    if-eqz v0, :cond_b

    .line 434
    .line 435
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    const-string v0, "Loader Manager:"

    .line 439
    .line 440
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 444
    .line 445
    invoke-static {p1, v1}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    :cond_b
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 453
    .line 454
    if-eqz v0, :cond_c

    .line 455
    .line 456
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    const-string v2, "Child "

    .line 462
    .line 463
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    iget-object v2, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 467
    .line 468
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    const-string v2, ":"

    .line 472
    .line 473
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 484
    .line 485
    invoke-static {p1, v1}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object p1

    .line 489
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    :cond_c
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    return-object p1
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->access$000(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->access$000(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 24
    :goto_1
    return v0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->access$100(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->access$100(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 24
    :goto_1
    return v0
.end method

.method public getAnimatingAway()Landroid/animation/Animator;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v0, v0, Landroid/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/animation/Animator;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getChildFragmentManager()Landroid/app/FragmentManager;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Fragment;->instantiateChildFragmentManager()V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Landroid/app/Fragment;->mState:I

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchResume()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x4

    .line 20
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStart()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x2

    .line 29
    if-lt v0, v1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v1, 0x1

    .line 38
    if-lt v0, v1, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 46
    .line 47
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->access$200(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getEnterTransitionCallback()Landroid/app/SharedElementCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    .line 9
    .line 10
    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->access$400(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getExitTransitionCallback()Landroid/app/SharedElementCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, v0, Landroid/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    .line 9
    .line 10
    return-object v0
.end method

.method public final getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onGetHost()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Landroid/app/Fragment;->mFragmentId:I

    return v0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_0
    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 12
    .line 13
    iget-object v2, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    .line 14
    .line 15
    iget-boolean v3, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 16
    .line 17
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "Fragment "

    .line 27
    .line 28
    const-string v2, " not attached to Activity"

    .line 29
    .line 30
    invoke-static {v1, p0, v2}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public getNextAnim()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, v0, Landroid/app/Fragment$AnimationInfo;->mNextAnim:I

    .line 8
    .line 9
    return v0
.end method

.method getNextTransition()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, v0, Landroid/app/Fragment$AnimationInfo;->mNextTransition:I

    .line 8
    .line 9
    return v0
.end method

.method public getNextTransitionStyle()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, v0, Landroid/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    .line 8
    .line 9
    return v0
.end method

.method public final getParentFragment()Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->access$500(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Fragment;->getExitTransition()Landroid/transition/Transition;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->access$500(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v1, "Fragment "

    .line 17
    .line 18
    const-string v2, " not attached to Activity"

    .line 19
    .line 20
    invoke-static {v1, p0, v2}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public final getRetainInstance()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Fragment;->mRetainInstance:Z

    return v0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->access$300(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransition()Landroid/transition/Transition;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->access$300(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    return-object v0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->access$600(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->access$700(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->access$700(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    return-object v0
.end method

.method public getStateAfterAnimating()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, v0, Landroid/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    .line 8
    .line 9
    return v0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 1

    iget v0, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getUserVisibleHint()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initState()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/app/Fragment;->mIndex:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Landroid/app/Fragment;->mAdded:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Landroid/app/Fragment;->mRemoving:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Landroid/app/Fragment;->mFromLayout:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Landroid/app/Fragment;->mInLayout:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Landroid/app/Fragment;->mRestored:Z

    .line 17
    .line 18
    iput v1, p0, Landroid/app/Fragment;->mBackStackNesting:I

    .line 19
    .line 20
    iput-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 21
    .line 22
    iput-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 23
    .line 24
    iput-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 25
    .line 26
    iput v1, p0, Landroid/app/Fragment;->mFragmentId:I

    .line 27
    .line 28
    iput v1, p0, Landroid/app/Fragment;->mContainerId:I

    .line 29
    .line 30
    iput-object v0, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 31
    .line 32
    iput-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    .line 33
    .line 34
    iput-boolean v1, p0, Landroid/app/Fragment;->mDetached:Z

    .line 35
    .line 36
    iput-boolean v1, p0, Landroid/app/Fragment;->mRetaining:Z

    .line 37
    .line 38
    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 39
    .line 40
    iput-boolean v1, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 41
    .line 42
    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 43
    .line 44
    return-void
.end method

.method public instantiateChildFragmentManager()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/FragmentManagerImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/FragmentManagerImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 7
    .line 8
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 9
    .line 10
    new-instance v2, Landroid/app/Fragment$1;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Landroid/app/Fragment$1;-><init>(Landroid/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/FragmentManagerImpl;->attachController(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final isAdded()Z
    .locals 1

    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDetached()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Fragment;->mDetached:Z

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    return v0
.end method

.method isHideReplaced()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget-boolean v0, v0, Landroid/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    .line 8
    .line 9
    return v0
.end method

.method final isInBackStack()Z
    .locals 1

    iget v0, p0, Landroid/app/Fragment;->mBackStackNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInLayout()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Fragment;->mInLayout:Z

    return v0
.end method

.method isPostponed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget-boolean v0, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 8
    .line 9
    return v0
.end method

.method public final isRemoving()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Fragment;->mRemoving:Z

    return v0
.end method

.method public final isResumed()Z
    .locals 2

    iget v0, p0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isStateSaved()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->isStateSaved()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
.end method

.method noteStateNotSaved()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2
    iget-object p1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    const/16 v2, 0x18

    .line 19
    .line 20
    if-lt v1, v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Landroid/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;Z)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/app/FragmentManagerImpl;->isStateAtLeast(I)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iput-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 9
    .line 10
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 11
    .line 12
    iget-object v1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    .line 13
    .line 14
    iget-boolean v2, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onUseFragmentManagerInflaterFactory()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object p1

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string/jumbo v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Landroid/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 6

    .line 2
    invoke-virtual {p0, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 4
    sget-object v1, Lcom/android/internal/R$styleable;->Fragment:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v3}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setEnterTransition(Landroid/transition/Transition;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Fragment;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v2

    sget-object v3, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/4 v5, 0x6

    invoke-static {p1, v1, v2, v3, v5}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setReturnTransition(Landroid/transition/Transition;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Fragment;->getExitTransition()Landroid/transition/Transition;

    move-result-object v2

    const/4 v5, 0x3

    invoke-static {p1, v1, v2, v4, v5}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setExitTransition(Landroid/transition/Transition;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Fragment;->getReenterTransition()Landroid/transition/Transition;

    move-result-object v2

    const/16 v5, 0x8

    invoke-static {p1, v1, v2, v3, v5}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setReenterTransition(Landroid/transition/Transition;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v2

    const/4 v5, 0x5

    .line 10
    invoke-static {p1, v1, v2, v4, v5}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v2

    const/4 v5, 0x7

    .line 12
    invoke-static {p1, v1, v2, v3, v5}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setSharedElementReturnTransition(Landroid/transition/Transition;)V

    .line 13
    iget-object p1, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move p1, v2

    move v3, p1

    goto :goto_1

    .line 14
    :cond_0
    invoke-static {p1}, Landroid/app/Fragment$AnimationInfo;->access$000(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v2

    .line 15
    :goto_0
    iget-object v3, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v3}, Landroid/app/Fragment$AnimationInfo;->access$100(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-nez p1, :cond_3

    const/16 p1, 0x9

    .line 16
    invoke-virtual {v1, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setAllowEnterTransitionOverlap(Z)V

    :cond_3
    if-nez v3, :cond_4

    const/16 p1, 0xa

    .line 17
    invoke-virtual {v1, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setAllowReturnTransitionOverlap(Z)V

    .line 18
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    iget-object p1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_6

    .line 20
    iput-boolean v2, p0, Landroid/app/Fragment;->mCalled:Z

    .line 21
    invoke-virtual {p0, v4, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_6
    return-void
.end method

.method public onInflate(Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroid/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iput-boolean v0, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 9
    .line 10
    iget-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iput-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 15
    .line 16
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 17
    .line 18
    iget-object v2, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStart()V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/app/Fragment;->mCalled:Z

    return-void
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    iget-boolean p1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void

    .line 29
    :cond_2
    new-instance p1, Landroid/util/SuperNotCalledException;

    .line 30
    .line 31
    const-string v0, "Fragment "

    .line 32
    .line 33
    const-string v1, " did not call through to super.onActivityCreated()"

    .line 34
    .line 35
    invoke-static {v0, p0, v1}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p1, v0}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method performCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    iput-boolean v0, p0, Landroid/app/Fragment;->mIsCreated:Z

    .line 18
    .line 19
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v0, v1

    .line 37
    :goto_0
    const/16 v2, 0x18

    .line 38
    .line 39
    if-ge v0, v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, p1, v1}, Landroid/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;Z)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void

    .line 45
    :cond_3
    new-instance p1, Landroid/util/SuperNotCalledException;

    .line 46
    .line 47
    const-string v0, "Fragment "

    .line 48
    .line 49
    const-string v1, " did not call through to super.onCreate()"

    .line 50
    .line 51
    invoke-static {v0, p0, v1}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p1, v0}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    move v1, v0

    .line 19
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    or-int/2addr v1, p1

    .line 28
    :cond_1
    return v1
.end method

.method public performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroid/app/Fragment;->mPerformedCreateView:Z

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method performDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 10
    .line 11
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Landroid/app/Fragment;->mIsCreated:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 27
    .line 28
    const-string v1, "Fragment "

    .line 29
    .line 30
    const-string v2, " did not call through to super.onDestroy()"

    .line 31
    .line 32
    invoke-static {v1, p0, v2}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method performDestroyView()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroyView()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 15
    .line 16
    .line 17
    iget-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl;->doReportNextStart()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iput-boolean v0, p0, Landroid/app/Fragment;->mPerformedCreateView:Z

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 32
    .line 33
    const-string v1, "Fragment "

    .line 34
    .line 35
    const-string v2, " did not call through to super.onDestroyView()"

    .line 36
    .line 37
    invoke-static {v1, p0, v2}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method performDetach()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Fragment;->onDetach()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroid/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 9
    .line 10
    iget-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-boolean v2, p0, Landroid/app/Fragment;->mRetaining:Z

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v1, "Child FragmentManager of "

    .line 31
    .line 32
    const-string v2, " was not  destroyed and this fragment is not retaining instance"

    .line 33
    .line 34
    invoke-static {v1, p0, v2}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    return-void

    .line 43
    :cond_2
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 44
    .line 45
    const-string v1, "Fragment "

    .line 46
    .line 47
    const-string v2, " did not call through to super.onDetach()"

    .line 48
    .line 49
    invoke-static {v1, p0, v2}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroid/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 6
    .line 7
    return-object p1
.end method

.method performLowMemory()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->onLowMemory()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 2
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public performMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 5
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method performPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchPause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x4

    .line 9
    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Fragment;->onPause()V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 23
    .line 24
    const-string v1, "Fragment "

    .line 25
    .line 26
    const-string v2, " did not call through to super.onPause()"

    .line 27
    .line 28
    invoke-static {v1, p0, v2}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method performPictureInPictureModeChanged(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onPictureInPictureModeChanged(Z)V

    .line 2
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public performPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 5
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    move v1, v0

    .line 19
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    or-int/2addr v1, p1

    .line 28
    :cond_1
    return v1
.end method

.method performResume()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x5

    .line 14
    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Fragment;->onResume()V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchResume()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void

    .line 39
    :cond_2
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 40
    .line 41
    const-string v1, "Fragment "

    .line 42
    .line 43
    const-string v2, " did not call through to super.onResume()"

    .line 44
    .line 45
    invoke-static {v1, p0, v2}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v1, "android:fragments"

    .line 15
    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method performStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x4

    .line 14
    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Fragment;->onStart()V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStart()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doReportStart()V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void

    .line 41
    :cond_3
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 42
    .line 43
    const-string v1, "Fragment "

    .line 44
    .line 45
    const-string v2, " did not call through to super.onStart()"

    .line 46
    .line 47
    invoke-static {v1, p0, v2}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method

.method performStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x3

    .line 9
    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Fragment;->onStop()V

    .line 15
    .line 16
    .line 17
    iget-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    iget-boolean v1, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 22
    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    iput-boolean v0, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 26
    .line 27
    iget-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 33
    .line 34
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 35
    .line 36
    iget-object v2, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v2, v0, v0}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getRetainLoaders()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStop()V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_0
    return-void

    .line 68
    :cond_4
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 69
    .line 70
    const-string v1, "Fragment "

    .line 71
    .line 72
    const-string v2, " did not call through to super.onStop()"

    .line 73
    .line 74
    invoke-static {v1, p0, v2}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0
.end method

.method public performTrimMemory(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onTrimMemory(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchTrimMemory(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public postponeEnterTransition()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Landroid/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string p2, "Fragment "

    .line 12
    .line 13
    const-string v0, " not attached to Activity"

    .line 14
    .line 15
    invoke-static {p2, p0, v0}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public restoreChildFragmentState(Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const-string v0, "android:fragments"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Fragment;->instantiateChildFragmentManager()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    iget-object p2, p0, Landroid/app/Fragment;->mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object p2, v1

    .line 27
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Landroid/app/Fragment;->mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 31
    .line 32
    iget-object p1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    iget-boolean p1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance p1, Landroid/util/SuperNotCalledException;

    .line 25
    .line 26
    const-string v0, "Fragment "

    .line 27
    .line 28
    const-string v1, " did not call through to super.onViewStateRestored()"

    .line 29
    .line 30
    invoke-static {v0, p0, v1}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p1, v0}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->access$002(Landroid/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->access$102(Landroid/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

.method public setAnimatingAway(Landroid/animation/Animator;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/animation/Animator;

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    .line 2
    .line 3
    if-ltz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Fragment;->isStateSaved()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "Fragment already active"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 21
    .line 22
    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 1

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 9
    .line 10
    :cond_1
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object p1, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    .line 15
    .line 16
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/app/Fragment;->shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->access$202(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)Landroid/transition/Transition;

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 1

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 9
    .line 10
    :cond_1
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object p1, v0, Landroid/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    .line 15
    .line 16
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/app/Fragment;->shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->access$402(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)Landroid/transition/Transition;

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroid/app/Fragment;->mHasMenu:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/app/FragmentManagerImpl;->invalidateOptionsMenu()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method setHideReplaced(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-boolean p1, v0, Landroid/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    return-void
.end method

.method public final setIndex(ILandroid/app/Fragment;)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/app/Fragment;->mIndex:I

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object p2, p2, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p2, ":"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget p2, p0, Landroid/app/Fragment;->mIndex:I

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p2, "android:fragment:"

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget p2, p0, Landroid/app/Fragment;->mIndex:I

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public setInitialSavedState(Landroid/app/Fragment$SavedState;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    .line 2
    .line 3
    if-gez v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-object p1, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "Fragment already active"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    .line 6
    .line 7
    iget-boolean p1, p0, Landroid/app/Fragment;->mHasMenu:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/app/FragmentManagerImpl;->invalidateOptionsMenu()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public setNextAnim(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput p1, v0, Landroid/app/Fragment$AnimationInfo;->mNextAnim:I

    .line 13
    .line 14
    return-void
.end method

.method public setNextTransition(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 14
    .line 15
    iput p1, v0, Landroid/app/Fragment$AnimationInfo;->mNextTransition:I

    .line 16
    .line 17
    iput p2, v0, Landroid/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    .line 18
    .line 19
    return-void
.end method

.method public setOnStartEnterTransitionListener(Landroid/app/Fragment$OnStartEnterTransitionListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 5
    .line 6
    iget-object v1, v0, Landroid/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/app/Fragment$OnStartEnterTransitionListener;

    .line 7
    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-eqz p1, :cond_2

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_2
    :goto_0
    iget-boolean v1, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iput-object p1, v0, Landroid/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/app/Fragment$OnStartEnterTransitionListener;

    .line 41
    .line 42
    :cond_3
    if-eqz p1, :cond_4

    .line 43
    .line 44
    invoke-interface {p1}, Landroid/app/Fragment$OnStartEnterTransitionListener;->startListening()V

    .line 45
    .line 46
    .line 47
    :cond_4
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Landroid/app/Fragment;->shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->access$502(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)Landroid/transition/Transition;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/Fragment;->mRetainInstance:Z

    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Landroid/app/Fragment;->shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->access$302(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)Landroid/transition/Transition;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/app/Fragment;->shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->access$602(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)Landroid/transition/Transition;

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Landroid/app/Fragment;->shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->access$702(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)Landroid/transition/Transition;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setStateAfterAnimating(I)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Landroid/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    return-void
.end method

.method public setTargetFragment(Landroid/app/Fragment;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_2

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v0, "Fragment "

    .line 23
    .line 24
    const-string v1, " must share the same FragmentManager to be set as a target fragment"

    .line 25
    .line 26
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p2

    .line 34
    :cond_2
    :goto_1
    move-object v0, p1

    .line 35
    :goto_2
    if-eqz v0, :cond_4

    .line 36
    .line 37
    if-eq v0, p0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, "Setting "

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, " as the target of "

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, " would create a target cycle"

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p2

    .line 77
    :cond_4
    iput-object p1, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 78
    .line 79
    iput p2, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    .line 80
    .line 81
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 26
    .line 27
    const/16 v3, 0x17

    .line 28
    .line 29
    if-gt v0, v3, :cond_1

    .line 30
    .line 31
    move v0, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v0, v2

    .line 34
    :goto_0
    const/4 v3, 0x4

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget v0, p0, Landroid/app/Fragment;->mState:I

    .line 44
    .line 45
    if-ge v0, v3, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    :goto_1
    move v0, v1

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v0, v2

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    iget v0, p0, Landroid/app/Fragment;->mState:I

    .line 62
    .line 63
    if-ge v0, v3, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :goto_2
    if-eqz v0, :cond_4

    .line 77
    .line 78
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    iput-boolean p1, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 84
    .line 85
    iget v0, p0, Landroid/app/Fragment;->mState:I

    .line 86
    .line 87
    if-ge v0, v3, :cond_5

    .line 88
    .line 89
    if-nez p1, :cond_5

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    move v1, v2

    .line 93
    :goto_3
    iput-boolean v1, p0, Landroid/app/Fragment;->mDeferStart:Z

    .line 94
    .line 95
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {v0, p0, p1, v1, p2}, Landroid/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4
    invoke-virtual {v0, p0, p1, v1, p2}, Landroid/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string v0, " not attached to Activity"

    .line 6
    invoke-static {p2, p0, v0}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string p3, " not attached to Activity"

    .line 5
    invoke-static {p2, p0, p3}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p4

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentHostCallback;->onStartActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string p2, "Fragment "

    .line 17
    .line 18
    const-string p3, " not attached to Activity"

    .line 19
    .line 20
    invoke-static {p2, p0, p3}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 10

    .line 1
    move-object v9, p0

    .line 2
    iget-object v0, v9, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move v5, p4

    .line 11
    move v6, p5

    .line 12
    move/from16 v7, p6

    .line 13
    .line 14
    move-object/from16 v8, p7

    .line 15
    .line 16
    invoke-virtual/range {v0 .. v8}, Landroid/app/FragmentHostCallback;->onStartIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v1, "Fragment "

    .line 23
    .line 24
    const-string v2, " not attached to Activity"

    .line 25
    .line 26
    invoke-static {v1, p0, v2}, Landroid/accessibilityservice/c;->g(Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public startPostponedEnterTransition()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 15
    .line 16
    iget-object v1, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 29
    .line 30
    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Landroid/app/f;

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-direct {v1, p0, v2}, Landroid/app/f;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-direct {p0}, Landroid/app/Fragment;->callStartTransitionListener()V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    iput-boolean v1, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 56
    .line 57
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    .line 12
    .line 13
    if-ltz v1, :cond_0

    .line 14
    .line 15
    const-string v1, " #"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    :cond_0
    iget v1, p0, Landroid/app/Fragment;->mFragmentId:I

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const-string v1, " id=0x"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v1, p0, Landroid/app/Fragment;->mFragmentId:I

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v1, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const-string v1, " "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :cond_2
    const/16 v1, 0x7d

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method
