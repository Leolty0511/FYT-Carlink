.class public Lcom/android/internal/view/i$a;
.super Lcom/android/internal/view/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static h:Lcom/android/internal/view/i$a;

.field public static i:I


# instance fields
.field public a:I

.field public b:Z

.field public c:Ljava/lang/CharSequence;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:Landroid/view/inputmethod/ExtractedText;

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/view/i$a;

    invoke-direct {v0}, Lcom/android/internal/view/i$a;-><init>()V

    sput-object v0, Lcom/android/internal/view/i$a;->h:Lcom/android/internal/view/i$a;

    const/4 v0, 0x1

    .line 2
    sput v0, Lcom/android/internal/view/i$a;->i:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/view/c$a;-><init>()V

    return-void
.end method

.method public static synthetic K2()Lcom/android/internal/view/i$a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/view/i$a;->N2()Lcom/android/internal/view/i$a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic L2(Lcom/android/internal/view/i$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/i$a;->M2()V

    return-void
.end method

.method public static N2()Lcom/android/internal/view/i$a;
    .locals 4

    .line 1
    const-class v0, Lcom/android/internal/view/i$a;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/internal/view/i$a;->h:Lcom/android/internal/view/i$a;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 3
    sput-object v2, Lcom/android/internal/view/i$a;->h:Lcom/android/internal/view/i$a;

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v1, Lcom/android/internal/view/i$a;->b:Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/android/internal/view/i$a;

    invoke-direct {v1}, Lcom/android/internal/view/i$a;-><init>()V

    .line 6
    :goto_0
    sget v2, Lcom/android/internal/view/i$a;->i:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/android/internal/view/i$a;->i:I

    iput v2, v1, Lcom/android/internal/view/i$a;->a:I

    .line 7
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public B0(Landroid/view/inputmethod/ExtractedText;I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/internal/view/i$a;->a:I

    if-ne p2, v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/android/internal/view/i$a;->f:Landroid/view/inputmethod/ExtractedText;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/internal/view/i$a;->b:Z

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_0
    const-string p1, "InputConnectionWrapper.ICC"

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got out-of-sequence callback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (expected "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/view/i$a;->a:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") in setExtractedText, ignoring."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public E(Ljava/lang/CharSequence;I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/internal/view/i$a;->a:I

    if-ne p2, v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/android/internal/view/i$a;->d:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/internal/view/i$a;->b:Z

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_0
    const-string p1, "InputConnectionWrapper.ICC"

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got out-of-sequence callback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (expected "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/view/i$a;->a:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") in setTextAfterCursor, ignoring."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final M2()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/internal/view/i$a;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/internal/view/i$a;->h:Lcom/android/internal/view/i$a;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/android/internal/view/i$a;->d:Ljava/lang/CharSequence;

    .line 4
    iput-object v1, p0, Lcom/android/internal/view/i$a;->c:Ljava/lang/CharSequence;

    .line 5
    iput-object v1, p0, Lcom/android/internal/view/i$a;->f:Landroid/view/inputmethod/ExtractedText;

    .line 6
    sput-object p0, Lcom/android/internal/view/i$a;->h:Lcom/android/internal/view/i$a;

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public O2()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    .line 2
    :catch_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/view/i$a;->b:Z

    if-nez v2, :cond_1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    const-string v0, "InputConnectionWrapper.ICC"

    const-string v1, "Timed out waiting on IInputContextCallback"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f1(Ljava/lang/CharSequence;I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/internal/view/i$a;->a:I

    if-ne p2, v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/android/internal/view/i$a;->c:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/internal/view/i$a;->b:Z

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_0
    const-string p1, "InputConnectionWrapper.ICC"

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got out-of-sequence callback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (expected "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/view/i$a;->a:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") in setTextBeforeCursor, ignoring."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public p1(Ljava/lang/CharSequence;I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/internal/view/i$a;->a:I

    if-ne p2, v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/android/internal/view/i$a;->e:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/internal/view/i$a;->b:Z

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_0
    const-string p1, "InputConnectionWrapper.ICC"

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got out-of-sequence callback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (expected "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/view/i$a;->a:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") in setSelectedText, ignoring."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public x1(II)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/internal/view/i$a;->a:I

    if-ne p2, v0, :cond_0

    .line 3
    iput p1, p0, Lcom/android/internal/view/i$a;->g:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/internal/view/i$a;->b:Z

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_0
    const-string p1, "InputConnectionWrapper.ICC"

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got out-of-sequence callback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (expected "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/view/i$a;->a:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") in setCursorCapsMode, ignoring."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
