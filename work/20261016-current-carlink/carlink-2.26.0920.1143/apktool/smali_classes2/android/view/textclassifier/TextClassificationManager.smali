.class public final Landroid/view/textclassifier/TextClassificationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTextClassifier:Landroid/view/textclassifier/TextClassifier;

.field private final mTextClassifierLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifierLock:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/content/Context;

    .line 16
    .line 17
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifierLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/view/textclassifier/TextClassifierImpl;

    .line 9
    .line 10
    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/view/textclassifier/TextClassifierImpl;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifierLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method
