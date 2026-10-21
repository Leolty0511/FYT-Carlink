.class public Lz0/c;
.super Lz0/a;
.source "SourceFile"


# static fields
.field public static i:I = -0x1


# instance fields
.field public final e:I

.field public f:I

.field public g:[I

.field public final h:I


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
    iput p1, p0, Lz0/c;->e:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lz0/c;->f:I

    const/16 p2, 0x12

    new-array p2, p2, [I

    .line 4
    fill-array-data p2, :array_0

    iput-object p2, p0, Lz0/c;->g:[I

    const/16 p2, 0x8

    .line 5
    iput p2, p0, Lz0/c;->h:I

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/16 v0, 0xf

    aput v0, p2, p1

    .line 6
    invoke-virtual {p0, p1, p2}, Lz0/c;->h(I[I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x2

    .line 7
    sput p1, Lz0/c;->i:I

    :cond_0
    return-void

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
    .locals 11

    .line 1
    sget v0, Lz0/c;->i:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0x40

    if-ge v3, v0, :cond_2

    const/16 v6, 0x17

    .line 2
    invoke-virtual {p0, v6}, Lz0/c;->g(I)I

    move-result v6

    if-le v6, v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 3
    :cond_1
    aput v6, v1, v3

    const-wide/16 v5, 0x1

    .line 4
    invoke-static {v5, v6}, Lo1/s0;->C(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "digitalAmp Reg17: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "amp"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lz0/c;->g:[I

    array-length v1, v1

    const/4 v6, 0x2

    .line 7
    div-int/2addr v1, v6

    .line 8
    iget v1, p0, Lz0/c;->f:I

    const/16 v7, -0x38

    if-ne v1, v6, :cond_3

    move v1, v7

    goto :goto_1

    :cond_3
    move v1, v5

    move v7, v1

    :goto_1
    if-lt v4, v0, :cond_4

    const/16 v4, 0x4a

    .line 9
    iput v4, p0, Lz0/a;->d:I

    goto :goto_2

    .line 10
    :cond_4
    iput v2, p0, Lz0/a;->d:I

    .line 11
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ampType : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lz0/a;->d:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget v4, p0, Lz0/a;->d:I

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-gt v4, v5, :cond_5

    new-array v1, v9, [I

    aput v0, v1, v2

    .line 13
    invoke-virtual {p0, v2, v1}, Lz0/c;->h(I[I)I

    new-array v0, v9, [I

    const/16 v1, 0x10

    aput v1, v0, v2

    .line 14
    invoke-virtual {p0, v9, v0}, Lz0/c;->h(I[I)I

    new-array v0, v9, [I

    aput v7, v0, v2

    .line 15
    invoke-virtual {p0, v6, v0}, Lz0/c;->h(I[I)I

    new-array v0, v9, [I

    aput v9, v0, v2

    .line 16
    invoke-virtual {p0, v8, v0}, Lz0/c;->h(I[I)I

    move-result v0

    goto :goto_5

    .line 17
    :cond_5
    iget-object v0, p0, Lz0/c;->g:[I

    array-length v0, v0

    .line 18
    div-int/2addr v0, v6

    move v4, v2

    move v5, v4

    :goto_3
    if-ge v5, v0, :cond_9

    .line 19
    iget-object v6, p0, Lz0/c;->g:[I

    mul-int/lit8 v7, v5, 0x2

    aget v10, v6, v7

    add-int/2addr v7, v9

    .line 20
    aget v6, v6, v7

    const/16 v7, 0xff

    if-ne v10, v7, :cond_6

    if-eq v6, v7, :cond_8

    :cond_6
    new-array v4, v9, [I

    if-ne v10, v8, :cond_7

    move v6, v1

    :cond_7
    aput v6, v4, v2

    .line 21
    invoke-virtual {p0, v10, v4}, Lz0/c;->h(I[I)I

    move-result v4

    if-gez v4, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    move v0, v4

    :goto_5
    if-gez v0, :cond_a

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lz0/a;->d:I

    .line 23
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ampType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz0/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c(Z)V
    .locals 6

    .line 1
    iget v0, p0, Lz0/a;->d:I

    if-gez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lz0/c;->f:I

    const/16 v2, 0x40

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/16 v1, -0x38

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gt v0, v2, :cond_3

    if-eqz p1, :cond_2

    new-array v0, v4, [I

    aput v1, v0, v5

    .line 3
    invoke-virtual {p0, v3, v0}, Lz0/c;->h(I[I)I

    goto :goto_1

    :cond_2
    new-array v0, v4, [I

    or-int/lit8 v1, v1, 0x6

    aput v1, v0, v5

    .line 4
    invoke-virtual {p0, v3, v0}, Lz0/c;->h(I[I)I

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    new-array v0, v4, [I

    aput v5, v0, v5

    .line 5
    invoke-virtual {p0, v3, v0}, Lz0/c;->h(I[I)I

    goto :goto_1

    :cond_4
    new-array v0, v4, [I

    const/16 v1, 0x18

    aput v1, v0, v5

    .line 6
    invoke-virtual {p0, v3, v0}, Lz0/c;->h(I[I)I

    .line 7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "digitalAmp ampType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz0/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dspType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz0/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hasAmp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lz0/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "amp"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    sget v0, Lz0/c;->i:I

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
    iput v0, p0, Lz0/c;->f:I

    goto :goto_0

    .line 4
    :cond_1
    iput v2, p0, Lz0/c;->f:I

    :goto_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    new-array v3, v1, [I

    const/16 v4, 0xc8

    aput v4, v3, v2

    .line 5
    invoke-virtual {p0, v0, v3}, Lz0/c;->h(I[I)I

    const/4 v0, 0x4

    new-array v3, v1, [I

    aput v2, v3, v2

    .line 6
    invoke-virtual {p0, v0, v3}, Lz0/c;->h(I[I)I

    const/4 v0, 0x7

    new-array v1, v1, [I

    aput v2, v1, v2

    .line 7
    invoke-virtual {p0, v0, v1}, Lz0/c;->h(I[I)I

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
