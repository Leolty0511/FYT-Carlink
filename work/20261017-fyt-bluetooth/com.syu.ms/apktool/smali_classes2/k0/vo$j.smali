.class public Lk0/vo$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vo;


# direct methods
.method public constructor <init>(Lk0/vo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vo$j;->a:Lk0/vo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lk0/vo$j;->a:Lk0/vo;

    iget v2, v1, Lk0/vo;->N:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lk0/vo;->N:I

    const/4 v4, 0x5

    if-lez v2, :cond_4

    const/4 v1, 0x4

    new-array v2, v1, [I

    const/16 v5, 0xe3

    const/4 v6, 0x0

    aput v5, v2, v6

    const/16 v5, 0x81

    aput v5, v2, v3

    const/4 v5, 0x2

    aput v3, v2, v5

    .line 2
    sget v7, Lu0/b;->a0:I

    const/4 v8, 0x3

    aput v7, v2, v8

    invoke-static {v2}, Lz/k;->s([I)V

    .line 3
    sget v2, Lu0/b;->a0:I

    const/16 v7, 0x24

    if-ne v2, v3, :cond_3

    .line 4
    sget v2, Lk0/nt;->a:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v2, v4, [I

    .line 5
    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v2, v4, [I

    .line 6
    fill-array-data v2, :array_1

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v2, v4, [I

    .line 7
    fill-array-data v2, :array_2

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v2, v4, [I

    .line 8
    fill-array-data v2, :array_3

    invoke-static {v2}, Lz/k;->s([I)V

    :goto_0
    new-array v2, v4, [I

    .line 9
    fill-array-data v2, :array_4

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v4, [I

    .line 10
    fill-array-data v2, :array_5

    invoke-static {v2}, Lz/k;->s([I)V

    .line 11
    iget-object v2, v0, Lk0/vo$j;->a:Lk0/vo;

    invoke-static {v2}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10, v6}, Lo1/g0;->b(II)I

    move-result v9

    invoke-static {v2, v9}, Lk0/vo;->i3(Lk0/vo;I)V

    .line 12
    iget-object v2, v0, Lk0/vo$j;->a:Lk0/vo;

    invoke-static {v2}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v9

    invoke-virtual {v9, v4, v6}, Lo1/g0;->b(II)I

    move-result v9

    invoke-static {v2, v9}, Lk0/vo;->j3(Lk0/vo;I)V

    .line 13
    iget-object v2, v0, Lk0/vo$j;->a:Lk0/vo;

    invoke-static {v2}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v9

    invoke-virtual {v9, v1, v6}, Lo1/g0;->b(II)I

    move-result v9

    invoke-static {v2, v9}, Lk0/vo;->k3(Lk0/vo;I)V

    .line 14
    iget-object v2, v0, Lk0/vo$j;->a:Lk0/vo;

    invoke-static {v2}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v9

    const/16 v11, 0xc

    invoke-virtual {v9, v11, v6}, Lo1/g0;->b(II)I

    move-result v9

    invoke-static {v2, v9}, Lk0/vo;->l3(Lk0/vo;I)V

    .line 15
    iget-object v2, v0, Lk0/vo$j;->a:Lk0/vo;

    invoke-static {v2}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v9

    const/16 v11, 0xd

    invoke-virtual {v9, v11, v6}, Lo1/g0;->b(II)I

    move-result v9

    invoke-static {v2, v9}, Lk0/vo;->m3(Lk0/vo;I)V

    .line 16
    iget-object v2, v0, Lk0/vo$j;->a:Lk0/vo;

    invoke-static {v2}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v9

    const/4 v11, 0x7

    invoke-virtual {v9, v11, v6}, Lo1/g0;->b(II)I

    move-result v9

    invoke-static {v2, v9}, Lk0/vo;->n3(Lk0/vo;I)V

    .line 17
    iget-object v2, v0, Lk0/vo$j;->a:Lk0/vo;

    invoke-static {v2}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v9

    const/16 v12, 0xa

    const/16 v13, 0x14

    invoke-virtual {v9, v12, v13}, Lo1/g0;->b(II)I

    move-result v9

    invoke-static {v2, v9}, Lk0/vo;->o3(Lk0/vo;I)V

    .line 18
    iget-object v2, v0, Lk0/vo$j;->a:Lk0/vo;

    invoke-static {v2}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v9

    const/16 v12, 0xb

    invoke-virtual {v9, v12, v7}, Lo1/g0;->b(II)I

    move-result v7

    invoke-static {v2, v7}, Lk0/vo;->d3(Lk0/vo;I)V

    .line 19
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/16 v7, 0x13

    const/16 v9, 0x12

    const/16 v12, 0x11

    const/16 v14, 0xf

    const/16 v15, 0xe

    const/16 v13, 0x10

    const/16 v5, 0x8

    if-ne v2, v3, :cond_0

    .line 20
    iget-object v2, v0, Lk0/vo$j;->a:Lk0/vo;

    invoke-static {v2}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v15, v6}, Lo1/g0;->b(II)I

    move-result v3

    shl-int/2addr v3, v11

    and-int/lit16 v3, v3, 0x80

    iget-object v11, v0, Lk0/vo$j;->a:Lk0/vo;

    .line 21
    invoke-static {v11}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v11

    invoke-virtual {v11, v14, v6}, Lo1/g0;->b(II)I

    move-result v11

    shl-int/2addr v11, v10

    and-int/lit8 v11, v11, 0x40

    or-int/2addr v3, v11

    iget-object v11, v0, Lk0/vo$j;->a:Lk0/vo;

    .line 22
    invoke-static {v11}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v11

    invoke-virtual {v11, v13, v6}, Lo1/g0;->b(II)I

    move-result v11

    shl-int/lit8 v4, v11, 0x5

    and-int/lit8 v4, v4, 0x20

    or-int/2addr v3, v4

    iget-object v4, v0, Lk0/vo$j;->a:Lk0/vo;

    .line 23
    invoke-static {v4}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v12, v6}, Lo1/g0;->b(II)I

    move-result v4

    shl-int/2addr v4, v1

    and-int/2addr v4, v13

    or-int/2addr v3, v4

    iget-object v4, v0, Lk0/vo$j;->a:Lk0/vo;

    .line 24
    invoke-static {v4}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v9, v6}, Lo1/g0;->b(II)I

    move-result v4

    shl-int/2addr v4, v8

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    or-int/2addr v1, v3

    iget-object v3, v0, Lk0/vo$j;->a:Lk0/vo;

    .line 25
    invoke-static {v3}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v7, v6}, Lo1/g0;->b(II)I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    const/4 v7, 0x2

    and-int/2addr v3, v7

    or-int/2addr v1, v3

    iget-object v3, v0, Lk0/vo$j;->a:Lk0/vo;

    .line 26
    invoke-static {v3}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v3

    const/16 v7, 0x14

    invoke-virtual {v3, v7, v6}, Lo1/g0;->b(II)I

    move-result v3

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 27
    invoke-static {v2, v1}, Lk0/vo;->e3(Lk0/vo;I)V

    goto :goto_1

    .line 28
    :cond_0
    iget-object v2, v0, Lk0/vo$j;->a:Lk0/vo;

    invoke-static {v2}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v15, v6}, Lo1/g0;->b(II)I

    move-result v3

    shl-int/2addr v3, v11

    and-int/lit16 v3, v3, 0x80

    iget-object v11, v0, Lk0/vo$j;->a:Lk0/vo;

    .line 29
    invoke-static {v11}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v11

    invoke-virtual {v11, v14, v6}, Lo1/g0;->b(II)I

    move-result v11

    shl-int/2addr v11, v10

    and-int/lit8 v11, v11, 0x40

    or-int/2addr v3, v11

    iget-object v11, v0, Lk0/vo$j;->a:Lk0/vo;

    .line 30
    invoke-static {v11}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v11

    invoke-virtual {v11, v13, v6}, Lo1/g0;->b(II)I

    move-result v11

    shl-int/lit8 v4, v11, 0x5

    and-int/lit8 v4, v4, 0x20

    or-int/2addr v3, v4

    iget-object v4, v0, Lk0/vo$j;->a:Lk0/vo;

    .line 31
    invoke-static {v4}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v12, v6}, Lo1/g0;->b(II)I

    move-result v4

    shl-int/lit8 v1, v4, 0x4

    and-int/2addr v1, v13

    or-int/2addr v1, v3

    iget-object v3, v0, Lk0/vo$j;->a:Lk0/vo;

    .line 32
    invoke-static {v3}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v9, v6}, Lo1/g0;->b(II)I

    move-result v3

    shl-int/2addr v3, v8

    and-int/2addr v3, v5

    or-int/2addr v1, v3

    iget-object v3, v0, Lk0/vo$j;->a:Lk0/vo;

    .line 33
    invoke-static {v3}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v7, v6}, Lo1/g0;->b(II)I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    const/4 v7, 0x2

    and-int/2addr v3, v7

    or-int/2addr v1, v3

    iget-object v3, v0, Lk0/vo$j;->a:Lk0/vo;

    .line 34
    invoke-static {v3}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v3

    const/16 v7, 0x14

    invoke-virtual {v3, v7, v6}, Lo1/g0;->b(II)I

    move-result v3

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 35
    invoke-static {v2, v1}, Lk0/vo;->e3(Lk0/vo;I)V

    .line 36
    :goto_1
    iget-object v1, v0, Lk0/vo$j;->a:Lk0/vo;

    invoke-static {v1}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lo1/g0;->b(II)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "persist.sys.width"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, v0, Lk0/vo$j;->a:Lk0/vo;

    invoke-static {v3}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lo1/g0;->b(II)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 37
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v3, v0, Lk0/vo$j;->a:Lk0/vo;

    invoke-static {v3}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v6

    const-string v3, "%d"

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_1
    iget-object v1, v0, Lk0/vo$j;->a:Lk0/vo;

    invoke-static {v1}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/vo;->f3(Lk0/vo;I)V

    .line 40
    iget-object v1, v0, Lk0/vo$j;->a:Lk0/vo;

    invoke-static {v1}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v6}, Lo1/g0;->b(II)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "persist.sys.height"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, v0, Lk0/vo$j;->a:Lk0/vo;

    invoke-static {v3}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Lo1/g0;->b(II)I

    move-result v3

    if-eq v1, v3, :cond_2

    .line 41
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lk0/vo$j;->a:Lk0/vo;

    invoke-static {v4}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Lo1/g0;->b(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "%d"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "persist.sys.height"

    .line 42
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_2
    iget-object v1, v0, Lk0/vo$j;->a:Lk0/vo;

    invoke-static {v1}, Lk0/vo;->h3(Lk0/vo;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/vo;->g3(Lk0/vo;I)V

    .line 44
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lk0/vo$j;->a:Lk0/vo;

    iget v1, v1, Lk0/vo;->i:I

    if-eq v1, v8, :cond_5

    .line 45
    invoke-static {}, Lk0/vo;->c3()I

    move-result v1

    invoke-static {v1}, Ly0/h;->u0(I)V

    new-array v1, v10, [I

    .line 46
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_2

    .line 47
    :cond_3
    invoke-static {v7}, Ly0/h;->u0(I)V

    goto :goto_2

    .line 48
    :cond_4
    iget-object v1, v1, Lk0/vo;->P:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 49
    iget-object v1, v0, Lk0/vo$j;->a:Lk0/vo;

    iput v4, v1, Lk0/vo;->N:I

    :cond_5
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x8c01c5 -> :sswitch_3
        0x8d01c5 -> :sswitch_2
        0x8e01c5 -> :sswitch_1
        0xd401c6 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0x0
        0x13
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0x0
        0x12
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x2
        0x0
        0x11
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc6
        0x2
        0x0
        0x10
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x90
        0x2
        0x30
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x90
        0x2
        0x12
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x82
        0x3
        0x0
        0x0
        0x0
    .end array-data
.end method
