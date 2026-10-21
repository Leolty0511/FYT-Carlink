.class public Lk0/es$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/es;


# direct methods
.method public constructor <init>(Lk0/es;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/es$e;->a:Lk0/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->r0:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lk0/es$e;->a:Lk0/es;

    iget v3, v0, Lk0/es;->c:I

    if-ltz v3, :cond_0

    sub-int/2addr v3, v2

    .line 3
    iput v3, v0, Lk0/es;->c:I

    goto :goto_1

    .line 4
    :cond_0
    iget v3, v0, Lk0/es;->b:I

    if-eq v3, v2, :cond_1

    iget v0, v0, Lk0/es;->d:I

    if-eq v0, v2, :cond_1

    sget v0, Lk0/es;->J:I

    if-ne v0, v2, :cond_4

    :cond_1
    const/16 v0, 0x75

    new-array v3, v2, [I

    aput v2, v3, v1

    .line 5
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    .line 6
    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "persist.lesc.video.ignore"

    const-string v3, "true"

    .line 7
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0xc8

    .line 8
    invoke-static {v3, v4}, La/i;->a0(J)V

    .line 9
    invoke-static {}, Lo1/u;->z()I

    .line 10
    sget v0, Ly0/f;->x:I

    if-nez v0, :cond_2

    sget v0, Ly0/f;->c:I

    sget v3, Ly0/f;->R:I

    mul-int/2addr v0, v3

    sget v3, Ly0/f;->S:I

    div-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    float-to-int v0, v0

    .line 11
    iget-object v3, p0, Lk0/es$e;->a:Lk0/es;

    sget v4, Ly0/f;->c:I

    iput v4, v3, Lk0/es;->h:I

    .line 12
    invoke-static {v0}, Ly0/h;->t0(I)V

    .line 13
    iget-object v0, p0, Lk0/es$e;->a:Lk0/es;

    invoke-static {v0, v2}, Lk0/es;->d3(Lk0/es;Z)Z

    .line 14
    :cond_3
    invoke-static {v1}, Lu0/d;->C2(I)V

    .line 15
    :cond_4
    :goto_1
    iget-object v0, p0, Lk0/es$e;->a:Lk0/es;

    iget v3, v0, Lk0/es;->q:I

    if-lez v3, :cond_5

    sub-int/2addr v3, v2

    .line 16
    iput v3, v0, Lk0/es;->q:I

    if-nez v3, :cond_5

    .line 17
    sget v0, Lu0/b;->D:I

    const/16 v3, 0xd

    if-eq v0, v3, :cond_5

    .line 18
    invoke-static {}, Lk0/es;->e3()I

    move-result v0

    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 19
    iget-object v0, p0, Lk0/es$e;->a:Lk0/es;

    iget-boolean v3, v0, Lk0/es;->x:Z

    if-eqz v3, :cond_5

    .line 20
    invoke-static {v0, v1}, Lk0/es;->b3(Lk0/es;Z)V

    :cond_5
    const-string v0, "com.syu.fourcamera2"

    .line 21
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "persist.lsec.fourcamera2.show"

    .line 22
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    :cond_6
    iget-object v0, p0, Lk0/es$e;->a:Lk0/es;

    iget v3, v0, Lk0/es;->n:I

    add-int/2addr v3, v2

    iput v3, v0, Lk0/es;->n:I

    const/4 v0, 0x2

    if-lt v3, v0, :cond_7

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 24
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 25
    iget-object v0, p0, Lk0/es$e;->a:Lk0/es;

    iput v1, v0, Lk0/es;->n:I

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x29
        0x0
    .end array-data
.end method
