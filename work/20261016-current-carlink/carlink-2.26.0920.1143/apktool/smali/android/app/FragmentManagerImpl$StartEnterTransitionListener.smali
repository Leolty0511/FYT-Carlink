.class Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Fragment$OnStartEnterTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartEnterTransitionListener"
.end annotation


# instance fields
.field private final mIsBack:Z

.field private mNumPostponed:I

.field private final mRecord:Landroid/app/BackStackRecord;


# direct methods
.method public constructor <init>(Landroid/app/BackStackRecord;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    .line 5
    .line 6
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic access$000(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    return p0
.end method

.method public static synthetic access$100(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;
    .locals 0

    iget-object p0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    return-object p0
.end method


# virtual methods
.method public cancelTransaction()V
    .locals 4

    iget-object v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-object v1, v0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3, v3}, Landroid/app/FragmentManagerImpl;->access$300(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method public completeTransaction()V
    .locals 7

    .line 1
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    .line 11
    .line 12
    iget-object v3, v3, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 13
    .line 14
    iget-object v4, v3, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    :goto_1
    if-ge v1, v4, :cond_2

    .line 21
    .line 22
    iget-object v5, v3, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Landroid/app/Fragment;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    invoke-virtual {v5, v6}, Landroid/app/Fragment;->setOnStartEnterTransitionListener(Landroid/app/Fragment$OnStartEnterTransitionListener;)V

    .line 32
    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v5}, Landroid/app/Fragment;->isPostponed()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    invoke-virtual {v5}, Landroid/app/Fragment;->startPostponedEnterTransition()V

    .line 43
    .line 44
    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object v1, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    .line 49
    .line 50
    iget-object v3, v1, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 51
    .line 52
    iget-boolean v4, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    .line 53
    .line 54
    xor-int/2addr v0, v2

    .line 55
    invoke-static {v3, v1, v4, v0, v2}, Landroid/app/FragmentManagerImpl;->access$300(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;ZZZ)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public isReady()Z
    .locals 1

    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStartEnterTransition()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    .line 11
    .line 12
    iget-object v0, v0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/app/FragmentManagerImpl;->access$200(Landroid/app/FragmentManagerImpl;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public startListening()V
    .locals 1

    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    return-void
.end method
