.class public Lz0/b;
.super Lz0/a;
.source "SourceFile"


# static fields
.field public static j:I = -0x1


# instance fields
.field public final e:I

.field public f:I

.field public g:[I

.field public h:Ljava/lang/Runnable;

.field public final i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lo1/n;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lz0/a;-><init>(Lo1/n;I)V

    const/16 p1, 0x40

    .line 2
    iput p1, p0, Lz0/b;->e:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lz0/b;->f:I

    const/16 p2, 0x12

    new-array p2, p2, [I

    .line 4
    fill-array-data p2, :array_0

    iput-object p2, p0, Lz0/b;->g:[I

    .line 5
    new-instance p2, Lz0/b$a;

    invoke-direct {p2, p0}, Lz0/b$a;-><init>(Lz0/b;)V

    iput-object p2, p0, Lz0/b;->h:Ljava/lang/Runnable;

    const/16 p2, 0x8

    .line 6
    iput p2, p0, Lz0/b;->i:I

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/16 v0, 0xf

    aput v0, p2, p1

    .line 7
    invoke-virtual {p0, p1, p2}, Lz0/b;->h(I[I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x2

    .line 8
    sput p1, Lz0/b;->j:I

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xf
        0x1
        0xd0
        0x2
        0x0
        0x3
        0xc8
        0x4
        0x0
        0x5
        0x0
        0x6
        0x0
        0x7
        0x1
        0xff
        0xff
    .end array-data
.end method


# virtual methods
.method public a(ILy/b;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x57

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget v2, p0, Lz0/a;->d:I

    if-ltz v2, :cond_2

    new-array v3, v1, [I

    const/16 v4, 0x40

    if-le v2, v4, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    aput v2, v3, v0

    .line 2
    invoke-virtual {p0, p2, p1, v3}, Lz0/a;->e(Ly/b;I[I)V

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public b()V
    .locals 12

    .line 1
    sget v0, Lz0/b;->j:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "sys.lsec.ext_dsp"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    sget-object v3, Lu0/c;->a:Lo1/y;

    iget-object v4, p0, Lz0/b;->h:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lo1/y;->d(Ljava/lang/Runnable;)V

    :cond_2
    const/16 v3, 0xf

    new-array v4, v3, [I

    move v5, v1

    move v6, v5

    :goto_1
    const/16 v7, 0x40

    if-ge v5, v3, :cond_4

    const/16 v8, 0x17

    .line 4
    invoke-virtual {p0, v8}, Lz0/b;->g(I)I

    move-result v8

    if-le v8, v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 5
    :cond_3
    aput v8, v4, v5

    const-wide/16 v7, 0x1

    .line 6
    invoke-static {v7, v8}, Lo1/s0;->C(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "digitalAmp Reg17: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "amp"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v4, p0, Lz0/b;->g:[I

    array-length v4, v4

    const/4 v8, 0x2

    .line 9
    div-int/2addr v4, v8

    .line 10
    iget v4, p0, Lz0/b;->f:I

    const/16 v9, -0x38

    const/16 v10, 0x48

    if-ne v4, v8, :cond_5

    move v10, v9

    goto :goto_2

    :cond_5
    move v9, v10

    :goto_2
    if-lt v6, v3, :cond_6

    const/16 v4, 0x4a

    .line 11
    iput v4, p0, Lz0/a;->d:I

    goto :goto_3

    .line 12
    :cond_6
    iput v1, p0, Lz0/a;->d:I

    .line 13
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ampType : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lz0/a;->d:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget v4, p0, Lz0/a;->d:I

    const/4 v6, 0x3

    if-gt v4, v7, :cond_7

    new-array v4, v2, [I

    aput v3, v4, v1

    .line 15
    invoke-virtual {p0, v1, v4}, Lz0/b;->h(I[I)I

    new-array v3, v2, [I

    const/16 v4, 0x10

    aput v4, v3, v1

    .line 16
    invoke-virtual {p0, v2, v3}, Lz0/b;->h(I[I)I

    new-array v3, v2, [I

    aput v9, v3, v1

    .line 17
    invoke-virtual {p0, v8, v3}, Lz0/b;->h(I[I)I

    new-array v3, v2, [I

    aput v2, v3, v1

    .line 18
    invoke-virtual {p0, v6, v3}, Lz0/b;->h(I[I)I

    move-result v2

    goto :goto_6

    .line 19
    :cond_7
    iget-object v3, p0, Lz0/b;->g:[I

    array-length v3, v3

    .line 20
    div-int/2addr v3, v8

    move v4, v1

    move v7, v4

    :goto_4
    if-ge v7, v3, :cond_b

    .line 21
    iget-object v8, p0, Lz0/b;->g:[I

    mul-int/lit8 v9, v7, 0x2

    aget v11, v8, v9

    add-int/2addr v9, v2

    .line 22
    aget v8, v8, v9

    const/16 v9, 0xff

    if-ne v11, v9, :cond_8

    if-eq v8, v9, :cond_a

    :cond_8
    new-array v4, v2, [I

    if-ne v11, v6, :cond_9

    move v8, v10

    :cond_9
    aput v8, v4, v1

    .line 23
    invoke-virtual {p0, v11, v4}, Lz0/b;->h(I[I)I

    move-result v4

    if-gez v4, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    move v2, v4

    :goto_6
    if-gez v2, :cond_c

    const/4 v2, -0x1

    .line 24
    iput v2, p0, Lz0/a;->d:I

    .line 25
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ampType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lz0/a;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_d

    .line 26
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lz0/b;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_d
    return-void
.end method

.method public c(Z)V
    .locals 6

    .line 1
    sget v0, Lz0/b;->j:I

    if-ltz v0, :cond_5

    iget v0, p0, Lz0/a;->d:I

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x48

    .line 2
    iget v2, p0, Lz0/b;->f:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/16 v1, -0x38

    :cond_1
    const/16 v2, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gt v0, v2, :cond_3

    if-eqz p1, :cond_2

    new-array v0, v4, [I

    aput v1, v0, v5

    .line 3
    invoke-virtual {p0, v3, v0}, Lz0/b;->h(I[I)I

    goto :goto_0

    :cond_2
    new-array v0, v4, [I

    or-int/lit8 v1, v1, 0x6

    aput v1, v0, v5

    .line 4
    invoke-virtual {p0, v3, v0}, Lz0/b;->h(I[I)I

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    new-array v0, v4, [I

    aput v5, v0, v5

    .line 5
    invoke-virtual {p0, v3, v0}, Lz0/b;->h(I[I)I

    goto :goto_0

    :cond_4
    new-array v0, v4, [I

    const/16 v1, 0x18

    aput v1, v0, v5

    .line 6
    invoke-virtual {p0, v3, v0}, Lz0/b;->h(I[I)I

    .line 7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "digitalAmp ampType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz0/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dspType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz0/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hasAmp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lz0/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "amp"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    sget v0, Lz0/b;->j:I

    if-gez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Ly0/f;->a:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lz0/b;->f:I

    goto :goto_0

    .line 4
    :cond_1
    iput v2, p0, Lz0/b;->f:I

    :goto_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    new-array v3, v1, [I

    const/16 v4, 0xc8

    aput v4, v3, v2

    .line 5
    invoke-virtual {p0, v0, v3}, Lz0/b;->h(I[I)I

    const/4 v0, 0x4

    new-array v3, v1, [I

    aput v2, v3, v2

    .line 6
    invoke-virtual {p0, v0, v3}, Lz0/b;->h(I[I)I

    const/4 v0, 0x7

    new-array v1, v1, [I

    aput v2, v1, v2

    .line 7
    invoke-virtual {p0, v0, v1}, Lz0/b;->h(I[I)I

    return-void
.end method

.method public declared-synchronized g(I)I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lz0/a;->b:Lo1/n;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Lo1/n;->g(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized h(I[I)I
    .locals 7

    monitor-enter p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lz0/a;->b:Lo1/n;

    const/16 v3, 0x6c

    new-array v5, v4, [I

    aput p1, v5, v1

    invoke-virtual {v0, v3, v5, p2}, Lo1/n;->d(I[I[I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v3, "amp"

    .line 2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>>>>>>>  write "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%02X  "

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-static {p2, v1, p1}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result : "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reWr:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
