.class public Lk0/jl$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/jl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/jl;


# direct methods
.method public constructor <init>(Lk0/jl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/jl$w;->a:Lk0/jl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lk0/jl;->o3()I

    move-result v0

    if-nez v0, :cond_2

    .line 2
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lk0/jl$w;->a:Lk0/jl;

    iget-boolean v0, v0, Lk0/jl;->H:Z

    if-ne v0, v2, :cond_2

    .line 4
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, La/b;->R:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lk0/jl$w;->a:Lk0/jl;

    invoke-static {v0, v1}, Lk0/jl;->f3(Lk0/jl;Z)V

    .line 7
    :cond_0
    iget-object v0, p0, Lk0/jl$w;->a:Lk0/jl;

    iput-boolean v1, v0, Lk0/jl;->H:Z

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    const-string v3, "JumpPage.caryui ---- 444444444444 "

    invoke-virtual {v0, v1, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 11
    iget-object v0, p0, Lk0/jl$w;->a:Lk0/jl;

    invoke-static {v0, v2}, Lk0/jl;->f3(Lk0/jl;Z)V

    .line 12
    iget-object v0, p0, Lk0/jl$w;->a:Lk0/jl;

    iput-boolean v2, v0, Lk0/jl;->H:Z

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x0
        0x67
        0x3
        0x1
        0x0
        0x80
    .end array-data
.end method
