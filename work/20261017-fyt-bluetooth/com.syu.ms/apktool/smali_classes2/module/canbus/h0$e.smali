.class public Lmodule/canbus/h0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/h0;


# direct methods
.method public constructor <init>(Lmodule/canbus/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/h0$e;->a:Lmodule/canbus/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lmodule/canbus/h0$e;->a:Lmodule/canbus/h0;

    invoke-static {v0}, Lmodule/canbus/h0;->e3(Lmodule/canbus/h0;)I

    move-result v0

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-le v0, v2, :cond_2

    .line 4
    iget-object v0, p0, Lmodule/canbus/h0$e;->a:Lmodule/canbus/h0;

    invoke-static {v0}, Lmodule/canbus/h0;->i3(Lmodule/canbus/h0;)I

    .line 5
    iget-object v0, p0, Lmodule/canbus/h0$e;->a:Lmodule/canbus/h0;

    invoke-static {v0}, Lmodule/canbus/h0;->f3(Lmodule/canbus/h0;)I

    move-result v0

    iget-object v4, p0, Lmodule/canbus/h0$e;->a:Lmodule/canbus/h0;

    invoke-static {v4}, Lmodule/canbus/h0;->e3(Lmodule/canbus/h0;)I

    move-result v4

    div-int/2addr v4, v2

    if-ne v0, v4, :cond_2

    .line 6
    iget-object v0, p0, Lmodule/canbus/h0$e;->a:Lmodule/canbus/h0;

    invoke-static {v0, v3}, Lmodule/canbus/h0;->h3(Lmodule/canbus/h0;I)I

    return-void

    .line 7
    :cond_2
    sget v0, Lu0/b;->a0:I

    .line 8
    sget v2, Lu0/b;->f:I

    .line 9
    sget v4, Ly0/f;->i:I

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    if-ne v4, v1, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {}, Lmodule/canbus/h0;->v3()[I

    move-result-object v0

    sget v2, Ly0/f;->c:I

    const/16 v4, 0x24

    invoke-static {v2, v3, v4}, Lo1/o0;->a(III)I

    move-result v2

    aget v0, v0, v2

    invoke-static {v0}, Lmodule/canbus/h0;->u3(I)I

    goto :goto_2

    .line 11
    :cond_4
    :goto_1
    invoke-static {}, Lmodule/canbus/h0;->v3()[I

    move-result-object v0

    aget v0, v0, v3

    invoke-static {v0}, Lmodule/canbus/h0;->u3(I)I

    .line 12
    :goto_2
    iget-object v0, p0, Lmodule/canbus/h0$e;->a:Lmodule/canbus/h0;

    iget-object v0, v0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    if-ne v0, v1, :cond_5

    .line 13
    invoke-static {}, Lmodule/canbus/h0;->w3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/h0;->s3()I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 14
    iget-object v0, p0, Lmodule/canbus/h0$e;->a:Lmodule/canbus/h0;

    invoke-static {v0}, Lmodule/canbus/h0;->x3(Lmodule/canbus/h0;)V

    .line 15
    :cond_5
    iget-object v0, p0, Lmodule/canbus/h0$e;->a:Lmodule/canbus/h0;

    iget-object v0, v0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I

    if-ne v0, v1, :cond_8

    .line 16
    invoke-static {}, Lmodule/canbus/h0;->y3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/h0;->z3()I

    move-result v2

    if-eq v0, v2, :cond_6

    .line 17
    iget-object v0, p0, Lmodule/canbus/h0$e;->a:Lmodule/canbus/h0;

    invoke-static {v0}, Lmodule/canbus/h0;->A3(Lmodule/canbus/h0;)V

    .line 18
    :cond_6
    invoke-static {}, Lmodule/canbus/h0;->B3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/h0;->g3()I

    move-result v2

    if-eq v0, v2, :cond_7

    .line 19
    iget-object v0, p0, Lmodule/canbus/h0$e;->a:Lmodule/canbus/h0;

    invoke-static {v0}, Lmodule/canbus/h0;->j3(Lmodule/canbus/h0;)V

    .line 20
    :cond_7
    invoke-static {}, Lmodule/canbus/h0;->k3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/h0;->l3()I

    move-result v2

    if-eq v0, v2, :cond_8

    .line 21
    iget-object v0, p0, Lmodule/canbus/h0$e;->a:Lmodule/canbus/h0;

    invoke-static {v0}, Lmodule/canbus/h0;->m3(Lmodule/canbus/h0;)V

    .line 22
    :cond_8
    iget-object v0, p0, Lmodule/canbus/h0$e;->a:Lmodule/canbus/h0;

    iget-object v0, v0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I

    if-ne v0, v1, :cond_a

    .line 23
    invoke-static {}, Lmodule/canbus/h0;->n3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/h0;->o3()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 24
    iget-object v0, p0, Lmodule/canbus/h0$e;->a:Lmodule/canbus/h0;

    invoke-static {v0}, Lmodule/canbus/h0;->p3(Lmodule/canbus/h0;)V

    .line 25
    :cond_9
    invoke-static {}, Lmodule/canbus/h0;->q3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/h0;->r3()I

    move-result v1

    if-eq v0, v1, :cond_a

    .line 26
    iget-object v0, p0, Lmodule/canbus/h0$e;->a:Lmodule/canbus/h0;

    invoke-static {v0}, Lmodule/canbus/h0;->t3(Lmodule/canbus/h0;)V

    :cond_a
    return-void
.end method
