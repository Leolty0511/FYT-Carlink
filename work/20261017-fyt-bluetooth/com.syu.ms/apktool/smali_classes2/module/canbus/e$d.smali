.class public Lmodule/canbus/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/e;


# direct methods
.method public constructor <init>(Lmodule/canbus/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/e$d;->a:Lmodule/canbus/e;

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

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lmodule/canbus/e$d;->a:Lmodule/canbus/e;

    invoke-static {v0}, Lmodule/canbus/e;->e3(Lmodule/canbus/e;)I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lmodule/canbus/e$d;->a:Lmodule/canbus/e;

    invoke-static {v0}, Lmodule/canbus/e;->s3(Lmodule/canbus/e;)I

    .line 4
    iget-object v0, p0, Lmodule/canbus/e$d;->a:Lmodule/canbus/e;

    invoke-static {v0}, Lmodule/canbus/e;->p3(Lmodule/canbus/e;)I

    move-result v0

    iget-object v3, p0, Lmodule/canbus/e$d;->a:Lmodule/canbus/e;

    invoke-static {v3}, Lmodule/canbus/e;->e3(Lmodule/canbus/e;)I

    move-result v3

    div-int/2addr v3, v1

    if-ne v0, v3, :cond_1

    .line 5
    iget-object v0, p0, Lmodule/canbus/e$d;->a:Lmodule/canbus/e;

    invoke-static {v0, v2}, Lmodule/canbus/e;->r3(Lmodule/canbus/e;I)I

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
    invoke-static {}, Lmodule/canbus/e;->v3()[I

    move-result-object v0

    sget v1, Ly0/f;->c:I

    const/16 v3, 0x24

    invoke-static {v1, v2, v3}, Lo1/o0;->a(III)I

    move-result v1

    aget v0, v0, v1

    invoke-static {v0}, Lmodule/canbus/e;->u3(I)I

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    invoke-static {}, Lmodule/canbus/e;->v3()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-static {v0}, Lmodule/canbus/e;->u3(I)I

    .line 11
    :goto_1
    iget-object v0, p0, Lmodule/canbus/e$d;->a:Lmodule/canbus/e;

    iget-object v0, v0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    if-ne v0, v4, :cond_4

    .line 12
    invoke-static {}, Lmodule/canbus/e;->w3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/e;->t3()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 13
    iget-object v0, p0, Lmodule/canbus/e$d;->a:Lmodule/canbus/e;

    invoke-static {v0}, Lmodule/canbus/e;->d3(Lmodule/canbus/e;)V

    .line 14
    :cond_4
    iget-object v0, p0, Lmodule/canbus/e$d;->a:Lmodule/canbus/e;

    iget-object v0, v0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I

    if-ne v0, v4, :cond_7

    .line 15
    invoke-static {}, Lmodule/canbus/e;->x3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/e;->y3()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 16
    iget-object v0, p0, Lmodule/canbus/e$d;->a:Lmodule/canbus/e;

    invoke-static {v0}, Lmodule/canbus/e;->z3(Lmodule/canbus/e;)V

    .line 17
    :cond_5
    invoke-static {}, Lmodule/canbus/e;->A3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/e;->f3()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 18
    iget-object v0, p0, Lmodule/canbus/e$d;->a:Lmodule/canbus/e;

    invoke-static {v0}, Lmodule/canbus/e;->g3(Lmodule/canbus/e;)V

    .line 19
    :cond_6
    invoke-static {}, Lmodule/canbus/e;->h3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/e;->i3()I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 20
    iget-object v0, p0, Lmodule/canbus/e$d;->a:Lmodule/canbus/e;

    invoke-static {v0}, Lmodule/canbus/e;->j3(Lmodule/canbus/e;)V

    .line 21
    :cond_7
    iget-object v0, p0, Lmodule/canbus/e$d;->a:Lmodule/canbus/e;

    iget-object v0, v0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I

    if-ne v0, v4, :cond_9

    .line 22
    invoke-static {}, Lmodule/canbus/e;->k3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/e;->l3()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 23
    iget-object v0, p0, Lmodule/canbus/e$d;->a:Lmodule/canbus/e;

    invoke-static {v0}, Lmodule/canbus/e;->m3(Lmodule/canbus/e;)V

    .line 24
    :cond_8
    invoke-static {}, Lmodule/canbus/e;->n3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/e;->o3()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 25
    iget-object v0, p0, Lmodule/canbus/e$d;->a:Lmodule/canbus/e;

    invoke-static {v0}, Lmodule/canbus/e;->q3(Lmodule/canbus/e;)V

    :cond_9
    return-void
.end method
