.class public Lk0/jl$k;
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
    iput-object p1, p0, Lk0/jl$k;->a:Lk0/jl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/jl$k;->a:Lk0/jl;

    sget v1, Ly0/f;->Q0:I

    iput v1, v0, Lk0/jl;->x:I

    .line 2
    sget v1, Lk0/nt;->c:I

    const/4 v2, 0x0

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-eq v1, v3, :cond_4

    const/16 v5, 0xe

    if-eq v1, v5, :cond_4

    const/16 v5, 0xf

    if-eq v1, v5, :cond_4

    const/16 v5, 0x16

    if-eq v1, v5, :cond_4

    const/16 v5, 0x12

    if-eq v1, v5, :cond_4

    const/16 v5, 0x13

    if-eq v1, v5, :cond_4

    const/16 v5, 0x14

    if-eq v1, v5, :cond_4

    const/16 v5, 0x15

    if-ne v1, v5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget v1, Lu0/b;->D:I

    if-ne v1, v3, :cond_3

    .line 4
    sget v1, Ly0/f;->Q0:I

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-static {v0, v4}, Lk0/jl;->f3(Lk0/jl;Z)V

    goto :goto_2

    .line 6
    :cond_2
    sget v1, Lu0/b;->j4:I

    if-nez v1, :cond_9

    .line 7
    invoke-static {v0, v2}, Lk0/jl;->f3(Lk0/jl;Z)V

    goto :goto_2

    .line 8
    :cond_3
    iget-boolean v1, v0, Lk0/jl;->F:Z

    if-eqz v1, :cond_9

    .line 9
    invoke-static {v0, v2}, Lk0/jl;->f3(Lk0/jl;Z)V

    goto :goto_2

    .line 10
    :cond_4
    :goto_0
    sget v1, Lu0/b;->D:I

    if-eq v1, v3, :cond_6

    if-nez v1, :cond_5

    goto :goto_1

    .line 11
    :cond_5
    invoke-static {v0, v4}, Lk0/jl;->f3(Lk0/jl;Z)V

    goto :goto_2

    .line 12
    :cond_6
    :goto_1
    sget v1, Ly0/f;->Q0:I

    if-eqz v1, :cond_8

    if-eq v1, v4, :cond_7

    goto :goto_2

    .line 13
    :cond_7
    invoke-static {v0, v4}, Lk0/jl;->f3(Lk0/jl;Z)V

    goto :goto_2

    .line 14
    :cond_8
    sget v1, Lu0/b;->j4:I

    if-nez v1, :cond_9

    .line 15
    invoke-static {v0, v2}, Lk0/jl;->f3(Lk0/jl;Z)V

    :cond_9
    :goto_2
    return-void
.end method
