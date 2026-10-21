.class final Landroid/app/BackStackRecord;
.super Landroid/app/FragmentTransaction;
.source "SourceFile"

# interfaces
.implements Landroid/app/FragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BackStackRecord$Op;
    }
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_ATTACH:I = 0x7

.field public static final OP_DETACH:I = 0x6

.field public static final OP_HIDE:I = 0x4

.field public static final OP_NULL:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_REPLACE:I = 0x2

.field public static final OP_SHOW:I = 0x5

.field public static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field public mAddToBackStack:Z

.field public mAllowAddToBackStack:Z

.field public mBreadCrumbShortTitleRes:I

.field public mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field public mBreadCrumbTitleRes:I

.field public mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field public mCommitted:Z

.field public mEnterAnim:I

.field public mExitAnim:I

.field public mHead:Landroid/app/BackStackRecord$Op;

.field public mIndex:I

.field public final mManager:Landroid/app/FragmentManagerImpl;

.field public mName:Ljava/lang/String;

.field public mNumOp:I

.field public mPopEnterAnim:I

.field public mPopExitAnim:I

.field public mTail:Landroid/app/BackStackRecord$Op;

.field public mTransition:I

.field public mTransitionStyle:I


# direct methods
.method public constructor <init>(Landroid/app/FragmentManagerImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/FragmentTransaction;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    .line 4
    iput-object p1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    return-void
.end method

.method private doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iput-object v0, p2, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    const-string v0, " now "

    const-string v1, ": was "

    if-eqz p3, :cond_2

    .line 2
    iget-object v2, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change tag of fragment "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iput-object p3, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    :cond_2
    if-eqz p1, :cond_5

    .line 5
    iget p3, p2, Landroid/app/Fragment;->mFragmentId:I

    if-eqz p3, :cond_4

    if-ne p3, p1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change container ID of fragment "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/app/Fragment;->mFragmentId:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 7
    :cond_4
    :goto_1
    iput p1, p2, Landroid/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/app/Fragment;->mContainerId:I

    .line 8
    :cond_5
    new-instance p1, Landroid/app/BackStackRecord$Op;

    invoke-direct {p1}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 9
    iput p4, p1, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 10
    iput-object p2, p1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    return-void
.end method


# virtual methods
.method public add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public addOp(Landroid/app/BackStackRecord$Op;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    iput-object p1, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    iput-object v0, p1, Landroid/app/BackStackRecord$Op;->prev:Landroid/app/BackStackRecord$Op;

    .line 4
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    .line 5
    iput-object p1, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    .line 6
    :goto_0
    iget v0, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->enterAnim:I

    .line 7
    iget v0, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->exitAnim:I

    .line 8
    iget v0, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    .line 9
    iget v0, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    .line 10
    iget p1, p0, Landroid/app/BackStackRecord;->mNumOp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/app/BackStackRecord;->mNumOp:I

    return-void
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    .line 3
    iput-object p1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2

    .line 1
    new-instance v0, Landroid/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    const/4 v1, 0x7

    .line 2
    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 3
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    return-object p0
.end method

.method public bumpBackStackNesting(I)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    :goto_0
    if-eqz v0, :cond_5

    .line 4
    iget-object v2, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    const-string v3, " to "

    const-string v4, "Bump nesting of "

    if-eqz v2, :cond_2

    .line 5
    iget v5, v2, Landroid/app/Fragment;->mBackStackNesting:I

    add-int/2addr v5, p1

    iput v5, v2, Landroid/app/Fragment;->mBackStackNesting:I

    .line 6
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v5, v5, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_2
    iget-object v2, v0, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    .line 9
    iget-object v5, v0, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    .line 10
    iget v6, v5, Landroid/app/Fragment;->mBackStackNesting:I

    add-int/2addr v6, p1

    iput v6, v5, Landroid/app/Fragment;->mBackStackNesting:I

    .line 11
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 12
    :cond_4
    iget-object v0, v0, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    goto :goto_0

    :cond_5
    return-void
.end method

.method public commit()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method public commitInternal(Z)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    if-nez v0, :cond_2

    .line 2
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Commit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/util/LogWriter;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 5
    new-instance v1, Lu/e;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v1, v0, v2, v3}, Lu/e;-><init>(Ljava/io/Writer;ZI)V

    const-string v0, "  "

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v0, v2, v1, v2}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    .line 9
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/app/BackStackRecord;)I

    move-result v0

    iput v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    .line 12
    :goto_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p0, p1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 13
    iget p1, p0, Landroid/app/BackStackRecord;->mIndex:I

    return p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "commit already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2

    .line 1
    new-instance v0, Landroid/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    const/4 v1, 0x6

    .line 2
    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 3
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    return-object p0
.end method

