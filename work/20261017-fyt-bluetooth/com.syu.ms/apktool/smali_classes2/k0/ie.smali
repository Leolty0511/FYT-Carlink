.class public Lk0/ie;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static i:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ie;->c:I

    const/16 v1, 0x15

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v4, 0xe

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_14

    const/16 v3, 0x14

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/ie;->d:[[I

    .line 4
    new-instance v1, Lk0/ie$a;

    invoke-direct {v1, p0}, Lk0/ie$a;-><init>(Lk0/ie;)V

    iput-object v1, p0, Lk0/ie;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lk0/ie$b;

    invoke-direct {v1, p0}, Lk0/ie$b;-><init>(Lk0/ie;)V

    iput-object v1, p0, Lk0/ie;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lk0/ie$c;

    invoke-direct {v1, p0}, Lk0/ie$c;-><init>(Lk0/ie;)V

    iput-object v1, p0, Lk0/ie;->g:Ljava/lang/Runnable;

    .line 7
    iput-boolean v0, p0, Lk0/ie;->h:Z

    return-void

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x6
    .end array-data

    :array_9
    .array-data 4
        0xa
        0xc
    .end array-data

    :array_a
    .array-data 4
        0x81
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x82
        0x4
    .end array-data

    :array_c
    .array-data 4
        0x83
        0x3
    .end array-data

    :array_d
    .array-data 4
        0x84
        0x4
    .end array-data

    :array_e
    .array-data 4
        0x85
        0x3
    .end array-data

    :array_f
    .array-data 4
        0x86
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x87
        0x5
    .end array-data

    :array_11
    .array-data 4
        0x88
        0x6
    .end array-data

    :array_12
    .array-data 4
        0x89
        0x5
    .end array-data

    :array_13
    .array-data 4
        0x8a
        0xe
    .end array-data

    :array_14
    .array-data 4
        0x8b
        0xc
    .end array-data
.end method

.method public static a3()V
    .locals 14

    const/16 v0, 0x25

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, -0x1d

    aput v0, v1, v2

    const/16 v0, -0x3c

    const/4 v3, 0x1

    aput v0, v1, v3

    const/16 v0, 0x22

    const/4 v4, 0x2

    aput v0, v1, v4

    .line 2
    invoke-static {}, Lk0/ie;->b3()I

    move-result v0

    int-to-byte v0, v0

    const/4 v5, 0x3

    aput v0, v1, v5

    .line 3
    sget v0, Lu0/b;->D:I

    const-string v6, "utf-8"

    const/16 v7, 0x14

    if-eq v0, v3, :cond_2

    const-string v8, ":"

    const-string v9, "  "

    const-string v10, "/"

    const/4 v11, 0x4

    if-eq v0, v11, :cond_1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    new-array v0, v7, [I

    .line 4
    sget v7, Lu0/b;->r3:I

    div-int/lit8 v12, v7, 0x64

    aput v12, v0, v2

    .line 5
    rem-int/lit8 v7, v7, 0x64

    aput v7, v0, v3

    .line 6
    sget v7, Lu0/b;->s3:I

    div-int/lit8 v12, v7, 0x64

    aput v12, v0, v4

    .line 7
    rem-int/lit8 v7, v7, 0x64

    aput v7, v0, v5

    .line 8
    sget v7, Lu0/b;->t3:I

    rem-int/lit16 v12, v7, 0xe10

    div-int/lit8 v12, v12, 0x3c

    aput v12, v0, v11

    .line 9
    rem-int/lit8 v7, v7, 0x3c

    const/4 v12, 0x5

    aput v7, v0, v12

    .line 10
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v13, v0, v2

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v11

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v12

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    :try_start_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 14
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_5

    add-int/lit8 v3, v2, 0x4

    .line 15
    aget-byte v4, v0, v2

    aput v4, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :cond_1
    :pswitch_1
    new-array v0, v7, [I

    .line 17
    sget v7, Lo0/e;->B:I

    div-int/lit8 v7, v7, 0x64

    aput v7, v0, v2

    .line 18
    sget v7, Lo0/e;->C:I

    rem-int/lit8 v7, v7, 0x64

    aput v7, v0, v3

    .line 19
    sget v7, Lo0/e;->r:I

    rem-int/lit16 v11, v7, 0xe10

    div-int/lit8 v11, v11, 0x3c

    aput v11, v0, v4

    .line 20
    rem-int/lit8 v7, v7, 0x3c

    aput v7, v0, v5

    .line 21
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v11, v0, v2

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v4

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    :try_start_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 25
    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_5

    add-int/lit8 v3, v2, 0x4

    .line 26
    aget-byte v4, v0, v2

    aput v4, v1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :cond_2
    new-array v0, v7, [I

    .line 28
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 29
    sget v5, Lw0/d;->h:I

    if-eqz v5, :cond_3

    if-eq v5, v3, :cond_3

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_3

    .line 30
    :pswitch_2
    sget v4, Lw0/d;->i:I

    div-int/lit8 v5, v4, 0x64

    aput v5, v0, v3

    .line 31
    rem-int/lit8 v4, v4, 0x64

    aput v4, v0, v2

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 33
    :cond_3
    sget v4, Lw0/d;->i:I

    div-int/lit8 v5, v4, 0x64

    aput v5, v0, v3

    .line 34
    rem-int/lit8 v4, v4, 0x64

    aput v4, v0, v2

    .line 35
    aget v4, v0, v2

    const/16 v5, 0xa

    if-ge v4, v5, :cond_4

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 37
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 38
    :goto_3
    :try_start_2
    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 39
    :goto_4
    array-length v3, v0

    if-ge v2, v3, :cond_5

    add-int/lit8 v3, v2, 0x4

    .line 40
    aget-byte v4, v0, v2

    aput v4, v1, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_2
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    :cond_5
    :goto_5
    invoke-static {v1}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static b3()I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1
    sget v2, Lu0/b;->D:I

    const/16 v3, 0x8

    const/16 v4, 0xb

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x9

    aput v0, v1, v5

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x7

    aput v0, v1, v5

    goto :goto_0

    :pswitch_2
    aput v3, v1, v5

    goto :goto_0

    :pswitch_3
    aput v3, v1, v5

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x6

    aput v0, v1, v5

    goto :goto_0

    :pswitch_5
    aput v4, v1, v5

    goto :goto_0

    :pswitch_6
    aput v4, v1, v5

    goto :goto_0

    .line 2
    :pswitch_7
    sget v2, Lw0/d;->h:I

    if-eqz v2, :cond_1

    if-eq v2, v0, :cond_0

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x3

    aput v0, v1, v5

    goto :goto_0

    :pswitch_9
    const/4 v0, 0x2

    aput v0, v1, v5

    goto :goto_0

    :pswitch_a
    aput v0, v1, v5

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    aput v0, v1, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    aput v0, v1, v5

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xc

    aput v0, v1, v5

    .line 3
    :goto_0
    aget v0, v1, v5

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static synthetic f3()I
    .locals 1

    .line 1
    sget v0, Lk0/ie;->i:I

    return v0
.end method

.method public static synthetic g3(I)I
    .locals 0

    .line 1
    sput p0, Lk0/ie;->i:I

    return p0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->o:I

    .line 5
    invoke-virtual {p0, v1}, Lk0/ie;->d3(I)V

    const/16 v0, 0x21

    .line 6
    invoke-virtual {p0, v0}, Lk0/ie;->e3(I)V

    const/16 v0, 0x24

    .line 7
    invoke-virtual {p0, v0}, Lk0/ie;->e3(I)V

    const/16 v0, 0x25

    .line 8
    invoke-virtual {p0, v0}, Lk0/ie;->e3(I)V

    const/16 v0, 0x26

    .line 9
    invoke-virtual {p0, v0}, Lk0/ie;->e3(I)V

    const/16 v0, 0x30

    .line 10
    invoke-virtual {p0, v0}, Lk0/ie;->e3(I)V

    .line 11
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/ie;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/ie;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lw0/e;->d:Lo1/y;

    iget-object v2, p0, Lk0/ie;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/ie;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/ie;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/ie;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    iget-object v0, p0, Lk0/ie;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 18
    iget-object v0, p0, Lk0/ie;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x30

    const/4 v4, 0x2

    if-eq v2, v3, :cond_15

    const/16 v3, 0x41

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_14

    const/16 v3, 0x7d

    const/16 v10, 0x21c

    const/16 v11, 0xa

    const/16 v12, 0x64

    const/16 v13, 0xff

    if-eq v2, v3, :cond_e

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v1, v1, v3

    and-int/2addr v2, v13

    or-int/lit16 v2, v2, 0x80

    .line 4
    iput v2, v0, Lk0/ie;->c:I

    move v2, v8

    .line 5
    :goto_0
    iget-object v3, v0, Lk0/ie;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 6
    iget v4, v0, Lk0/ie;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_0

    if-eqz v4, :cond_1

    .line 7
    iput v2, v0, Lk0/ie;->b:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    and-int/2addr v1, v13

    if-ne v1, v9, :cond_2

    .line 8
    array-length v1, v3

    if-ge v2, v1, :cond_16

    .line 9
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_2
    if-nez v1, :cond_16

    .line 10
    iget v1, v0, Lk0/ie;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_3

    if-eq v1, v13, :cond_3

    .line 11
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 12
    :cond_3
    iput v13, v0, Lk0/ie;->b:I

    goto/16 :goto_7

    .line 13
    :pswitch_1
    iget-boolean v2, v0, Lk0/ie;->h:Z

    if-nez v2, :cond_16

    add-int/lit8 v2, p2, 0x2

    .line 14
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/lit8 v1, v1, 0x7

    invoke-static {v2, v1, v8, v10}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_7

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 15
    aget-byte v1, v1, v2

    const/16 v2, 0x63

    new-array v3, v9, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 16
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 17
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 18
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 19
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 20
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 21
    aget-byte v1, v1, v5

    and-int/2addr v2, v13

    .line 22
    invoke-virtual {v0, v2}, Lk0/ie;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    and-int/lit16 v2, v3, 0xff

    .line 23
    invoke-virtual {v0, v2}, Lk0/ie;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    and-int/lit16 v2, v4, 0xff

    .line 24
    invoke-virtual {v0, v2}, Lk0/ie;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    and-int/2addr v1, v13

    .line 25
    invoke-virtual {v0, v1}, Lk0/ie;->c3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_7

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 26
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 27
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 28
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 29
    aget-byte v1, v1, v5

    and-int/2addr v2, v13

    .line 30
    invoke-virtual {v0, v2}, Lk0/ie;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    and-int/lit16 v2, v3, 0xff

    .line 31
    invoke-virtual {v0, v2}, Lk0/ie;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    and-int/lit16 v2, v4, 0xff

    .line 32
    invoke-virtual {v0, v2}, Lk0/ie;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    and-int/2addr v1, v13

    .line 33
    invoke-virtual {v0, v1}, Lk0/ie;->c3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 34
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 35
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 36
    aget-byte v6, v1, v5

    add-int/lit8 v10, p2, 0x5

    .line 37
    aget-byte v12, v1, v10

    add-int/lit8 v13, p2, 0x6

    .line 38
    aget-byte v13, v1, v13

    .line 39
    sget v14, Lu0/b;->o:I

    if-ne v14, v9, :cond_4

    return-void

    :cond_4
    new-array v14, v9, [I

    shr-int/lit8 v15, v2, 0x7

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 40
    invoke-static {v11, v14}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xb

    new-array v14, v9, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 41
    invoke-static {v11, v14}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xc

    new-array v14, v9, [I

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v9

    if-ne v15, v9, :cond_5

    move v15, v8

    goto :goto_2

    :cond_5
    move v15, v9

    :goto_2
    aput v15, v14, v8

    .line 42
    invoke-static {v11, v14}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xd

    new-array v14, v9, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 43
    invoke-static {v11, v14}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xe

    new-array v14, v9, [I

    shr-int/lit8 v15, v2, 0x2

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 44
    invoke-static {v11, v14}, Lk0/qt;->y0(I[I)V

    new-array v11, v9, [I

    shr-int/lit8 v14, v2, 0x1

    and-int/2addr v14, v9

    aput v14, v11, v8

    const/16 v14, 0xf

    .line 45
    invoke-static {v14, v11}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x26

    new-array v15, v9, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v9

    aput v2, v15, v8

    .line 46
    invoke-static {v11, v15}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v11, v9, [I

    shr-int/lit8 v15, v3, 0x5

    and-int/lit8 v16, v15, 0x7

    aput v16, v11, v8

    .line 47
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v11, v9, [I

    shr-int/lit8 v16, v3, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v8

    .line 48
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v11, v9, [I

    shr-int/lit8 v16, v3, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v8

    .line 49
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v11, v9, [I

    and-int/2addr v15, v9

    aput v15, v11, v8

    .line 50
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v11, v9, [I

    shr-int/2addr v3, v8

    and-int/2addr v3, v14

    aput v3, v11, v8

    .line 51
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 52
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 53
    aget-byte v6, v1, v10

    .line 54
    aget-byte v12, v1, v5

    :cond_6
    and-int/lit16 v1, v6, 0xff

    const/4 v2, -0x2

    const/16 v3, 0xfe

    const/16 v5, 0x1b

    if-nez v1, :cond_7

    new-array v1, v9, [I

    aput v2, v1, v8

    .line 55
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_7
    if-ne v1, v3, :cond_8

    new-array v1, v9, [I

    const/4 v6, -0x3

    aput v6, v1, v8

    .line 56
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array v1, v9, [I

    add-int/lit8 v6, v6, -0x20

    .line 57
    div-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x10

    aput v6, v1, v8

    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    :goto_3
    and-int/lit16 v1, v12, 0xff

    const/16 v5, 0x1c

    if-nez v1, :cond_9

    new-array v1, v9, [I

    aput v2, v1, v8

    .line 58
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_9
    if-ne v1, v3, :cond_a

    new-array v1, v9, [I

    const/4 v2, -0x3

    aput v2, v1, v8

    .line 59
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_a
    new-array v1, v9, [I

    add-int/lit8 v12, v12, -0x20

    .line 60
    div-int/2addr v12, v4

    add-int/lit8 v12, v12, 0x10

    aput v12, v1, v8

    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v1, 0x1d

    new-array v2, v9, [I

    and-int/lit8 v3, v13, 0x3

    aput v3, v2, v8

    .line 61
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1e

    new-array v2, v9, [I

    shr-int/lit8 v3, v13, 0x2

    and-int/2addr v3, v7

    aput v3, v2, v8

    .line 62
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 63
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 64
    aget-byte v1, v1, v3

    and-int/2addr v2, v13

    .line 65
    iput v2, v0, Lk0/ie;->c:I

    move v2, v8

    .line 66
    :goto_5
    iget-object v3, v0, Lk0/ie;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_c

    .line 67
    iget v4, v0, Lk0/ie;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_b

    if-eqz v4, :cond_c

    .line 68
    iput v2, v0, Lk0/ie;->b:I

    goto :goto_6

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    and-int/2addr v1, v13

    if-eqz v1, :cond_d

    .line 69
    array-length v1, v3

    if-ge v2, v1, :cond_16

    .line 70
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 71
    :cond_d
    array-length v1, v3

    if-gt v2, v1, :cond_16

    .line 72
    iget v1, v0, Lk0/ie;->b:I

    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_e
    add-int/lit8 v2, p2, 0x2

    .line 73
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    if-eq v2, v9, :cond_12

    const v3, 0xff00

    const/16 v5, 0x8

    if-eq v2, v7, :cond_11

    if-eq v2, v5, :cond_10

    if-eq v2, v11, :cond_f

    goto/16 :goto_7

    :cond_f
    const/16 v2, 0x408

    new-array v4, v9, [I

    add-int/lit8 v6, p2, 0x4

    .line 74
    aget-byte v6, v1, v6

    shl-int/lit8 v5, v6, 0x8

    and-int/2addr v3, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    and-int/2addr v1, v13

    or-int/2addr v1, v3

    aput v1, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_10
    add-int/lit8 v2, p2, 0x3

    .line 75
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 76
    aget-byte v1, v1, v3

    .line 77
    invoke-static {v2, v1, v9, v10}, Lk0/qt;->i(IIZI)V

    .line 78
    iput-boolean v9, v0, Lk0/ie;->h:Z

    goto/16 :goto_7

    :cond_11
    add-int/lit8 v2, p2, 0x4

    .line 79
    aget-byte v2, v1, v2

    shl-int/2addr v2, v5

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v13

    or-int/2addr v1, v2

    div-int/2addr v1, v12

    const/16 v2, 0x407

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 80
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 81
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v4, [I

    aput v9, v4, v8

    aput v1, v4, v9

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_7

    :cond_12
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 82
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_13

    add-int/lit8 v2, p2, 0x3

    .line 83
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v9

    aget-byte v1, v1, v2

    shr-int/2addr v1, v6

    and-int/2addr v1, v9

    invoke-static {v3, v1, v8}, Ll0/c0;->b(III)V

    goto :goto_7

    :cond_13
    add-int/lit8 v2, p2, 0x3

    .line 84
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v9

    aget-byte v1, v1, v2

    shr-int/2addr v1, v6

    and-int/2addr v1, v9

    invoke-static {v3, v1, v8}, Ll0/c0;->a(III)V

    goto :goto_7

    :cond_14
    add-int/lit8 v2, p2, 0x2

    .line 85
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 86
    aget-byte v1, v1, v3

    if-ne v2, v9, :cond_16

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 87
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 88
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 89
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 90
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 91
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    .line 92
    :cond_15
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_16
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lk0/ie;->d3(I)V

    .line 2
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/ie;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/ie;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->d:Lo1/y;

    iget-object v1, p0, Lk0/ie;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/ie;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/ie;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ie;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/ie;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/ie;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x65

    if-ge p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c3(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/16 p1, 0xa

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x8

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x7

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x0

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d3(I)V
    .locals 5

    add-int/lit16 v0, p1, 0x82

    xor-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v2, 0x2e

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x2

    const/16 v4, 0x81

    aput v4, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput p1, v1, v2

    and-int/lit16 p1, v0, 0xff

    const/4 v0, 0x5

    aput p1, v1, v0

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public final e3(I)V
    .locals 5

    add-int/lit16 v0, p1, 0x91

    xor-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v2, 0x2e

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x2

    const/16 v4, 0x90

    aput v4, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput p1, v1, v2

    and-int/lit16 p1, v0, 0xff

    const/4 v0, 0x5

    aput p1, v1, v0

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method
