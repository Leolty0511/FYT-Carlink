.class public Lm0/e;
.super Lbase/b;
.source "SourceFile"


# static fields
.field public static h:Lm0/e;


# instance fields
.field public g:Lm0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lbase/b;-><init>()V

    .line 2
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    const-string v1, "CanUp-TRAN"

    invoke-virtual {v0, v1}, Lo1/x;->n(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    sget-object v2, Lbase/Configure$Property;->q:Lbase/Configure$Property;

    const-string v3, "can"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lbase/Configure$Property;->c(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lo1/x;->d:Z

    .line 4
    invoke-virtual {p0, v1}, Lbase/b;->P2(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized Z2()Lm0/e;
    .locals 2

    const-class v0, Lm0/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lm0/e;->h:Lm0/e;

    if-nez v1, :cond_0

    new-instance v1, Lm0/e;

    invoke-direct {v1}, Lm0/e;-><init>()V

    sput-object v1, Lm0/e;->h:Lm0/e;

    .line 2
    :cond_0
    sget-object v1, Lm0/e;->h:Lm0/e;
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
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/e;->g:Lm0/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lm0/a;->M1(I[I[F[Ljava/lang/String;)Ly/f;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public N2(I[I[F[Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x3e8

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lm0/e;->X2(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-static {}, Lm0/d;->d()I

    move-result p1

    const/16 p2, 0xc

    if-nez p1, :cond_2

    move p1, p2

    :cond_2
    const/4 p3, 0x0

    if-ne p1, p2, :cond_4

    .line 3
    new-instance p2, Ll0/v;

    invoke-direct {p2}, Ll0/v;-><init>()V

    .line 4
    sput-object p2, Ll0/z;->a:Ll0/a;

    const/4 p4, 0x1

    .line 5
    sput-boolean p4, Ll0/z;->d:Z

    .line 6
    invoke-static {}, Lk0/rt;->a3()Lk0/rt;

    move-result-object v0

    invoke-virtual {v0}, Lk0/rt;->g3()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    sget-object p4, Ln0/j4;->d:Ln0/c4;

    if-eqz p4, :cond_4

    const v0, 0x9600

    .line 8
    invoke-virtual {p4, p2, v0}, Ln0/c4;->J3(Li1/b0$a;I)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x4

    new-array p2, p2, [I

    const/16 v0, 0x67

    aput v0, p2, p3

    aput p3, p2, p4

    const/4 p4, 0x2

    const/16 v0, 0x96

    aput v0, p2, p4

    const/4 p4, 0x3

    aput p3, p2, p4

    .line 9
    invoke-static {p2}, Lz/k;->s([I)V

    .line 10
    :cond_4
    :goto_0
    invoke-static {p1}, Lm0/d;->c(I)V

    if-nez p1, :cond_5

    .line 11
    iget-object p1, p0, Lbase/b;->f:Lo1/x;

    const/16 p2, 0x65

    invoke-virtual {p1, p2, p3}, Lo1/x;->r(II)V

    goto :goto_1

    .line 12
    :cond_5
    invoke-static {}, Lo1/u;->w()V

    :catch_0
    :goto_1
    return-void
.end method

.method public O2(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public P0(Ly/b;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2}, Lo1/x;->p(Ly/b;I)V

    return-void
.end method

.method public Q2(Lo1/h0;)V
    .locals 0

    return-void
.end method

.method public final X2(I[I[F[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/e;->g:Lm0/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lm0/a;->Z0(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2}, Lo1/x;->m(Ly/b;I)Z

    if-nez p3, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 2
    iget-object v0, p0, Lm0/e;->g:Lm0/a;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lm0/a;->Y1(Ly/b;II)V

    goto :goto_0

    :cond_2
    if-eq p2, v0, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lm0/b;->a:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public Y2()Lm0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/e;->g:Lm0/a;

    return-object v0
.end method

.method public a3(Lm0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/e;->g:Lm0/a;

    return-void
.end method
