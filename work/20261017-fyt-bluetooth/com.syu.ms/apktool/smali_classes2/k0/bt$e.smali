.class public Lk0/bt$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bt;


# direct methods
.method public constructor <init>(Lk0/bt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bt$e;->a:Lk0/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/bt$e;->a:Lk0/bt;

    invoke-static {v0}, Lk0/bt;->b3(Lk0/bt;)I

    move-result v0

    if-nez v0, :cond_3

    .line 2
    sget v0, Lk0/bt;->w:I

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lk0/bt$e;->a:Lk0/bt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lk0/bt;->d3(Lk0/bt;Z)Z

    .line 5
    iget-object v0, p0, Lk0/bt$e;->a:Lk0/bt;

    invoke-static {v0, v1}, Lk0/bt;->f3(Lk0/bt;Z)Z

    .line 6
    sget-object v0, La/b;->R:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lk0/bt$e;->a:Lk0/bt;

    invoke-static {v0}, Lk0/bt;->c3(Lk0/bt;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lk0/bt$e;->a:Lk0/bt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lk0/bt;->f3(Lk0/bt;Z)Z

    .line 9
    :cond_1
    :goto_0
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 10
    :cond_2
    sget v0, Lu0/b;->C:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    .line 11
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lk0/bt$e;->a:Lk0/bt;

    invoke-static {v0}, Lk0/bt;->e3(Lk0/bt;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    invoke-static {}, Lo1/u;->k()V

    :cond_3
    :goto_1
    return-void
.end method
