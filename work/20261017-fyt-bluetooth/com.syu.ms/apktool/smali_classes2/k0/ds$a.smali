.class public Lk0/ds$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ds;


# direct methods
.method public constructor <init>(Lk0/ds;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ds$a;->a:Lk0/ds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lk0/ds;->z:I

    sget v1, Lk0/nt;->Q:I

    if-eq v0, v1, :cond_3

    .line 2
    sput v1, Lk0/ds;->z:I

    .line 3
    sget v0, Lu0/b;->r0:I

    if-nez v0, :cond_3

    .line 4
    sget v0, Lk0/ds;->z:I

    const-string v1, "persist.lesc.video.ignore"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 5
    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "true"

    .line 6
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0xc8

    .line 7
    invoke-static {v0, v1}, La/i;->a0(J)V

    .line 8
    invoke-static {}, Lo1/u;->z()I

    .line 9
    sget v0, Ly0/f;->x:I

    if-nez v0, :cond_0

    sget v0, Ly0/f;->c:I

    sget v1, Ly0/f;->R:I

    mul-int/2addr v0, v1

    sget v1, Ly0/f;->S:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    float-to-int v0, v0

    .line 10
    iget-object v1, p0, Lk0/ds$a;->a:Lk0/ds;

    sget v3, Ly0/f;->c:I

    iput v3, v1, Lk0/ds;->f:I

    .line 11
    invoke-static {v0}, Ly0/h;->t0(I)V

    .line 12
    iget-object v0, p0, Lk0/ds$a;->a:Lk0/ds;

    invoke-static {v0, v2}, Lk0/ds;->b3(Lk0/ds;Z)Z

    goto :goto_1

    :cond_1
    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Lk0/ds$a;->a:Lk0/ds;

    invoke-static {v0}, Lk0/ds;->a3(Lk0/ds;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-static {}, Lo1/u;->k()V

    const-wide/16 v2, 0x15e

    .line 15
    invoke-static {v2, v3}, La/i;->a0(J)V

    const-string v0, "false"

    .line 16
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lk0/ds$a;->a:Lk0/ds;

    iget v0, v0, Lk0/ds;->f:I

    invoke-static {v0}, Ly0/h;->t0(I)V

    .line 18
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out iJumppage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lk0/ds$a;->a:Lk0/ds;

    invoke-static {v3}, Lk0/ds;->a3(Lk0/ds;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ----JumpPage.isCarUiTop() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo1/u;->a0()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 19
    :cond_2
    iget-object v0, p0, Lk0/ds$a;->a:Lk0/ds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lk0/ds;->b3(Lk0/ds;Z)Z

    :cond_3
    :goto_1
    return-void
.end method
