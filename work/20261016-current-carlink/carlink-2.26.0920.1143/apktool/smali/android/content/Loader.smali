.class public Landroid/content/Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Loader$OnLoadCanceledListener;,
        Landroid/content/Loader$OnLoadCompleteListener;,
        Landroid/content/Loader$ForceLoadContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Landroid/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader$OnLoadCompleteListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader$OnLoadCanceledListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field mProcessingChange:Z

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Landroid/content/Loader;->mReset:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Landroid/content/Loader;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Loader;->onAbandon()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public cancelLoad()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Loader;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method public commitContentChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo p1, "}"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public deliverCancellation()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Landroid/content/Loader$OnLoadCanceledListener;->onLoadCanceled(Landroid/content/Loader;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Landroid/content/Loader$OnLoadCompleteListener;->onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo p2, "mId="

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget p2, p0, Landroid/content/Loader;->mId:I

    .line 11
    .line 12
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 13
    .line 14
    .line 15
    const-string p2, " mListener="

    .line 16
    .line 17
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    .line 21
    .line 22
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-boolean p2, p0, Landroid/content/Loader;->mStarted:Z

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    iget-boolean p2, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 30
    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    iget-boolean p2, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo p2, "mStarted="

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-boolean p2, p0, Landroid/content/Loader;->mStarted:Z

    .line 47
    .line 48
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 49
    .line 50
    .line 51
    const-string p2, " mContentChanged="

    .line 52
    .line 53
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-boolean p2, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 57
    .line 58
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 59
    .line 60
    .line 61
    const-string p2, " mProcessingChange="

    .line 62
    .line 63
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-boolean p2, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 67
    .line 68
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-boolean p2, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 72
    .line 73
    if-nez p2, :cond_2

    .line 74
    .line 75
    iget-boolean p2, p0, Landroid/content/Loader;->mReset:Z

    .line 76
    .line 77
    if-eqz p2, :cond_3

    .line 78
    .line 79
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string/jumbo p1, "mAbandoned="

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-boolean p1, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 89
    .line 90
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 91
    .line 92
    .line 93
    const-string p1, " mReset="

    .line 94
    .line 95
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-boolean p1, p0, Landroid/content/Loader;->mReset:Z

    .line 99
    .line 100
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void
.end method

.method public forceLoad()V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Loader;->onForceLoad()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/content/Loader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/content/Loader;->mId:I

    return v0
.end method

.method public isAbandoned()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    return v0
.end method

.method public isReset()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    return v0
.end method

.method public onAbandon()V
    .locals 0

    return-void
.end method

.method public onCancelLoad()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public onForceLoad()V
    .locals 0

    return-void
.end method

.method public onReset()V
    .locals 0

    return-void
.end method

.method public onStartLoading()V
    .locals 0

    return-void
.end method

.method public onStopLoading()V
    .locals 0

    return-void
.end method

.method public registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p2, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    .line 6
    .line 7
    iput p1, p0, Landroid/content/Loader;->mId:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string p2, "There is already a listener registered"

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public registerOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader$OnLoadCanceledListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "There is already a listener registered"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Loader;->onReset()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 15
    .line 16
    return-void
.end method

.method public rollbackContentChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Loader;->onContentChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final startLoading()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Loader;->onStartLoading()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Loader;->onStopLoading()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public takeContentChanged()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 5
    .line 6
    iget-boolean v1, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 7
    .line 8
    or-int/2addr v1, v0

    .line 9
    iput-boolean v1, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 10
    .line 11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x40

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
    const-string v1, " id="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v1, p0, Landroid/content/Loader;->mId:I

    .line 17
    .line 18
    const-string/jumbo v2, "}"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "Attempting to unregister the wrong listener"

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "No listener register"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public unregisterOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader$OnLoadCanceledListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "Attempting to unregister the wrong listener"

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "No listener register"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method
