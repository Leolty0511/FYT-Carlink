.class public Lmodule/canbus/c0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/c0;


# direct methods
.method public constructor <init>(Lmodule/canbus/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/c0$d;->a:Lmodule/canbus/c0;

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
    iget-object v0, p0, Lmodule/canbus/c0$d;->a:Lmodule/canbus/c0;

    invoke-static {v0}, Lmodule/canbus/c0;->x3(Lmodule/canbus/c0;)I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lmodule/canbus/c0$d;->a:Lmodule/canbus/c0;

    invoke-static {v0}, Lmodule/canbus/c0;->A3(Lmodule/canbus/c0;)I

    .line 4
    iget-object v0, p0, Lmodule/canbus/c0$d;->a:Lmodule/canbus/c0;

    invoke-static {v0}, Lmodule/canbus/c0;->y3(Lmodule/canbus/c0;)I

    move-result v0

    iget-object v3, p0, Lmodule/canbus/c0$d;->a:Lmodule/canbus/c0;

    invoke-static {v3}, Lmodule/canbus/c0;->x3(Lmodule/canbus/c0;)I

    move-result v3

    div-int/2addr v3, v1

    if-ne v0, v3, :cond_1

    .line 5
    iget-object v0, p0, Lmodule/canbus/c0$d;->a:Lmodule/canbus/c0;

    invoke-static {v0, v2}, Lmodule/canbus/c0;->z3(Lmodule/canbus/c0;I)I

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
    invoke-static {}, Lmodule/canbus/c0;->D3()[I

    move-result-object v0

    sget v1, Ly0/f;->c:I

    const/16 v3, 0x24

    invoke-static {v1, v2, v3}, Lo1/o0;->a(III)I

    move-result v1

    aget v0, v0, v1

    invoke-static {v0}, Lmodule/canbus/c0;->C3(I)I

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    invoke-static {}, Lmodule/canbus/c0;->D3()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-static {v0}, Lmodule/canbus/c0;->C3(I)I

    .line 11
    :goto_1
    iget-object v0, p0, Lmodule/canbus/c0$d;->a:Lmodule/canbus/c0;

    iget-object v0, v0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    if-ne v0, v4, :cond_4

    .line 12
    invoke-static {}, Lmodule/canbus/c0;->E3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/c0;->B3()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 13
    iget-object v0, p0, Lmodule/canbus/c0$d;->a:Lmodule/canbus/c0;

    invoke-static {v0}, Lmodule/canbus/c0;->d3(Lmodule/canbus/c0;)V

    .line 14
    :cond_4
    iget-object v0, p0, Lmodule/canbus/c0$d;->a:Lmodule/canbus/c0;

    iget-object v0, v0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I

    if-ne v0, v4, :cond_7

    .line 15
    invoke-static {}, Lmodule/canbus/c0;->e3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/c0;->f3()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 16
    iget-object v0, p0, Lmodule/canbus/c0$d;->a:Lmodule/canbus/c0;

    invoke-static {v0}, Lmodule/canbus/c0;->g3(Lmodule/canbus/c0;)V

    .line 17
    :cond_5
    invoke-static {}, Lmodule/canbus/c0;->h3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/c0;->i3()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 18
    iget-object v0, p0, Lmodule/canbus/c0$d;->a:Lmodule/canbus/c0;

    invoke-static {v0}, Lmodule/canbus/c0;->j3(Lmodule/canbus/c0;)V

    .line 19
    :cond_6
    invoke-static {}, Lmodule/canbus/c0;->access$1700()I

    move-result v0

    invoke-static {}, Lmodule/canbus/c0;->k3()I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 20
    iget-object v0, p0, Lmodule/canbus/c0$d;->a:Lmodule/canbus/c0;

    invoke-static {v0}, Lmodule/canbus/c0;->l3(Lmodule/canbus/c0;)V

    .line 21
    :cond_7
    iget-object v0, p0, Lmodule/canbus/c0$d;->a:Lmodule/canbus/c0;

    iget-object v0, v0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I

    if-ne v0, v4, :cond_9

    .line 22
    invoke-static {}, Lmodule/canbus/c0;->n3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/c0;->p3()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 23
    iget-object v0, p0, Lmodule/canbus/c0$d;->a:Lmodule/canbus/c0;

    invoke-static {v0}, Lmodule/canbus/c0;->q3(Lmodule/canbus/c0;)V

    .line 24
    :cond_8
    invoke-static {}, Lmodule/canbus/c0;->r3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/c0;->s3()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 25
    iget-object v0, p0, Lmodule/canbus/c0$d;->a:Lmodule/canbus/c0;

    invoke-static {v0}, Lmodule/canbus/c0;->t3(Lmodule/canbus/c0;)V

    :cond_9
    return-void
.end method
