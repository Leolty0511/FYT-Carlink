.class public Lk0/ll$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ll;


# direct methods
.method public constructor <init>(Lk0/ll;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ll$m;->a:Lk0/ll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sVaAudioOccupeid =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lu0/b;->j4:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lk0/ll$m;->a:Lk0/ll;

    iget v1, v0, Lk0/ll;->s:I

    sget v2, Lu0/b;->j4:I

    if-eq v1, v2, :cond_6

    .line 3
    iput v2, v0, Lk0/ll;->s:I

    .line 4
    sget v1, Lh0/c;->E:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v3, 0x4

    if-eq v1, v3, :cond_6

    const/4 v4, 0x5

    if-eq v1, v4, :cond_6

    .line 5
    iget v1, v0, Lk0/ll;->P:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_2

    .line 6
    sget v1, Lu0/b;->j4:I

    if-eqz v1, :cond_1

    if-eq v1, v6, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0, v6}, Lk0/ll;->e3(Lk0/ll;Z)V

    goto :goto_0

    .line 8
    :cond_1
    sget v1, Ly0/f;->Q0:I

    if-nez v1, :cond_2

    .line 9
    invoke-static {v0, v5}, Lk0/ll;->e3(Lk0/ll;Z)V

    .line 10
    :cond_2
    :goto_0
    sget v0, Lu0/b;->j4:I

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 12
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 14
    iget-object v0, p0, Lk0/ll$m;->a:Lk0/ll;

    iput-boolean v6, v0, Lk0/ll;->t:Z

    goto :goto_1

    .line 15
    :cond_4
    iget-object v0, p0, Lk0/ll$m;->a:Lk0/ll;

    iget-boolean v1, v0, Lk0/ll;->t:Z

    if-ne v1, v6, :cond_5

    sget v1, Lu0/b;->D:I

    const/16 v7, 0xd

    if-ne v1, v7, :cond_5

    const/4 v1, 0x7

    new-array v1, v1, [I

    const/16 v7, 0xe3

    aput v7, v1, v5

    const/16 v7, 0x98

    aput v7, v1, v6

    const/4 v7, 0x2

    aput v3, v1, v7

    const/16 v7, 0xa2

    aput v7, v1, v2

    aput v6, v1, v3

    .line 16
    iget v0, v0, Lk0/ll;->Q:I

    aput v0, v1, v4

    const/4 v0, 0x6

    aput v5, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 17
    :cond_5
    iget-object v0, p0, Lk0/ll$m;->a:Lk0/ll;

    iput-boolean v5, v0, Lk0/ll;->t:Z

    nop

    :cond_6
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x97
        0x5
        0x1
        0x0
        0xa
        0x0
        0xa
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x97
        0x5
        0x0
        0x0
        0xa
        0x0
        0xa
    .end array-data
.end method
