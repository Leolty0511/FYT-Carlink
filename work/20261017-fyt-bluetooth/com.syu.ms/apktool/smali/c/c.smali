.class public Lc/c;
.super Lc/d;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c$n;
    }
.end annotation


# instance fields
.field public e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field public f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/c$n;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lc/e;

.field public h:Lapp/App;

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/d;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc/c;->e:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/c;->g:Lc/e;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lc/c;->i:I

    .line 5
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    iput-object v0, p0, Lc/c;->g:Lc/e;

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc/c;->f:Landroid/util/SparseArray;

    .line 7
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    iput-object v0, p0, Lc/c;->h:Lapp/App;

    .line 8
    invoke-virtual {p0}, Lc/c;->m()V

    .line 9
    invoke-virtual {p0}, Lc/c;->i()V

    return-void
.end method

.method public static synthetic d(Lc/c;)V
    .locals 0

    invoke-virtual {p0}, Lc/c;->k()V

    return-void
.end method

.method public static synthetic e(Lc/c;)V
    .locals 0

    invoke-virtual {p0}, Lc/c;->f()V

    return-void
.end method


# virtual methods
.method public A(ILjava/lang/Runnable;)V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    .line 2
    sget v1, Lk0/nt;->p:I

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x3c

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 3
    invoke-static {p2, v0}, Lu0/d;->I3(I[I)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {}, Lu0/d;->y1()V

    :goto_1
    return-void
.end method

.method public B(I)V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    if-lez v0, :cond_0

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ly0/h;->u0(I)V

    :cond_0
    return-void
.end method

.method public C(I)V
    .locals 2

    .line 1
    sget v0, Ly0/f;->c:I

    sget v1, Ly0/f;->g:I

    if-ge v0, v1, :cond_0

    .line 2
    sget v0, Ly0/f;->c:I

    add-int/2addr v0, p1

    sget p1, Ly0/f;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ly0/h;->u0(I)V

    :cond_0
    return-void
.end method

.method public b(I)Z
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    const-string v2, "font_scale"

    .line 1
    sget v3, Lu0/b;->D:I

    .line 2
    sget v4, Lu0/b;->a0:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 3
    :goto_0
    sget v7, Lu0/b;->f:I

    if-ne v7, v6, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    .line 4
    :goto_1
    sget v8, Lu0/b;->n4:I

    if-eq v8, v6, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    move v8, v5

    .line 5
    :goto_2
    sget v9, Lu0/b;->x:I

    if-ne v9, v6, :cond_3

    move v9, v6

    goto :goto_3

    :cond_3
    move v9, v5

    .line 6
    :goto_3
    sget v10, Lh0/c;->G:I

    .line 7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "acc : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "  mcu : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "  sleep:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " anyboot:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " keyCode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Mcu"

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x22b

    const/4 v11, 0x3

    if-ne v0, v10, :cond_5

    if-nez v8, :cond_4

    if-nez v4, :cond_4

    new-array v4, v11, [I

    .line 8
    fill-array-data v4, :array_0

    invoke-virtual {v1, v4}, Lc/c;->u([I)V

    new-array v4, v11, [I

    .line 9
    fill-array-data v4, :array_1

    invoke-virtual {v1, v4}, Lc/c;->u([I)V

    goto :goto_4

    :cond_4
    if-nez v7, :cond_6

    new-array v4, v11, [I

    .line 10
    fill-array-data v4, :array_2

    invoke-virtual {v1, v4}, Lc/c;->u([I)V

    goto :goto_4

    :cond_5
    if-nez v7, :cond_6

    if-eqz v9, :cond_6

    new-array v4, v11, [I

    .line 11
    fill-array-data v4, :array_3

    invoke-virtual {v1, v4}, Lc/c;->u([I)V

    :goto_4
    move v4, v6

    goto :goto_5

    :cond_6
    move v4, v5

    :goto_5
    if-nez v4, :cond_1d

    if-nez v7, :cond_7

    goto/16 :goto_b

    :cond_7
    const/16 v4, 0x18

    const/4 v7, -0x1

    if-eq v0, v4, :cond_1a

    const/16 v4, 0x19

    const/4 v9, -0x2

    if-eq v0, v4, :cond_19

    const/16 v4, 0x71

    if-eq v0, v4, :cond_18

    const/16 v4, 0x72

    if-eq v0, v4, :cond_18

    const/16 v4, 0x7e

    if-eq v0, v4, :cond_17

    const/16 v4, 0x7f

    if-eq v0, v4, :cond_17

    const/16 v4, 0x81

    if-eq v0, v4, :cond_16

    const/16 v4, 0x82

    if-eq v0, v4, :cond_17

    packed-switch v0, :pswitch_data_0

    const/16 v4, 0x85

    const/4 v10, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const-wide/16 v14, 0x32

    const/4 v8, 0x2

    sparse-switch v0, :sswitch_data_0

    const/16 v16, -0x5

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_4

    const/16 v2, 0x7530

    if-le v0, v2, :cond_1c

    new-array v2, v6, [I

    aput v0, v2, v5

    .line 12
    invoke-static {v4, v2}, Lu0/d;->I3(I[I)V

    goto/16 :goto_9

    .line 13
    :pswitch_0
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0, v6}, Lu0/i;->x3(I)V

    goto/16 :goto_9

    .line 14
    :pswitch_1
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lh0/g;->a3()Lj0/b;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 16
    invoke-virtual {v0}, Lj0/b;->D()Li0/c;

    move-result-object v7

    if-nez v7, :cond_8

    .line 17
    invoke-virtual {v0}, Lj0/b;->B()Li0/c;

    move-result-object v7

    :cond_8
    if-eqz v7, :cond_a

    .line 18
    invoke-virtual {v7}, Li0/c;->x()I

    move-result v0

    if-ne v0, v11, :cond_a

    .line 19
    sget v0, Lh0/c;->U:I

    if-ne v0, v6, :cond_9

    goto :goto_6

    :cond_9
    move v5, v6

    :goto_6
    invoke-virtual {v7, v5}, Li0/c;->F0(I)V

    goto/16 :goto_9

    .line 20
    :cond_a
    sget v0, Lh0/c;->E:I

    if-eqz v0, :cond_c

    if-eq v0, v6, :cond_c

    sget-object v0, Lh0/c;->b:Lh0/f;

    if-eqz v0, :cond_c

    .line 21
    sget v2, Lh0/c;->U:I

    if-ne v2, v6, :cond_b

    goto :goto_7

    :cond_b
    move v5, v6

    :goto_7
    invoke-interface {v0, v5}, Lh0/f;->W(I)V

    goto/16 :goto_9

    .line 22
    :cond_c
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    invoke-virtual {v0}, Lplugins/ZLink;->d0()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 23
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    const/16 v2, 0x5dc

    invoke-virtual {v0, v2}, Lplugins/ZLink;->i0(I)V

    goto/16 :goto_9

    .line 24
    :pswitch_2
    iget-object v0, v1, Lc/d;->b:Landroid/os/Handler;

    new-instance v2, Lc/c$m;

    invoke-direct {v2, v1}, Lc/c$m;-><init>(Lc/c;)V

    invoke-virtual {v0, v2, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    .line 25
    :pswitch_3
    iget-object v0, v1, Lc/d;->b:Landroid/os/Handler;

    new-instance v2, Lc/c$l;

    invoke-direct {v2, v1}, Lc/c$l;-><init>(Lc/c;)V

    invoke-virtual {v0, v2, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    .line 26
    :pswitch_4
    invoke-static {}, Lb/a;->e()Lb/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lb/a;->j(I)V

    goto/16 :goto_9

    .line 27
    :pswitch_5
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v0

    invoke-virtual {v0}, Lmodule/sound/AudioDevice;->N()V

    goto/16 :goto_9

    .line 28
    :pswitch_6
    :try_start_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v0

    const/high16 v3, 0x3fa00000    # 1.25f

    cmpg-float v4, v0, v3

    const v7, 0x3faccccd    # 1.35f

    if-gez v4, :cond_d

    goto :goto_8

    :cond_d
    cmpg-float v3, v0, v7

    if-gez v3, :cond_e

    move v3, v7

    goto :goto_8

    :cond_e
    cmpl-float v3, v0, v7

    if-ltz v3, :cond_f

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_f
    move v3, v0

    :goto_8
    cmpl-float v4, v0, v3

    if-eqz v4, :cond_1b

    const-string v4, "Gestrue"

    const-string v7, "font scale : %.2f, fontScale: %.2f"

    new-array v8, v8, [Ljava/lang/Object;

    .line 29
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v8, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 32
    :pswitch_7
    invoke-static/range {v16 .. v16}, Lu0/d;->Q(I)V

    goto/16 :goto_9

    :pswitch_8
    const/4 v0, -0x4

    .line 33
    invoke-static {v0}, Lu0/d;->Q(I)V

    goto/16 :goto_9

    .line 34
    :pswitch_9
    invoke-static {v8}, Ly0/h;->T(I)V

    goto/16 :goto_9

    :pswitch_a
    if-ne v3, v13, :cond_1b

    .line 35
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0, v8}, Lo0/h;->s(I)V

    goto/16 :goto_9

    :pswitch_b
    if-ne v3, v13, :cond_1b

    .line 36
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->t()V

    goto/16 :goto_9

    :pswitch_c
    if-ne v3, v6, :cond_1b

    .line 37
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->B()V

    goto/16 :goto_9

    :pswitch_d
    if-ne v3, v6, :cond_1b

    .line 38
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->h()V

    goto/16 :goto_9

    :pswitch_e
    if-ne v3, v6, :cond_1b

    .line 39
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->k()V

    goto/16 :goto_9

    .line 40
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lc/c;->y()V

    goto/16 :goto_9

    .line 41
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lc/c;->z()V

    goto/16 :goto_9

    .line 42
    :pswitch_11
    invoke-static {}, Lo1/u;->L()I

    goto/16 :goto_9

    .line 43
    :pswitch_12
    invoke-static {}, Lk0/rt;->a3()Lk0/rt;

    move-result-object v0

    new-array v2, v6, [I

    aput v6, v2, v5

    const/16 v3, 0x3eb

    invoke-virtual {v0, v3, v2, v7, v7}, Lk0/rt;->Y2(I[I[F[Ljava/lang/String;)V

    const-wide/16 v8, 0xa

    .line 44
    invoke-static {v8, v9}, Lo1/s0;->C(J)V

    .line 45
    invoke-static {}, Lk0/rt;->a3()Lk0/rt;

    move-result-object v0

    new-array v2, v6, [I

    aput v5, v2, v5

    invoke-virtual {v0, v3, v2, v7, v7}, Lk0/rt;->Y2(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_9

    .line 46
    :pswitch_13
    invoke-static {v8}, Lu0/d;->u3(I)V

    goto/16 :goto_9

    .line 47
    :pswitch_14
    invoke-static {}, Lo1/u;->G0()V

    goto/16 :goto_9

    .line 48
    :pswitch_15
    sget v0, Lu0/b;->j:I

    if-nez v0, :cond_10

    .line 49
    invoke-static {v6}, Lu0/d;->N(I)V

    goto/16 :goto_9

    .line 50
    :cond_10
    invoke-static {v5}, Lu0/d;->N(I)V

    goto/16 :goto_9

    .line 51
    :pswitch_16
    invoke-static {v8}, Lu0/d;->U1(I)V

    goto/16 :goto_9

    .line 52
    :pswitch_17
    new-instance v0, Lc/c$k;

    invoke-direct {v0, v1}, Lc/c$k;-><init>(Lc/c;)V

    invoke-virtual {v1, v10, v0}, Lc/c;->A(ILjava/lang/Runnable;)V

    goto/16 :goto_9

    .line 53
    :pswitch_18
    new-instance v0, Lc/c$j;

    invoke-direct {v0, v1}, Lc/c$j;-><init>(Lc/c;)V

    invoke-virtual {v1, v12, v0}, Lc/c;->A(ILjava/lang/Runnable;)V

    goto/16 :goto_9

    .line 54
    :pswitch_19
    new-instance v0, Lc/c$i;

    invoke-direct {v0, v1}, Lc/c$i;-><init>(Lc/c;)V

    invoke-virtual {v1, v13, v0}, Lc/c;->A(ILjava/lang/Runnable;)V

    goto/16 :goto_9

    .line 55
    :pswitch_1a
    new-instance v0, Lc/c$h;

    invoke-direct {v0, v1}, Lc/c$h;-><init>(Lc/c;)V

    invoke-virtual {v1, v11, v0}, Lc/c;->A(ILjava/lang/Runnable;)V

    goto/16 :goto_9

    .line 56
    :pswitch_1b
    new-instance v0, Lc/c$g;

    invoke-direct {v0, v1}, Lc/c$g;-><init>(Lc/c;)V

    invoke-virtual {v1, v8, v0}, Lc/c;->A(ILjava/lang/Runnable;)V

    goto/16 :goto_9

    .line 57
    :pswitch_1c
    new-instance v0, Lc/c$f;

    invoke-direct {v0, v1}, Lc/c$f;-><init>(Lc/c;)V

    invoke-virtual {v1, v6, v0}, Lc/c;->A(ILjava/lang/Runnable;)V

    goto/16 :goto_9

    .line 58
    :pswitch_1d
    new-instance v0, Lc/c$e;

    invoke-direct {v0, v1}, Lc/c$e;-><init>(Lc/c;)V

    invoke-virtual {v1, v5, v0}, Lc/c;->A(ILjava/lang/Runnable;)V

    goto/16 :goto_9

    .line 59
    :pswitch_1e
    invoke-static {}, Lo1/u;->J()I

    goto/16 :goto_9

    .line 60
    :pswitch_1f
    invoke-static {}, Lo1/u;->n0()Z

    move-result v0

    if-nez v0, :cond_11

    .line 61
    invoke-static {}, Lo1/u;->x0()V

    goto/16 :goto_9

    .line 62
    :cond_11
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0, v9}, Lw0/g;->x(I)V

    goto/16 :goto_9

    .line 63
    :pswitch_20
    invoke-static {}, Lo1/u;->n0()Z

    move-result v0

    if-nez v0, :cond_12

    .line 64
    invoke-static {}, Lo1/u;->x0()V

    goto/16 :goto_9

    .line 65
    :cond_12
    sget-object v0, Lw0/d;->b:Lw0/g;

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Lw0/g;->x(I)V

    goto/16 :goto_9

    .line 66
    :pswitch_21
    invoke-static {v9}, Ly0/h;->u0(I)V

    goto/16 :goto_9

    .line 67
    :pswitch_22
    invoke-static {v7}, Ly0/h;->u0(I)V

    goto/16 :goto_9

    :pswitch_23
    const/4 v0, -0x6

    .line 68
    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 69
    invoke-virtual {v1, v11}, Lc/c;->B(I)V

    goto/16 :goto_9

    :pswitch_24
    const/4 v0, -0x6

    .line 70
    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 71
    invoke-virtual {v1, v11}, Lc/c;->C(I)V

    goto/16 :goto_9

    :pswitch_25
    const/4 v0, -0x6

    .line 72
    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 73
    invoke-virtual {v1, v8}, Lc/c;->B(I)V

    goto/16 :goto_9

    :pswitch_26
    const/4 v0, -0x6

    .line 74
    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 75
    invoke-virtual {v1, v8}, Lc/c;->C(I)V

    goto/16 :goto_9

    :pswitch_27
    const/4 v0, -0x6

    .line 76
    invoke-static/range {v16 .. v16}, Ly0/h;->u0(I)V

    .line 77
    invoke-static {v0}, Ly0/h;->u0(I)V

    goto/16 :goto_9

    :pswitch_28
    if-ne v3, v6, :cond_13

    .line 78
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0, v8}, Lw0/g;->v(I)V

    goto/16 :goto_9

    .line 79
    :cond_13
    invoke-virtual/range {p0 .. p1}, Lc/c;->q(I)V

    goto/16 :goto_9

    .line 80
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.syu.screenshot"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 82
    :sswitch_1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->e4()V

    goto/16 :goto_9

    :sswitch_2
    const-string v0, "com.syu.carlink"

    .line 83
    invoke-static {v0}, Lo1/u;->S0(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 84
    :sswitch_3
    iget-object v0, v1, Lc/d;->b:Landroid/os/Handler;

    new-instance v2, Lc/a;

    invoke-direct {v2, v1}, Lc/a;-><init>(Lc/c;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    .line 85
    :sswitch_4
    iget-object v0, v1, Lc/d;->b:Landroid/os/Handler;

    new-instance v2, Lc/b;

    invoke-direct {v2, v1}, Lc/b;-><init>(Lc/c;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    .line 86
    :sswitch_5
    iget-object v0, v1, Lc/d;->b:Landroid/os/Handler;

    new-instance v2, Lc/c$c;

    invoke-direct {v2, v1}, Lc/c$c;-><init>(Lc/c;)V

    invoke-virtual {v0, v2, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    .line 87
    :sswitch_6
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->d4()V

    goto/16 :goto_9

    .line 88
    :sswitch_7
    sget-object v0, Lu0/b;->J1:Ljava/lang/String;

    invoke-static {v0}, La/i;->C(Ljava/lang/String;)V

    .line 89
    sget-object v0, Lf/b;->d:Lf/b;

    iget-object v0, v0, Lf/b;->c:Lf/c;

    sget-object v2, Lu0/b;->J1:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lf/c;->c(Ljava/lang/String;Z)V

    .line 90
    sget-object v0, Lf/b;->d:Lf/b;

    iget-object v0, v0, Lf/b;->c:Lf/c;

    sget-object v2, Lu0/b;->J1:Ljava/lang/String;

    invoke-virtual {v0, v2, v5, v7, v7}, Lf/c;->a(Ljava/lang/String;ZII)V

    goto/16 :goto_9

    :sswitch_8
    const-string v0, "com.syu.hicar"

    .line 91
    invoke-static {v0}, Lo1/u;->J0(Ljava/lang/String;)I

    goto/16 :goto_9

    :sswitch_9
    new-array v2, v6, [I

    aput v0, v2, v5

    .line 92
    invoke-static {v4, v2}, Lu0/d;->I3(I[I)V

    goto/16 :goto_9

    :sswitch_a
    const-string v0, "com.syu.rearcamera"

    .line 93
    invoke-static {v0}, Lo1/u;->J0(Ljava/lang/String;)I

    goto/16 :goto_9

    :sswitch_b
    add-int/lit16 v0, v0, -0x24e

    const/16 v2, 0x87

    new-array v3, v6, [I

    aput v0, v3, v5

    .line 94
    invoke-static {v2, v3}, Lu0/d;->I3(I[I)V

    goto/16 :goto_9

    .line 95
    :sswitch_c
    invoke-static {}, Lu0/d;->H1()V

    goto/16 :goto_9

    .line 96
    :sswitch_d
    iget-object v0, v1, Lc/d;->b:Landroid/os/Handler;

    new-instance v2, Lc/c$b;

    invoke-direct {v2, v1}, Lc/c$b;-><init>(Lc/c;)V

    invoke-virtual {v0, v2, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    .line 97
    :sswitch_e
    iget-object v0, v1, Lc/d;->b:Landroid/os/Handler;

    new-instance v2, Lc/c$a;

    invoke-direct {v2, v1}, Lc/c$a;-><init>(Lc/c;)V

    invoke-virtual {v0, v2, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    .line 98
    :sswitch_f
    invoke-virtual/range {p0 .. p0}, Lc/c;->h()V

    goto/16 :goto_9

    .line 99
    :sswitch_10
    invoke-static {}, Lo1/u;->A0()V

    goto/16 :goto_9

    .line 100
    :sswitch_11
    invoke-static {}, Lo1/u;->y0()V

    goto/16 :goto_9

    .line 101
    :sswitch_12
    invoke-static {}, Lo1/u;->M()V

    goto/16 :goto_9

    :sswitch_13
    const/4 v0, 0x7

    .line 102
    invoke-virtual {v1, v0}, Lc/c;->x(I)Z

    move-result v5

    goto/16 :goto_a

    .line 103
    :sswitch_14
    invoke-static {}, Lo1/u;->V0()I

    goto/16 :goto_9

    .line 104
    :sswitch_15
    invoke-static {}, Lo1/u;->A()V

    goto/16 :goto_9

    .line 105
    :sswitch_16
    invoke-static {}, Lo1/u;->x()I

    goto/16 :goto_9

    .line 106
    :sswitch_17
    invoke-static {}, Lu0/d;->D1()V

    goto/16 :goto_9

    .line 107
    :sswitch_18
    invoke-static {}, Lo1/u;->n0()Z

    move-result v0

    if-nez v0, :cond_14

    .line 108
    invoke-static {}, Lo1/u;->x0()V

    goto/16 :goto_9

    .line 109
    :cond_14
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0, v7}, Lw0/g;->x(I)V

    goto/16 :goto_9

    .line 110
    :sswitch_19
    invoke-static {}, Lo1/u;->v()I

    goto/16 :goto_9

    .line 111
    :sswitch_1a
    invoke-static {}, Lo1/u;->h()I

    goto/16 :goto_9

    .line 112
    :sswitch_1b
    invoke-static {}, Lo1/u;->a1()V

    goto/16 :goto_9

    .line 113
    :sswitch_1c
    invoke-static {v6}, Lu0/d;->Q1(I)V

    goto/16 :goto_9

    .line 114
    :sswitch_1d
    invoke-static {}, Lo1/u;->u()I

    goto/16 :goto_9

    .line 115
    :sswitch_1e
    invoke-static {}, Lo1/u;->U0()V

    goto/16 :goto_9

    .line 116
    :sswitch_1f
    invoke-static {}, Lo1/u;->W0()V

    goto/16 :goto_9

    .line 117
    :sswitch_20
    invoke-static {}, Lo1/u;->O()V

    goto/16 :goto_9

    .line 118
    :sswitch_21
    invoke-static {}, Lo1/u;->y()V

    goto/16 :goto_9

    .line 119
    :sswitch_22
    sget v0, Lp0/b;->f:I

    if-ne v0, v6, :cond_15

    .line 120
    invoke-static {}, Lo1/u;->H()I

    goto :goto_9

    :cond_15
    if-ne v0, v8, :cond_1b

    .line 121
    invoke-static {}, Lo1/u;->d()I

    goto :goto_9

    :sswitch_23
    const/16 v0, 0x9

    .line 122
    invoke-virtual {v1, v0}, Lc/c;->x(I)Z

    move-result v5

    goto :goto_a

    :sswitch_24
    const/16 v0, 0x8

    .line 123
    invoke-virtual {v1, v0}, Lc/c;->x(I)Z

    move-result v5

    goto :goto_a

    .line 124
    :sswitch_25
    invoke-virtual {v1, v10}, Lc/c;->x(I)Z

    move-result v5

    goto :goto_a

    .line 125
    :sswitch_26
    invoke-virtual {v1, v12}, Lc/c;->x(I)Z

    move-result v5

    goto :goto_a

    .line 126
    :sswitch_27
    invoke-virtual {v1, v11}, Lc/c;->x(I)Z

    move-result v5

    goto :goto_a

    .line 127
    :sswitch_28
    invoke-virtual {v1, v8}, Lc/c;->x(I)Z

    move-result v5

    goto :goto_a

    .line 128
    :sswitch_29
    invoke-virtual {v1, v6}, Lc/c;->x(I)Z

    move-result v5

    goto :goto_a

    .line 129
    :sswitch_2a
    invoke-virtual {v1, v13}, Lc/c;->x(I)Z

    move-result v5

    goto :goto_a

    .line 130
    :sswitch_2b
    invoke-static {}, Lo1/u;->z0()V

    goto :goto_9

    .line 131
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Lc/c;->j()V

    goto :goto_9

    .line 132
    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Lc/c;->g()V

    goto :goto_9

    .line 133
    :cond_16
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->f()V

    goto :goto_9

    .line 134
    :cond_17
    :pswitch_2b
    invoke-virtual {v1, v0, v3}, Lc/c;->l(II)V

    goto :goto_9

    .line 135
    :cond_18
    :pswitch_2c
    :sswitch_2c
    invoke-virtual/range {p0 .. p1}, Lc/c;->q(I)V

    goto :goto_9

    :cond_19
    const/4 v0, -0x6

    .line 136
    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 137
    invoke-static {v9}, Ly0/h;->u0(I)V

    goto :goto_9

    :cond_1a
    const/4 v0, -0x6

    .line 138
    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 139
    invoke-static {v7}, Ly0/h;->u0(I)V

    :cond_1b
    :goto_9
    :pswitch_2d
    :sswitch_2d
    move v5, v6

    :cond_1c
    :goto_a
    return v5

    :cond_1d
    :goto_b
    return v6

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2c
        :pswitch_2c
        :pswitch_2a
        :pswitch_29
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1c -> :sswitch_2d
        0x43 -> :sswitch_2d
        0x52 -> :sswitch_2c
        0xbb -> :sswitch_2b
        0x200 -> :sswitch_2a
        0x201 -> :sswitch_29
        0x202 -> :sswitch_28
        0x203 -> :sswitch_27
        0x204 -> :sswitch_26
        0x205 -> :sswitch_25
        0x206 -> :sswitch_24
        0x207 -> :sswitch_23
        0x208 -> :sswitch_22
        0x209 -> :sswitch_21
        0x20a -> :sswitch_2d
        0x20b -> :sswitch_20
        0x20c -> :sswitch_1f
        0x20d -> :sswitch_1e
        0x20e -> :sswitch_1d
        0x20f -> :sswitch_1c
        0x210 -> :sswitch_1b
        0x211 -> :sswitch_1a
        0x212 -> :sswitch_19
        0x213 -> :sswitch_18
        0x214 -> :sswitch_17
        0x215 -> :sswitch_2d
        0x216 -> :sswitch_16
        0x217 -> :sswitch_15
        0x218 -> :sswitch_14
        0x219 -> :sswitch_13
        0x21a -> :sswitch_12
        0x21b -> :sswitch_11
        0x21c -> :sswitch_10
        0x21d -> :sswitch_f
        0x24b -> :sswitch_e
        0x24c -> :sswitch_d
        0x24d -> :sswitch_c
        0x24e -> :sswitch_b
        0x24f -> :sswitch_b
        0x250 -> :sswitch_b
        0x251 -> :sswitch_b
        0x252 -> :sswitch_b
        0x253 -> :sswitch_b
        0x254 -> :sswitch_b
        0x255 -> :sswitch_b
        0x256 -> :sswitch_b
        0x257 -> :sswitch_b
        0x258 -> :sswitch_b
        0x259 -> :sswitch_b
        0x25a -> :sswitch_b
        0x25b -> :sswitch_b
        0x25c -> :sswitch_b
        0x25d -> :sswitch_b
        0x25e -> :sswitch_b
        0x25f -> :sswitch_b
        0x260 -> :sswitch_b
        0x261 -> :sswitch_b
        0x262 -> :sswitch_b
        0x263 -> :sswitch_b
        0x264 -> :sswitch_b
        0x265 -> :sswitch_b
        0x266 -> :sswitch_b
        0x267 -> :sswitch_a
        0x268 -> :sswitch_9
        0x269 -> :sswitch_9
        0x26a -> :sswitch_9
        0x26b -> :sswitch_8
        0x26c -> :sswitch_7
        0x26d -> :sswitch_9
        0x26e -> :sswitch_b
        0x26f -> :sswitch_9
        0x270 -> :sswitch_9
        0x271 -> :sswitch_9
        0x272 -> :sswitch_9
        0x273 -> :sswitch_9
        0x274 -> :sswitch_9
        0x275 -> :sswitch_9
        0x276 -> :sswitch_9
        0x277 -> :sswitch_9
        0x278 -> :sswitch_9
        0x279 -> :sswitch_6
        0x27a -> :sswitch_5
        0x27b -> :sswitch_9
        0x27c -> :sswitch_9
        0x27d -> :sswitch_9
        0x27f -> :sswitch_9
        0x280 -> :sswitch_9
        0x282 -> :sswitch_4
        0x283 -> :sswitch_3
        0x415 -> :sswitch_2
        0x416 -> :sswitch_1
        0x417 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x54
        :pswitch_28
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_27
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x190
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x21f
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_2d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x22b
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xaa
        0x91
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
        0x1
    .end array-data
.end method

.method public c(II)Z
    .locals 1

    const/16 v0, 0x22b

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x14

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final f()V
    .locals 3

    .line 1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->j3()I

    move-result v0

    .line 2
    sget v1, Lh0/c;->E:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 3
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v1

    invoke-virtual {v1}, Lh1/a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 4
    :cond_0
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    invoke-virtual {v0}, Lplugins/ZLink;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    iget-boolean v0, v0, Lplugins/ZLink;->c:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x210

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x5

    .line 5
    :goto_1
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    invoke-virtual {v1}, Lc/e;->b()Lc/e;

    .line 6
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc/e;->c(I)Z

    return-void
.end method

.method public g()V
    .locals 11

    const-string/jumbo v0, "syu.bt.show.pip"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2
    invoke-static {}, Lo1/u;->W()Z

    move-result v2

    .line 3
    sget v3, Lu0/b;->D:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v1

    .line 4
    :goto_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v6

    sget-object v7, Lutil/log/LogType;->k:Lutil/log/LogType;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HANDLE ==>> CALL EVENT : CALL pipBt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " topBt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " btav: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "  DataBt.sKeyDialHandle:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lh0/c;->j0:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v6

    .line 6
    invoke-virtual {v6}, Lh0/g;->a3()Lj0/b;

    move-result-object v6

    .line 7
    sget v7, Lh0/c;->j0:I

    const/4 v8, 0x4

    const/4 v9, 0x5

    if-eqz v7, :cond_f

    if-eq v7, v5, :cond_1

    const/4 v10, 0x2

    if-eq v7, v10, :cond_f

    if-eq v7, v4, :cond_f

    goto/16 :goto_6

    :cond_1
    if-eqz v6, :cond_8

    .line 8
    invoke-virtual {v6}, Lj0/b;->A()Li0/c;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {v4}, Li0/c;->x()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_2

    invoke-virtual {v4}, Li0/c;->x()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 10
    :cond_2
    invoke-virtual {v4, v5}, Li0/c;->H(I)V

    goto/16 :goto_6

    :cond_3
    if-nez v0, :cond_4

    .line 11
    sget v0, Lu0/b;->o:I

    if-ne v0, v5, :cond_5

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Li0/c;->x()I

    move-result v0

    if-ne v0, v9, :cond_5

    .line 12
    invoke-virtual {v4, v1}, Li0/c;->H(I)V

    goto/16 :goto_6

    :cond_5
    if-eqz v2, :cond_7

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_19

    .line 13
    invoke-virtual {v4, v1}, Li0/c;->H(I)V

    goto/16 :goto_6

    .line 14
    :cond_7
    :goto_1
    invoke-static {}, Lo1/u;->r()V

    goto/16 :goto_6

    .line 15
    :cond_8
    sget v6, Lh0/c;->E:I

    if-eq v6, v9, :cond_e

    if-ne v6, v4, :cond_9

    goto :goto_3

    :cond_9
    if-nez v0, :cond_a

    .line 16
    sget v0, Lu0/b;->o:I

    if-ne v0, v5, :cond_b

    :cond_a
    sget v0, Lh0/c;->E:I

    if-ne v0, v8, :cond_b

    .line 17
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0, v1}, Lh0/f;->h(I)V

    goto/16 :goto_6

    :cond_b
    if-eqz v2, :cond_d

    if-eqz v3, :cond_c

    goto :goto_2

    .line 18
    :cond_c
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0, v1}, Lh0/f;->h(I)V

    goto :goto_6

    .line 19
    :cond_d
    :goto_2
    invoke-static {}, Lo1/u;->r()V

    goto :goto_6

    .line 20
    :cond_e
    :goto_3
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0, v5}, Lh0/f;->h(I)V

    goto :goto_6

    :cond_f
    if-eqz v6, :cond_14

    .line 21
    invoke-virtual {v6}, Lj0/b;->A()Li0/c;

    move-result-object v4

    if-nez v0, :cond_10

    .line 22
    sget v0, Lu0/b;->o:I

    if-ne v0, v5, :cond_11

    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Li0/c;->x()I

    move-result v0

    if-ne v0, v9, :cond_11

    .line 23
    invoke-virtual {v4, v1}, Li0/c;->H(I)V

    goto :goto_6

    :cond_11
    if-eqz v2, :cond_13

    if-eqz v3, :cond_12

    goto :goto_4

    :cond_12
    if-eqz v4, :cond_19

    .line 24
    invoke-virtual {v4, v1}, Li0/c;->H(I)V

    goto :goto_6

    .line 25
    :cond_13
    :goto_4
    invoke-static {}, Lo1/u;->r()V

    goto :goto_6

    :cond_14
    if-nez v0, :cond_15

    .line 26
    sget v0, Lu0/b;->o:I

    if-ne v0, v5, :cond_16

    :cond_15
    sget v0, Lh0/c;->E:I

    if-ne v0, v8, :cond_16

    .line 27
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0, v1}, Lh0/f;->h(I)V

    goto :goto_6

    :cond_16
    if-eqz v2, :cond_18

    if-eqz v3, :cond_17

    goto :goto_5

    .line 28
    :cond_17
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0, v1}, Lh0/f;->h(I)V

    goto :goto_6

    .line 29
    :cond_18
    :goto_5
    invoke-static {}, Lo1/u;->r()V

    :cond_19
    :goto_6
    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->w:I

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lu0/b;->V2:[I

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lu0/b;->W2:[I

    .line 4
    :goto_0
    array-length v1, v0

    .line 5
    sget v2, Lu0/b;->K:I

    invoke-static {v0, v2}, Lo1/n0;->c([II)I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 6
    rem-int/2addr v2, v1

    .line 7
    aget v0, v0, v2

    const/4 v1, 0x0

    sget v2, Lu0/b;->Q:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    invoke-static {v0}, Lu0/d;->V(I)V

    return-void
.end method

.method public i()V
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0x1c

    const/4 v2, 0x2

    const/16 v3, 0x1c

    .line 1
    invoke-virtual {v0, v1, v2, v3}, Lc/c;->v(III)V

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lc/c;->v(III)V

    const/4 v1, 0x7

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lc/c;->v(III)V

    const/16 v3, 0x8

    const/4 v4, 0x3

    .line 4
    invoke-virtual {v0, v3, v2, v4}, Lc/c;->v(III)V

    const/16 v5, 0x9

    const/4 v6, 0x4

    .line 5
    invoke-virtual {v0, v5, v2, v6}, Lc/c;->v(III)V

    const/16 v7, 0xa

    const/4 v8, 0x5

    .line 6
    invoke-virtual {v0, v7, v2, v8}, Lc/c;->v(III)V

    const/16 v9, 0xb

    const/4 v10, 0x6

    .line 7
    invoke-virtual {v0, v9, v2, v10}, Lc/c;->v(III)V

    const/16 v11, 0xc

    .line 8
    invoke-virtual {v0, v11, v2, v1}, Lc/c;->v(III)V

    const/16 v12, 0xd

    .line 9
    invoke-virtual {v0, v12, v2, v3}, Lc/c;->v(III)V

    const/16 v13, 0xe

    .line 10
    invoke-virtual {v0, v13, v2, v5}, Lc/c;->v(III)V

    const/16 v14, 0xf

    .line 11
    invoke-virtual {v0, v14, v2, v7}, Lc/c;->v(III)V

    const/16 v15, 0x10

    .line 12
    invoke-virtual {v0, v15, v2, v9}, Lc/c;->v(III)V

    const/16 v8, 0x51

    .line 13
    invoke-virtual {v0, v8, v2, v11}, Lc/c;->v(III)V

    const/16 v8, 0x11

    .line 14
    invoke-virtual {v0, v8, v2, v12}, Lc/c;->v(III)V

    const/16 v8, 0x12

    .line 15
    invoke-virtual {v0, v8, v2, v13}, Lc/c;->v(III)V

    const/16 v8, 0x14

    .line 16
    invoke-virtual {v0, v1, v10, v8}, Lc/c;->v(III)V

    .line 17
    invoke-virtual {v0, v3, v10, v9}, Lc/c;->v(III)V

    .line 18
    invoke-virtual {v0, v5, v10, v11}, Lc/c;->v(III)V

    .line 19
    invoke-virtual {v0, v7, v10, v12}, Lc/c;->v(III)V

    .line 20
    invoke-virtual {v0, v9, v10, v13}, Lc/c;->v(III)V

    .line 21
    invoke-virtual {v0, v11, v10, v14}, Lc/c;->v(III)V

    .line 22
    invoke-virtual {v0, v12, v10, v15}, Lc/c;->v(III)V

    const/16 v8, 0x11

    .line 23
    invoke-virtual {v0, v13, v10, v8}, Lc/c;->v(III)V

    const/16 v8, 0x12

    .line 24
    invoke-virtual {v0, v14, v10, v8}, Lc/c;->v(III)V

    const/16 v8, 0x13

    .line 25
    invoke-virtual {v0, v15, v10, v8}, Lc/c;->v(III)V

    const/4 v8, 0x0

    .line 26
    invoke-virtual {v0, v1, v6, v8}, Lc/c;->v(III)V

    const/4 v8, 0x1

    .line 27
    invoke-virtual {v0, v3, v6, v8}, Lc/c;->v(III)V

    .line 28
    invoke-virtual {v0, v5, v6, v2}, Lc/c;->v(III)V

    .line 29
    invoke-virtual {v0, v7, v6, v4}, Lc/c;->v(III)V

    .line 30
    invoke-virtual {v0, v9, v6, v6}, Lc/c;->v(III)V

    const/4 v9, 0x5

    .line 31
    invoke-virtual {v0, v11, v6, v9}, Lc/c;->v(III)V

    .line 32
    invoke-virtual {v0, v12, v6, v10}, Lc/c;->v(III)V

    .line 33
    invoke-virtual {v0, v13, v6, v1}, Lc/c;->v(III)V

    .line 34
    invoke-virtual {v0, v14, v6, v3}, Lc/c;->v(III)V

    .line 35
    invoke-virtual {v0, v15, v6, v5}, Lc/c;->v(III)V

    const/4 v15, 0x0

    .line 36
    invoke-virtual {v0, v1, v1, v15}, Lc/c;->v(III)V

    .line 37
    invoke-virtual {v0, v3, v1, v8}, Lc/c;->v(III)V

    .line 38
    invoke-virtual {v0, v5, v1, v2}, Lc/c;->v(III)V

    .line 39
    invoke-virtual {v0, v7, v1, v4}, Lc/c;->v(III)V

    const/16 v4, 0xb

    .line 40
    invoke-virtual {v0, v4, v1, v6}, Lc/c;->v(III)V

    .line 41
    invoke-virtual {v0, v11, v1, v9}, Lc/c;->v(III)V

    .line 42
    invoke-virtual {v0, v12, v1, v10}, Lc/c;->v(III)V

    .line 43
    invoke-virtual {v0, v13, v1, v1}, Lc/c;->v(III)V

    .line 44
    invoke-virtual {v0, v14, v1, v3}, Lc/c;->v(III)V

    const/16 v14, 0x10

    .line 45
    invoke-virtual {v0, v14, v1, v5}, Lc/c;->v(III)V

    .line 46
    invoke-virtual {v0, v1, v3, v15}, Lc/c;->v(III)V

    .line 47
    invoke-virtual {v0, v3, v3, v8}, Lc/c;->v(III)V

    .line 48
    invoke-virtual {v0, v5, v3, v2}, Lc/c;->v(III)V

    const/4 v2, 0x3

    .line 49
    invoke-virtual {v0, v7, v3, v2}, Lc/c;->v(III)V

    .line 50
    invoke-virtual {v0, v4, v3, v6}, Lc/c;->v(III)V

    .line 51
    invoke-virtual {v0, v11, v3, v9}, Lc/c;->v(III)V

    .line 52
    invoke-virtual {v0, v12, v3, v10}, Lc/c;->v(III)V

    .line 53
    invoke-virtual {v0, v13, v3, v1}, Lc/c;->v(III)V

    const/16 v13, 0xf

    .line 54
    invoke-virtual {v0, v13, v3, v3}, Lc/c;->v(III)V

    .line 55
    invoke-virtual {v0, v14, v3, v5}, Lc/c;->v(III)V

    .line 56
    invoke-virtual {v0, v1, v5, v15}, Lc/c;->v(III)V

    .line 57
    invoke-virtual {v0, v3, v5, v8}, Lc/c;->v(III)V

    const/4 v15, 0x2

    .line 58
    invoke-virtual {v0, v5, v5, v15}, Lc/c;->v(III)V

    .line 59
    invoke-virtual {v0, v7, v5, v2}, Lc/c;->v(III)V

    .line 60
    invoke-virtual {v0, v4, v5, v6}, Lc/c;->v(III)V

    .line 61
    invoke-virtual {v0, v11, v5, v9}, Lc/c;->v(III)V

    .line 62
    invoke-virtual {v0, v12, v5, v10}, Lc/c;->v(III)V

    const/16 v10, 0xe

    .line 63
    invoke-virtual {v0, v10, v5, v1}, Lc/c;->v(III)V

    .line 64
    invoke-virtual {v0, v13, v5, v3}, Lc/c;->v(III)V

    .line 65
    invoke-virtual {v0, v14, v5, v5}, Lc/c;->v(III)V

    .line 66
    invoke-virtual {v0, v3, v8, v8}, Lc/c;->v(III)V

    .line 67
    invoke-virtual {v0, v5, v8, v15}, Lc/c;->v(III)V

    .line 68
    invoke-virtual {v0, v7, v8, v2}, Lc/c;->v(III)V

    .line 69
    invoke-virtual {v0, v4, v8, v6}, Lc/c;->v(III)V

    .line 70
    invoke-virtual {v0, v11, v8, v9}, Lc/c;->v(III)V

    const/4 v4, 0x6

    .line 71
    invoke-virtual {v0, v12, v8, v4}, Lc/c;->v(III)V

    const/16 v4, 0x7e

    const/4 v7, 0x0

    .line 72
    invoke-virtual {v0, v4, v3, v7}, Lc/c;->v(III)V

    const/16 v7, 0x7f

    .line 73
    invoke-virtual {v0, v7, v3, v15}, Lc/c;->v(III)V

    const/16 v10, 0x55

    .line 74
    invoke-virtual {v0, v10, v3, v8}, Lc/c;->v(III)V

    const/16 v11, 0x56

    .line 75
    invoke-virtual {v0, v11, v3, v2}, Lc/c;->v(III)V

    const/16 v2, 0x57

    .line 76
    invoke-virtual {v0, v2, v3, v9}, Lc/c;->v(III)V

    const/16 v9, 0x58

    .line 77
    invoke-virtual {v0, v9, v3, v6}, Lc/c;->v(III)V

    const/16 v11, 0x59

    .line 78
    invoke-virtual {v0, v11, v3, v1}, Lc/c;->v(III)V

    const/16 v11, 0x5a

    const/4 v13, 0x6

    .line 79
    invoke-virtual {v0, v11, v3, v13}, Lc/c;->v(III)V

    const/16 v11, 0x42

    .line 80
    invoke-virtual {v0, v11, v3, v8}, Lc/c;->v(III)V

    const/4 v3, 0x0

    .line 81
    invoke-virtual {v0, v4, v1, v3}, Lc/c;->v(III)V

    const/4 v3, 0x2

    .line 82
    invoke-virtual {v0, v7, v1, v3}, Lc/c;->v(III)V

    .line 83
    invoke-virtual {v0, v10, v1, v8}, Lc/c;->v(III)V

    const/16 v3, 0x56

    const/4 v11, 0x3

    .line 84
    invoke-virtual {v0, v3, v1, v11}, Lc/c;->v(III)V

    const/4 v3, 0x5

    .line 85
    invoke-virtual {v0, v2, v1, v3}, Lc/c;->v(III)V

    .line 86
    invoke-virtual {v0, v9, v1, v6}, Lc/c;->v(III)V

    const/16 v3, 0x59

    .line 87
    invoke-virtual {v0, v3, v1, v1}, Lc/c;->v(III)V

    const/16 v3, 0x5a

    const/4 v11, 0x6

    .line 88
    invoke-virtual {v0, v3, v1, v11}, Lc/c;->v(III)V

    const/16 v3, 0x42

    .line 89
    invoke-virtual {v0, v3, v1, v8}, Lc/c;->v(III)V

    const/4 v3, 0x0

    .line 90
    invoke-virtual {v0, v4, v5, v3}, Lc/c;->v(III)V

    const/4 v3, 0x2

    .line 91
    invoke-virtual {v0, v7, v5, v3}, Lc/c;->v(III)V

    .line 92
    invoke-virtual {v0, v10, v5, v8}, Lc/c;->v(III)V

    const/16 v3, 0x56

    const/4 v11, 0x3

    .line 93
    invoke-virtual {v0, v3, v5, v11}, Lc/c;->v(III)V

    const/4 v3, 0x5

    .line 94
    invoke-virtual {v0, v2, v5, v3}, Lc/c;->v(III)V

    .line 95
    invoke-virtual {v0, v9, v5, v6}, Lc/c;->v(III)V

    const/16 v3, 0x59

    .line 96
    invoke-virtual {v0, v3, v5, v1}, Lc/c;->v(III)V

    const/16 v1, 0x5a

    const/4 v3, 0x6

    .line 97
    invoke-virtual {v0, v1, v5, v3}, Lc/c;->v(III)V

    const/16 v1, 0x42

    .line 98
    invoke-virtual {v0, v1, v5, v8}, Lc/c;->v(III)V

    .line 99
    invoke-virtual {v0, v4, v6, v4}, Lc/c;->v(III)V

    .line 100
    invoke-virtual {v0, v7, v6, v7}, Lc/c;->v(III)V

    .line 101
    invoke-virtual {v0, v10, v6, v10}, Lc/c;->v(III)V

    const/16 v1, 0x56

    const/16 v3, 0x56

    .line 102
    invoke-virtual {v0, v1, v6, v3}, Lc/c;->v(III)V

    .line 103
    invoke-virtual {v0, v2, v6, v2}, Lc/c;->v(III)V

    .line 104
    invoke-virtual {v0, v9, v6, v9}, Lc/c;->v(III)V

    const/16 v1, 0x59

    const/16 v3, 0x59

    .line 105
    invoke-virtual {v0, v1, v6, v3}, Lc/c;->v(III)V

    const/16 v1, 0x5a

    const/16 v3, 0x5a

    .line 106
    invoke-virtual {v0, v1, v6, v3}, Lc/c;->v(III)V

    const/16 v1, 0x42

    .line 107
    invoke-virtual {v0, v1, v6, v10}, Lc/c;->v(III)V

    const/4 v1, 0x3

    .line 108
    invoke-virtual {v0, v4, v1, v4}, Lc/c;->v(III)V

    .line 109
    invoke-virtual {v0, v7, v1, v7}, Lc/c;->v(III)V

    .line 110
    invoke-virtual {v0, v10, v1, v10}, Lc/c;->v(III)V

    const/16 v3, 0x42

    .line 111
    invoke-virtual {v0, v3, v1, v10}, Lc/c;->v(III)V

    const/16 v3, 0x56

    const/16 v5, 0x56

    .line 112
    invoke-virtual {v0, v3, v1, v5}, Lc/c;->v(III)V

    .line 113
    invoke-virtual {v0, v2, v1, v2}, Lc/c;->v(III)V

    .line 114
    invoke-virtual {v0, v9, v1, v9}, Lc/c;->v(III)V

    const/4 v1, 0x6

    .line 115
    invoke-virtual {v0, v2, v1, v2}, Lc/c;->v(III)V

    .line 116
    invoke-virtual {v0, v9, v1, v9}, Lc/c;->v(III)V

    .line 117
    invoke-virtual {v0, v2, v8, v2}, Lc/c;->v(III)V

    .line 118
    invoke-virtual {v0, v9, v8, v9}, Lc/c;->v(III)V

    const/16 v1, 0x59

    const/16 v3, 0x231

    .line 119
    invoke-virtual {v0, v1, v8, v3}, Lc/c;->v(III)V

    const/16 v1, 0x5a

    const/16 v3, 0x232

    .line 120
    invoke-virtual {v0, v1, v8, v3}, Lc/c;->v(III)V

    const/16 v1, 0x233

    .line 121
    invoke-virtual {v0, v4, v8, v1}, Lc/c;->v(III)V

    const/16 v1, 0x54

    .line 122
    invoke-virtual {v0, v10, v8, v1}, Lc/c;->v(III)V

    .line 123
    invoke-virtual {v0, v2, v12, v2}, Lc/c;->v(III)V

    .line 124
    invoke-virtual {v0, v9, v12, v9}, Lc/c;->v(III)V

    const/16 v1, 0xb

    .line 125
    invoke-virtual {v0, v2, v1, v2}, Lc/c;->v(III)V

    .line 126
    invoke-virtual {v0, v9, v1, v9}, Lc/c;->v(III)V

    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lh0/g;->a3()Lj0/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lj0/b;->A()Li0/c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Li0/c;->x()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {v0}, Li0/c;->R()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Li0/c;->B()V

    goto :goto_0

    .line 7
    :cond_1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 8
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0}, Lh0/f;->z()V

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0}, Lh0/f;->e()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->j3()I

    move-result v0

    .line 2
    sget v1, Lh0/c;->E:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 3
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v1

    invoke-virtual {v1}, Lh1/a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 4
    :cond_0
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    invoke-virtual {v0}, Lplugins/ZLink;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    iget-boolean v0, v0, Lplugins/ZLink;->c:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x5b

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x6

    .line 5
    :goto_1
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    invoke-virtual {v1}, Lc/e;->b()Lc/e;

    .line 6
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc/e;->c(I)Z

    return-void
.end method

.method public l(II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lc/c;->e:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1c

    const/4 v2, 0x4

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq p1, v1, :cond_17

    const/16 v1, 0x82

    const/16 v6, 0x7f

    const/16 v7, 0x7e

    if-eq p1, v1, :cond_1

    const/16 v1, 0x42

    if-eq p1, v1, :cond_1

    const/16 v1, 0x43

    if-eq p1, v1, :cond_18

    if-eq p1, v7, :cond_1

    if-eq p1, v6, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 3
    invoke-virtual {p0, v0, p1}, Lc/c;->n(Ljava/lang/Integer;I)V

    goto/16 :goto_1

    :cond_1
    :pswitch_0
    const/16 v1, 0x58

    const/16 v8, 0x57

    if-ne p2, v4, :cond_8

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_8

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v8, :cond_2

    .line 6
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->c()V

    goto/16 :goto_1

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 8
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->g()V

    goto/16 :goto_1

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x235

    if-ne p1, p2, :cond_4

    .line 10
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->B()V

    goto/16 :goto_1

    .line 11
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x234

    if-ne p1, p2, :cond_5

    .line 12
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->h()V

    goto/16 :goto_1

    .line 13
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x232

    if-ne p1, p2, :cond_6

    .line 14
    invoke-virtual {p0}, Lc/c;->y()V

    goto/16 :goto_1

    .line 15
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x231

    if-ne p1, p2, :cond_7

    .line 16
    invoke-virtual {p0}, Lc/c;->z()V

    goto/16 :goto_1

    .line 17
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x54

    if-ne p1, p2, :cond_1f

    .line 18
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1, v5}, Lw0/g;->v(I)V

    goto/16 :goto_1

    :cond_8
    if-ne p2, v3, :cond_a

    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_a

    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v8, :cond_9

    .line 21
    sget-object p1, Ld1/d;->b:Ld1/g;

    invoke-interface {p1}, Ld1/g;->c()V

    goto/16 :goto_1

    .line 22
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_1f

    .line 23
    sget-object p1, Ld1/d;->b:Ld1/g;

    invoke-interface {p1}, Ld1/g;->g()V

    goto/16 :goto_1

    :cond_a
    const/4 v3, 0x3

    if-ne p2, v3, :cond_10

    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_10

    .line 25
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lh0/g;->a3()Lj0/b;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v7, :cond_c

    if-eq p2, v6, :cond_b

    packed-switch p2, :pswitch_data_2

    goto/16 :goto_1

    .line 28
    :pswitch_1
    invoke-virtual {p1}, Lj0/b;->L()V

    goto/16 :goto_1

    .line 29
    :pswitch_2
    invoke-virtual {p1}, Lj0/b;->H()V

    goto/16 :goto_1

    .line 30
    :pswitch_3
    invoke-virtual {p1}, Lj0/b;->M()V

    goto/16 :goto_1

    .line 31
    :pswitch_4
    invoke-virtual {p1}, Lj0/b;->K()V

    goto/16 :goto_1

    .line 32
    :cond_b
    invoke-virtual {p1}, Lj0/b;->I()V

    goto/16 :goto_1

    .line 33
    :cond_c
    invoke-virtual {p1}, Lj0/b;->J()V

    goto/16 :goto_1

    .line 34
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v7, :cond_f

    if-eq p1, v6, :cond_e

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_1

    .line 35
    :pswitch_5
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->i()V

    goto/16 :goto_1

    .line 36
    :pswitch_6
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->V()V

    goto/16 :goto_1

    .line 37
    :pswitch_7
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->k()V

    goto/16 :goto_1

    .line 38
    :pswitch_8
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->p()V

    goto/16 :goto_1

    .line 39
    :cond_e
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->E()V

    goto/16 :goto_1

    .line 40
    :cond_f
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->w()V

    goto/16 :goto_1

    :cond_10
    if-ne p2, v2, :cond_13

    .line 41
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_13

    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v7, :cond_12

    if-eq p1, v6, :cond_11

    packed-switch p1, :pswitch_data_4

    goto/16 :goto_1

    .line 43
    :pswitch_9
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->j()V

    goto/16 :goto_1

    .line 44
    :pswitch_a
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->i()V

    goto/16 :goto_1

    .line 45
    :pswitch_b
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->r()V

    goto/16 :goto_1

    .line 46
    :pswitch_c
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->l()V

    goto/16 :goto_1

    .line 47
    :pswitch_d
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->x()V

    goto/16 :goto_1

    .line 48
    :pswitch_e
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->p()V

    goto/16 :goto_1

    .line 49
    :cond_11
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->n()V

    goto/16 :goto_1

    .line 50
    :cond_12
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->o()V

    goto/16 :goto_1

    .line 51
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_16

    const/16 v2, 0xd

    if-eq p2, v2, :cond_14

    const/16 v2, 0xb

    if-ne p2, v2, :cond_16

    .line 52
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v8, :cond_15

    .line 53
    invoke-static {}, Lk0/qt;->d()V

    goto/16 :goto_1

    .line 54
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_1f

    .line 55
    invoke-static {}, Lk0/qt;->e()V

    goto/16 :goto_1

    .line 56
    :cond_16
    invoke-virtual {p0, v0, p1}, Lc/c;->n(Ljava/lang/Integer;I)V

    goto/16 :goto_1

    :cond_17
    if-ne p2, v5, :cond_18

    .line 57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_18

    .line 58
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v4}, Lh0/f;->C(I)V

    goto/16 :goto_1

    :cond_18
    if-ne p2, v5, :cond_19

    .line 59
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_19

    .line 60
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lh0/f;->C(I)V

    goto :goto_1

    :cond_19
    :pswitch_f
    if-ne p2, v4, :cond_1a

    .line 61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v3, :cond_1a

    .line 62
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lw0/g;->z(I)V

    goto :goto_1

    :cond_1a
    if-ne p2, v3, :cond_1b

    .line 63
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1b

    .line 64
    sget-object p1, Ld1/d;->b:Ld1/g;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Ld1/g;->h(I)V

    goto :goto_1

    :cond_1b
    if-ne p2, v2, :cond_1c

    .line 65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1c

    .line 66
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lo0/h;->D(I)V

    goto :goto_1

    :cond_1c
    if-ne p2, v5, :cond_1d

    .line 67
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1d

    .line 68
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lh0/f;->h(I)V

    goto :goto_1

    :cond_1d
    const/4 v1, 0x7

    if-ne p2, v1, :cond_1e

    .line 69
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ltz p2, :cond_1e

    goto :goto_1

    .line 70
    :cond_1e
    invoke-virtual {p0, v0, p1}, Lc/c;->n(Ljava/lang/Integer;I)V

    :cond_1f
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x55
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x55
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x55
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public m()V
    .locals 11

    .line 1
    invoke-static {}, Lo1/u;->Q()Z

    move-result v0

    const/16 v1, 0x8

    const-string v2, "com.syu.btav"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string v5, "com.syu.music"

    const-string v6, "com.syu.bt"

    const-string v7, "com.syu.radio"

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/c;->f:Landroid/util/SparseArray;

    new-instance v9, Lc/c$n;

    sget-object v10, La/b;->j:Ljava/lang/String;

    invoke-direct {v9, p0, v10, v7, v8}, Lc/c$n;-><init>(Lc/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lc/c;->f:Landroid/util/SparseArray;

    new-instance v4, Lc/c$n;

    sget-object v7, La/b;->j:Ljava/lang/String;

    invoke-direct {v4, p0, v7, v2, v8}, Lc/c$n;-><init>(Lc/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lc/c;->f:Landroid/util/SparseArray;

    new-instance v2, Lc/c$n;

    sget-object v3, La/b;->j:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v5, v8}, Lc/c$n;-><init>(Lc/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lc/c;->f:Landroid/util/SparseArray;

    const/4 v1, 0x7

    new-instance v2, Lc/c$n;

    sget-object v3, La/b;->j:Ljava/lang/String;

    const-string v4, "com.syu.online"

    invoke-direct {v2, p0, v3, v4, v8}, Lc/c$n;-><init>(Lc/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lc/c;->f:Landroid/util/SparseArray;

    new-instance v9, Lc/c$n;

    invoke-direct {v9, p0, v7, v7, v8}, Lc/c$n;-><init>(Lc/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lc/c;->f:Landroid/util/SparseArray;

    new-instance v4, Lc/c$n;

    invoke-direct {v4, p0, v6, v2, v8}, Lc/c$n;-><init>(Lc/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lc/c;->f:Landroid/util/SparseArray;

    new-instance v2, Lc/c$n;

    invoke-direct {v2, p0, v5, v5, v8}, Lc/c$n;-><init>(Lc/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lc/c;->f:Landroid/util/SparseArray;

    const/4 v1, 0x4

    new-instance v2, Lc/c$n;

    const-string v3, "com.syu.dvd"

    invoke-direct {v2, p0, v3, v3, v8}, Lc/c$n;-><init>(Lc/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lc/c;->f:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-instance v2, Lc/c$n;

    invoke-direct {v2, p0, v6, v6, v8}, Lc/c$n;-><init>(Lc/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lc/c;->f:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-instance v2, Lc/c$n;

    const-string v3, "com.syu.av"

    invoke-direct {v2, p0, v3, v3, v8}, Lc/c$n;-><init>(Lc/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lc/c;->f:Landroid/util/SparseArray;

    const/16 v1, 0x9

    new-instance v2, Lc/c$n;

    const-string v3, "com.syu.video"

    invoke-direct {v2, p0, v3, v3, v8}, Lc/c$n;-><init>(Lc/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public n(Ljava/lang/Integer;I)V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1

    const/16 p2, 0x25

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v1, v0

    invoke-static {p2, v1}, Lu0/d;->I3(I[I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p2}, Lc/c;->s(I)V

    :goto_0
    return-void
.end method

.method public o(I)V
    .locals 3

    .line 1
    sget-object v0, Lz/c;->a:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 2
    sget-object v0, La/b;->i:Ljava/lang/String;

    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x25

    if-eqz v0, :cond_0

    new-array p1, v1, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-static {v2, p1}, Lu0/d;->I3(I[I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 p1, 0x57

    .line 4
    invoke-virtual {p0, p1}, Lc/c;->s(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lk0/qt;->d()V

    goto :goto_0

    :cond_2
    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    const/4 v1, 0x5

    aput v1, v0, p1

    .line 6
    invoke-static {v2, v0}, Lu0/d;->I3(I[I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        -0x1
        0x5
    .end array-data
.end method

.method public p(I)V
    .locals 3

    .line 1
    sget-object v0, Lz/c;->b:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 2
    sget-object v0, La/b;->i:Ljava/lang/String;

    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x25

    if-eqz v0, :cond_0

    new-array p1, v1, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-static {v2, p1}, Lu0/d;->I3(I[I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 p1, 0x58

    .line 4
    invoke-virtual {p0, p1}, Lc/c;->s(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lk0/qt;->e()V

    goto :goto_0

    :cond_2
    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    const/4 v1, 0x4

    aput v1, v0, p1

    .line 6
    invoke-static {v2, v0}, Lu0/d;->I3(I[I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        -0x1
        0x4
    .end array-data
.end method

.method public q(I)V
    .locals 11

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->k:Lutil/log/LogType;

    const-string/jumbo v2, "sendKeyEvent ===============>>>> keyCode "

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move v4, p1

    move-wide v7, v0

    move-wide v9, v0

    .line 3
    invoke-virtual/range {v3 .. v10}, Lc/c;->r(IIIJJ)V

    .line 4
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v2

    new-instance v3, Lc/c$d;

    invoke-direct {v3, p0, p1, v0, v1}, Lc/c$d;-><init>(Lc/c;IJ)V

    const-wide/16 v0, 0x50

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public r(IIIJJ)V
    .locals 14

    .line 1
    new-instance v13, Landroid/view/KeyEvent;

    or-int/lit8 v0, p3, 0x8

    or-int/lit8 v11, v0, 0x40

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v12, 0x101

    move-object v0, v13

    move-wide/from16 v1, p6

    move-wide/from16 v3, p4

    move/from16 v5, p2

    move v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    move v2, p1

    if-ne v2, v1, :cond_0

    .line 2
    const-class v1, Landroid/view/KeyEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const-string/jumbo v4, "setDisplayId"

    invoke-static {v1, v13, v4, v3, v2}, Lo1/d0;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-static {v13, v0}, Lo1/s0;->B(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public s(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lc/c;->t(II)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lc/c;->t(II)V

    return-void
.end method

.method public t(II)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, p1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3
    sget-object p1, Lu0/b;->B3:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->N(Ljava/lang/String;)I

    move-result p1

    .line 4
    sget-object p2, Lu0/b;->B3:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string v2, "kuwo"

    .line 5
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x1130

    if-ge p1, p2, :cond_0

    const-string p1, "android.intent.extra.KEY_EVENT"

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    :goto_0
    return-void
.end method

.method public varargs u([I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lz/k;->s([I)V

    return-void
.end method

.method public v(III)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/c;->e:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/c;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lc/c;->e:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    .line 4
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    if-nez v1, :cond_1

    .line 5
    iget-object p2, p0, Lc/c;->e:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p3}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 4
    invoke-virtual {p4, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p3}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 6
    invoke-static {p4}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 8
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object p4, p2

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    :cond_3
    :goto_0
    if-eqz p4, :cond_4

    const/high16 p2, 0x10200000

    .line 10
    invoke-virtual {p4, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    :try_start_0
    invoke-virtual {p1, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public x(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lc/c;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c$n;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lc/c;->h:Lapp/App;

    iget-object v2, p1, Lc/c$n;->b:Ljava/lang/String;

    iget-object v3, p1, Lc/c$n;->a:Ljava/lang/String;

    iget-object p1, p1, Lc/c$n;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, p1}, Lc/c;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public y()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p0, v0}, Lc/c;->p(I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->i()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lh0/g;->a3()Lj0/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lj0/b;->L()V

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0}, Lh0/f;->i()V

    goto :goto_0

    .line 8
    :cond_3
    sget-object v0, Ld1/d;->b:Ld1/g;

    invoke-interface {v0}, Ld1/g;->g()V

    goto :goto_0

    .line 9
    :cond_4
    sget v0, Lw0/d;->U:I

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    goto :goto_0

    .line 10
    :cond_5
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->d()V

    goto :goto_0

    .line 11
    :cond_6
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->g()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public z()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p0, v0}, Lc/c;->o(I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lo0/e;->b:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->j()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lh0/g;->a3()Lj0/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lj0/b;->H()V

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0}, Lh0/f;->V()V

    goto :goto_0

    .line 8
    :cond_3
    sget-object v0, Ld1/d;->b:Ld1/g;

    invoke-interface {v0}, Ld1/g;->c()V

    goto :goto_0

    .line 9
    :cond_4
    sget v0, Lw0/d;->T:I

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    goto :goto_0

    .line 10
    :cond_5
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->i()V

    goto :goto_0

    .line 11
    :cond_6
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->c()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
