.class public Lk0/jl$t;
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
    iput-object p1, p0, Lk0/jl$t;->a:Lk0/jl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataMain.sAppId ---- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/b;->D:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    sget v0, Lk0/jl;->n0:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_3

    .line 3
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/16 v3, 0xd

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eq v0, v4, :cond_0

    const/16 v6, 0x29

    if-eq v0, v6, :cond_0

    const/16 v6, 0x2c

    if-eq v0, v6, :cond_0

    if-eq v0, v2, :cond_0

    const/16 v6, 0x28

    if-eq v0, v6, :cond_0

    const/16 v6, 0x2a

    if-eq v0, v6, :cond_0

    const/16 v6, 0x2b

    if-eq v0, v6, :cond_0

    if-eq v0, v1, :cond_0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_0

    const/16 v6, 0x26

    if-eq v0, v6, :cond_0

    const/16 v6, 0x27

    if-eq v0, v6, :cond_0

    const/16 v6, 0x9

    if-eq v0, v6, :cond_0

    const/16 v6, 0xa

    if-eq v0, v6, :cond_0

    const/16 v6, 0xb

    if-eq v0, v6, :cond_0

    const/16 v6, 0xc

    if-eq v0, v6, :cond_0

    const/16 v6, 0x10

    if-eq v0, v6, :cond_0

    const/16 v6, 0x19

    if-eq v0, v6, :cond_0

    const/16 v6, 0x22

    if-ne v0, v6, :cond_1

    .line 4
    :cond_0
    sget v0, Lu0/b;->D:I

    if-eq v0, v3, :cond_1

    .line 5
    iget-object v0, p0, Lk0/jl$t;->a:Lk0/jl;

    iget-boolean v6, v0, Lk0/jl;->F:Z

    if-eqz v6, :cond_1

    .line 6
    invoke-static {v0, v5}, Lk0/jl;->f3(Lk0/jl;Z)V

    .line 7
    :cond_1
    sget v0, Lu0/b;->D:I

    if-eq v0, v3, :cond_2

    if-eqz v0, :cond_2

    new-array v0, v1, [I

    .line 8
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_2
    new-array v0, v2, [I

    const/16 v1, 0xe3

    aput v1, v0, v5

    const/4 v1, 0x1

    aput v5, v0, v1

    const/16 v1, 0x91

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 9
    sget v2, Lu0/b;->D:I

    aput v2, v0, v1

    aput v5, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    .line 10
    sget v0, Lu0/b;->D:I

    sput v0, Lk0/jl;->n0:I

    :cond_3
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
.end method
