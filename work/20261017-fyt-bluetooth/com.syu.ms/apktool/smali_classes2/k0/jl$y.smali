.class public Lk0/jl$y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/jl;->S2()V
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
    iput-object p1, p0, Lk0/jl$y;->a:Lk0/jl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lk0/jl$y;->a:Lk0/jl;

    iget v0, p1, Lk0/jl;->z:I

    sget v1, Ly0/f;->T0:I

    if-eq v0, v1, :cond_9

    .line 2
    iput v1, p1, Lk0/jl;->z:I

    .line 3
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    .line 4
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x0

    const/16 v2, 0xd

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    const/16 v4, 0xe

    if-eq v0, v4, :cond_4

    const/16 v4, 0xf

    if-eq v0, v4, :cond_4

    const/16 v4, 0x16

    if-eq v0, v4, :cond_4

    const/16 v4, 0x12

    if-eq v0, v4, :cond_4

    const/16 v4, 0x13

    if-eq v0, v4, :cond_4

    const/16 v4, 0x14

    if-eq v0, v4, :cond_4

    const/16 v4, 0x15

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lu0/b;->D:I

    if-ne v0, v2, :cond_3

    .line 6
    sget v0, Ly0/f;->T0:I

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    invoke-static {p1, v3}, Lk0/jl;->f3(Lk0/jl;Z)V

    goto :goto_2

    .line 8
    :cond_2
    sget v0, Ly0/f;->Q0:I

    if-nez v0, :cond_9

    .line 9
    invoke-static {p1, v1}, Lk0/jl;->f3(Lk0/jl;Z)V

    goto :goto_2

    .line 10
    :cond_3
    iget-boolean v0, p1, Lk0/jl;->F:Z

    if-eqz v0, :cond_9

    .line 11
    invoke-static {p1, v1}, Lk0/jl;->f3(Lk0/jl;Z)V

    goto :goto_2

    .line 12
    :cond_4
    :goto_0
    sget v0, Lu0/b;->D:I

    if-eq v0, v2, :cond_6

    if-nez v0, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    invoke-static {p1, v3}, Lk0/jl;->f3(Lk0/jl;Z)V

    goto :goto_2

    .line 14
    :cond_6
    :goto_1
    sget v0, Ly0/f;->T0:I

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    goto :goto_2

    .line 15
    :cond_7
    invoke-static {p1, v3}, Lk0/jl;->f3(Lk0/jl;Z)V

    goto :goto_2

    .line 16
    :cond_8
    sget v0, Ly0/f;->Q0:I

    if-nez v0, :cond_9

    .line 17
    invoke-static {p1, v1}, Lk0/jl;->f3(Lk0/jl;Z)V

    nop

    :cond_9
    :goto_2
    return-void
.end method
