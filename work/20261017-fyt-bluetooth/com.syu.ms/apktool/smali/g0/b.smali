.class public Lg0/b;
.super Lf0/a;
.source "SourceFile"


# instance fields
.field public g:Lo1/n;

.field public h:Z

.field public final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo1/n;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf0/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lg0/b;->h:Z

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg0/b;->i:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lf0/a;->e:I

    .line 5
    iput-object p1, p0, Lg0/b;->g:Lo1/n;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lg0/b;->h:Z

    return-void
.end method

.method public c(I[I[F[Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lg0/b;->h:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lg0/b;->j()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lg0/b;->h:Z

    .line 3
    :cond_1
    iget-boolean v0, p0, Lg0/b;->h:Z

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h(Ly/b;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public j()I
    .locals 9

    .line 1
    sget-object v0, Lg0/a;->a:[[I

    .line 2
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    const/4 v6, 0x3

    :goto_1
    if-lez v6, :cond_0

    .line 3
    invoke-virtual {p0, v5}, Lg0/b;->k([I)I

    move-result v4

    if-ne v4, v2, :cond_0

    const-wide/16 v7, 0x32

    .line 4
    invoke-static {v7, v8}, Lo1/s0;->C(J)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_0
    if-ne v4, v2, :cond_1

    const-string v0, "A2bHiFi"

    const-string v1, "Error!! handle Command Line :"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v4
.end method

.method public k([I)I
    .locals 9

    if-eqz p1, :cond_6

    .line 1
    array-length v0, p1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCommandLine array : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lo1/s0;->s([I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2bHiFi"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    aget v2, p1, v0

    const/4 v3, 0x1

    .line 4
    aget v4, p1, v3

    const/4 v5, 0x2

    .line 5
    aget v6, p1, v5

    const/4 v7, 0x4

    .line 6
    aget p1, p1, v7

    const/16 v7, 0x57

    const/4 v8, -0x1

    if-ne v4, v7, :cond_1

    .line 7
    invoke-virtual {p0, v2, v6, p1}, Lg0/b;->m(III)I

    move-result v3

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleCommandLine write result : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/16 v7, 0x52

    if-ne v4, v7, :cond_3

    .line 9
    invoke-virtual {p0, v2, v6}, Lg0/b;->l(II)I

    move-result p1

    new-array v2, v5, [Ljava/lang/Object;

    .line 10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "handleCommandLine read reg: %02X result: %02X"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_4

    if-ne v6, v5, :cond_2

    const/16 v0, 0xad

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne v6, v0, :cond_5

    const/16 v0, 0x28

    if-eq p1, v0, :cond_5

    goto :goto_0

    :cond_3
    const/16 v0, 0x44

    if-ne v4, v0, :cond_4

    int-to-long v4, p1

    .line 11
    invoke-static {v4, v5}, Lo1/s0;->C(J)V

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleCommandLine delay result : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :goto_0
    move v3, v8

    :cond_5
    :goto_1
    return v3

    :cond_6
    :goto_2
    const/4 p1, -0x2

    return p1
.end method

.method public final l(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lg0/b;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lg0/b;->g:Lo1/n;

    invoke-virtual {v1, p1, p2}, Lo1/n;->g(II)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final m(III)I
    .locals 8

    .line 1
    iget-object v0, p0, Lg0/b;->i:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    .line 2
    :cond_0
    :try_start_0
    iget-object v2, p0, Lg0/b;->g:Lo1/n;

    invoke-virtual {v2, p1, p2, p3}, Lo1/n;->h(III)I

    move-result v2

    const-string v3, "A2bHiFi"

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeWithCheckResult write ret : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ltz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-lez v2, :cond_3

    const/16 v5, 0x6b

    if-ne p1, v5, :cond_3

    const-wide/16 v5, 0xa

    .line 4
    invoke-static {v5, v6}, Lo1/s0;->C(J)V

    .line 5
    iget-object v2, p0, Lg0/b;->g:Lo1/n;

    invoke-virtual {v2, p1, p2}, Lo1/n;->g(II)I

    move-result v2

    const-string v5, "A2bHiFi"

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeWithCheckResult read ret : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, p3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    move v2, v3

    :cond_3
    add-int/2addr v1, v4

    if-gez v2, :cond_4

    if-gtz v1, :cond_0

    .line 7
    :cond_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