.method public disallowAddToBackStack()Landroid/app/FragmentTransaction;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p0, p1, p3, p2}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 8

    if-eqz p3, :cond_8

    .line 2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    .line 3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    .line 4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5
    iget v0, p0, Landroid/app/BackStackRecord;->mTransition:I

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    iget v0, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    .line 8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget v0, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    :cond_0
    iget v0, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    if-eqz v0, :cond_2

    .line 11
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    iget v0, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    .line 13
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    iget v0, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    :cond_2
    iget v0, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    if-eqz v0, :cond_4

    .line 16
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    iget v0, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    .line 18
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget v0, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    :cond_4
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 21
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 22
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    .line 23
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 25
    :cond_6
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 26
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    .line 28
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 30
    :cond_8
    iget-object v0, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    if-eqz v0, :cond_10

    .line 31
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eqz v1, :cond_10

    .line 34
    iget v4, v1, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_0
    const-string v4, "ATTACH"

    goto :goto_1

    :pswitch_1
    const-string v4, "DETACH"

    goto :goto_1

    :pswitch_2
    const-string v4, "SHOW"

    goto :goto_1

    :pswitch_3
    const-string v4, "HIDE"

    goto :goto_1

    :pswitch_4
    const-string v4, "REMOVE"

    goto :goto_1

    :pswitch_5
    const-string v4, "REPLACE"

    goto :goto_1

    :pswitch_6
    const-string v4, "ADD"

    goto :goto_1

    :pswitch_7
    const-string v4, "NULL"

    .line 36
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    .line 37
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " "

    .line 38
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    .line 39
    iget v4, v1, Landroid/app/BackStackRecord$Op;->enterAnim:I

    if-nez v4, :cond_9

    iget v4, v1, Landroid/app/BackStackRecord$Op;->exitAnim:I

    if-eqz v4, :cond_a

    .line 40
    :cond_9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "enterAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    iget v4, v1, Landroid/app/BackStackRecord$Op;->enterAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " exitAnim=#"

    .line 42
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    iget v4, v1, Landroid/app/BackStackRecord$Op;->exitAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    :cond_a
    iget v4, v1, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    if-nez v4, :cond_b

    iget v4, v1, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    if-eqz v4, :cond_c

    .line 45
    :cond_b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "popEnterAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    iget v4, v1, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " popExitAnim=#"

    .line 47
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    iget v4, v1, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    :cond_c
    iget-object v4, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f

    move v4, v2

    .line 50
    :goto_2
    iget-object v6, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_f

    .line 51
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    iget-object v6, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    const-string v6, "Removed: "

    .line 53
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    if-nez v4, :cond_e

    const-string v6, "Removed:"

    .line 54
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    :cond_e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 56
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 57
    :goto_3
    iget-object v6, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 58
    :cond_f
    iget-object v1, v1, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/BackStackRecord;->mTransition:I

    return v0
.end method

.method public getTransitionStyle()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    return v0
.end method

