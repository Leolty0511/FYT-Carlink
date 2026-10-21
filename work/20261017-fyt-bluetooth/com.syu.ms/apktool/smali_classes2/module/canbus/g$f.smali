.class public Lmodule/canbus/g$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/g;


# direct methods
.method public constructor <init>(Lmodule/canbus/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/g$f;->a:Lmodule/canbus/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lk0/nt;->a:I

    const v1, 0x10075    # 9.2E-41f

    if-eq v0, v1, :cond_0

    const v1, 0x20075

    if-eq v0, v1, :cond_0

    const v1, 0x30075

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lmodule/canbus/g$f;->a:Lmodule/canbus/g;

    invoke-static {v0}, Lmodule/canbus/g;->K3(Lmodule/canbus/g;)I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lmodule/canbus/g$f;->a:Lmodule/canbus/g;

    invoke-static {v0}, Lmodule/canbus/g;->N3(Lmodule/canbus/g;)I

    .line 4
    iget-object v0, p0, Lmodule/canbus/g$f;->a:Lmodule/canbus/g;

    invoke-static {v0}, Lmodule/canbus/g;->L3(Lmodule/canbus/g;)I

    move-result v0

    iget-object v3, p0, Lmodule/canbus/g$f;->a:Lmodule/canbus/g;

    invoke-static {v3}, Lmodule/canbus/g;->K3(Lmodule/canbus/g;)I

    move-result v3

    div-int/2addr v3, v1

    if-ne v0, v3, :cond_1

    .line 5
    iget-object v0, p0, Lmodule/canbus/g$f;->a:Lmodule/canbus/g;

    invoke-static {v0, v2}, Lmodule/canbus/g;->M3(Lmodule/canbus/g;I)I

    return-void

    .line 6
    :cond_1
    sget v0, Lu0/b;->a0:I

    .line 7
    sget v1, Lu0/b;->f:I

    .line 8
    sget v3, Ly0/f;->i:I

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lmodule/canbus/g;->Q3()[I

    move-result-object v0

    sget v1, Ly0/f;->c:I

    const/16 v3, 0x24

    invoke-static {v1, v2, v3}, Lo1/o0;->a(III)I

    move-result v1

    aget v0, v0, v1

    invoke-static {v0}, Lmodule/canbus/g;->P3(I)I

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    invoke-static {}, Lmodule/canbus/g;->Q3()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-static {v0}, Lmodule/canbus/g;->P3(I)I

    .line 11
    :goto_1
    iget-object v0, p0, Lmodule/canbus/g$f;->a:Lmodule/canbus/g;

    iget-object v0, v0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    if-ne v0, v4, :cond_4

    .line 12
    invoke-static {}, Lmodule/canbus/g;->e3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/g;->O3()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 13
    iget-object v0, p0, Lmodule/canbus/g$f;->a:Lmodule/canbus/g;

    invoke-static {v0}, Lmodule/canbus/g;->g3(Lmodule/canbus/g;)V

    .line 14
    :cond_4
    iget-object v0, p0, Lmodule/canbus/g$f;->a:Lmodule/canbus/g;

    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    iget v1, v1, Lk0/mt;->d:I

    const/4 v2, 0x0

    if-ne v1, v4, :cond_7

    .line 15
    invoke-virtual {v0, v2}, Lmodule/canbus/g;->P2([I)V

    .line 16
    invoke-static {}, Lmodule/canbus/g;->h3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/g;->j3()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 17
    invoke-static {}, Lmodule/canbus/g;->j3()I

    move-result v0

    invoke-static {v0}, Lmodule/canbus/g;->i3(I)I

    .line 18
    iget-object v0, p0, Lmodule/canbus/g$f;->a:Lmodule/canbus/g;

    invoke-static {v0}, Lmodule/canbus/g;->k3(Lmodule/canbus/g;)V

    .line 19
    :cond_5
    invoke-static {}, Lmodule/canbus/g;->l3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/g;->n3()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 20
    invoke-static {}, Lmodule/canbus/g;->n3()I

    move-result v0

    invoke-static {v0}, Lmodule/canbus/g;->m3(I)I

    .line 21
    iget-object v0, p0, Lmodule/canbus/g$f;->a:Lmodule/canbus/g;

    invoke-static {v0}, Lmodule/canbus/g;->o3(Lmodule/canbus/g;)V

    .line 22
    :cond_6
    invoke-static {}, Lmodule/canbus/g;->p3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/g;->r3()I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 23
    invoke-static {}, Lmodule/canbus/g;->r3()I

    move-result v0

    invoke-static {v0}, Lmodule/canbus/g;->q3(I)I

    .line 24
    iget-object v0, p0, Lmodule/canbus/g$f;->a:Lmodule/canbus/g;

    invoke-static {v0}, Lmodule/canbus/g;->t3(Lmodule/canbus/g;)V

    .line 25
    :cond_7
    iget-object v0, p0, Lmodule/canbus/g$f;->a:Lmodule/canbus/g;

    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    iget v1, v1, Lk0/mt;->c:I

    if-ne v1, v4, :cond_9

    .line 26
    invoke-virtual {v0, v2}, Lmodule/canbus/g;->R2([I)V

    .line 27
    invoke-static {}, Lmodule/canbus/g;->v3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/g;->x3()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 28
    invoke-static {}, Lmodule/canbus/g;->x3()I

    move-result v0

    invoke-static {v0}, Lmodule/canbus/g;->w3(I)I

    .line 29
    iget-object v0, p0, Lmodule/canbus/g$f;->a:Lmodule/canbus/g;

    invoke-static {v0}, Lmodule/canbus/g;->y3(Lmodule/canbus/g;)V

    .line 30
    :cond_8
    invoke-static {}, Lmodule/canbus/g;->z3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/g;->B3()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 31
    invoke-static {}, Lmodule/canbus/g;->B3()I

    move-result v0

    invoke-static {v0}, Lmodule/canbus/g;->A3(I)I

    .line 32
    iget-object v0, p0, Lmodule/canbus/g$f;->a:Lmodule/canbus/g;

    invoke-static {v0}, Lmodule/canbus/g;->C3(Lmodule/canbus/g;)V

    :cond_9
    return-void
.end method
