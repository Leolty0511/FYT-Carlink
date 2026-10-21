.class public Lf1/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf1/n;->p0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lf1/n;


# direct methods
.method public constructor <init>(Lf1/n;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lf1/n$c;->b:Lf1/n;

    iput-boolean p2, p0, Lf1/n$c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf1/n$c;->b:Lf1/n;

    invoke-static {v0}, Lf1/n;->X(Lf1/n;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lf1/n$c;->b:Lf1/n;

    iget-boolean v1, v0, Lf1/q;->r:Z

    if-nez v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {v0}, Lf1/n;->t0()Z

    const-wide/16 v0, 0x32

    .line 3
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    .line 4
    iget-object v0, p0, Lf1/n$c;->b:Lf1/n;

    invoke-virtual {v0}, Lf1/n;->y0()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 5
    iget-object v2, p0, Lf1/n$c;->b:Lf1/n;

    iget-object v3, v2, Lf1/n;->e0:Ljava/util/LinkedList;

    if-eqz v3, :cond_2

    invoke-static {v2}, Lf1/n;->Z(Lf1/n;)I

    move-result v2

    iget-object v3, p0, Lf1/n$c;->b:Lf1/n;

    iget-object v3, v3, Lf1/n;->e0:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    .line 6
    iget-object v0, p0, Lf1/n$c;->b:Lf1/n;

    invoke-virtual {v0}, Lf1/n;->s0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lf1/n$c;->b:Lf1/n;

    invoke-virtual {v0}, Lf1/n;->r0()Z

    move-result v0

    .line 8
    :cond_1
    iget-object v0, p0, Lf1/n$c;->b:Lf1/n;

    invoke-static {v0}, Lf1/n;->a0(Lf1/n;)I

    .line 9
    iget-object v0, p0, Lf1/n$c;->b:Lf1/n;

    invoke-static {v0}, Lf1/n;->X(Lf1/n;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lf1/n$c;->b:Lf1/n;

    iget-object v0, v0, Lf1/q;->s:Landroid/os/Handler;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 11
    :cond_2
    iget-object v2, p0, Lf1/n$c;->b:Lf1/n;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lf1/n;->Y(Lf1/n;Z)Z

    .line 12
    iget-object v2, p0, Lf1/n$c;->b:Lf1/n;

    iget-boolean v4, p0, Lf1/n$c;->a:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    invoke-static {v2, v1}, Lf1/n;->b0(Lf1/n;Z)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    const-string v0, "Chip8918P"

    const-string v1, "----- Polling cancelled"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
