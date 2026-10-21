.class public Lc1/c;
.super Lc1/p;
.source "SourceFile"


# static fields
.field public static d:Lc1/c;


# instance fields
.field public b:Lo1/x;

.field public c:Lc1/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lc1/p;-><init>()V

    .line 2
    new-instance v0, Lo1/x;

    invoke-direct {v0}, Lo1/x;-><init>()V

    iput-object v0, p0, Lc1/c;->b:Lo1/x;

    const-string v1, "Tpms-TRAN"

    .line 3
    invoke-virtual {v0, v1}, Lo1/x;->n(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lc1/c;->b:Lo1/x;

    sget-object v1, Lbase/Configure$Property;->q:Lbase/Configure$Property;

    const-string v2, "tpms"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lbase/Configure$Property;->c(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lo1/x;->d:Z

    return-void
.end method

.method public static declared-synchronized O2()Lc1/c;
    .locals 2

    const-class v0, Lc1/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lc1/c;->d:Lc1/c;

    if-nez v1, :cond_0

    new-instance v1, Lc1/c;

    invoke-direct {v1}, Lc1/c;-><init>()V

    sput-object v1, Lc1/c;->d:Lc1/c;

    .line 2
    :cond_0
    sget-object v1, Lc1/c;->d:Lc1/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public H0(I[I[F[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc1/c;->b:Lo1/x;

    iget-boolean v1, v0, Lo1/x;->d:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lo1/x;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     updateCode :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  ints :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  flts :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  strs :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    iget-object v0, p0, Lc1/c;->b:Lo1/x;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lc1/c;->c:Lc1/p;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lc1/p;->M1(I[I[F[Ljava/lang/String;)Ly/f;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public P0(Ly/b;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lc1/c;->b:Lo1/x;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1, p2}, Lo1/x;->p(Ly/b;I)V

    :cond_1
    return-void
.end method

.method public P2()Lc1/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lc1/c;->c:Lc1/p;

    return-object v0
.end method

.method public Q2(Lc1/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/c;->c:Lc1/p;

    return-void
.end method

.method public varargs R2(Ly/b;I[I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lc1/c;->S2(Ly/b;I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public S2(Ly/b;I[I[F[Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lc1/c;->b:Lo1/x;

    iget-boolean v1, v0, Lo1/x;->d:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lo1/x;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     updateCode :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  ints :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  flts :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  strs :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    iget-object v2, p0, Lc1/c;->b:Lo1/x;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lo1/x;->H(Ly/b;I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lc1/c;->b:Lo1/x;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1, p2}, Lo1/x;->m(Ly/b;I)Z

    .line 3
    :cond_1
    invoke-static {p1, p2, p3}, Li1/s;->n(Ly/b;II)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-nez p3, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x1f4

    if-ge p2, v0, :cond_4

    .line 4
    iget-object v0, p0, Lc1/c;->c:Lc1/p;

    if-eqz v0, :cond_6

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lc1/p;->Y1(Ly/b;II)V

    goto :goto_0

    :cond_4
    if-eq p2, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 v0, 0x0

    .line 6
    sget v1, Lc1/a;->e:I

    aput v1, p3, v0

    invoke-virtual {p0, p1, p2, p3}, Lc1/c;->R2(Ly/b;I[I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1f6

    if-ne p1, v1, :cond_0

    .line 1
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p2}, Lz/k;->s([I)V

    return-void

    :cond_0
    const/16 v1, 0x1f7

    if-ne p1, v1, :cond_1

    .line 3
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p2}, Lz/k;->s([I)V

    return-void

    .line 5
    :cond_1
    invoke-static {p1, p2, p3, p4}, Li1/s;->m(I[I[F[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lc1/c;->c:Lc1/p;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Lc1/p;->Z0(I[I[F[Ljava/lang/String;)V

    :cond_3
    return-void
.end method
