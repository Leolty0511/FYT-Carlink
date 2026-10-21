.class public Lo1/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo1/t0$a;,
        Lo1/t0$b;,
        Lo1/t0$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:Lo1/t0$a;

.field public d:Lo1/t0$b;

.field public volatile e:Z

.field public volatile f:B

.field public g:Ljava/lang/Object;

.field public h:Lo1/t0$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Xmodem"

    .line 2
    iput-object v0, p0, Lo1/t0;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lo1/t0;->b:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lo1/t0;->c:Lo1/t0$a;

    .line 5
    iput-object v1, p0, Lo1/t0;->d:Lo1/t0$b;

    .line 6
    iput-boolean v0, p0, Lo1/t0;->e:Z

    .line 7
    iput-byte v0, p0, Lo1/t0;->f:B

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo1/t0;->g:Ljava/lang/Object;

    .line 9
    iput-object v1, p0, Lo1/t0;->h:Lo1/t0$c;

    return-void
.end method


# virtual methods
.method public a([B)B
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v4, p1, v2

    add-int/2addr v3, v4

    int-to-byte v3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checksum ------------->>  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%02X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Xmodem"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public b()I
    .locals 2

    .line 1
    iget v0, p0, Lo1/t0;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/16 v0, 0x400

    return v0

    :cond_1
    const/16 v0, 0x80

    return v0
.end method

.method public c([B)V
    .locals 8

    if-eqz p1, :cond_2

    .line 1
    array-length v0, p1

    if-lez v0, :cond_2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-byte v3, p1, v2

    .line 3
    iput-byte v3, p0, Lo1/t0;->f:B

    .line 4
    iget-boolean v3, p0, Lo1/t0;->e:Z

    if-eqz v3, :cond_1

    iget-byte v3, p0, Lo1/t0;->f:B

    const/16 v4, 0x15

    if-eq v3, v4, :cond_0

    iget-byte v3, p0, Lo1/t0;->f:B

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    iget-byte v3, p0, Lo1/t0;->f:B

    const/16 v4, 0x18

    if-ne v3, v4, :cond_1

    .line 5
    :cond_0
    iput-boolean v1, p0, Lo1/t0;->e:Z

    .line 6
    iget-object v3, p0, Lo1/t0;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 7
    :try_start_0
    iget-object v4, p0, Lo1/t0;->g:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "Xmodem"

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_1
    monitor-exit v3

    goto :goto_3

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d([BB)[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Lo1/t0;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 2
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3
    aput-byte v3, v1, v2

    .line 4
    aput-byte p2, v1, v3

    not-int p2, p2

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v4, 0x2

    .line 5
    aput-byte p2, v1, v4

    .line 6
    array-length p2, p1

    const/4 v4, 0x3

    invoke-static {p1, v2, v1, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v3

    .line 7
    invoke-virtual {p0, p1}, Lo1/t0;->a([B)B

    move-result p1

    aput-byte p1, v1, v0

    return-object v1
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lo1/t0$c;

    invoke-direct {v0, p0, p1}, Lo1/t0$c;-><init>(Lo1/t0;Ljava/lang/String;)V

    iput-object v0, p0, Lo1/t0;->h:Lo1/t0$c;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public f(Lo1/t0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/t0;->d:Lo1/t0$b;

    return-void
.end method

.method public g(Lo1/t0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/t0;->c:Lo1/t0$a;

    return-void
.end method

.method public varargs h([B)I
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/t0;->c:Lo1/t0$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo1/t0$a;->a([B)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
