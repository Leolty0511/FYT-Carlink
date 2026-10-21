.class public Lf1/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf1/l;->l0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lf1/l;


# direct methods
.method public constructor <init>(Lf1/l;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lf1/l$c;->b:Lf1/l;

    iput-boolean p2, p0, Lf1/l$c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf1/l$c;->b:Lf1/l;

    invoke-static {v0}, Lf1/l;->X(Lf1/l;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lf1/l$c;->b:Lf1/l;

    iget-boolean v1, v0, Lf1/q;->r:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lf1/l;->p0()Z

    const-wide/16 v0, 0xc8

    .line 3
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    .line 4
    iget-object v2, p0, Lf1/l$c;->b:Lf1/l;

    invoke-virtual {v2}, Lf1/l;->u0()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    iget-object v3, p0, Lf1/l$c;->b:Lf1/l;

    invoke-static {v3}, Lf1/l;->Z(Lf1/l;)I

    move-result v3

    const/16 v4, 0x1f

    if-ge v3, v4, :cond_2

    .line 6
    iget-object v2, p0, Lf1/l$c;->b:Lf1/l;

    invoke-static {v2}, Lf1/l;->Z(Lf1/l;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x6

    if-nez v2, :cond_1

    .line 7
    iget-object v2, p0, Lf1/l$c;->b:Lf1/l;

    invoke-virtual {v2}, Lf1/l;->o0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Lf1/l$c;->b:Lf1/l;

    invoke-virtual {v2}, Lf1/l;->n0()Z

    move-result v2

    .line 9
    :cond_1
    iget-object v2, p0, Lf1/l$c;->b:Lf1/l;

    invoke-static {v2}, Lf1/l;->a0(Lf1/l;)I

    .line 10
    iget-object v2, p0, Lf1/l$c;->b:Lf1/l;

    invoke-static {v2}, Lf1/l;->X(Lf1/l;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    iget-object v2, p0, Lf1/l$c;->b:Lf1/l;

    iget-object v2, v2, Lf1/q;->s:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lf1/l$c;->b:Lf1/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lf1/l;->Y(Lf1/l;Z)Z

    .line 13
    iget-object v0, p0, Lf1/l$c;->b:Lf1/l;

    iget-boolean v3, p0, Lf1/l$c;->a:Z

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v0, v1}, Lf1/l;->b0(Lf1/l;Z)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    const-string v0, "Chip8918"

    const-string v1, "----- Polling cancelled"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
