.class public Lk0/h7$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/h7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/h7;


# direct methods
.method public constructor <init>(Lk0/h7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/h7$c;->a:Lk0/h7;

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
    iget-object v0, p0, Lk0/h7$c;->a:Lk0/h7;

    invoke-static {v0}, Lk0/h7;->f3(Lk0/h7;)I

    .line 3
    iget-object v0, p0, Lk0/h7$c;->a:Lk0/h7;

    invoke-static {v0}, Lk0/h7;->c3(Lk0/h7;)I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lk0/h7$c;->a:Lk0/h7;

    invoke-static {v0, v2}, Lk0/h7;->e3(Lk0/h7;I)I

    .line 5
    iget-object v0, p0, Lk0/h7$c;->a:Lk0/h7;

    invoke-static {v0}, Lk0/h7;->s3(Lk0/h7;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lk0/h7$c;->a:Lk0/h7;

    invoke-static {v0}, Lk0/h7;->y3(Lk0/h7;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lk0/h7$c;->a:Lk0/h7;

    invoke-static {v0}, Lk0/h7;->B3(Lk0/h7;)I

    .line 8
    iget-object v0, p0, Lk0/h7$c;->a:Lk0/h7;

    invoke-static {v0}, Lk0/h7;->z3(Lk0/h7;)I

    move-result v0

    iget-object v3, p0, Lk0/h7$c;->a:Lk0/h7;

    invoke-static {v3}, Lk0/h7;->y3(Lk0/h7;)I

    move-result v3

    div-int/2addr v3, v1

    if-ne v0, v3, :cond_2

    .line 9
    iget-object v0, p0, Lk0/h7$c;->a:Lk0/h7;

    invoke-static {v0, v2}, Lk0/h7;->A3(Lk0/h7;I)I

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
    invoke-static {}, Lk0/h7;->E3()[I

    move-result-object v0

    sget v1, Ly0/f;->c:I

    const/16 v3, 0x24

    invoke-static {v1, v2, v3}, Lo1/o0;->a(III)I

    move-result v1

    aget v0, v0, v1

    invoke-static {v0}, Lk0/h7;->D3(I)I

    goto :goto_1

    .line 14
    :cond_4
    :goto_0
    invoke-static {}, Lk0/h7;->E3()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-static {v0}, Lk0/h7;->D3(I)I

    .line 15
    :goto_1
    iget-object v0, p0, Lk0/h7$c;->a:Lk0/h7;

    iget-object v0, v0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    if-ne v0, v4, :cond_5

    .line 16
    invoke-static {}, Lk0/h7;->F3()I

    move-result v0

    invoke-static {}, Lk0/h7;->C3()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 17
    iget-object v0, p0, Lk0/h7$c;->a:Lk0/h7;

    invoke-static {v0}, Lk0/h7;->G3(Lk0/h7;)V

    .line 18
    :cond_5
    iget-object v0, p0, Lk0/h7$c;->a:Lk0/h7;

    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    iget v1, v1, Lk0/mt;->d:I

    const/4 v2, 0x0

    if-ne v1, v4, :cond_8

    .line 19
    invoke-virtual {v0, v2}, Lk0/h7;->P2([I)V

    .line 20
    invoke-static {}, Lk0/h7;->H3()I

    move-result v0

    invoke-static {}, Lk0/h7;->d3()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 21
    invoke-static {}, Lk0/h7;->d3()I

    move-result v0

    invoke-static {v0}, Lk0/h7;->I3(I)I

    .line 22
    iget-object v0, p0, Lk0/h7$c;->a:Lk0/h7;

    invoke-static {v0}, Lk0/h7;->g3(Lk0/h7;)V

    .line 23
    :cond_6
    invoke-static {}, Lk0/h7;->h3()I

    move-result v0

    invoke-static {}, Lk0/h7;->j3()I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 24
    invoke-static {}, Lk0/h7;->j3()I

    move-result v0

    invoke-static {v0}, Lk0/h7;->i3(I)I

    .line 25
    iget-object v0, p0, Lk0/h7$c;->a:Lk0/h7;

    invoke-static {v0}, Lk0/h7;->k3(Lk0/h7;)V

    .line 26
    :cond_7
    invoke-static {}, Lk0/h7;->l3()I

    move-result v0

    invoke-static {}, Lk0/h7;->n3()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 27
    invoke-static {}, Lk0/h7;->n3()I

    move-result v0

    invoke-static {v0}, Lk0/h7;->m3(I)I

    .line 28
    iget-object v0, p0, Lk0/h7$c;->a:Lk0/h7;

    invoke-static {v0}, Lk0/h7;->o3(Lk0/h7;)V

    .line 29
    :cond_8
    iget-object v0, p0, Lk0/h7$c;->a:Lk0/h7;

    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    iget v1, v1, Lk0/mt;->c:I

    if-ne v1, v4, :cond_a

    .line 30
    invoke-virtual {v0, v2}, Lk0/h7;->R2([I)V

    .line 31
    invoke-static {}, Lk0/h7;->p3()I

    move-result v0

    invoke-static {}, Lk0/h7;->r3()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 32
    invoke-static {}, Lk0/h7;->r3()I

    move-result v0

    invoke-static {v0}, Lk0/h7;->q3(I)I

    .line 33
    iget-object v0, p0, Lk0/h7$c;->a:Lk0/h7;

    invoke-static {v0}, Lk0/h7;->t3(Lk0/h7;)V

    .line 34
    :cond_9
    invoke-static {}, Lk0/h7;->u3()I

    move-result v0

    invoke-static {}, Lk0/h7;->w3()I

    move-result v1

    if-eq v0, v1, :cond_a

    .line 35
    invoke-static {}, Lk0/h7;->w3()I

    move-result v0

    invoke-static {v0}, Lk0/h7;->v3(I)I

    .line 36
    iget-object v0, p0, Lk0/h7$c;->a:Lk0/h7;

    invoke-static {v0}, Lk0/h7;->x3(Lk0/h7;)V

    :cond_a
    return-void
.end method
