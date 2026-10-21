.class public Lb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c$b;,
        Lb/c$a;
    }
.end annotation


# static fields
.field public static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/c;->d:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lb/c;->c:I

    .line 3
    iput-object p1, p0, Lb/c;->a:Ljava/lang/String;

    .line 4
    iput p2, p0, Lb/c;->b:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lb/c;->c:I

    if-ltz v0, :cond_2

    const/16 v0, 0xc

    .line 2
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xb

    .line 3
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iget v0, p0, Lb/c;->c:I

    const/16 v1, 0x960

    const/16 v2, 0x8

    const/16 v3, 0x4e

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/syu/jni/JniSerial;->setup(IIIII)I

    .line 5
    :cond_1
    iget v0, p0, Lb/c;->c:I

    invoke-static {v0}, Lcom/syu/jni/JniSerial;->close(I)V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lb/c;->c:I

    .line 7
    sget-object v1, Lb/c;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lb/c;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()I
    .locals 3

    .line 1
    sget-object v0, Lb/c;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lb/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lb/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/syu/jni/JniSerial;->open(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1

    .line 5
    iget v1, p0, Lb/c;->b:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lb/c;->e(II)I

    .line 6
    sget-object v1, Lb/c;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lb/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lb/c;->c:I

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public c()[B
    .locals 3

    .line 1
    iget v0, p0, Lb/c;->c:I

    if-ltz v0, :cond_0

    const/16 v1, 0x200

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/syu/jni/JniSerial;->read(III)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public d(I)I
    .locals 1

    .line 1
    iget v0, p0, Lb/c;->c:I

    invoke-virtual {p0, p1, v0}, Lb/c;->e(II)I

    move-result p1

    return p1
.end method

.method public declared-synchronized e(II)I
    .locals 4

    monitor-enter p0

    if-gez p2, :cond_0

    const/4 p1, -0x1

    .line 1
    monitor-exit p0

    return p1

    .line 2
    :cond_0
    :try_start_0
    iput p1, p0, Lb/c;->b:I

    const/16 v0, 0x8

    const/16 v1, 0x4e

    const/4 v2, 0x1

    .line 3
    invoke-static {p2, p1, v0, v1, v2}, Lcom/syu/jni/JniSerial;->setup(IIIII)I

    move-result v0

    const-string v1, "ec"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------------  mfd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " path : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lb/c;->a:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " baud :"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized f([I)I
    .locals 3

    monitor-enter p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    array-length v2, p1

    :goto_0
    if-lez v2, :cond_1

    .line 2
    iget v2, p0, Lb/c;->c:I

    if-ltz v2, :cond_1

    .line 3
    invoke-static {p1}, Lo1/s0;->r([I)[B

    move-result-object v0

    array-length p1, p1

    invoke-static {v2, v0, v1, p1}, Lcom/syu/jni/JniSerial;->write(I[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 4
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
