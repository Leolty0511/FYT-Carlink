.class public Lk0/sq$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/sq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/sq;


# direct methods
.method public constructor <init>(Lk0/sq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/sq$c;->a:Lk0/sq;

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

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Lk0/sq$c;->a:Lk0/sq;

    iget v3, v0, Lk0/sq;->c:I

    if-ltz v3, :cond_0

    sub-int/2addr v3, v2

    .line 3
    iput v3, v0, Lk0/sq;->c:I

    goto/16 :goto_2

    .line 4
    :cond_0
    iget v3, v0, Lk0/sq;->b:I

    const-string v4, "persist.lesc.video.ignore"

    const/16 v5, 0x7b

    if-eq v3, v2, :cond_3

    iget v6, v0, Lk0/sq;->d:I

    if-ne v6, v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_5

    if-nez v6, :cond_5

    .line 5
    invoke-static {v0}, Lk0/sq;->c3(Lk0/sq;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v2, [I

    aput v1, v0, v1

    .line 6
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    .line 7
    iget-object v0, p0, Lk0/sq$c;->a:Lk0/sq;

    iget v0, v0, Lk0/sq;->e:I

    invoke-static {v0}, Ly0/h;->t0(I)V

    const-wide/16 v5, 0x64

    .line 8
    invoke-static {v5, v6}, La/i;->a0(J)V

    const-wide/16 v5, 0x15e

    .line 9
    invoke-static {v5, v6}, La/i;->a0(J)V

    const-string v0, "false"

    .line 10
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lk0/sq$c;->a:Lk0/sq;

    invoke-static {v0, v1}, Lk0/sq;->d3(Lk0/sq;Z)Z

    goto :goto_2

    .line 12
    :cond_3
    :goto_0
    invoke-static {v0}, Lk0/sq;->c3(Lk0/sq;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-nez v0, :cond_5

    new-array v0, v2, [I

    aput v2, v0, v1

    .line 13
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    .line 14
    iget-object v0, p0, Lk0/sq$c;->a:Lk0/sq;

    invoke-static {v0, v2}, Lk0/sq;->d3(Lk0/sq;Z)Z

    const-string v0, "true"

    .line 15
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0xc8

    .line 16
    invoke-static {v3, v4}, La/i;->a0(J)V

    .line 17
    invoke-static {}, Lo1/u;->z()I

    .line 18
    sget v0, Ly0/f;->x:I

    if-nez v0, :cond_4

    sget v0, Ly0/f;->c:I

    sget v3, Ly0/f;->R:I

    mul-int/2addr v0, v3

    sget v3, Ly0/f;->S:I

    div-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    float-to-int v0, v0

    .line 19
    iget-object v3, p0, Lk0/sq$c;->a:Lk0/sq;

    sget v4, Ly0/f;->c:I

    iput v4, v3, Lk0/sq;->e:I

    .line 20
    invoke-static {v0}, Ly0/h;->t0(I)V

    .line 21
    :cond_5
    :goto_2
    iget-object v0, p0, Lk0/sq$c;->a:Lk0/sq;

    iget v3, v0, Lk0/sq;->n:I

    if-lez v3, :cond_6

    sub-int/2addr v3, v2

    .line 22
    iput v3, v0, Lk0/sq;->n:I

    if-nez v3, :cond_6

    .line 23
    sget v0, Lu0/b;->D:I

    const/16 v3, 0xd

    if-eq v0, v3, :cond_6

    .line 24
    invoke-static {}, Lk0/sq;->e3()I

    move-result v0

    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 25
    iget-object v0, p0, Lk0/sq$c;->a:Lk0/sq;

    iget-boolean v3, v0, Lk0/sq;->t:Z

    if-eqz v3, :cond_6

    .line 26
    invoke-static {v0, v1}, Lk0/sq;->b3(Lk0/sq;Z)V

    :cond_6
    const-string v0, "com.syu.fourcamera2"

    .line 27
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "persist.lsec.fourcamera2.show"

    .line 28
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 29
    :cond_7
    iget-object v0, p0, Lk0/sq$c;->a:Lk0/sq;

    iget v3, v0, Lk0/sq;->k:I

    add-int/2addr v3, v2

    iput v3, v0, Lk0/sq;->k:I

    const/4 v0, 0x2

    if-lt v3, v0, :cond_8

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 30
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 31
    iget-object v0, p0, Lk0/sq$c;->a:Lk0/sq;

    iput v1, v0, Lk0/sq;->k:I

    :cond_8
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0x35
    .end array-data
.end method
