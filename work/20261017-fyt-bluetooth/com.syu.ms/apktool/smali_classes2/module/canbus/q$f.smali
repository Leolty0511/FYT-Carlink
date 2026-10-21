.class public Lmodule/canbus/q$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/q;


# direct methods
.method public constructor <init>(Lmodule/canbus/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/q$f;->a:Lmodule/canbus/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lmodule/canbus/q$f;->a:Lmodule/canbus/q;

    invoke-static {v0}, Lmodule/canbus/q;->p3(Lmodule/canbus/q;)I

    .line 3
    iget-object v0, p0, Lmodule/canbus/q$f;->a:Lmodule/canbus/q;

    invoke-static {v0}, Lmodule/canbus/q;->n3(Lmodule/canbus/q;)I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lmodule/canbus/q$f;->a:Lmodule/canbus/q;

    invoke-static {v0, v2}, Lmodule/canbus/q;->o3(Lmodule/canbus/q;I)I

    .line 5
    iget-object v0, p0, Lmodule/canbus/q$f;->a:Lmodule/canbus/q;

    invoke-static {v0}, Lmodule/canbus/q;->q3(Lmodule/canbus/q;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lmodule/canbus/q$f;->a:Lmodule/canbus/q;

    invoke-static {v0}, Lmodule/canbus/q;->r3(Lmodule/canbus/q;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lmodule/canbus/q$f;->a:Lmodule/canbus/q;

    invoke-static {v0}, Lmodule/canbus/q;->u3(Lmodule/canbus/q;)I

    .line 8
    iget-object v0, p0, Lmodule/canbus/q$f;->a:Lmodule/canbus/q;

    invoke-static {v0}, Lmodule/canbus/q;->s3(Lmodule/canbus/q;)I

    move-result v0

    iget-object v3, p0, Lmodule/canbus/q$f;->a:Lmodule/canbus/q;

    invoke-static {v3}, Lmodule/canbus/q;->r3(Lmodule/canbus/q;)I

    move-result v3

    div-int/2addr v3, v1

    if-ne v0, v3, :cond_2

    .line 9
    iget-object v0, p0, Lmodule/canbus/q$f;->a:Lmodule/canbus/q;

    invoke-static {v0, v2}, Lmodule/canbus/q;->t3(Lmodule/canbus/q;I)I

    return-void

    .line 10
    :cond_2
    sget v0, Lu0/b;->a0:I

    .line 11
    sget v1, Lu0/b;->f:I

    .line 12
    sget v3, Ly0/f;->i:I

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-ne v3, v4, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {}, Lmodule/canbus/q;->x3()[I

    move-result-object v0

    sget v1, Ly0/f;->c:I

    const/16 v5, 0x24

    invoke-static {v1, v2, v5}, Lo1/o0;->a(III)I

    move-result v1

    aget v0, v0, v1

    invoke-static {v0}, Lmodule/canbus/q;->w3(I)I

    goto :goto_1

    .line 14
    :cond_4
    :goto_0
    invoke-static {}, Lmodule/canbus/q;->x3()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-static {v0}, Lmodule/canbus/q;->w3(I)I

    .line 15
    :goto_1
    iget-object v0, p0, Lmodule/canbus/q$f;->a:Lmodule/canbus/q;

    iget-object v0, v0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    if-ne v0, v4, :cond_6

    .line 16
    invoke-static {}, Lmodule/canbus/q;->y3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/q;->v3()I

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-static {}, Lmodule/canbus/q;->z3()I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 17
    :cond_5
    invoke-static {v3}, Lmodule/canbus/q;->A3(I)I

    .line 18
    iget-object v0, p0, Lmodule/canbus/q$f;->a:Lmodule/canbus/q;

    invoke-static {v0}, Lmodule/canbus/q;->f3(Lmodule/canbus/q;)V

    .line 19
    :cond_6
    iget-object v0, p0, Lmodule/canbus/q$f;->a:Lmodule/canbus/q;

    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    iget v1, v1, Lk0/mt;->c:I

    if-ne v1, v4, :cond_8

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lmodule/canbus/q;->R2([I)V

    .line 21
    invoke-static {}, Lmodule/canbus/q;->g3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/q;->i3()I

    move-result v1

    if-ne v0, v1, :cond_7

    invoke-static {}, Lmodule/canbus/q;->j3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/q;->l3()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 22
    :cond_7
    invoke-static {}, Lmodule/canbus/q;->i3()I

    move-result v0

    invoke-static {v0}, Lmodule/canbus/q;->h3(I)I

    .line 23
    invoke-static {}, Lmodule/canbus/q;->l3()I

    move-result v0

    invoke-static {v0}, Lmodule/canbus/q;->k3(I)I

    .line 24
    iget-object v0, p0, Lmodule/canbus/q$f;->a:Lmodule/canbus/q;

    invoke-static {v0}, Lmodule/canbus/q;->m3(Lmodule/canbus/q;)V

    :cond_8
    return-void
.end method
