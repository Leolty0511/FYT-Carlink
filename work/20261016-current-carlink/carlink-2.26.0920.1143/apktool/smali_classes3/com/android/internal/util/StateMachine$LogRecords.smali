.class Lcom/android/internal/util/StateMachine$LogRecords;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogRecords"
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x14


# instance fields
.field private mCount:I

.field private mLogOnlyTransitions:Z

.field private mLogRecVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/internal/util/StateMachine$LogRec;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSize:I

.field private mOldestIndex:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    const/16 v0, 0x14

    .line 4
    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    .line 6
    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    .line 7
    iput-boolean v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogOnlyTransitions:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/util/StateMachine$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$LogRecords;-><init>()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/android/internal/util/StateMachine$LogRecords;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    return p0
.end method

.method public static synthetic access$2000(Lcom/android/internal/util/StateMachine$LogRecords;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    .line 15
    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    .line 19
    .line 20
    new-instance v8, Lcom/android/internal/util/StateMachine$LogRec;

    .line 21
    .line 22
    move-object v1, v8

    .line 23
    move-object v2, p1

    .line 24
    move-object v3, p2

    .line 25
    move-object v4, p3

    .line 26
    move-object v5, p4

    .line 27
    move-object v6, p5

    .line 28
    move-object v7, p6

    .line 29
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/util/StateMachine$LogRec;-><init>(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    .line 37
    .line 38
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    move-object v1, v0

    .line 45
    check-cast v1, Lcom/android/internal/util/StateMachine$LogRec;

    .line 46
    .line 47
    iget v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    .line 52
    .line 53
    iget v2, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    .line 54
    .line 55
    if-lt v0, v2, :cond_1

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    .line 59
    .line 60
    :cond_1
    move-object v2, p1

    .line 61
    move-object v3, p2

    .line 62
    move-object v4, p3

    .line 63
    move-object v5, p4

    .line 64
    move-object v6, p5

    .line 65
    move-object v7, p6

    .line 66
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/util/StateMachine$LogRec;->update(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    :goto_0
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    monitor-exit p0

    .line 73
    throw p1
.end method

.method public declared-synchronized cleanup()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public declared-synchronized count()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized get(I)Lcom/android/internal/util/StateMachine$LogRec;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    .line 3
    .line 4
    add-int/2addr v0, p1

    .line 5
    iget p1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    .line 6
    .line 7
    if-lt v0, p1, :cond_0

    .line 8
    .line 9
    sub-int/2addr v0, p1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine$LogRecords;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-lt v0, p1, :cond_1

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/android/internal/util/StateMachine$LogRec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-object p1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0

    .line 31
    throw p1
.end method

.method public declared-synchronized logOnlyTransitions()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogOnlyTransitions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized setLogOnlyTransitions(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogOnlyTransitions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public declared-synchronized setSize(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method
