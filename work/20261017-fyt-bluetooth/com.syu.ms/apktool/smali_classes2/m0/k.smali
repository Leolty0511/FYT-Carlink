.class public Lm0/k;
.super Lm0/a;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static n:[I


# instance fields
.field public final a:[B

.field public final b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:[B

.field public j:[B

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lm0/k;->n:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1021
        0x2042
        0x3063
        0x4084
        0x50a5
        0x60c6
        0x70e7
        0x8108
        0x9129
        0xa14a
        0xb16b
        0xc18c
        0xd1ad
        0xe1ce
        0xf1ef
        0x1231
        0x210
        0x3273
        0x2252
        0x52b5
        0x4294
        0x72f7
        0x62d6
        0x9339
        0x8318
        0xb37b
        0xa35a
        0xd3bd
        0xc39c
        0xf3ff
        0xe3de
        0x2462
        0x3443
        0x420
        0x1401
        0x64e6
        0x74c7
        0x44a4
        0x5485
        0xa56a
        0xb54b
        0x8528
        0x9509
        0xe5ee
        0xf5cf
        0xc5ac
        0xd58d
        0x3653
        0x2672
        0x1611
        0x630
        0x76d7
        0x66f6
        0x5695
        0x46b4
        0xb75b
        0xa77a
        0x9719
        0x8738
        0xf7df
        0xe7fe
        0xd79d
        0xc7bc
        0x48c4
        0x58e5
        0x6886
        0x78a7
        0x840
        0x1861
        0x2802
        0x3823
        0xc9cc
        0xd9ed
        0xe98e
        0xf9af
        0x8948
        0x9969
        0xa90a
        0xb92b
        0x5af5
        0x4ad4
        0x7ab7
        0x6a96
        0x1a71
        0xa50
        0x3a33
        0x2a12
        0xdbfd
        0xcbdc
        0xfbbf
        0xeb9e
        0x9b79
        0x8b58
        0xbb3b
        0xab1a
        0x6ca6
        0x7c87
        0x4ce4
        0x5cc5
        0x2c22
        0x3c03
        0xc60
        0x1c41
        0xedae
        0xfd8f
        0xcdec
        0xddcd
        0xad2a
        0xbd0b
        0x8d68
        0x9d49
        0x7e97
        0x6eb6
        0x5ed5
        0x4ef4
        0x3e13
        0x2e32
        0x1e51
        0xe70
        0xff9f
        0xefbe
        0xdfdd
        0xcffc
        0xbf1b
        0xaf3a
        0x9f59
        0x8f78
        0x9188
        0x81a9
        0xb1ca
        0xa1eb
        0xd10c
        0xc12d
        0xf14e
        0xe16f
        0x1080
        0xa1
        0x30c2
        0x20e3
        0x5004
        0x4025
        0x7046
        0x6067
        0x83b9
        0x9398
        0xa3fb
        0xb3da
        0xc33d
        0xd31c
        0xe37f
        0xf35e
        0x2b1
        0x1290
        0x22f3
        0x32d2
        0x4235
        0x5214
        0x6277
        0x7256
        0xb5ea
        0xa5cb
        0x95a8
        0x8589
        0xf56e
        0xe54f
        0xd52c
        0xc50d
        0x34e2
        0x24c3
        0x14a0
        0x481
        0x7466
        0x6447
        0x5424
        0x4405
        0xa7db
        0xb7fa
        0x8799
        0x97b8
        0xe75f    # 8.3E-41f
        0xf77e
        0xc71d
        0xd73c
        0x26d3
        0x36f2
        0x691
        0x16b0
        0x6657
        0x7676
        0x4615
        0x5634
        0xd94c
        0xc96d
        0xf90e
        0xe92f
        0x99c8
        0x89e9
        0xb98a
        0xa9ab
        0x5844
        0x4865
        0x7806
        0x6827
        0x18c0
        0x8e1
        0x3882
        0x28a3
        0xcb7d
        0xdb5c
        0xeb3f
        0xfb1e
        0x8bf9
        0x9bd8
        0xabbb
        0xbb9a
        0x4a75
        0x5a54
        0x6a37
        0x7a16
        0xaf1
        0x1ad0
        0x2ab3
        0x3a92
        0xfd2e
        0xed0f
        0xdd6c
        0xcd4d
        0xbdaa
        0xad8b
        0x9de8
        0x8dc9
        0x7c26
        0x6c07
        0x5c64
        0x4c45
        0x3ca2
        0x2c83
        0x1ce0
        0xcc1
        0xef1f
        0xff3e
        0xcf5d
        0xdf7c
        0xaf9b
        0xbfba
        0x8fd9
        0x9ff8
        0x6e17
        0x7e36
        0x4e55
        0x5e74
        0x2e93
        0x3eb2
        0xed1
        0x1ef0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 2
    iput-object v1, p0, Lm0/k;->a:[B

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lm0/k;->b:Z

    .line 4
    iput v1, p0, Lm0/k;->c:I

    .line 5
    iput v1, p0, Lm0/k;->f:I

    const/4 v2, -0x1

    .line 6
    iput v2, p0, Lm0/k;->g:I

    iput v1, p0, Lm0/k;->h:I

    new-array v0, v0, [B

    .line 7
    iput-object v0, p0, Lm0/k;->i:[B

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lm0/k;->l:Ljava/lang/String;

    .line 9
    new-instance v0, Lm0/k$a;

    invoke-direct {v0, p0}, Lm0/k$a;-><init>(Lm0/k;)V

    iput-object v0, p0, Lm0/k;->m:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic N2(Lm0/k;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/k;->g:I

    return p0
.end method

.method public static synthetic O2(Lm0/k;)I
    .locals 0

    .line 1
    iget p0, p0, Lm0/k;->h:I

    return p0
.end method

.method public static synthetic P2(Lm0/k;I)I
    .locals 0

    .line 1
    iput p1, p0, Lm0/k;->h:I

    return p1
.end method

.method public static synthetic Q2(Lm0/k;)I
    .locals 2

    .line 1
    iget v0, p0, Lm0/k;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm0/k;->h:I

    return v0
.end method

.method public static synthetic R2(Lm0/k;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm0/k;->U2()V

    return-void
.end method

.method public static S2([B)I
    .locals 6

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v3, p0, v1

    shl-int/lit8 v4, v2, 0x8

    .line 2
    sget-object v5, Lm0/k;->n:[I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    aget v2, v5, v2

    xor-int/2addr v2, v4

    const v3, 0xffff

    and-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public K2()V
    .locals 0

    return-void
.end method

.method public L2()V
    .locals 1

    .line 1
    iget v0, p0, Lm0/k;->g:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm0/k;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lm0/k;->g:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lm0/k;->j:[B

    const/4 v0, 0x0

    .line 5
    sput v0, Lm0/b;->e:I

    return-void
.end method

.method public final T2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2
    array-length v0, p1

    if-lez v0, :cond_0

    .line 3
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public final U2()V
    .locals 2

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, "UI\u8bf7\u6c42\u8fdb\u5165can\u5347\u7ea7\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lm0/d;->f()V

    return-void
.end method

.method public final V2()V
    .locals 3

    const/16 v0, 0x85

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 1
    invoke-static {v0}, Lm0/d;->m([B)V

    return-void
.end method

.method public final W2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/16 v0, 0x85

    new-array v1, v0, [B

    const/16 v2, 0x80

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-byte v5, v1, v4

    aput-byte v4, v1, v5

    const/4 v6, 0x2

    const/4 v7, -0x1

    aput-byte v7, v1, v6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x3

    invoke-static {v6, v4, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    add-int/2addr p1, v8

    add-int/2addr p1, v5

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    invoke-static {v6, v4, v1, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    invoke-static {v1, v8, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-static {v3}, Lm0/k;->S2([B)I

    move-result p1

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/16 v2, 0x83

    aput-byte p2, v1, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/16 p2, 0x84

    aput-byte p1, v1, p2

    .line 5
    invoke-static {v1}, Lm0/d;->m([B)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SEND TO CANBUS = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v4, v0}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CAN"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final X2(I[B)V
    .locals 9

    const/16 v0, 0x405

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    int-to-byte v4, p1

    const/4 v5, 0x1

    aput-byte v4, v1, v5

    not-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    .line 1
    array-length p1, p2

    const/4 v3, 0x3

    invoke-static {p2, v2, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    invoke-static {p2}, Lm0/k;->S2([B)I

    move-result p1

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/16 v3, 0x403

    aput-byte p2, v1, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/16 p2, 0x404

    aput-byte p1, v1, p2

    const/16 p1, 0x100

    new-array p2, p1, [B

    const/4 v3, 0x5

    new-array v4, v3, [B

    move v5, v2

    :goto_0
    const/4 v6, 0x4

    if-ge v5, v3, :cond_1

    .line 3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "i ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LG"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v5, v6, :cond_0

    mul-int/lit16 v6, v5, 0x100

    .line 4
    invoke-static {v1, v6, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-static {p2}, Lm0/d;->m([B)V

    const-wide/16 v6, 0x32

    .line 6
    invoke-static {v6, v7}, La/i;->a0(J)V

    goto :goto_1

    :cond_0
    mul-int/lit16 v6, v5, 0x100

    .line 7
    invoke-static {v1, v6, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-static {v4}, Lm0/d;->m([B)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SEND TO Data = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2, v0}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CAN"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/16 p1, 0x14

    new-array p1, p1, [B

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lm0/d;->m([B)V

    const/4 p1, 0x1

    new-array p2, p1, [I

    const/4 p3, 0x0

    aput p3, p2, p3

    .line 2
    invoke-static {p3, p2}, Lm0/d;->j(I[I)V

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4f4d\u7f6e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p4, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ln1/b;->s(Ljava/lang/String;)V

    .line 4
    array-length p2, p4

    if-lez p2, :cond_4

    const/4 p2, 0x0

    .line 5
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    aget-object v1, p4, p3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p2

    .line 7
    aget-object p4, p4, p3

    invoke-virtual {p0, p4}, Lm0/k;->T2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lm0/k;->l:Ljava/lang/String;

    .line 8
    iput p2, p0, Lm0/k;->k:I

    new-array p4, p2, [B

    iput-object p4, p0, Lm0/k;->j:[B

    .line 9
    rem-int/lit16 v1, p2, 0x400

    iput v1, p0, Lm0/k;->e:I

    if-nez v1, :cond_1

    .line 10
    div-int/lit16 p2, p2, 0x400

    iput p2, p0, Lm0/k;->d:I

    goto :goto_0

    .line 11
    :cond_1
    div-int/lit16 p2, p2, 0x400

    add-int/2addr p2, p1

    iput p2, p0, Lm0/k;->d:I

    .line 12
    :goto_0
    invoke-virtual {v0, p4}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 14
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :goto_1
    sput p1, Lm0/b;->e:I

    const-wide/16 p1, 0x3e8

    .line 16
    invoke-static {p1, p2}, La/i;->a0(J)V

    .line 17
    invoke-virtual {p0}, Lm0/k;->U2()V

    .line 18
    iput p3, p0, Lm0/k;->h:I

    iput p3, p0, Lm0/k;->g:I

    .line 19
    iget-object p1, p0, Lm0/k;->m:Ljava/lang/Runnable;

    invoke-static {p1}, Lm0/d;->b(Ljava/lang/Runnable;)V

    goto :goto_6

    :catch_1
    move-exception p2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p4

    move-object v0, p2

    move-object p2, p4

    .line 20
    :goto_2
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x2

    new-array p1, p1, [I

    const/4 p4, 0x4

    aput p4, p1, p3

    .line 21
    invoke-static {p2, p1}, Lm0/d;->j(I[I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 22
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    return-void

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_4
    if-eqz p2, :cond_3

    .line 24
    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p2

    .line 25
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :cond_3
    :goto_5
    throw p1

    :cond_4
    :goto_6
    return-void

    nop

    :array_0
    .array-data 1
        0x2et
        0x70t
        0x10t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x7t
    .end array-data
.end method

.method public b([B)V
    .locals 9

    if-eqz p1, :cond_f

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget v0, p0, Lm0/k;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lm0/k;->c:I

    .line 4
    :cond_1
    iget-object v0, p0, Lm0/k;->a:[B

    array-length v3, p1

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    array-length p1, p1

    iput p1, p0, Lm0/k;->c:I

    .line 6
    iget-object v0, p0, Lm0/k;->a:[B

    add-int/lit8 v3, p1, -0x1

    aget-byte v3, v0, v3

    const/4 v4, 0x6

    const/16 v5, 0x64

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v4, :cond_8

    const/16 v8, 0x43

    if-eq v3, v8, :cond_2

    goto/16 :goto_3

    .line 7
    :cond_2
    iget v3, p0, Lm0/k;->g:I

    const/16 v8, 0x2710

    if-ne v3, v8, :cond_3

    return-void

    :cond_3
    if-eq v3, v7, :cond_7

    if-le p1, v7, :cond_4

    .line 8
    aget-byte p1, v0, v2

    if-ne p1, v4, :cond_4

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    if-nez v3, :cond_6

    new-array v0, v7, [I

    aput v7, v0, v2

    .line 9
    invoke-static {v6, v0}, Lm0/d;->j(I[I)V

    .line 10
    iget v0, p0, Lm0/k;->f:I

    add-int/2addr v0, v7

    iput v0, p0, Lm0/k;->f:I

    .line 11
    rem-int/2addr v0, p1

    if-eqz v0, :cond_5

    return-void

    .line 12
    :cond_5
    iget-object p1, p0, Lm0/k;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 13
    iget-object p1, p0, Lm0/k;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lm0/k;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lm0/k;->W2(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 14
    :cond_6
    iget v0, p0, Lm0/k;->d:I

    if-le v3, v0, :cond_f

    .line 15
    invoke-virtual {p0}, Lm0/k;->V2()V

    new-array v0, v7, [I

    aput p1, v0, v2

    .line 16
    invoke-static {v6, v0}, Lm0/d;->j(I[I)V

    .line 17
    sput v2, Lm0/b;->e:I

    .line 18
    iget-object p1, p0, Lm0/k;->m:Ljava/lang/Runnable;

    invoke-static {p1}, Lm0/d;->i(Ljava/lang/Runnable;)V

    .line 19
    iput v8, p0, Lm0/k;->g:I

    goto/16 :goto_3

    .line 20
    :cond_7
    :goto_0
    iput v7, p0, Lm0/k;->g:I

    new-array p1, v7, [I

    aput v7, p1, v2

    .line 21
    invoke-static {v6, p1}, Lm0/d;->j(I[I)V

    .line 22
    iget p1, p0, Lm0/k;->g:I

    sub-int/2addr p1, v7

    const-wide/16 v3, 0x1f4

    .line 23
    invoke-static {v3, v4}, La/i;->a0(J)V

    add-int/lit8 v0, p1, 0x1

    mul-int/lit16 v3, v0, 0x400

    .line 24
    iget v4, p0, Lm0/k;->k:I

    if-gt v3, v4, :cond_f

    .line 25
    iget-object v3, p0, Lm0/k;->j:[B

    mul-int/2addr p1, v1

    iget-object v4, p0, Lm0/k;->i:[B

    invoke-static {v3, p1, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    iget p1, p0, Lm0/k;->g:I

    iget-object v1, p0, Lm0/k;->i:[B

    invoke-virtual {p0, p1, v1}, Lm0/k;->X2(I[B)V

    new-array p1, v7, [I

    aput v6, p1, v2

    .line 27
    invoke-static {v6, p1}, Lm0/d;->j(I[I)V

    new-array p1, v7, [I

    aput v5, p1, v2

    .line 28
    invoke-static {v7, p1}, Lm0/d;->j(I[I)V

    new-array p1, v7, [I

    mul-int/2addr v0, v5

    .line 29
    iget v1, p0, Lm0/k;->d:I

    div-int/2addr v0, v1

    aput v0, p1, v2

    invoke-static {v2, p1}, Lm0/d;->j(I[I)V

    goto/16 :goto_3

    .line 30
    :cond_8
    iget p1, p0, Lm0/k;->g:I

    if-nez p1, :cond_9

    .line 31
    iput v7, p0, Lm0/k;->g:I

    goto/16 :goto_3

    :cond_9
    if-lez p1, :cond_f

    add-int/2addr p1, v7

    .line 32
    iput p1, p0, Lm0/k;->g:I

    const-wide/16 v3, 0x32

    .line 33
    invoke-static {v3, v4}, La/i;->a0(J)V

    .line 34
    iget p1, p0, Lm0/k;->g:I

    add-int/lit8 v0, p1, -0x1

    .line 35
    iget v3, p0, Lm0/k;->d:I

    if-gt p1, v3, :cond_e

    if-ge p1, v3, :cond_a

    .line 36
    iget-object p1, p0, Lm0/k;->j:[B

    mul-int/lit16 v3, v0, 0x400

    iget-object v4, p0, Lm0/k;->i:[B

    invoke-static {p1, v3, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_a
    if-ne p1, v3, :cond_d

    .line 37
    iget p1, p0, Lm0/k;->e:I

    if-nez p1, :cond_b

    .line 38
    iget-object p1, p0, Lm0/k;->j:[B

    mul-int/lit16 v3, v0, 0x400

    iget-object v4, p0, Lm0/k;->i:[B

    invoke-static {p1, v3, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_b
    new-array p1, v1, [B

    .line 39
    iput-object p1, p0, Lm0/k;->i:[B

    move p1, v2

    :goto_1
    if-ge p1, v1, :cond_c

    .line 40
    iget-object v3, p0, Lm0/k;->i:[B

    const/16 v4, 0x1a

    aput-byte v4, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 41
    :cond_c
    iget-object p1, p0, Lm0/k;->j:[B

    mul-int/lit16 v1, v0, 0x400

    iget-object v3, p0, Lm0/k;->i:[B

    iget v4, p0, Lm0/k;->e:I

    invoke-static {p1, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    :cond_d
    :goto_2
    iget p1, p0, Lm0/k;->g:I

    iget-object v1, p0, Lm0/k;->i:[B

    invoke-virtual {p0, p1, v1}, Lm0/k;->X2(I[B)V

    new-array p1, v7, [I

    aput v6, p1, v2

    .line 43
    invoke-static {v6, p1}, Lm0/d;->j(I[I)V

    new-array p1, v7, [I

    aput v5, p1, v2

    .line 44
    invoke-static {v7, p1}, Lm0/d;->j(I[I)V

    new-array p1, v7, [I

    add-int/2addr v0, v7

    mul-int/2addr v0, v5

    .line 45
    iget v1, p0, Lm0/k;->d:I

    div-int/2addr v0, v1

    aput v0, p1, v2

    invoke-static {v2, p1}, Lm0/d;->j(I[I)V

    .line 46
    :cond_e
    iget p1, p0, Lm0/k;->g:I

    iget v0, p0, Lm0/k;->d:I

    add-int/2addr v0, v7

    if-ne p1, v0, :cond_f

    new-array p1, v7, [B

    const/4 v0, 0x4

    aput-byte v0, p1, v2

    .line 47
    invoke-static {p1}, Lm0/d;->m([B)V

    :cond_f
    :goto_3
    return-void
.end method
