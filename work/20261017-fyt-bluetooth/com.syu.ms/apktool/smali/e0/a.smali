.class public Le0/a;
.super Lbase/b;
.source "SourceFile"


# static fields
.field public static i:Le0/a;


# instance fields
.field public g:Ljava/lang/String;

.field public h:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lbase/b;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Le0/a;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le0/a;->h:[I

    .line 4
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    const-string v1, "Adas-TRAN"

    invoke-virtual {v0, v1}, Lo1/x;->n(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    sget-object v1, Lbase/Configure$Property;->q:Lbase/Configure$Property;

    const-string v2, "adas"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lbase/Configure$Property;->c(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lo1/x;->d:Z

    .line 6
    invoke-virtual {p0, v2}, Lbase/b;->P2(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized X2()Le0/a;
    .locals 2

    const-class v0, Le0/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le0/a;->i:Le0/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Le0/a;

    invoke-direct {v1}, Le0/a;-><init>()V

    sput-object v1, Le0/a;->i:Le0/a;

    .line 3
    :cond_0
    sget-object v1, Le0/a;->i:Le0/a;
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
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2(I[I[F[Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p3, p0, Le0/a;->h:[I

    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p3

    if-nez p3, :cond_5

    .line 3
    iput-object p2, p0, Le0/a;->h:[I

    const/4 p3, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p3}, Lbase/b;->H0(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 5
    invoke-static {p4, p2}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 6
    iget-object p3, p0, Le0/a;->g:Ljava/lang/String;

    aget-object v0, p4, p2

    invoke-static {p3, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 7
    aget-object p3, p4, p2

    iput-object p3, p0, Le0/a;->g:Ljava/lang/String;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    aput-object p3, p4, p2

    .line 8
    invoke-virtual {p0, p1, p4}, Le0/a;->Y2(I[Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_4
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public O2(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public P0(Ly/b;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2}, Lo1/x;->p(Ly/b;I)V

    :cond_0
    return-void
.end method

.method public Q2(Lo1/h0;)V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lbase/b;->Y1(Ly/b;II)V

    if-eqz p1, :cond_3

    .line 2
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2}, Lo1/x;->m(Ly/b;I)Z

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x3

    if-eq p2, p3, :cond_2

    const/4 p3, 0x4

    if-eq p2, p3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p3, p0, Le0/a;->h:[I

    if-eqz p3, :cond_3

    .line 4
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2, p3}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    iget-object v0, p0, Le0/a;->g:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public varargs Y2(I[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    return-void
.end method
