.class public Lmodule/canbus/g0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/g0;


# direct methods
.method public constructor <init>(Lmodule/canbus/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/g0$g;->a:Lmodule/canbus/g0;

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
    iget-object v0, p0, Lmodule/canbus/g0$g;->a:Lmodule/canbus/g0;

    invoke-static {v0}, Lmodule/canbus/g0;->f3(Lmodule/canbus/g0;)I

    .line 3
    iget-object v0, p0, Lmodule/canbus/g0$g;->a:Lmodule/canbus/g0;

    invoke-static {v0}, Lmodule/canbus/g0;->d3(Lmodule/canbus/g0;)I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lmodule/canbus/g0$g;->a:Lmodule/canbus/g0;

    invoke-static {v0, v2}, Lmodule/canbus/g0;->e3(Lmodule/canbus/g0;I)I

    .line 5
    iget-object v0, p0, Lmodule/canbus/g0$g;->a:Lmodule/canbus/g0;

    invoke-static {v0}, Lmodule/canbus/g0;->g3(Lmodule/canbus/g0;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lmodule/canbus/g0$g;->a:Lmodule/canbus/g0;

    invoke-static {v0}, Lmodule/canbus/g0;->h3(Lmodule/canbus/g0;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lmodule/canbus/g0$g;->a:Lmodule/canbus/g0;

    invoke-static {v0}, Lmodule/canbus/g0;->k3(Lmodule/canbus/g0;)I

    .line 8
    iget-object v0, p0, Lmodule/canbus/g0$g;->a:Lmodule/canbus/g0;

    invoke-static {v0}, Lmodule/canbus/g0;->i3(Lmodule/canbus/g0;)I

    move-result v0

    iget-object v3, p0, Lmodule/canbus/g0$g;->a:Lmodule/canbus/g0;

    invoke-static {v3}, Lmodule/canbus/g0;->h3(Lmodule/canbus/g0;)I

    move-result v3

    div-int/2addr v3, v1

    if-ne v0, v3, :cond_2

    .line 9
    iget-object v0, p0, Lmodule/canbus/g0$g;->a:Lmodule/canbus/g0;

    invoke-static {v0, v2}, Lmodule/canbus/g0;->j3(Lmodule/canbus/g0;I)I

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
    invoke-static {}, Lmodule/canbus/g0;->n3()[I

    move-result-object v0

    sget v1, Ly0/f;->c:I

    const/16 v3, 0x24

    invoke-static {v1, v2, v3}, Lo1/o0;->a(III)I

    move-result v1

    aget v0, v0, v1

    invoke-static {v0}, Lmodule/canbus/g0;->m3(I)I

    goto :goto_1

    .line 14
    :cond_4
    :goto_0
    invoke-static {}, Lmodule/canbus/g0;->n3()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-static {v0}, Lmodule/canbus/g0;->m3(I)I

    .line 15
    :goto_1
    iget-object v0, p0, Lmodule/canbus/g0$g;->a:Lmodule/canbus/g0;

    iget-object v0, v0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    if-ne v0, v4, :cond_5

    .line 16
    invoke-static {}, Lmodule/canbus/g0;->o3()I

    invoke-static {}, Lmodule/canbus/g0;->l3()I

    :cond_5
    return-void
.end method