.method public hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2

    .line 1
    new-instance v0, Landroid/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    const/4 v1, 0x4

    .line 2
    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 3
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    return-object p0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/app/BackStackRecord;->mNumOp:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public popFromBackStack(Z)V
    .locals 7

    .line 1
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popFromBackStack: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Landroid/util/LogWriter;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v2}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 4
    new-instance v2, Lu/e;

    const/16 v3, 0x400

    invoke-direct {v2, v0, v1, v3}, Lu/e;-><init>(Ljava/io/Writer;ZI)V

    const-string v0, "  "

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0, v0, v3, v2, v3}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    const/4 v0, -0x1

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 8
    iget-object v2, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    :goto_0
    if-eqz v2, :cond_3

    .line 9
    iget v3, v2, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v3, :pswitch_data_0

    .line 10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Landroid/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :pswitch_0
    iget-object v3, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 12
    iget v4, v2, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v4, v3, Landroid/app/Fragment;->mNextAnim:I

    .line 13
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v5

    iget v6, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v3, v5, v6}, Landroid/app/FragmentManagerImpl;->detachFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_2

    .line 14
    :pswitch_1
    iget-object v3, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 15
    iget v4, v2, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v4, v3, Landroid/app/Fragment;->mNextAnim:I

    .line 16
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v5

    iget v6, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v3, v5, v6}, Landroid/app/FragmentManagerImpl;->attachFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_2

    .line 17
    :pswitch_2
    iget-object v3, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 18
    iget v4, v2, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v4, v3, Landroid/app/Fragment;->mNextAnim:I

    .line 19
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v5

    iget v6, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v3, v5, v6}, Landroid/app/FragmentManagerImpl;->hideFragment(Landroid/app/Fragment;II)V

    goto :goto_2

    .line 20
    :pswitch_3
    iget-object v3, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 21
    iget v4, v2, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v4, v3, Landroid/app/Fragment;->mNextAnim:I

    .line 22
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v5

    iget v6, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v3, v5, v6}, Landroid/app/FragmentManagerImpl;->showFragment(Landroid/app/Fragment;II)V

    goto :goto_2

    .line 23
    :pswitch_4
    iget-object v3, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 24
    iget v4, v2, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v4, v3, Landroid/app/Fragment;->mNextAnim:I

    .line 25
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v4, v3, v1}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    goto :goto_2

    .line 26
    :pswitch_5
    iget-object v3, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v3, :cond_1

    .line 27
    iget v4, v2, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v4, v3, Landroid/app/Fragment;->mNextAnim:I

    .line 28
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v5

    iget v6, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v3, v5, v6}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    .line 29
    :cond_1
    iget-object v3, v2, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    move v3, v1

    .line 30
    :goto_1
    iget-object v4, v2, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 31
    iget-object v4, v2, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 32
    iget v5, v2, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v5, v4, Landroid/app/Fragment;->mNextAnim:I

    .line 33
    iget-object v5, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v5, v4, v1}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 34
    :pswitch_6
    iget-object v3, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 35
    iget v4, v2, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v4, v3, Landroid/app/Fragment;->mNextAnim:I

    .line 36
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v5

    iget v6, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v3, v5, v6}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    .line 37
    :cond_2
    :goto_2
    iget-object v2, v2, Landroid/app/BackStackRecord$Op;->prev:Landroid/app/BackStackRecord$Op;

    goto/16 :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 38
    iget-object p1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v1, p1, Landroid/app/FragmentManagerImpl;->mCurState:I

    iget v2, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v2}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v2

    iget v3, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 39
    :cond_4
    iget p1, p0, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz p1, :cond_5

    .line 40
    iget-object v1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1, p1}, Landroid/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 41
    iput v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2

    .line 1
    new-instance v0, Landroid/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    const/4 v1, 0x3

    .line 2
    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 3
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    return-object p0
.end method

.method public replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/BackStackRecord;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    return-object p1
.end method

