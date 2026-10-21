.class public Lk0/gh$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/gh;


# direct methods
.method public constructor <init>(Lk0/gh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/gh$f;->a:Lk0/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lk0/gh$f;->a:Lk0/gh;

    iget v2, v1, Lk0/gh;->H:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lk0/gh;->H:I

    if-lez v2, :cond_c

    const/4 v1, 0x4

    new-array v2, v1, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v2, v5

    const/16 v4, 0x81

    aput v4, v2, v3

    const/4 v4, 0x2

    aput v3, v2, v4

    .line 2
    sget v6, Lu0/b;->a0:I

    const/4 v7, 0x3

    aput v6, v2, v7

    invoke-static {v2}, Lz/k;->s([I)V

    const/4 v2, 0x5

    new-array v6, v2, [I

    .line 3
    fill-array-data v6, :array_0

    invoke-static {v6}, Lz/k;->s([I)V

    .line 4
    iget-object v6, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v6}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v2, v5}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v6, v8}, Lk0/gh;->v3(Lk0/gh;I)V

    .line 5
    iget-object v6, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v6}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v8

    const/16 v9, 0x18

    invoke-virtual {v8, v9, v5}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v6, v8}, Lk0/gh;->w3(Lk0/gh;I)V

    .line 6
    iget-object v6, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v6}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v8

    const/16 v9, 0x1a

    const/16 v10, 0xff

    invoke-virtual {v8, v9, v10}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v6, v8}, Lk0/gh;->x3(Lk0/gh;I)V

    .line 7
    sget v6, Lu0/b;->a0:I

    if-ne v6, v3, :cond_a

    .line 8
    sget v6, Lk0/nt;->a:I

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    .line 9
    :sswitch_0
    iget-object v6, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v6}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v8

    const/16 v9, 0x19

    invoke-virtual {v8, v9, v5}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v6, v8}, Lk0/gh;->y3(Lk0/gh;I)V

    new-array v6, v2, [B

    .line 10
    fill-array-data v6, :array_1

    invoke-static {v6}, Lz/k;->q([B)V

    .line 11
    :goto_0
    sget v6, Lk0/nt;->a:I

    sparse-switch v6, :sswitch_data_1

    goto/16 :goto_4

    :sswitch_1
    new-array v1, v1, [I

    .line 12
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :sswitch_2
    new-array v1, v1, [I

    .line 13
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :sswitch_3
    new-array v1, v2, [B

    .line 14
    fill-array-data v1, :array_4

    invoke-static {v1}, Lk0/gh;->U3([B)V

    goto/16 :goto_4

    .line 15
    :sswitch_4
    invoke-static {}, Lk0/gh;->z3()I

    move-result v1

    if-ne v1, v10, :cond_a

    new-array v1, v2, [I

    .line 16
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 17
    :sswitch_5
    invoke-static {}, Lk0/gh;->z3()I

    move-result v1

    if-ne v1, v10, :cond_a

    new-array v1, v2, [I

    .line 18
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 19
    :sswitch_6
    invoke-static {}, Lk0/gh;->z3()I

    move-result v1

    if-ne v1, v10, :cond_a

    new-array v1, v2, [I

    .line 20
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 21
    :sswitch_7
    invoke-static {}, Lk0/gh;->z3()I

    move-result v1

    if-ne v1, v10, :cond_a

    new-array v1, v2, [I

    .line 22
    fill-array-data v1, :array_8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 23
    :sswitch_8
    invoke-static {}, Lk0/gh;->z3()I

    move-result v1

    if-ne v1, v10, :cond_a

    new-array v1, v2, [I

    .line 24
    fill-array-data v1, :array_9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 25
    :sswitch_9
    iget-object v6, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v6}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v8

    const/16 v9, 0xf

    invoke-virtual {v8, v9, v5}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v6, v8}, Lk0/gh;->A3(Lk0/gh;I)V

    .line 26
    iget-object v11, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v11}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v6

    const/16 v8, 0x12

    invoke-virtual {v6, v8, v5}, Lo1/g0;->b(II)I

    move-result v12

    iget-object v6, v0, Lk0/gh$f;->a:Lk0/gh;

    .line 27
    invoke-static {v6}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v6

    const/16 v8, 0x13

    const/16 v9, 0x32

    invoke-virtual {v6, v8, v9}, Lo1/g0;->b(II)I

    move-result v13

    iget-object v6, v0, Lk0/gh$f;->a:Lk0/gh;

    .line 28
    invoke-static {v6}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v6

    const/16 v8, 0x14

    const/16 v9, 0x80

    invoke-virtual {v6, v8, v9}, Lo1/g0;->b(II)I

    move-result v14

    iget-object v6, v0, Lk0/gh$f;->a:Lk0/gh;

    .line 29
    invoke-static {v6}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v6

    const/16 v15, 0x15

    invoke-virtual {v6, v15, v9}, Lo1/g0;->b(II)I

    move-result v15

    iget-object v6, v0, Lk0/gh$f;->a:Lk0/gh;

    .line 30
    invoke-static {v6}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v6

    const/16 v1, 0x16

    invoke-virtual {v6, v1, v9}, Lo1/g0;->b(II)I

    move-result v16

    .line 31
    invoke-static/range {v11 .. v16}, Lk0/gh;->e3(Lk0/gh;IIIII)V

    .line 32
    sget v1, Lk0/nt;->a:I

    const v6, 0x1101c7

    if-ne v1, v6, :cond_0

    .line 33
    invoke-static {}, Lk0/gh;->z3()I

    move-result v1

    if-ne v1, v10, :cond_a

    new-array v1, v2, [I

    .line 34
    fill-array-data v1, :array_a

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :cond_0
    const v6, 0x1201c7

    if-eq v1, v6, :cond_9

    const v6, 0x4601c7

    if-eq v1, v6, :cond_9

    const v6, 0x5401c7

    if-ne v1, v6, :cond_1

    goto/16 :goto_3

    :cond_1
    const v6, 0x4b01c7

    if-eq v1, v6, :cond_8

    const v6, 0x8301c8

    if-ne v1, v6, :cond_2

    goto/16 :goto_2

    :cond_2
    const v2, 0xf801c7

    const/16 v6, 0x24

    const/16 v9, 0xb

    const/16 v10, 0xa

    if-ne v1, v2, :cond_3

    .line 35
    iget-object v1, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v1}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v10, v8}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/gh;->f3(Lk0/gh;I)V

    .line 36
    iget-object v1, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v1}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v9, v6}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/gh;->g3(Lk0/gh;I)V

    goto/16 :goto_4

    :cond_3
    const-string v1, "/sys/fytver/fyt_bin_version"

    .line 37
    invoke-static {v1}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "Ls18"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 38
    invoke-static {v1}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Lt18"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 39
    :cond_4
    iget-object v1, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v1}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/gh;->h3(Lk0/gh;I)V

    .line 40
    iget-object v1, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v1}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/gh;->i3(Lk0/gh;I)V

    .line 41
    iget-object v1, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v1}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v10, v8}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/gh;->f3(Lk0/gh;I)V

    .line 42
    iget-object v1, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v1}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v9, v6}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/gh;->g3(Lk0/gh;I)V

    .line 43
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 44
    fill-array-data v2, :array_b

    invoke-static {v2}, Lz/k;->s([I)V

    .line 45
    invoke-static {}, Lk0/gh;->j3()I

    move-result v2

    invoke-static {v2}, Ly0/h;->u0(I)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x4

    .line 46
    :goto_1
    iget-object v2, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v2}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v2, v1}, Lk0/gh;->k3(Lk0/gh;I)V

    .line 47
    iget-object v1, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v1}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v5}, Lo1/g0;->b(II)I

    move-result v1

    const-string v4, "%d"

    if-eqz v1, :cond_6

    const-string v1, "persist.sys.width"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v7}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v7

    invoke-virtual {v7, v2, v5}, Lo1/g0;->b(II)I

    move-result v7

    if-eq v6, v7, :cond_6

    .line 48
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v8}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v2, v5}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 49
    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_6
    iget-object v1, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v1}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/gh;->l3(Lk0/gh;I)V

    .line 51
    iget-object v1, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v1}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v5}, Lo1/g0;->b(II)I

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "persist.sys.height"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v7}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v7

    invoke-virtual {v7, v2, v5}, Lo1/g0;->b(II)I

    move-result v7

    if-eq v6, v7, :cond_7

    .line 52
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v8}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v2, v5}, Lo1/g0;->b(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_7
    iget-object v1, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v1}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v2, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/gh;->m3(Lk0/gh;I)V

    .line 55
    iget-object v1, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v1}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v2

    const/16 v4, 0x17

    invoke-virtual {v2, v4, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/gh;->n3(Lk0/gh;I)V

    goto :goto_4

    .line 56
    :cond_8
    :goto_2
    invoke-static {}, Lk0/gh;->z3()I

    move-result v1

    if-ne v1, v10, :cond_a

    new-array v1, v2, [I

    .line 57
    fill-array-data v1, :array_c

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_4

    .line 58
    :cond_9
    :goto_3
    invoke-static {}, Lk0/gh;->z3()I

    move-result v1

    if-ne v1, v10, :cond_a

    new-array v1, v2, [I

    .line 59
    fill-array-data v1, :array_d

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_4

    .line 60
    :sswitch_a
    invoke-static {}, Lk0/gh;->z3()I

    move-result v1

    if-ne v1, v10, :cond_a

    new-array v1, v2, [I

    .line 61
    fill-array-data v1, :array_e

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_4

    .line 62
    :sswitch_b
    invoke-static {}, Lk0/gh;->z3()I

    move-result v1

    if-ne v1, v10, :cond_a

    new-array v1, v2, [I

    .line 63
    fill-array-data v1, :array_f

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_4

    .line 64
    :sswitch_c
    invoke-static {}, Lk0/gh;->z3()I

    move-result v1

    if-ne v1, v10, :cond_a

    new-array v1, v2, [I

    .line 65
    fill-array-data v1, :array_10

    invoke-static {v1}, Lz/k;->s([I)V

    .line 66
    :cond_a
    :goto_4
    iget-object v1, v0, Lk0/gh$f;->a:Lk0/gh;

    iget-boolean v2, v1, Lk0/gh;->v:Z

    if-eqz v2, :cond_d

    .line 67
    invoke-static {v1}, Lk0/gh;->u3(Lk0/gh;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/gh;->p3(Lk0/gh;I)V

    .line 68
    sget v1, Lu0/b;->a0:I

    if-ne v1, v3, :cond_b

    .line 69
    iget-object v1, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v1, v3}, Lk0/gh;->q3(Lk0/gh;I)V

    goto :goto_5

    .line 70
    :cond_b
    iget-object v1, v0, Lk0/gh$f;->a:Lk0/gh;

    invoke-static {v1, v5}, Lk0/gh;->q3(Lk0/gh;I)V

    goto :goto_5

    .line 71
    :cond_c
    iget-object v1, v1, Lk0/gh;->J:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 72
    iget-object v1, v0, Lk0/gh$f;->a:Lk0/gh;

    const/4 v2, 0x6

    iput v2, v1, Lk0/gh;->H:I

    :cond_d
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4e01c7 -> :sswitch_0
        0x4f01c7 -> :sswitch_0
        0x5001c7 -> :sswitch_0
        0x5101c7 -> :sswitch_0
        0x5401c7 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x101c7 -> :sswitch_c
        0x201c7 -> :sswitch_b
        0x301c7 -> :sswitch_a
        0x1101c7 -> :sswitch_9
        0x1201c7 -> :sswitch_9
        0x2801c6 -> :sswitch_9
        0x3101c7 -> :sswitch_8
        0x3501c7 -> :sswitch_7
        0x3601c7 -> :sswitch_6
        0x3701c7 -> :sswitch_b
        0x3801c7 -> :sswitch_b
        0x3901c7 -> :sswitch_a
        0x4001c7 -> :sswitch_a
        0x4501c8 -> :sswitch_5
        0x4601c7 -> :sswitch_9
        0x4601c8 -> :sswitch_4
        0x4701c8 -> :sswitch_c
        0x4801c7 -> :sswitch_9
        0x4901c7 -> :sswitch_a
        0x4b01c7 -> :sswitch_9
        0x4e01c7 -> :sswitch_b
        0x4f01c5 -> :sswitch_4
        0x4f01c7 -> :sswitch_a
        0x5001c5 -> :sswitch_c
        0x5001c7 -> :sswitch_b
        0x5101c7 -> :sswitch_a
        0x5401c7 -> :sswitch_9
        0x6401c8 -> :sswitch_b
        0x6501c6 -> :sswitch_3
        0x6501c8 -> :sswitch_a
        0x7c01b7 -> :sswitch_b
        0x7c01c5 -> :sswitch_2
        0x7d01b7 -> :sswitch_a
        0x7d01c5 -> :sswitch_1
        0x8301c8 -> :sswitch_9
        0x9a01c7 -> :sswitch_b
        0x9b01c7 -> :sswitch_a
        0xa101c7 -> :sswitch_8
        0xa601c7 -> :sswitch_b
        0xb801c8 -> :sswitch_b
        0xb901c8 -> :sswitch_a
        0xc101c4 -> :sswitch_9
        0xc201c4 -> :sswitch_5
        0xd901c7 -> :sswitch_4
        0xda01c7 -> :sswitch_c
        0xe401c6 -> :sswitch_b
        0xe601c6 -> :sswitch_4
        0xe801c6 -> :sswitch_b
        0xf701c6 -> :sswitch_a
        0xf801c6 -> :sswitch_a
        0xf801c7 -> :sswitch_9
        0xf901c6 -> :sswitch_b
        0xfa01c6 -> :sswitch_a
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        -0x70
        0x2
        0x28
        0x0
    .end array-data

    :array_1
    .array-data 1
        0x6at
        -0x1t
        0x0t
        0x0t
        0x69t
    .end array-data

    nop

    :array_2
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x6b
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x6a
    .end array-data

    :array_4
    .array-data 1
        0x2et
        -0x7ft
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x27
        0x7
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x27
        0x6
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x27
        0x11
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x27
        0x10
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x27
        0x3
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x27
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0xe3
        0x1
        0x0
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x27
        0x8
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x27
        0x1
    .end array-data

    :array_e
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x27
        0x1
    .end array-data

    :array_f
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x27
        0x0
    .end array-data

    :array_10
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x27
        0x8
    .end array-data
.end method
