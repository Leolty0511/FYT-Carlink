.class public Lmodule/canbus/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/h;


# direct methods
.method public constructor <init>(Lmodule/canbus/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/h$a;->a:Lmodule/canbus/h;

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
    iget-object v0, p0, Lmodule/canbus/h$a;->a:Lmodule/canbus/h;

    invoke-static {v0}, Lmodule/canbus/h;->d3(Lmodule/canbus/h;)I

    .line 3
    iget-object v0, p0, Lmodule/canbus/h$a;->a:Lmodule/canbus/h;

    invoke-static {v0}, Lmodule/canbus/h;->b3(Lmodule/canbus/h;)I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lmodule/canbus/h$a;->a:Lmodule/canbus/h;

    invoke-static {v0, v2}, Lmodule/canbus/h;->c3(Lmodule/canbus/h;I)I

    .line 5
    iget-object v0, p0, Lmodule/canbus/h$a;->a:Lmodule/canbus/h;

    invoke-static {v0}, Lmodule/canbus/h;->e3(Lmodule/canbus/h;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lmodule/canbus/h$a;->a:Lmodule/canbus/h;

    invoke-static {v0}, Lmodule/canbus/h;->f3(Lmodule/canbus/h;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lmodule/canbus/h$a;->a:Lmodule/canbus/h;

    invoke-static {v0}, Lmodule/canbus/h;->i3(Lmodule/canbus/h;)I

    .line 8
    iget-object v0, p0, Lmodule/canbus/h$a;->a:Lmodule/canbus/h;

    invoke-static {v0}, Lmodule/canbus/h;->g3(Lmodule/canbus/h;)I

    move-result v0

    iget-object v3, p0, Lmodule/canbus/h$a;->a:Lmodule/canbus/h;

    invoke-static {v3}, Lmodule/canbus/h;->f3(Lmodule/canbus/h;)I

    move-result v3

    div-int/2addr v3, v1

    if-ne v0, v3, :cond_2

    .line 9
    iget-object v0, p0, Lmodule/canbus/h$a;->a:Lmodule/canbus/h;

    invoke-static {v0, v2}, Lmodule/canbus/h;->h3(Lmodule/canbus/h;I)I

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lmodule/canbus/h$a;->a:Lmodule/canbus/h;

    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    iget v1, v1, Lk0/mt;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lmodule/canbus/h;->R2([I)V

    .line 12
    invoke-static {}, Lmodule/canbus/h;->j3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/h;->l3()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lmodule/canbus/h;->m3()I

    move-result v0

    invoke-static {}, Lmodule/canbus/h;->o3()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 13
    :cond_3
    invoke-static {}, Lmodule/canbus/h;->l3()I

    move-result v0

    invoke-static {v0}, Lmodule/canbus/h;->k3(I)I

    .line 14
    invoke-static {}, Lmodule/canbus/h;->o3()I

    move-result v0

    invoke-static {v0}, Lmodule/canbus/h;->n3(I)I

    .line 15
    iget-object v0, p0, Lmodule/canbus/h$a;->a:Lmodule/canbus/h;

    invoke-static {v0}, Lmodule/canbus/h;->p3(Lmodule/canbus/h;)V

    :cond_4
    return-void
.end method
