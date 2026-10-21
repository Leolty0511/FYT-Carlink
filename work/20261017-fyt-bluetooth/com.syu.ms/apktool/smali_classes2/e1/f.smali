.class public Le1/f;
.super Le1/c;
.source "SourceFile"


# instance fields
.field public final A:I

.field public final B:I

.field public C:[I

.field public final D:Ljava/lang/Runnable;

.field public final x:Z

.field public final y:Ljava/lang/String;

.field public final z:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le1/c;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le1/f;->x:Z

    const-string p1, "V2854"

    .line 3
    iput-object p1, p0, Le1/f;->y:Ljava/lang/String;

    const/16 p1, 0x10

    .line 4
    iput p1, p0, Le1/f;->z:I

    const/16 p1, 0x12

    .line 5
    iput p1, p0, Le1/f;->A:I

    const/16 p1, 0x11

    .line 6
    iput p1, p0, Le1/f;->B:I

    const/16 p1, 0x54

    new-array p1, p1, [I

    .line 7
    fill-array-data p1, :array_0

    iput-object p1, p0, Le1/f;->C:[I

    .line 8
    new-instance p1, Le1/f$a;

    invoke-direct {p1, p0}, Le1/f$a;-><init>(Le1/f;)V

    iput-object p1, p0, Le1/f;->D:Ljava/lang/Runnable;

    const/4 p1, 0x2

    .line 9
    iput p1, p0, Le1/c;->f:I

    sput p1, Lu0/b;->s4:I

    return-void

    :array_0
    .array-data 4
        0x40
        0x4
        0x2
        0xc6
        0x7
        0x40
        0xb
        0x40
        0xc
        0x13
        0xd
        0x71
        0x15
        0x13
        0x16
        0x15
        0x17
        0x0
        0x18
        0x19
        0x19
        0xd0
        0x1a
        0x25
        0x1c
        0x7
        0x1d
        0xbc
        0x21
        0x84
        0x22
        0x36
        0x23
        0x3c
        0x2a
        0x34
        0x2b
        0x60
        0x2c
        0x3a
        0x2d
        0x5a
        0x2e
        0x40
        0x30
        0x9e
        0x31
        0x20
        0x32
        0x10
        0x33
        0x90
        0x35
        0x25
        0x38
        0x0
        0x39
        0x8
        0x4e
        0x0
        0xf5
        0xf0
        0x40
        0x8
        0x1
        0xf8
        0x2
        0x1
        0x8
        0xf
        0x13
        0x24
        0x14
        0x4
        0x15
        0x0
        0x20
        0x44
        0x34
        0x1b
        0x23
        0x2
        0xff
        0xff
    .end array-data
.end method


# virtual methods
.method public E(III)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "[%02X - %02X,  %02X]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "V2854"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1, p2, p3}, Le1/c;->E(III)I

    move-result p1

    return p1
.end method

.method public F([I)Z
    .locals 14

    if-eqz p1, :cond_4

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    const-string v0, "V2854"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushParams =============>> i2cInvalid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Le1/c;->o:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v0, p0, Le1/c;->o:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 4
    :cond_0
    iget-object v0, p0, Le1/c;->m:Lo1/n;

    monitor-enter v0

    .line 5
    :try_start_0
    array-length v3, p1

    div-int/2addr v3, v1

    const-string v4, "V2854"

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flushParams  START  data  length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move v5, v2

    move v6, v4

    :goto_0
    if-ge v5, v3, :cond_3

    mul-int/lit8 v6, v5, 0x2

    .line 7
    aget v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    .line 8
    aget v6, p1, v6

    .line 9
    invoke-virtual {p0, v7, v6}, Le1/c;->D(II)I

    move-result v8

    if-ltz v8, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    move v9, v2

    :goto_1
    const-string v10, "V2854"

    .line 10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ %02X,  %02X]"

    new-array v13, v1, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v13, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v13, v4

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  result : "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ret : "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_2

    move v6, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_0

    :cond_3
    :goto_2
    const-string v1, "V2854"

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushParams  END  data  length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " imagFormat: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Le1/c;->f:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    monitor-exit v0

    return v6

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "flushParams  data is NULL  or  data  size < 2 !!!! "

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(IIII)V
    .locals 1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x40

    .line 1
    invoke-virtual {p0, v0, p1}, Le1/c;->D(II)I

    and-int/lit16 p1, p2, 0xff

    const/16 p2, 0x10

    .line 2
    invoke-virtual {p0, p2, p1}, Le1/c;->D(II)I

    and-int/lit16 p1, p4, 0xff

    const/16 p2, 0x11

    .line 3
    invoke-virtual {p0, p2, p1}, Le1/c;->D(II)I

    and-int/lit16 p1, p3, 0xff

    const/16 p2, 0x12

    .line 4
    invoke-virtual {p0, p2, p1}, Le1/c;->D(II)I

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "signalOn    =   "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p2}, Le1/c;->s(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v0, 0x0

    aput-object p4, p3, v0

    const-string p4, "    0x01 REG : %03X"

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  imagType  = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Le1/c;->e:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "  imagFormat :  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Le1/c;->f:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x3

    invoke-virtual {p0, p3}, Le1/c;->s(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "    0x03 REG : %03X"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "V2854"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public j()I
    .locals 2

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Le1/c;->f:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check Signal V2854 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le1/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V2854"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public m()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le1/c;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le1/c;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le1/f;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Le1/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Le1/f;->D:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    invoke-super {p0}, Le1/c;->t()V

    const-string v0, "V2854"

    const-string v1, "==============================>> 2854 RESET "

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Le1/f;->w(Z)V

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Lcom/syu/jni/ToolsJni;->cmd_33_reset_videoIc(I)V

    return-void
.end method

.method public w(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le1/c;->i:Z

    if-eq v0, p1, :cond_2

    .line 2
    iput-boolean p1, p0, Le1/c;->i:Z

    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "syu.imageic.inited"

    .line 3
    invoke-static {v1, v0}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Le1/c;->j:Landroid/os/Handler;

    new-instance v0, Le1/f$b;

    invoke-direct {v0, p0}, Le1/f$b;-><init>(Le1/f;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    const/16 v0, 0x89

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 5
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le1/c;->i:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le1/f;->t()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Le1/c;->i:Z

    return v0
.end method
