.class public Lf0/c;
.super Lbase/b;
.source "SourceFile"


# static fields
.field public static h:Lf0/c;


# instance fields
.field public g:Lf0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lbase/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf0/c;->g:Lf0/a;

    const-string v0, "amp"

    .line 3
    invoke-virtual {p0, v0}, Lbase/b;->P2(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    const-string v2, "Amp-TRAN"

    invoke-virtual {v1, v2}, Lo1/x;->n(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    sget-object v2, Lbase/Configure$Property;->q:Lbase/Configure$Property;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lbase/Configure$Property;->c(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lo1/x;->d:Z

    return-void
.end method

.method public static declared-synchronized X2()Lf0/c;
    .locals 2

    const-class v0, Lf0/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lf0/c;->h:Lf0/c;

    if-nez v1, :cond_0

    new-instance v1, Lf0/c;

    invoke-direct {v1}, Lf0/c;-><init>()V

    sput-object v1, Lf0/c;->h:Lf0/c;

    .line 2
    :cond_0
    sget-object v1, Lf0/c;->h:Lf0/c;
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

    .line 1
    iget-object v0, p0, Lf0/c;->g:Lf0/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lf0/a;->c(I[I[F[Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public O2(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public P0(Ly/b;I)V
    .locals 0

    return-void
.end method

.method public Q2(Lo1/h0;)V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lbase/b;->Y1(Ly/b;II)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lbase/b;->Y1(Ly/b;II)V

    .line 3
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2}, Lo1/x;->m(Ly/b;I)Z

    if-nez p3, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p3, p0, Lf0/c;->g:Lf0/a;

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1, p2}, Lf0/a;->h(Ly/b;I)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lf0/c;->g:Lf0/a;

    if-nez v2, :cond_4

    const/4 v2, -0x1

    goto :goto_0

    :cond_4
    iget v2, v2, Lf0/a;->e:I

    :goto_0
    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    :goto_1
    return-void
.end method

.method public Y2()Lf0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/c;->g:Lf0/a;

    return-object v0
.end method

.method public Z2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf0/c;->g:Lf0/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "sys.lsec.ext_dsp"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    new-instance v0, Lf0/b;

    sget-object v1, Lz/a;->v:Lo1/n;

    invoke-direct {v0, v1}, Lf0/b;-><init>(Lo1/n;)V

    iput-object v0, p0, Lf0/c;->g:Lf0/a;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "sys.lsec.ext_dsp1"

    .line 4
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 5
    new-instance v0, Lg0/b;

    sget-object v1, Lz/a;->v:Lo1/n;

    invoke-direct {v0, v1}, Lg0/b;-><init>(Lo1/n;)V

    iput-object v0, p0, Lf0/c;->g:Lf0/a;

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs a3(I[I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lbase/b;->H0(I[I[F[Ljava/lang/String;)V

    return-void
.end method
