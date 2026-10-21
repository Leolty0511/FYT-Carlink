.class public Le1/q;
.super Le1/l;
.source "SourceFile"


# static fields
.field public static j:I = 0x44

.field public static k:Z = false

.field public static l:I = 0x0

.field public static m:Z = false

.field public static n:Z = false

.field public static o:I

.field public static p:I


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lo1/n;

.field public final c:Ljava/lang/Runnable;

.field public d:Ljava/lang/Runnable;

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:[I

.field public h:[I

.field public i:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le1/l;-><init>()V

    const-string v0, "tw9992"

    .line 2
    iput-object v0, p0, Le1/q;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Lo1/n;

    invoke-direct {v0}, Lo1/n;-><init>()V

    iput-object v0, p0, Le1/q;->b:Lo1/n;

    .line 4
    new-instance v0, Le1/q$a;

    invoke-direct {v0, p0}, Le1/q$a;-><init>(Le1/q;)V

    iput-object v0, p0, Le1/q;->c:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Le1/q$c;

    invoke-direct {v0, p0}, Le1/q$c;-><init>(Le1/q;)V

    iput-object v0, p0, Le1/q;->d:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Le1/q$d;

    invoke-direct {v0, p0}, Le1/q$d;-><init>(Le1/q;)V

    iput-object v0, p0, Le1/q;->f:Ljava/lang/Runnable;

    const/16 v0, 0xf6

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_0

    iput-object v0, p0, Le1/q;->g:[I

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 8
    fill-array-data v1, :array_1

    iput-object v1, p0, Le1/q;->h:[I

    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_2

    iput-object v0, p0, Le1/q;->i:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x70
        0x1
        0x1c
        0x1f
        0x0
        0x92
        0x1
        0x0
        0x2
        0x40
        0x3
        0x69
        0x4
        0x0
        0x5
        0x9
        0xc
        0xcc
        0xd
        0x0
        0x10
        0xe8
        0x11
        0x75
        0x12
        0x18
        0x13
        0x80
        0x14
        0x80
        0x15
        0x0
        0x17
        0x80
        0x18
        0x44
        0x19
        0x6
        0x1a
        0x10
        0x1b
        0x0
        0x1d
        0x7f
        0x1f
        0x0
        0x20
        0x50
        0x21
        0x22
        0x22
        0xf0
        0x23
        0xcf
        0x24
        0xbc
        0x25
        0xb8
        0x26
        0x44
        0x27
        0x38
        0x28
        0x0
        0x29
        0x0
        0x2a
        0x78
        0x2b
        0x44
        0x2c
        0x30
        0x2d
        0x14
        0x2e
        0xa5
        0x2f
        0xe4
        0x30
        0x0
        0x31
        0x10
        0x32
        0xff
        0x33
        0xc5
        0x34
        0x1a
        0x35
        0x0
        0x36
        0x5a
        0x37
        0x18
        0x38
        0xdd
        0x39
        0x0
        0x3a
        0x30
        0x3b
        0x0
        0x3c
        0x0
        0x3d
        0x0
        0x3f
        0x1a
        0x40
        0x80
        0x41
        0x0
        0x42
        0x0
        0x48
        0x2
        0x49
        0x0
        0x4a
        0xa1
        0x4b
        0xa
        0x4c
        0x0
        0x4d
        0x1
        0x4e
        0x1
        0x50
        0x0
        0x51
        0x77
        0x52
        0x0
        0x53
        0x0
        0x54
        0x16
        0x55
        0x0
        0x56
        0x0
        0x57
        0x0
        0x58
        0x0
        0x60
        0x0
        0x61
        0x0
        0x62
        0x0
        0x63
        0x0
        0x71
        0xa5
        0x72
        0xa0
        0x74
        0xf0
        0x75
        0x0
        0x76
        0x17
        0x77
        0x5
        0x78
        0x88
        0x79
        0x6
        0x7a
        0x28
        0x7b
        0x46
        0x7c
        0xb3
        0x7d
        0x6
        0x7e
        0x13
        0x7f
        0x10
        0x80
        0x5
        0x81
        0xa0
        0x82
        0x11
        0x83
        0x11
        0x84
        0x2
        0x85
        0xe
        0x86
        0x8
        0x87
        0x37
        0x88
        0x0
        0x89
        0x0
        0x8a
        0x2
        0x8b
        0x33
        0x8c
        0x22
        0x8d
        0x3
        0x8e
        0x22
        0x8f
        0x1
        0x90
        0x0
        0x91
        0xc
        0x92
        0x0
        0x93
        0xe
        0x94
        0x7
        0x95
        0xff
        0x96
        0x1a
        0x9b
        0x2
        0xa0
        0x0
        0xa1
        0x0
        0xa2
        0x30
        0xa3
        0xc0
        0xa4
        0x0
        0xc0
        0x47
        0xc1
        0x20
        0xff
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x2
        0x8
        0x15
        0x9
        0xf0
        0xa
        0x14
        0xb
        0xd0
        0x73
        0x20
    .end array-data

    :array_2
    .array-data 4
        0x7
        0x12
        0x8
        0x17
        0x9
        0x20
        0xa
        0x1e
        0xb
        0xd0
        0x73
        0x20
    .end array-data
.end method

.method public static synthetic j(Le1/q;II)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Le1/q;->t(II)I

    move-result p0

    return p0
.end method

.method public static synthetic k(Le1/q;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Le1/q;->q()I

    move-result p0

    return p0
.end method

.method public static synthetic l(Le1/q;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Le1/q;->p()I

    move-result p0

    return p0
.end method

.method public static synthetic m(Le1/q;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le1/q;->v(I)V

    return-void
.end method

.method public static synthetic n()I
    .locals 1

    .line 1
    sget v0, Le1/q;->o:I

    return v0
.end method

.method public static synthetic o(Le1/q;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le1/q;->w(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le1/q;->b:Lo1/n;

    const-string v1, "/dev/i2c-0"

    invoke-virtual {v0, v1}, Lo1/n;->f(Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Le1/q;->b:Lo1/n;

    const-string v1, "/dev/i2c-4"

    invoke-virtual {v0, v1}, Lo1/n;->f(Ljava/lang/String;)I

    .line 4
    :goto_0
    sget-object v0, Lu0/c;->h:Lo1/y;

    iget-object v1, p0, Le1/q;->c:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    iget-object v0, p0, Le1/q;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Le1/b;->a(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->D:Lo1/y;

    iget-object v1, p0, Le1/q;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public c(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sput p1, Le1/q;->p:I

    .line 2
    invoke-virtual {p0, p1}, Le1/q;->s(I)V

    const/4 p1, 0x0

    .line 3
    sput p1, Le1/q;->l:I

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->h:Lo1/y;

    iget-object v1, p0, Le1/q;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Le1/q;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Le1/b;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->D:Lo1/y;

    iget-object v1, p0, Le1/q;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Le1/q;->b:Lo1/n;

    invoke-virtual {v0}, Lo1/n;->close()V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    sget-boolean v0, Le1/q;->k:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le1/q;->r()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Le1/q;->k:Z

    .line 4
    :cond_0
    invoke-static {}, Lo1/q0;->k()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget v0, Le1/q;->p:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Le1/q;->s(I)V

    .line 6
    sget v0, Le1/q;->p:I

    invoke-virtual {p0, v0}, Le1/q;->i(I)V

    .line 7
    sput-boolean v1, Le1/q;->n:Z

    return-void

    .line 8
    :cond_2
    :goto_0
    sput-boolean v1, Le1/q;->n:Z

    return-void
.end method

.method public h(IIII)V
    .locals 1

    .line 1
    sget p1, Le1/q;->j:I

    and-int/lit16 p2, p2, 0xff

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0, p2}, Le1/q;->x(III)I

    .line 2
    sget p1, Le1/q;->j:I

    and-int/lit16 p2, p4, 0xff

    const/16 p4, 0x11

    invoke-virtual {p0, p1, p4, p2}, Le1/q;->x(III)I

    .line 3
    sget p1, Le1/q;->j:I

    and-int/lit16 p2, p3, 0xff

    const/16 p3, 0x13

    invoke-virtual {p0, p1, p3, p2}, Le1/q;->x(III)I

    .line 4
    sget p1, Le1/q;->j:I

    const/16 p3, 0x14

    invoke-virtual {p0, p1, p3, p2}, Le1/q;->x(III)I

    return-void
.end method

.method public declared-synchronized i(I)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_1

    const/16 v0, 0xa

    if-gt p1, v0, :cond_1

    .line 1
    :try_start_0
    sget-boolean v0, Le1/q;->k:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sput p1, Le1/q;->p:I

    .line 3
    sget-object v0, Lu0/b;->t4:[I

    aget p1, v0, p1

    sput p1, Le1/q;->o:I

    .line 4
    invoke-virtual {p0, p1}, Le1/q;->w(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 6
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final p()I
    .locals 7

    .line 1
    sget v0, Le1/q;->j:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Le1/q;->t(II)I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-wide/16 v4, 0xa

    .line 2
    invoke-static {v4, v5}, La/i;->a0(J)V

    .line 3
    sget v6, Le1/q;->j:I

    invoke-virtual {p0, v6, v1}, Le1/q;->t(II)I

    move-result v6

    and-int/2addr v6, v2

    if-nez v6, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v2

    .line 4
    :goto_1
    invoke-static {v4, v5}, La/i;->a0(J)V

    .line 5
    sget v4, Le1/q;->j:I

    invoke-virtual {p0, v4, v1}, Le1/q;->t(II)I

    move-result v1

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    move v2, v3

    :cond_2
    const/4 v1, -0x1

    if-ne v0, v6, :cond_3

    if-ne v0, v2, :cond_3

    if-ne v6, v2, :cond_3

    .line 6
    invoke-virtual {p0}, Le1/q;->q()I

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    invoke-static {v0}, Lu0/d;->n3(I)V

    goto :goto_2

    :cond_3
    move v0, v1

    :cond_4
    :goto_2
    return v0
.end method

.method public final q()I
    .locals 4

    .line 1
    sget v0, Le1/q;->j:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Le1/q;->t(II)I

    move-result v0

    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x7

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    shr-int/2addr v0, v1

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public final r()I
    .locals 1

    .line 1
    iget-object v0, p0, Le1/q;->g:[I

    invoke-virtual {p0, v0}, Le1/q;->u([I)I

    move-result v0

    return v0
.end method

.method public final declared-synchronized s(I)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lu0/b;->t4:[I

    aget p1, v0, p1

    .line 2
    sget-boolean v0, Le1/q;->k:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le1/q;->r()I

    move-result v0

    if-ltz v0, :cond_0

    .line 4
    sput-boolean v1, Le1/q;->k:Z

    :cond_0
    const/16 v0, 0x43

    const/16 v2, 0x44

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eq p1, v1, :cond_7

    if-eq p1, v3, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    const/16 v0, 0x40

    goto :goto_1

    :cond_2
    const/16 v0, 0x41

    goto :goto_1

    :cond_3
    const/16 v0, 0x42

    goto :goto_1

    .line 5
    :cond_4
    sget p1, Lu0/b;->f1:I

    if-eqz p1, :cond_8

    goto :goto_0

    .line 6
    :cond_5
    sget p1, Lu0/b;->f1:I

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    move v0, v2

    goto :goto_1

    :cond_7
    const/16 v0, 0x45

    :cond_8
    :goto_1
    if-eq v0, v4, :cond_9

    .line 7
    sget p1, Le1/q;->j:I

    invoke-virtual {p0, p1, v3, v0}, Le1/q;->x(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final t(II)I
    .locals 2

    const-string v0, "sys.fyt.video.debug"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lo1/q0;->k()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Le1/q;->b:Lo1/n;

    invoke-virtual {v0, p1, p2}, Lo1/n;->g(II)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final u([I)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 2
    aget v3, p1, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    aget v3, p1, v1

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    aget v3, p1, v1

    const/16 v4, 0x11

    if-eq v3, v4, :cond_1

    aget v3, p1, v1

    const/16 v4, 0x13

    if-eq v3, v4, :cond_1

    aget v3, p1, v1

    const/16 v4, 0x14

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget v3, Le1/q;->j:I

    aget v4, p1, v1

    add-int/lit8 v5, v1, 0x1

    aget v5, p1, v5

    invoke-virtual {p0, v3, v4, v5}, Le1/q;->x(III)I

    move-result v3

    add-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 4
    sput-boolean v0, Le1/q;->k:Z

    .line 5
    sget p1, Le1/q;->l:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 6
    sput p1, Le1/q;->l:I

    .line 7
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    new-instance v0, Le1/q$b;

    invoke-direct {v0, p0}, Le1/q$b;-><init>(Le1/q;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    :goto_2
    return v2
.end method

.method public final v(I)V
    .locals 2

    .line 1
    iget v0, p0, Le1/q;->e:I

    if-ne v0, p1, :cond_0

    sget-boolean v0, Le1/q;->m:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Le1/q;->e:I

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x64

    .line 3
    invoke-static {v0, v1}, La/i;->a0(J)V

    .line 4
    sget p1, Le1/q;->j:I

    const/16 v0, 0x73

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Le1/q;->x(III)I

    .line 5
    sput-boolean v1, Le1/q;->m:Z

    :cond_1
    return-void
.end method

.method public final w(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le1/q;->p()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Le1/q;->w(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget p1, Lu0/b;->s4:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Le1/q;->h:[I

    invoke-virtual {p0, p1}, Le1/q;->u([I)I

    .line 5
    sput-boolean v0, Le1/q;->m:Z

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Le1/q;->i:[I

    invoke-virtual {p0, p1}, Le1/q;->u([I)I

    .line 7
    sput-boolean v0, Le1/q;->m:Z

    :goto_0
    return-void
.end method

.method public final x(III)I
    .locals 2

    const-string v0, "sys.fyt.video.debug"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lo1/q0;->k()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Le1/q;->b:Lo1/n;

    invoke-virtual {v0, p1, p2, p3}, Lo1/n;->h(III)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
