.class public Lk0/jl$s;
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
    iput-object p1, p0, Lk0/jl$s;->a:Lk0/jl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/jl$s;->a:Lk0/jl;

    iget v1, v0, Lk0/jl;->z:I

    sget v2, Lu0/b;->j4:I

    if-eq v1, v2, :cond_2

    .line 2
    iput v2, v0, Lk0/jl;->z:I

    const/4 v1, 0x7

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    const-string v4, "JumpPage.caryui ---- 111111111 "

    invoke-virtual {v0, v2, v4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 6
    iget-object v0, p0, Lk0/jl$s;->a:Lk0/jl;

    iput-boolean v3, v0, Lk0/jl;->A:Z

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v0, v0, Lk0/jl;->A:Z

    if-ne v0, v3, :cond_2

    new-array v0, v1, [I

    .line 8
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 9
    iget-object v0, p0, Lk0/jl$s;->a:Lk0/jl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lk0/jl;->A:Z

    :cond_2
    :goto_0
    return-void

    nop

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

    :array_1
    .array-data 4
        0xe3
        0x0
        0x67
        0x3
        0x0
        0x0
        0x80
    .end array-data
.end method
