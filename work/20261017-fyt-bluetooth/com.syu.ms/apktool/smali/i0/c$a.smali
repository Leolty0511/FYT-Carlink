.class public Li0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:I

.field public g:Z

.field public h:J

.field public final synthetic i:Li0/c;


# direct methods
.method public constructor <init>(Li0/c;Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Li0/c$a;->i:Li0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Li0/c$a;->b:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Li0/c$a;->c:J

    .line 4
    iput-wide v0, p0, Li0/c$a;->d:J

    .line 5
    iput-wide v2, p0, Li0/c$a;->e:J

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Li0/c$a;->f:I

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Li0/c$a;->g:Z

    .line 8
    iput-wide v2, p0, Li0/c$a;->h:J

    .line 9
    iput-object p2, p0, Li0/c$a;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Li0/c$a;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Li0/c$a;->h(J)V

    return-void
.end method

.method public static synthetic b(Li0/c$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Li0/c$a;->g:Z

    return p0
.end method

.method public static synthetic c(Li0/c$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Li0/c$a;->h:J

    return-wide v0
.end method

.method public static synthetic d(Li0/c$a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Li0/c$a;->h:J

    return-wide p1
.end method

.method public static synthetic e(Li0/c$a;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Li0/c$a;->j(J)V

    return-void
.end method

.method public static synthetic f(Li0/c$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Li0/c$a;->g()V

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Li0/c$a;->j(J)V

    .line 2
    invoke-virtual {p0, v0, v1}, Li0/c$a;->h(J)V

    return-void
.end method

.method public final h(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1
    iget-wide v2, p0, Li0/c$a;->b:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    .line 2
    invoke-static {}, Lo1/m0;->b()Lo1/m0;

    move-result-object v2

    iget-wide v3, p0, Li0/c$a;->b:J

    invoke-virtual {v2, v3, v4}, Lo1/m0;->a(J)V

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Li0/c$a;->b:J

    .line 4
    :cond_0
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 5
    iget-wide v0, p0, Li0/c$a;->c:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 6
    iput-wide p1, p0, Li0/c$a;->c:J

    .line 7
    iget-object v0, p0, Li0/c$a;->i:Li0/c;

    const/16 v1, 0xb

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    long-to-int p1, p1

    const/4 p2, 0x1

    aput p1, v2, p2

    new-array p1, p2, [Ljava/lang/String;

    iget-object p2, p0, Li0/c$a;->a:Ljava/lang/String;

    aput-object p2, p1, v4

    invoke-virtual {v0, v1, v2, p1}, Li0/c;->A0(I[I[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public i(I)V
    .locals 10

    .line 1
    iget v0, p0, Li0/c$a;->f:I

    if-eq p1, v0, :cond_3

    .line 2
    iput p1, p0, Li0/c$a;->f:I

    const/4 v0, 0x3

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1, v2}, Li0/c$a;->h(J)V

    .line 4
    invoke-static {}, Lo1/m0;->b()Lo1/m0;

    move-result-object v3

    new-instance v4, Li0/c$a$b;

    invoke-direct {v4, p0}, Li0/c$a$b;-><init>(Li0/c$a;)V

    const-wide/16 v5, 0xa

    const-wide/16 v7, 0x3e8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v3 .. v9}, Lo1/m0;->c(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Li0/c$a;->d:J

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lo1/m0;->b()Lo1/m0;

    move-result-object v2

    new-instance v3, Li0/c$a$a;

    invoke-direct {v3, p0}, Li0/c$a$a;-><init>(Li0/c$a;)V

    const-wide/16 v4, 0xa

    const-wide/16 v6, 0x3e8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v2 .. v8}, Lo1/m0;->c(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Li0/c$a;->b:J

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0, v1, v2}, Li0/c$a;->j(J)V

    .line 7
    invoke-virtual {p0, v1, v2}, Li0/c$a;->h(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final j(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1
    iget-wide v2, p0, Li0/c$a;->d:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    .line 2
    invoke-static {}, Lo1/m0;->b()Lo1/m0;

    move-result-object v2

    iget-wide v3, p0, Li0/c$a;->d:J

    invoke-virtual {v2, v3, v4}, Lo1/m0;->a(J)V

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Li0/c$a;->d:J

    .line 4
    :cond_0
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 5
    iget-wide v2, p0, Li0/c$a;->e:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_1

    .line 6
    iput-wide p1, p0, Li0/c$a;->e:J

    .line 7
    iget-object v2, p0, Li0/c$a;->i:Li0/c;

    const/16 v3, 0xc

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/16 v5, 0x20

    shr-long v5, p1, v5

    long-to-int v5, v5

    const/4 v6, 0x0

    aput v5, v4, v6

    long-to-int p1, p1

    const/4 p2, 0x1

    aput p1, v4, p2

    new-array p1, p2, [Ljava/lang/String;

    iget-object p2, p0, Li0/c$a;->a:Ljava/lang/String;

    aput-object p2, p1, v6

    invoke-virtual {v2, v3, v4, p1}, Li0/c;->A0(I[I[Ljava/lang/String;)V

    .line 8
    :cond_1
    iput-wide v0, p0, Li0/c$a;->h:J

    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Li0/c$a;->g:Z

    return-void
.end method

.method public l(Ly/b;)V
    .locals 10

    const/16 v0, 0xb

    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [I

    .line 1
    iget-wide v3, p0, Li0/c$a;->c:J

    const/16 v5, 0x20

    shr-long v6, v3, v5

    long-to-int v6, v6

    const/4 v7, 0x0

    aput v6, v2, v7

    long-to-int v3, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    new-array v3, v4, [Ljava/lang/String;

    iget-object v6, p0, Li0/c$a;->a:Ljava/lang/String;

    aput-object v6, v3, v7

    const/4 v6, 0x0

    invoke-interface {p1, v0, v2, v6, v3}, Ly/b;->H0(I[I[F[Ljava/lang/String;)V

    const/16 v0, 0xc

    new-array v1, v1, [I

    .line 2
    iget-wide v2, p0, Li0/c$a;->e:J

    shr-long v8, v2, v5

    long-to-int v5, v8

    aput v5, v1, v7

    long-to-int v2, v2

    aput v2, v1, v4

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Li0/c$a;->a:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-interface {p1, v0, v1, v6, v2}, Ly/b;->H0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallTimer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/c$a;->i:Li0/c;

    iget v1, v1, Li0/c;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isWaiting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Li0/c$a;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
