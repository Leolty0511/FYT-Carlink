.class public Lk0/bg$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bg;


# direct methods
.method public constructor <init>(Lk0/bg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bg$g;->a:Lk0/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/bg$g;->a:Lk0/bg;

    invoke-static {v0}, Lk0/bg;->J3(Lk0/bg;)I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lk0/bg$g;->a:Lk0/bg;

    invoke-static {v0}, Lk0/bg;->M3(Lk0/bg;)I

    .line 3
    iget-object v0, p0, Lk0/bg$g;->a:Lk0/bg;

    invoke-static {v0}, Lk0/bg;->K3(Lk0/bg;)I

    move-result v0

    iget-object v3, p0, Lk0/bg$g;->a:Lk0/bg;

    invoke-static {v3}, Lk0/bg;->J3(Lk0/bg;)I

    move-result v3

    div-int/2addr v3, v1

    if-ne v0, v3, :cond_0

    .line 4
    iget-object v0, p0, Lk0/bg$g;->a:Lk0/bg;

    invoke-static {v0, v2}, Lk0/bg;->L3(Lk0/bg;I)I

    return-void

    .line 5
    :cond_0
    sget v0, Lu0/b;->a0:I

    .line 6
    sget v1, Lu0/b;->f:I

    .line 7
    sget v3, Ly0/f;->i:I

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lk0/bg;->i3()[I

    move-result-object v0

    sget v1, Ly0/f;->c:I

    const/16 v3, 0x24

    invoke-static {v1, v2, v3}, Lo1/o0;->a(III)I

    move-result v1

    aget v0, v0, v1

    invoke-static {v0}, Lk0/bg;->h3(I)I

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    invoke-static {}, Lk0/bg;->i3()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-static {v0}, Lk0/bg;->h3(I)I

    .line 10
    :goto_1
    iget-object v0, p0, Lk0/bg$g;->a:Lk0/bg;

    iget-object v0, v0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    if-ne v0, v4, :cond_3

    .line 11
    invoke-static {}, Lk0/bg;->j3()I

    move-result v0

    invoke-static {}, Lk0/bg;->g3()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 12
    iget-object v0, p0, Lk0/bg$g;->a:Lk0/bg;

    invoke-static {v0}, Lk0/bg;->k3(Lk0/bg;)V

    .line 13
    :cond_3
    iget-object v0, p0, Lk0/bg$g;->a:Lk0/bg;

    iget-object v0, v0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I

    if-ne v0, v4, :cond_6

    .line 14
    invoke-static {}, Lk0/bg;->l3()I

    move-result v0

    invoke-static {}, Lk0/bg;->m3()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 15
    iget-object v0, p0, Lk0/bg$g;->a:Lk0/bg;

    invoke-static {v0}, Lk0/bg;->n3(Lk0/bg;)V

    .line 16
    :cond_4
    invoke-static {}, Lk0/bg;->access$1700()I

    move-result v0

    invoke-static {}, Lk0/bg;->o3()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 17
    iget-object v0, p0, Lk0/bg$g;->a:Lk0/bg;

    invoke-static {v0}, Lk0/bg;->p3(Lk0/bg;)V

    .line 18
    :cond_5
    invoke-static {}, Lk0/bg;->r3()I

    move-result v0

    invoke-static {}, Lk0/bg;->t3()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 19
    iget-object v0, p0, Lk0/bg$g;->a:Lk0/bg;

    invoke-static {v0}, Lk0/bg;->u3(Lk0/bg;)V

    .line 20
    :cond_6
    iget-object v0, p0, Lk0/bg$g;->a:Lk0/bg;

    iget-object v0, v0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I

    if-ne v0, v4, :cond_8

    .line 21
    invoke-static {}, Lk0/bg;->v3()I

    move-result v0

    invoke-static {}, Lk0/bg;->w3()I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 22
    iget-object v0, p0, Lk0/bg$g;->a:Lk0/bg;

    invoke-static {v0}, Lk0/bg;->x3(Lk0/bg;)V

    .line 23
    :cond_7
    invoke-static {}, Lk0/bg;->y3()I

    move-result v0

    invoke-static {}, Lk0/bg;->z3()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 24
    iget-object v0, p0, Lk0/bg$g;->a:Lk0/bg;

    invoke-static {v0}, Lk0/bg;->A3(Lk0/bg;)V

    :cond_8
    return-void
.end method
