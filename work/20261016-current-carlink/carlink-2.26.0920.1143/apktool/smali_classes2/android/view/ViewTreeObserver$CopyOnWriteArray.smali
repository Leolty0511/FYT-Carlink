.class Landroid/view/ViewTreeObserver$CopyOnWriteArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewTreeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CopyOnWriteArray"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDataCopy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    .line 17
    .line 18
    return-void
.end method

.method private getArray()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mStart:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    .line 22
    .line 23
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    iget-object p1, p1, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public end()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mStart:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mStart:Z

    .line 7
    .line 8
    iget-object v1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iput-object v1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->access$000(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->access$102(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;I)I

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v1, "Iteration not started"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public size()I
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mStart:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mStart:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->access$002(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    .line 19
    .line 20
    iget-object v1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->access$102(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;I)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v1, "Iteration already started"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method
