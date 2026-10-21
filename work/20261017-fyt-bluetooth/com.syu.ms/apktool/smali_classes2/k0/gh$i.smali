.class public Lk0/gh$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/gh;


# direct methods
.method public constructor <init>(Lk0/gh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/gh$i;->a:Lk0/gh;

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
    iget-object v0, p0, Lk0/gh$i;->a:Lk0/gh;

    iget v3, v0, Lk0/gh;->e:I

    if-ltz v3, :cond_0

    sub-int/2addr v3, v2

    .line 3
    iput v3, v0, Lk0/gh;->e:I

    goto :goto_1

    .line 4
    :cond_0
    iget v3, v0, Lk0/gh;->d:I

    const-string v4, "persist.lesc.video.ignore"

    const/16 v5, 0xa4

    if-ne v3, v2, :cond_2

    .line 5
    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v2, [I

    aput v2, v0, v1

    .line 6
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    const-string v0, "true"

    .line 7
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0xc8

    .line 8
    invoke-static {v3, v4}, La/i;->a0(J)V

    .line 9
    iget-object v0, p0, Lk0/gh$i;->a:Lk0/gh;

    invoke-static {v0, v2}, Lk0/gh;->t3(Lk0/gh;Z)Z

    .line 10
    invoke-static {}, Lo1/u;->z()I

    .line 11
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

    .line 12
    iget-object v3, p0, Lk0/gh$i;->a:Lk0/gh;

    sget v4, Ly0/f;->c:I

    iput v4, v3, Lk0/gh;->g:I

    .line 13
    invoke-static {v0}, Ly0/h;->t0(I)V

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    .line 14
    invoke-static {v0}, Lk0/gh;->s3(Lk0/gh;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v2, [I

    aput v1, v0, v1

    .line 15
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    .line 16
    iget-object v0, p0, Lk0/gh$i;->a:Lk0/gh;

    iget v0, v0, Lk0/gh;->g:I

    invoke-static {v0}, Ly0/h;->t0(I)V

    const-wide/16 v5, 0x64

    .line 17
    invoke-static {v5, v6}, La/i;->a0(J)V

    const-wide/16 v5, 0x15e

    .line 18
    invoke-static {v5, v6}, La/i;->a0(J)V

    const-string v0, "false"

    .line 19
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_3
    :goto_1
    iget-object v0, p0, Lk0/gh$i;->a:Lk0/gh;

    iget v3, v0, Lk0/gh;->h0:I

    add-int/2addr v3, v2

    iput v3, v0, Lk0/gh;->h0:I

    const/4 v2, 0x2

    if-le v3, v2, :cond_4

    .line 21
    iput v1, v0, Lk0/gh;->h0:I

    const-string v0, "com.syu.fourcamera2"

    .line 22
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "persist.lsec.fourcamera2.show"

    .line 23
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    :cond_4
    return-void
.end method
