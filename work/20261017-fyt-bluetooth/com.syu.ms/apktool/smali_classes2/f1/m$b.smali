.class public Lf1/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf1/m;->l0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lf1/m;


# direct methods
.method public constructor <init>(Lf1/m;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lf1/m$b;->b:Lf1/m;

    iput-boolean p2, p0, Lf1/m$b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf1/m$b;->b:Lf1/m;

    invoke-static {v0}, Lf1/m;->X(Lf1/m;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lf1/m$b;->b:Lf1/m;

    iget-boolean v1, v0, Lf1/q;->r:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lf1/m;->p0()Z

    const-wide/16 v0, 0x32

    .line 3
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    .line 4
    iget-object v0, p0, Lf1/m$b;->b:Lf1/m;

    invoke-virtual {v0}, Lf1/m;->u0()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v1, p0, Lf1/m$b;->b:Lf1/m;

    invoke-static {v1}, Lf1/m;->Z(Lf1/m;)I

    move-result v1

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_2

    .line 6
    iget-object v0, p0, Lf1/m$b;->b:Lf1/m;

    invoke-static {v0}, Lf1/m;->Z(Lf1/m;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lf1/m$b;->b:Lf1/m;

    invoke-virtual {v0}, Lf1/m;->o0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lf1/m$b;->b:Lf1/m;

    invoke-virtual {v0}, Lf1/m;->n0()Z

    move-result v0

    .line 9
    :cond_1
    iget-object v0, p0, Lf1/m$b;->b:Lf1/m;

    invoke-static {v0}, Lf1/m;->a0(Lf1/m;)I

    .line 10
    iget-object v0, p0, Lf1/m$b;->b:Lf1/m;

    invoke-static {v0}, Lf1/m;->X(Lf1/m;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lf1/m$b;->b:Lf1/m;

    iget-object v0, v0, Lf1/q;->s:Landroid/os/Handler;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, p0, Lf1/m$b;->b:Lf1/m;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lf1/m;->Y(Lf1/m;Z)Z

    .line 13
    iget-object v1, p0, Lf1/m$b;->b:Lf1/m;

    iget-boolean v3, p0, Lf1/m$b;->a:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v1, v2}, Lf1/m;->b0(Lf1/m;Z)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    const-string v0, "Chip8918L"

    const-string v1, "----- Polling cancelled"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
