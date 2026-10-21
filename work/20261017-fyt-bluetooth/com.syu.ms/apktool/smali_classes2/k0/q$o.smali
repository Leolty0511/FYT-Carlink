.class public Lk0/q$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/q;


# direct methods
.method public constructor <init>(Lk0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/q$o;->a:Lk0/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v2, p0, Lk0/q$o;->a:Lk0/q;

    iget v2, v2, Lk0/q;->c0:I

    if-ne v2, v1, :cond_0

    .line 2
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v1, p0, Lk0/q$o;->a:Lk0/q;

    invoke-static {v1}, Lk0/q;->x3(Lk0/q;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-static {v0, v1, v2, v3}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lk0/q$o;->a:Lk0/q;

    iget v2, v0, Lk0/q;->c0:I

    if-nez v2, :cond_1

    .line 4
    iput v1, v0, Lk0/q;->c0:I

    const/16 v1, 0xff

    .line 5
    invoke-static {v0, v1}, Lk0/q;->z3(Lk0/q;I)I

    .line 6
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v1, p0, Lk0/q$o;->a:Lk0/q;

    invoke-static {v1}, Lk0/q;->A3(Lk0/q;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lk0/q$o;->a:Lk0/q;

    invoke-virtual {v0}, Lk0/q;->d3()V

    .line 8
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 9
    :cond_2
    iget-object v0, p0, Lk0/q$o;->a:Lk0/q;

    const/16 v1, -0x6f

    sget-object v2, Lu0/b;->i3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lk0/q;->l3(Lk0/q;BLjava/lang/String;)V

    .line 10
    iget-object v0, p0, Lk0/q$o;->a:Lk0/q;

    const/16 v1, -0x6e

    sget-object v2, Lu0/b;->j3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lk0/q;->w3(Lk0/q;BLjava/lang/String;)V

    .line 11
    iget-object v0, p0, Lk0/q$o;->a:Lk0/q;

    const/16 v1, -0x6d

    sget-object v2, Lu0/b;->k3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lk0/q;->w3(Lk0/q;BLjava/lang/String;)V

    :cond_3
    return-void
.end method
