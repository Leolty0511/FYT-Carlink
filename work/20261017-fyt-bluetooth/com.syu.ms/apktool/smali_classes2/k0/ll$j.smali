.class public Lk0/ll$j;
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
    iput-object p1, p0, Lk0/ll$j;->a:Lk0/ll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lk0/ll$j;->a:Lk0/ll;

    iget-byte v2, v0, Lk0/ll;->m0:B

    if-lez v2, :cond_7

    .line 2
    sget v2, Lk0/nt;->c:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 3
    invoke-virtual {v0}, Lk0/ll;->a3()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lk0/ll$j;->a:Lk0/ll;

    invoke-static {v0}, Lk0/ll;->l3(Lk0/ll;)Lo1/g0;

    move-result-object v2

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v0, v2}, Lk0/ll;->m3(Lk0/ll;I)V

    .line 5
    iget-object v0, p0, Lk0/ll$j;->a:Lk0/ll;

    invoke-static {v0}, Lk0/ll;->l3(Lk0/ll;)Lo1/g0;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v0, v2}, Lk0/ll;->n3(Lk0/ll;I)V

    .line 6
    iget-object v0, p0, Lk0/ll$j;->a:Lk0/ll;

    invoke-static {v0}, Lk0/ll;->l3(Lk0/ll;)Lo1/g0;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v5}, Lo1/g0;->b(II)I

    move-result v0

    const-string v4, "%d"

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.width"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lk0/ll$j;->a:Lk0/ll;

    invoke-static {v7}, Lk0/ll;->l3(Lk0/ll;)Lo1/g0;

    move-result-object v7

    invoke-virtual {v7, v2, v5}, Lo1/g0;->b(II)I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 7
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lk0/ll$j;->a:Lk0/ll;

    invoke-static {v8}, Lk0/ll;->l3(Lk0/ll;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v2, v5}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lk0/ll$j;->a:Lk0/ll;

    invoke-static {v0}, Lk0/ll;->l3(Lk0/ll;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v0, v2}, Lk0/ll;->o3(Lk0/ll;I)V

    .line 10
    iget-object v0, p0, Lk0/ll$j;->a:Lk0/ll;

    invoke-static {v0}, Lk0/ll;->l3(Lk0/ll;)Lo1/g0;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v5}, Lo1/g0;->b(II)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "persist.sys.height"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lk0/ll$j;->a:Lk0/ll;

    invoke-static {v7}, Lk0/ll;->l3(Lk0/ll;)Lo1/g0;

    move-result-object v7

    invoke-virtual {v7, v2, v5}, Lo1/g0;->b(II)I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 11
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lk0/ll$j;->a:Lk0/ll;

    invoke-static {v8}, Lk0/ll;->l3(Lk0/ll;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v2, v5}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lk0/ll$j;->a:Lk0/ll;

    invoke-static {v0}, Lk0/ll;->l3(Lk0/ll;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v2, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v0, v2}, Lk0/ll;->f3(Lk0/ll;I)V

    .line 14
    iget-object v0, p0, Lk0/ll$j;->a:Lk0/ll;

    invoke-static {v0}, Lk0/ll;->l3(Lk0/ll;)Lo1/g0;

    move-result-object v2

    const/16 v4, 0xa

    invoke-virtual {v2, v4, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v0, v2}, Lk0/ll;->g3(Lk0/ll;I)V

    .line 15
    :cond_2
    iget-object v0, p0, Lk0/ll$j;->a:Lk0/ll;

    iget-byte v0, v0, Lk0/ll;->m0:B

    if-ne v0, v3, :cond_3

    new-array v0, v3, [I

    .line 16
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 17
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 18
    :cond_3
    iget-object v0, p0, Lk0/ll$j;->a:Lk0/ll;

    iget-byte v0, v0, Lk0/ll;->m0:B

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    new-array v0, v3, [I

    .line 19
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 20
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 21
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    .line 22
    :cond_4
    iget-object v0, p0, Lk0/ll$j;->a:Lk0/ll;

    iget-byte v0, v0, Lk0/ll;->m0:B

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    new-array v0, v3, [I

    .line 23
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 24
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 25
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    .line 26
    :cond_5
    iget-object v0, p0, Lk0/ll$j;->a:Lk0/ll;

    iget-byte v0, v0, Lk0/ll;->m0:B

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    new-array v0, v3, [I

    .line 27
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 28
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    .line 29
    :cond_6
    iget-object v0, p0, Lk0/ll$j;->a:Lk0/ll;

    iget-byte v0, v0, Lk0/ll;->m0:B

    if-ne v0, v1, :cond_8

    new-array v0, v3, [I

    .line 30
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 31
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 32
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 33
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 34
    :cond_7
    iget-object v0, p0, Lk0/ll$j;->a:Lk0/ll;

    const/4 v2, -0x1

    iput v2, v0, Lk0/ll;->j:I

    .line 35
    invoke-static {v0}, Lk0/ll;->k3(Lk0/ll;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 36
    :cond_8
    :goto_0
    iget-object v0, p0, Lk0/ll$j;->a:Lk0/ll;

    iget-byte v2, v0, Lk0/ll;->m0:B

    sub-int/2addr v2, v1

    int-to-byte v1, v2

    iput-byte v1, v0, Lk0/ll;->m0:B

    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x12
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x2e
        0x5
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x2
        0x18
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x90
        0x2
        0x12
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x90
        0x2
        0x2e
        0x10
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x90
        0x2
        0x20
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x90
        0x2
        0x12
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x90
        0x2
        0x2e
        0x11
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x90
        0x2
        0x30
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x90
        0x2
        0x12
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x90
        0x2
        0x2e
        0x2
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x90
        0x2
        0x2e
        0x3
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x90
        0x2
        0x2e
        0x4
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x90
        0x2
        0x2e
        0x97
    .end array-data
.end method