.method public replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use non-zero containerViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public run()V
    .locals 10

    .line 1
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Run: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 6
    iget-object v2, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    :goto_1
    if-eqz v2, :cond_b

    .line 7
    iget v3, v2, Landroid/app/BackStackRecord$Op;->cmd:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown cmd: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :pswitch_0
    iget-object v3, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 10
    iget v4, v2, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v4, v3, Landroid/app/Fragment;->mNextAnim:I

    .line 11
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v6, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v3, v5, v6}, Landroid/app/FragmentManagerImpl;->attachFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_4

    .line 12
    :pswitch_1
    iget-object v3, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 13
    iget v4, v2, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v4, v3, Landroid/app/Fragment;->mNextAnim:I

    .line 14
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v6, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v3, v5, v6}, Landroid/app/FragmentManagerImpl;->detachFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_4

    .line 15
    :pswitch_2
    iget-object v3, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 16
    iget v4, v2, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v4, v3, Landroid/app/Fragment;->mNextAnim:I

    .line 17
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v6, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v3, v5, v6}, Landroid/app/FragmentManagerImpl;->showFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_4

    .line 18
    :pswitch_3
    iget-object v3, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 19
    iget v4, v2, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v4, v3, Landroid/app/Fragment;->mNextAnim:I

    .line 20
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v6, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v3, v5, v6}, Landroid/app/FragmentManagerImpl;->hideFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_4

    .line 21
    :pswitch_4
    iget-object v3, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 22
    iget v4, v2, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v4, v3, Landroid/app/Fragment;->mNextAnim:I

    .line 23
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v6, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v3, v5, v6}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_4

    .line 24
    :pswitch_5
    iget-object v3, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 25
    iget-object v5, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v5, v5, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    move v5, v4

    .line 26
    :goto_2
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v6, v6, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 27
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v6, v6, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Fragment;

    .line 28
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_REPLACE: adding="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " old="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v3, :cond_4

    .line 29
    iget v7, v6, Landroid/app/Fragment;->mContainerId:I

    iget v8, v3, Landroid/app/Fragment;->mContainerId:I

    if-ne v7, v8, :cond_8

    :cond_4
    if-ne v6, v3, :cond_5

    const/4 v3, 0x0

    .line 30
    iput-object v3, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    goto :goto_3

    .line 31
    :cond_5
    iget-object v7, v2, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-nez v7, :cond_6

    .line 32
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v2, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    .line 33
    :cond_6
    iget-object v7, v2, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget v7, v2, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v7, v6, Landroid/app/Fragment;->mNextAnim:I

    .line 35
    iget-boolean v7, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v7, :cond_7

    .line 36
    iget v7, v6, Landroid/app/Fragment;->mBackStackNesting:I

    add-int/2addr v7, v0

    iput v7, v6, Landroid/app/Fragment;->mBackStackNesting:I

    .line 37
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bump nesting of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_7
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v7, v6, v8, v9}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_9
    if-eqz v3, :cond_a

    .line 39
    iget v5, v2, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v5, v3, Landroid/app/Fragment;->mNextAnim:I

    .line 40
    iget-object v5, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v5, v3, v4}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    goto :goto_4

    .line 41
    :pswitch_6
    iget-object v3, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 42
    iget v5, v2, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v5, v3, Landroid/app/Fragment;->mNextAnim:I

    .line 43
    iget-object v5, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v5, v3, v4}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    .line 44
    :cond_a
    :goto_4
    iget-object v2, v2, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    goto/16 :goto_1

    .line 45
    :cond_b
    iget-object v1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v2, v1, Landroid/app/FragmentManagerImpl;->mCurState:I

    iget v3, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v4, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 46
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_c

    .line 47
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/app/FragmentManagerImpl;->addBackStackState(Landroid/app/BackStackRecord;)V

    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBreadCrumbShortTitle(I)Landroid/app/FragmentTransaction;
    .locals 0

    .line 1
    iput p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 4
    iput-object p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;
    .locals 0

    .line 1
    iput p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 4
    iput-object p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setCustomAnimations(II)Landroid/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/BackStackRecord;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object p1

    return-object p1
.end method

.method public setCustomAnimations(IIII)Landroid/app/FragmentTransaction;
    .locals 0

    .line 2
    iput p1, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    .line 3
    iput p2, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    .line 4
    iput p3, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    .line 5
    iput p4, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    return-object p0
.end method

.method public setTransition(I)Landroid/app/FragmentTransaction;
    .locals 0

    .line 1
    iput p1, p0, Landroid/app/BackStackRecord;->mTransition:I

    return-object p0
.end method

.method public setTransitionStyle(I)Landroid/app/FragmentTransaction;
    .locals 0

    .line 1
    iput p1, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    return-object p0
.end method

.method public show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2

    .line 1
    new-instance v0, Landroid/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    const/4 v1, 0x5

    .line 2
    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 3
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    iget-object v1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
