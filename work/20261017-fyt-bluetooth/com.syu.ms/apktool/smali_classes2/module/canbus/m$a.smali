.class public Lmodule/canbus/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/m;


# direct methods
.method public constructor <init>(Lmodule/canbus/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/m$a;->a:Lmodule/canbus/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lmodule/canbus/m$a;->a:Lmodule/canbus/m;

    invoke-static {v0}, Lmodule/canbus/m;->c3(Lmodule/canbus/m;)I

    .line 3
    iget-object v0, p0, Lmodule/canbus/m$a;->a:Lmodule/canbus/m;

    invoke-static {v0}, Lmodule/canbus/m;->a3(Lmodule/canbus/m;)I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lmodule/canbus/m$a;->a:Lmodule/canbus/m;

    invoke-static {v0, v2}, Lmodule/canbus/m;->b3(Lmodule/canbus/m;I)I

    .line 5
    iget-object v0, p0, Lmodule/canbus/m$a;->a:Lmodule/canbus/m;

    invoke-static {v0}, Lmodule/canbus/m;->d3(Lmodule/canbus/m;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lmodule/canbus/m$a;->a:Lmodule/canbus/m;

    invoke-static {v0}, Lmodule/canbus/m;->e3(Lmodule/canbus/m;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lmodule/canbus/m$a;->a:Lmodule/canbus/m;

    invoke-static {v0}, Lmodule/canbus/m;->h3(Lmodule/canbus/m;)I

    .line 8
    iget-object v0, p0, Lmodule/canbus/m$a;->a:Lmodule/canbus/m;

    invoke-static {v0}, Lmodule/canbus/m;->f3(Lmodule/canbus/m;)I

    move-result v0

    iget-object v3, p0, Lmodule/canbus/m$a;->a:Lmodule/canbus/m;

    invoke-static {v3}, Lmodule/canbus/m;->e3(Lmodule/canbus/m;)I

    move-result v3

    div-int/2addr v3, v1

    if-ne v0, v3, :cond_2

    .line 9
    iget-object v0, p0, Lmodule/canbus/m$a;->a:Lmodule/canbus/m;

    invoke-static {v0, v2}, Lmodule/canbus/m;->g3(Lmodule/canbus/m;I)I

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lmodule/canbus/m$a;->a:Lmodule/canbus/m;

    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    iget v1, v1, Lk0/mt;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lmodule/canbus/m;->R2([I)V

    .line 12
    invoke-static {}, Lmodule/canbus/m;->i3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/m;->k3()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 13
    invoke-static {}, Lmodule/canbus/m;->k3()I

    move-result v0

    invoke-static {v0}, Lmodule/canbus/m;->j3(I)I

    .line 14
    iget-object v0, p0, Lmodule/canbus/m$a;->a:Lmodule/canbus/m;

    invoke-static {v0}, Lmodule/canbus/m;->l3(Lmodule/canbus/m;)V

    .line 15
    :cond_3
    invoke-static {}, Lmodule/canbus/m;->m3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/m;->o3()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 16
    invoke-static {}, Lmodule/canbus/m;->o3()I

    move-result v0

    invoke-static {v0}, Lmodule/canbus/m;->n3(I)I

    .line 17
    iget-object v0, p0, Lmodule/canbus/m$a;->a:Lmodule/canbus/m;

    invoke-static {v0}, Lmodule/canbus/m;->p3(Lmodule/canbus/m;)V

    :cond_4
    return-void
.end method
