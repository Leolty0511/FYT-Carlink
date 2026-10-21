.class public Lb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static i:Lb/a;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/a;->a:Z

    .line 3
    iput-boolean v0, p0, Lb/a;->b:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lb/a;->d:Ljava/util/List;

    .line 5
    iput-object v1, p0, Lb/a;->e:Ljava/lang/String;

    const-wide/32 v1, -0x80000000

    .line 6
    iput-wide v1, p0, Lb/a;->f:J

    .line 7
    new-instance v1, Lb/a$a;

    invoke-direct {v1, p0}, Lb/a$a;-><init>(Lb/a;)V

    iput-object v1, p0, Lb/a;->g:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lb/a$b;

    invoke-direct {v1, p0}, Lb/a$b;-><init>(Lb/a;)V

    iput-object v1, p0, Lb/a;->h:Ljava/lang/Runnable;

    const/16 v1, 0xcd

    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v2}, Lm1/c;->c(II)I

    move-result v1

    if-ne v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lb/a;->b:Z

    const/16 v1, 0xca

    const-string v3, ""

    .line 10
    invoke-static {v1, v3}, Lm1/c;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lo1/s0;->u(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lb/a;->d:Ljava/util/List;

    const/16 v1, 0xcb

    .line 12
    invoke-static {v1, v3}, Lm1/c;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    iget-boolean v3, p0, Lb/a;->a:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lb/a;->b:Z

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lb/a;->a:Z

    .line 14
    invoke-static {v1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "0123"

    .line 15
    iput-object v1, p0, Lb/a;->c:Ljava/lang/String;

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {p0, v1}, Lb/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a;->c:Ljava/lang/String;

    .line 17
    :goto_2
    sget-object v1, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lb/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lb/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public static e()Lb/a;
    .locals 1

    .line 1
    sget-object v0, Lb/a;->i:Lb/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb/a;

    invoke-direct {v0}, Lb/a;-><init>()V

    sput-object v0, Lb/a;->i:Lb/a;

    .line 3
    :cond_0
    sget-object v0, Lb/a;->i:Lb/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0xca

    .line 3
    iget-object v0, p0, Lb/a;->d:Ljava/util/List;

    invoke-static {v0}, Lo1/s0;->v(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lm1/c;->f(ILjava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lb/a;->p()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public c(Z)I
    .locals 3

    .line 1
    sget v0, Lu0/b;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lb/a;->b:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne p1, v2, :cond_1

    move v1, v2

    .line 2
    :cond_1
    iput-boolean v1, p0, Lb/a;->a:Z

    return p1
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/a;->e:Ljava/lang/String;

    const-string v0, ""

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {v1, v0}, Lu0/d;->K3(I[Ljava/lang/String;)V

    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a;->b:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a;->a:Z

    return v0
.end method

.method public j(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lb/a;->a:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lb/a;->b:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x81

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lb/a;->c(Z)I

    move-result v1

    aput v1, v2, v3

    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lb/a;->e:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 5
    :goto_0
    iput-wide v0, p0, Lb/a;->f:J

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lb/a;->f:J

    :cond_2
    :goto_1
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lb/a;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lb/a;->e:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 p1, 0xca

    .line 5
    iget-object v0, p0, Lb/a;->d:Ljava/util/List;

    invoke-static {v0}, Lo1/s0;->v(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lm1/c;->f(ILjava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lb/a;->p()V

    :cond_1
    return-void
.end method

.method public l(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lb/a;->b:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lb/a;->b:Z

    const/16 v0, 0xcd

    .line 3
    invoke-static {v0, p1}, Lm1/c;->e(II)I

    const/16 p1, 0x81

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 4
    iget-boolean v2, p0, Lb/a;->a:Z

    invoke-virtual {p0, v2}, Lb/a;->c(Z)I

    move-result v2

    aput v2, v0, v1

    invoke-static {p1, v0}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lb/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lb/a;->c:Ljava/lang/String;

    const/16 v0, 0xcb

    .line 3
    invoke-virtual {p0, p1}, Lb/a;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lm1/c;->f(ILjava/lang/String;)V

    const/16 p1, 0x7f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lb/a;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lu0/d;->K3(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lb/a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iput-boolean v1, p0, Lb/a;->a:Z

    :cond_0
    const/16 p1, 0x81

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 3
    iget-boolean v2, p0, Lb/a;->a:Z

    invoke-virtual {p0, v2}, Lb/a;->c(Z)I

    move-result v2

    aput v2, v0, v1

    invoke-static {p1, v0}, Lu0/d;->I3(I[I)V

    return-void
.end method

.method public p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lb/a;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 3
    new-array v2, v1, [Ljava/lang/String;

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_1
    const/16 v0, 0x80

    .line 5
    invoke-static {v0, v2}, Lu0/d;->K3(I[Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lb/a;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lb/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a;->d:Ljava/util/List;

    sget-object v3, Lh0/c;->p:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v2, p0, Lb/a;->a:Z

    const-wide/16 v3, 0x0

    .line 4
    iput-wide v3, p0, Lb/a;->f:J

    .line 5
    sget-object v0, Lh0/c;->p:Ljava/lang/String;

    iput-object v0, p0, Lb/a;->e:Ljava/lang/String;

    const/16 v0, 0x81

    new-array v1, v1, [I

    .line 6
    invoke-virtual {p0, v2}, Lb/a;->c(Z)I

    move-result v3

    aput v3, v1, v2

    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lb/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lh0/c;->p:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lb/a;->e:Ljava/lang/String;

    .line 9
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v0

    invoke-virtual {v0}, Lh1/a;->e()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lb/a;->j(I)V

    :cond_1
    :goto_0
    return-void
.end method
