.class final Landroid/app/LoaderManagerImpl$LoaderInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Landroid/content/Loader$OnLoadCanceledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/content/Loader$OnLoadCanceledListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final mArgs:Landroid/os/Bundle;

.field public mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mData:Ljava/lang/Object;

.field public mDeliveredData:Z

.field public mDestroyed:Z

.field public mHaveData:Z

.field public final mId:I

.field public mListenerRegistered:Z

.field public mLoader:Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

.field public mReportNextStart:Z

.field public mRetaining:Z

.field public mRetainingStarted:Z

.field public mStarted:Z

.field public final synthetic this$0:Landroid/app/LoaderManagerImpl;


# direct methods
.method public constructor <init>(Landroid/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 3
    iput-object p3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    .line 4
    iput-object p4, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method


# virtual methods
.method public callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v1, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    iget-object v1, v0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    const-string v2, "onLoadFinished"

    .line 4
    iput-object v2, v0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    move-object v0, v1

    .line 5
    :cond_0
    :try_start_0
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  onLoadFinished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Landroid/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v1, p1, p2}, Landroid/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object p1, p1, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p1, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    iput-object v0, p1, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    :cond_2
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    iget-object p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object p2, p2, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_3

    .line 11
    iget-object p2, p2, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    iput-object v0, p2, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    :cond_3
    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Canceling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/content/Loader;->cancelLoad()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {p0, v0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->onLoadCanceled(Landroid/content/Loader;)V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 5

    .line 1
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Destroying: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    .line 3
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 5
    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 6
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Reseting: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, v0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    iget-object v1, v0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    const-string v3, "onLoaderReset"

    .line 9
    iput-object v3, v0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, v4

    .line 10
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-interface {v0, v3}, Landroid/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroid/content/Loader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, v0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    iput-object v1, v0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 13
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 14
    iget-object v2, v2, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    iput-object v1, v2, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    :cond_3
    throw v0

    .line 15
    :cond_4
    :goto_1
    iput-object v4, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 16
    iput-object v4, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 17
    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 18
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v0, :cond_6

    .line 19
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v1, :cond_5

    .line 20
    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 21
    invoke-virtual {v0, p0}, Landroid/content/Loader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 22
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0, p0}, Landroid/content/Loader;->unregisterOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V

    .line 23
    :cond_5
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->reset()V

    .line 24
    :cond_6
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    :cond_7
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mArgs="

    .line 2
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    const-string v1, "  "

    if-eqz v0, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-eqz v0, :cond_2

    .line 8
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  mDeliveredData="

    .line 9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 10
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReportNextStart="

    .line 12
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDestroyed="

    .line 13
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 14
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetainingStarted="

    .line 15
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mListenerRegistered="

    .line 16
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 17
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public finishRetain()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Finished Retaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 4
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->stop()V

    .line 6
    :cond_1
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onLoadCanceled(Landroid/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean p1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    const-string v0, "LoaderManager"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadCanceled: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    if-eqz p1, :cond_2

    .line 3
    sget-boolean p1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "  Ignoring load canceled -- destroyed"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object p1, p1, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p0, :cond_4

    .line 5
    sget-boolean p1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "  Ignoring load canceled -- not active"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 6
    :cond_4
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz p1, :cond_6

    .line 7
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Switching to pending loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 9
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 11
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/LoaderManagerImpl;->installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V

    :cond_6
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadComplete: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    if-eqz v0, :cond_2

    .line 3
    sget-boolean p1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "  Ignoring load complete -- destroyed"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_4

    .line 5
    sget-boolean p1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "  Ignoring load complete -- not active"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 6
    :cond_4
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_6

    .line 7
    sget-boolean p1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  Switching to pending loader: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 9
    iget-object p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object p2, p2, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 11
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-virtual {p1, v0}, Landroid/app/LoaderManagerImpl;->installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V

    return-void

    .line 12
    :cond_6
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    if-ne v0, p2, :cond_7

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-nez v0, :cond_8

    .line 13
    :cond_7
    iput-object p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 15
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_8

    .line 16
    invoke-virtual {p0, p1, p2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 17
    :cond_8
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object p1, p1, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    iget p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz p1, :cond_9

    if-eq p1, p0, :cond_9

    const/4 p2, 0x0

    .line 18
    iput-boolean p2, p1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 19
    invoke-virtual {p1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 20
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object p1, p1, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    iget p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 21
    :cond_9
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object p2, p1, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result p1

    if-nez p1, :cond_a

    .line 22
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object p1, p1, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object p1, p1, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p1}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    :cond_a
    return-void
.end method

.method public reportStart()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 4
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public retain()V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Retaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 3
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 5
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Starting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LoaderManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_2
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    if-eqz v0, :cond_3

    .line 7
    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-interface {v0, v2, v3}, Landroid/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 8
    :cond_3
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v0, :cond_7

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_5
    :goto_0
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-nez v0, :cond_6

    .line 12
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v2, p0}, Landroid/content/Loader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 13
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0, p0}, Landroid/content/Loader;->registerOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V

    .line 14
    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 15
    :cond_6
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->startLoading()V

    :cond_7
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 3
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v2, :cond_1

    .line 5
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 6
    invoke-virtual {v1, p0}, Landroid/content/Loader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 7
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0, p0}, Landroid/content/Loader;->unregisterOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V

    .line 8
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->stopLoading()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string/jumbo v1, "}}"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
