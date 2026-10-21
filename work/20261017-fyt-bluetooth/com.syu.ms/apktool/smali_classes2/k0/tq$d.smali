.class public Lk0/tq$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/tq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/tq;


# direct methods
.method public constructor <init>(Lk0/tq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/tq$d;->a:Lk0/tq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    sget v0, Lu0/b;->r0:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lk0/tq$d;->a:Lk0/tq;

    iget v3, v0, Lk0/tq;->d:I

    if-ltz v3, :cond_0

    sub-int/2addr v3, v2

    .line 3
    iput v3, v0, Lk0/tq;->d:I

    goto :goto_1

    .line 4
    :cond_0
    iget v3, v0, Lk0/tq;->c:I

    const-string v4, "persist.lesc.video.ignore"

    if-ne v3, v2, :cond_2

    .line 5
    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "true"

    .line 6
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0xc8

    .line 7
    invoke-static {v3, v4}, La/i;->a0(J)V

    .line 8
    iget-object v0, p0, Lk0/tq$d;->a:Lk0/tq;

    invoke-static {v0, v2}, Lk0/tq;->e3(Lk0/tq;Z)Z

    .line 9
    invoke-static {}, Lo1/u;->z()I

    .line 10
    sget v0, Ly0/f;->x:I

    if-nez v0, :cond_1

    sget v0, Ly0/f;->c:I

    sget v3, Ly0/f;->R:I

    mul-int/2addr v0, v3

    sget v3, Ly0/f;->S:I

    div-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    float-to-int v0, v0

    .line 11
    iget-object v3, p0, Lk0/tq$d;->a:Lk0/tq;

    sget v4, Ly0/f;->c:I

    iput v4, v3, Lk0/tq;->e:I

    .line 12
    invoke-static {v0}, Ly0/h;->t0(I)V

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    .line 13
    invoke-static {v0}, Lk0/tq;->c3(Lk0/tq;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lk0/tq$d;->a:Lk0/tq;

    iget v0, v0, Lk0/tq;->e:I

    invoke-static {v0}, Ly0/h;->t0(I)V

    const-wide/16 v5, 0x64

    .line 15
    invoke-static {v5, v6}, La/i;->a0(J)V

    const/4 v0, 0x6

    .line 16
    invoke-static {v0, v1}, Ll0/b0;->l0(II)V

    .line 17
    invoke-static {v0, v2}, Ll0/b0;->l0(II)V

    const-wide/16 v5, 0x15e

    .line 18
    invoke-static {v5, v6}, La/i;->a0(J)V

    const-string v0, "false"

    .line 19
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_3
    :goto_1
    iget-object v0, p0, Lk0/tq$d;->a:Lk0/tq;

    iget v3, v0, Lk0/tq;->o:I

    if-lez v3, :cond_4

    sub-int/2addr v3, v2

    .line 21
    iput v3, v0, Lk0/tq;->o:I

    if-nez v3, :cond_4

    .line 22
    sget v0, Lu0/b;->D:I

    const/16 v3, 0xd

    if-eq v0, v3, :cond_4

    .line 23
    invoke-static {}, Lk0/tq;->f3()I

    move-result v0

    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 24
    iget-object v0, p0, Lk0/tq$d;->a:Lk0/tq;

    iget-boolean v3, v0, Lk0/tq;->u:Z

    if-eqz v3, :cond_4

    .line 25
    invoke-static {v0, v1}, Lk0/tq;->b3(Lk0/tq;Z)V

    :cond_4
    const-string v0, "com.syu.fourcamera2"

    .line 26
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    iget-object v0, p0, Lk0/tq$d;->a:Lk0/tq;

    iget v3, v0, Lk0/tq;->l:I

    add-int/2addr v3, v2

    iput v3, v0, Lk0/tq;->l:I

    const/4 v0, 0x2

    if-lt v3, v0, :cond_5

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 28
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 29
    iget-object v0, p0, Lk0/tq$d;->a:Lk0/tq;

    iput v1, v0, Lk0/tq;->l:I

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0x29
    .end array-data
.end method
