.class public Lo1/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lo1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo1/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lo1/e;-><init>(I)V

    sput-object v0, Lo1/e0;->d:Lo1/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo1/e0;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lo1/e0;->c:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lo1/e0;->a:I

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo1/e0;->c:Z

    return v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Lo1/e0;->d:Lo1/e;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lo1/e;->d(Ljava/lang/Comparable;I)I

    move-result v1

    .line 2
    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iput-object p1, p0, Lo1/e0;->b:Ljava/lang/String;

    :cond_0
    if-lez v1, :cond_1

    .line 4
    iput v1, p0, Lo1/e0;->a:I

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/syu/jni/JniSerial;->open(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lo1/e0;->a:I

    if-lez v1, :cond_2

    .line 6
    invoke-virtual {v0, p1, v1}, Lo1/e;->f(Ljava/lang/Comparable;I)I

    .line 7
    :cond_2
    :goto_0
    iget p1, p0, Lo1/e0;->a:I

    return p1
.end method

.method public d()[B
    .locals 3

    .line 1
    iget v0, p0, Lo1/e0;->a:I

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lo1/e0;->h()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v1, 0x200

    const/4 v2, 0x5

    .line 3
    invoke-static {v0, v1, v2}, Lcom/syu/jni/JniSerial;->read(III)[B

    move-result-object v0

    return-object v0
.end method

.method public e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lo1/e0;->c:Z

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo1/e0;->a:I

    return-void
.end method

.method public g(I)V
    .locals 4

    .line 1
    iget v0, p0, Lo1/e0;->a:I

    if-lez v0, :cond_0

    const/16 v1, 0x8

    const/16 v2, 0x4e

    const/4 v3, 0x1

    .line 2
    invoke-static {v0, p1, v1, v2, v3}, Lcom/syu/jni/JniSerial;->setup(IIIII)I

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    const-wide/16 v0, 0x64

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public declared-synchronized i([B)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lo1/e0;->a:I

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 2
    array-length v2, p1

    invoke-static {v0, p1, v1, v2}, Lcom/syu/jni/JniSerial;->write(I[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
