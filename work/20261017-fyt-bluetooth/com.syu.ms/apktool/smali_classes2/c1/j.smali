.class public Lc1/j;
.super Lc1/p;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Lo1/g0;

.field public k:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc1/j;->l:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lc1/p;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lc1/j;->b:[B

    const/16 v0, 0xff

    .line 3
    iput v0, p0, Lc1/j;->c:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lc1/j;->d:I

    .line 5
    iput v0, p0, Lc1/j;->e:I

    .line 6
    iput v0, p0, Lc1/j;->f:I

    .line 7
    iput v0, p0, Lc1/j;->g:I

    .line 8
    iput v0, p0, Lc1/j;->h:I

    .line 9
    iput-boolean v0, p0, Lc1/j;->i:Z

    .line 10
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lc1/j;->j:Lo1/g0;

    .line 11
    new-instance v0, Lc1/j$a;

    invoke-direct {v0, p0}, Lc1/j$a;-><init>(Lc1/j;)V

    iput-object v0, p0, Lc1/j;->k:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic O2(Lc1/j;I)I
    .locals 0

    .line 1
    iput p1, p0, Lc1/j;->g:I

    return p1
.end method

.method public static synthetic P2(Lc1/j;I)I
    .locals 0

    .line 1
    iput p1, p0, Lc1/j;->h:I

    return p1
.end method

.method public static R2(II)V
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x90

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x80

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x6

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_5
    const/16 p0, 0x8

    goto :goto_0

    :pswitch_6
    const/16 p0, 0x9

    :goto_0
    const/16 v0, 0xff

    if-eq p1, v0, :cond_0

    .line 1
    sget-object v0, Lc1/j;->l:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public L2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc1/j;->j:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    invoke-virtual {p0}, Lc1/j;->init()V

    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc1/j;->j:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    return-void
.end method

.method public final Q2()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lc1/j;->i:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 2
    iget v0, p0, Lc1/j;->c:I

    const/16 v4, 0xff

    const/16 v5, 0x65

    if-ne v0, v4, :cond_0

    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v5, v0}, Lc1/b;->i(I[I)V

    goto/16 :goto_2

    .line 4
    :cond_0
    iget v0, p0, Lc1/j;->f:I

    const/16 v4, 0x10

    if-eq v0, v4, :cond_1

    .line 5
    sget-object v4, Lc1/j;->l:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v6, p0, Lc1/j;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v1, [I

    .line 6
    iget v1, p0, Lc1/j;->f:I

    aput v1, v0, v2

    iget v1, p0, Lc1/j;->c:I

    aput v1, v0, v3

    invoke-static {v5, v0}, Lc1/b;->i(I[I)V

    goto/16 :goto_2

    .line 7
    :cond_1
    sget-object v0, Lc1/j;->l:Ljava/util/HashMap;

    iget v4, p0, Lc1/j;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v6, p0, Lc1/j;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v1, [I

    .line 8
    iget v1, p0, Lc1/j;->e:I

    aput v1, v0, v2

    iget v1, p0, Lc1/j;->c:I

    aput v1, v0, v3

    invoke-static {v5, v0}, Lc1/b;->i(I[I)V

    goto/16 :goto_2

    .line 9
    :cond_2
    iget v0, p0, Lc1/j;->h:I

    iget v4, p0, Lc1/j;->f:I

    if-ne v0, v4, :cond_3

    iget v0, p0, Lc1/j;->g:I

    iget v5, p0, Lc1/j;->e:I

    if-eq v0, v5, :cond_7

    .line 10
    :cond_3
    iput v4, p0, Lc1/j;->h:I

    .line 11
    iget v0, p0, Lc1/j;->e:I

    iput v0, p0, Lc1/j;->g:I

    .line 12
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v4, p0, Lc1/j;->k:Ljava/lang/Runnable;

    invoke-static {v0, v4}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 13
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v4, p0, Lc1/j;->k:Ljava/lang/Runnable;

    const-wide/16 v5, 0x12c

    invoke-static {v0, v4, v5, v6}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    .line 14
    sget-object v0, Lc1/j;->l:Ljava/util/HashMap;

    iget v4, p0, Lc1/j;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x6

    const/4 v5, 0x5

    const-string v6, "net.easyconn.MainActivity"

    const-string v7, "net.easyconn"

    const/16 v8, 0x3c

    if-eqz v0, :cond_5

    .line 15
    sget-object v0, Lc1/j;->l:Ljava/util/HashMap;

    iget v9, p0, Lc1/j;->f:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 16
    :pswitch_0
    invoke-static {}, Lo1/u;->b0()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-static {}, Lo1/u;->k()V

    goto :goto_0

    .line 18
    :cond_4
    invoke-static {}, Lo1/u;->E()I

    :goto_0
    return-void

    :pswitch_1
    new-array v0, v3, [I

    aput v2, v0, v2

    .line 19
    invoke-static {v8, v0}, Lu0/d;->I3(I[I)V

    return-void

    :pswitch_2
    new-array v0, v3, [I

    aput v4, v0, v2

    .line 20
    invoke-static {v8, v0}, Lu0/d;->I3(I[I)V

    return-void

    :pswitch_3
    new-array v0, v3, [I

    aput v5, v0, v2

    .line 21
    invoke-static {v8, v0}, Lu0/d;->I3(I[I)V

    return-void

    .line 22
    :pswitch_4
    invoke-static {}, Lu0/d;->E1()V

    return-void

    .line 23
    :pswitch_5
    invoke-static {}, Lu0/d;->v1()V

    return-void

    .line 24
    :pswitch_6
    invoke-static {}, Lo1/u;->a1()V

    return-void

    .line 25
    :pswitch_7
    invoke-static {}, Lu0/d;->D1()V

    return-void

    .line 26
    :pswitch_8
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0, v3}, Lh0/f;->h(I)V

    return-void

    .line 27
    :pswitch_9
    invoke-static {}, Lu0/d;->w1()V

    return-void

    .line 28
    :pswitch_a
    invoke-static {}, Lu0/d;->I1()V

    return-void

    .line 29
    :pswitch_b
    invoke-static {}, Lu0/d;->y1()V

    return-void

    .line 30
    :pswitch_c
    invoke-static {}, Lu0/d;->B1()V

    return-void

    .line 31
    :pswitch_d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v7, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    invoke-static {v0}, Lo1/u;->e(Landroid/content/Intent;)I

    return-void

    .line 34
    :pswitch_e
    invoke-static {}, Lu0/d;->N1()V

    return-void

    .line 35
    :pswitch_f
    invoke-static {}, Lu0/d;->M1()V

    return-void

    .line 36
    :pswitch_10
    invoke-static {}, Lu0/d;->O1()V

    return-void

    .line 37
    :pswitch_11
    invoke-static {}, Lu0/d;->u1()V

    return-void

    .line 38
    :pswitch_12
    invoke-static {}, Lu0/d;->t1()V

    return-void

    .line 39
    :pswitch_13
    invoke-static {}, Lu0/d;->C1()V

    return-void

    .line 40
    :pswitch_14
    invoke-static {}, Lu0/d;->A1()V

    return-void

    .line 41
    :pswitch_15
    invoke-static {v1}, Lu0/d;->U1(I)V

    return-void

    .line 42
    :cond_5
    :goto_1
    sget-object v0, Lc1/j;->l:Ljava/util/HashMap;

    iget v9, p0, Lc1/j;->e:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 43
    sget-object v0, Lc1/j;->l:Ljava/util/HashMap;

    iget v9, p0, Lc1/j;->e:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    .line 44
    :pswitch_16
    invoke-static {}, Lo1/u;->b0()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45
    invoke-static {}, Lo1/u;->k()V

    goto/16 :goto_2

    .line 46
    :cond_6
    invoke-static {}, Lo1/u;->E()I

    goto/16 :goto_2

    :pswitch_17
    new-array v0, v3, [I

    aput v2, v0, v2

    .line 47
    invoke-static {v8, v0}, Lu0/d;->I3(I[I)V

    goto/16 :goto_2

    :pswitch_18
    new-array v0, v3, [I

    aput v4, v0, v2

    .line 48
    invoke-static {v8, v0}, Lu0/d;->I3(I[I)V

    goto/16 :goto_2

    :pswitch_19
    new-array v0, v3, [I

    aput v5, v0, v2

    .line 49
    invoke-static {v8, v0}, Lu0/d;->I3(I[I)V

    goto :goto_2

    .line 50
    :pswitch_1a
    invoke-static {}, Lu0/d;->E1()V

    goto :goto_2

    .line 51
    :pswitch_1b
    invoke-static {}, Lu0/d;->v1()V

    goto :goto_2

    .line 52
    :pswitch_1c
    invoke-static {}, Lo1/u;->a1()V

    goto :goto_2

    .line 53
    :pswitch_1d
    invoke-static {}, Lu0/d;->D1()V

    goto :goto_2

    .line 54
    :pswitch_1e
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0, v3}, Lh0/f;->h(I)V

    goto :goto_2

    .line 55
    :pswitch_1f
    invoke-static {}, Lu0/d;->w1()V

    goto :goto_2

    .line 56
    :pswitch_20
    invoke-static {}, Lu0/d;->I1()V

    goto :goto_2

    .line 57
    :pswitch_21
    invoke-static {}, Lu0/d;->y1()V

    goto :goto_2

    .line 58
    :pswitch_22
    invoke-static {}, Lu0/d;->B1()V

    goto :goto_2

    .line 59
    :pswitch_23
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v7, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 61
    invoke-static {v0}, Lo1/u;->e(Landroid/content/Intent;)I

    goto :goto_2

    .line 62
    :pswitch_24
    invoke-static {}, Lu0/d;->N1()V

    goto :goto_2

    .line 63
    :pswitch_25
    invoke-static {}, Lu0/d;->M1()V

    goto :goto_2

    .line 64
    :pswitch_26
    invoke-static {}, Lu0/d;->O1()V

    goto :goto_2

    .line 65
    :pswitch_27
    invoke-static {}, Lu0/d;->u1()V

    goto :goto_2

    .line 66
    :pswitch_28
    invoke-static {}, Lu0/d;->t1()V

    goto :goto_2

    .line 67
    :pswitch_29
    invoke-static {}, Lu0/d;->C1()V

    goto :goto_2

    .line 68
    :pswitch_2a
    invoke-static {}, Lu0/d;->A1()V

    goto :goto_2

    .line 69
    :pswitch_2b
    invoke-static {v1}, Lu0/d;->U1(I)V

    :cond_7
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public final S2(B)V
    .locals 3

    and-int/lit8 v0, p1, 0xf

    .line 1
    iput v0, p0, Lc1/j;->e:I

    and-int/lit16 v0, p1, 0xf0

    .line 2
    iput v0, p0, Lc1/j;->f:I

    .line 3
    invoke-virtual {p0}, Lc1/j;->Q2()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**** \u83b7\u53d6\u5230\u6b63\u786e\u6570\u636e   \u952e\u503cmKeyID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc1/j;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  \u6309\u952e\u72b6\u6001mKeyState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc1/j;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  ** \u539f\u59cb\u6570\u636ethis.DATA[mStart]= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%02X "

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo1/b0;->i(Ljava/lang/String;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 4

    const/16 p3, 0x64

    if-eq p2, p3, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    sget-object p3, Lc1/j;->l:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 6
    invoke-static {p1, p2, v2}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 6

    const/4 p3, 0x2

    const/4 p4, 0x0

    const/4 v0, 0x1

    const/16 v1, 0xff

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    iput v1, p0, Lc1/j;->c:I

    .line 2
    sget-object p1, Lc1/j;->l:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_5

    .line 3
    array-length p1, p2

    if-lez p1, :cond_5

    .line 4
    aget p1, p2, p4

    iput p1, p0, Lc1/j;->c:I

    goto/16 :goto_0

    :cond_2
    if-eqz p2, :cond_5

    .line 5
    array-length p1, p2

    if-lez p1, :cond_5

    .line 6
    aget p1, p2, p4

    if-ne p1, v0, :cond_3

    .line 7
    iput-boolean v0, p0, Lc1/j;->i:Z

    goto/16 :goto_0

    .line 8
    :cond_3
    iput v1, p0, Lc1/j;->c:I

    .line 9
    iput-boolean p4, p0, Lc1/j;->i:Z

    .line 10
    sget-object p1, Lc1/j;->l:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    const/4 p2, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-nez p1, :cond_4

    .line 11
    iget-object p1, p0, Lc1/j;->j:Lo1/g0;

    sget-object v1, Lc1/j;->l:Ljava/util/HashMap;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, p4, v1}, Lo1/g0;->g(II)V

    .line 12
    iget-object p1, p0, Lc1/j;->j:Lo1/g0;

    sget-object p4, Lc1/j;->l:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p1, v0, p4}, Lo1/g0;->g(II)V

    .line 13
    iget-object p1, p0, Lc1/j;->j:Lo1/g0;

    sget-object p4, Lc1/j;->l:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p1, p3, p4}, Lo1/g0;->g(II)V

    .line 14
    iget-object p1, p0, Lc1/j;->j:Lo1/g0;

    sget-object p3, Lc1/j;->l:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, v2, p3}, Lo1/g0;->g(II)V

    .line 15
    iget-object p1, p0, Lc1/j;->j:Lo1/g0;

    sget-object p3, Lc1/j;->l:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    .line 16
    iget-object p1, p0, Lc1/j;->j:Lo1/g0;

    sget-object p2, Lc1/j;->l:Ljava/util/HashMap;

    const/16 p3, 0x80

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, v4, p2}, Lo1/g0;->g(II)V

    .line 17
    iget-object p1, p0, Lc1/j;->j:Lo1/g0;

    sget-object p2, Lc1/j;->l:Ljava/util/HashMap;

    const/16 p3, 0x90

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, v3, p2}, Lo1/g0;->g(II)V

    goto :goto_0

    .line 18
    :cond_4
    iget-object p1, p0, Lc1/j;->j:Lo1/g0;

    invoke-virtual {p1, p4, v1}, Lo1/g0;->g(II)V

    .line 19
    iget-object p1, p0, Lc1/j;->j:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    .line 20
    iget-object p1, p0, Lc1/j;->j:Lo1/g0;

    invoke-virtual {p1, p3, v1}, Lo1/g0;->g(II)V

    .line 21
    iget-object p1, p0, Lc1/j;->j:Lo1/g0;

    invoke-virtual {p1, v2, v1}, Lo1/g0;->g(II)V

    .line 22
    iget-object p1, p0, Lc1/j;->j:Lo1/g0;

    invoke-virtual {p1, p2, v1}, Lo1/g0;->g(II)V

    .line 23
    iget-object p1, p0, Lc1/j;->j:Lo1/g0;

    invoke-virtual {p1, v4, v1}, Lo1/g0;->g(II)V

    .line 24
    iget-object p1, p0, Lc1/j;->j:Lo1/g0;

    invoke-virtual {p1, v3, v1}, Lo1/g0;->g(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public b([B)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lc1/j;->z1([BII)V

    return-void

    :cond_1
    :goto_0
    const-wide/16 v0, 0x64

    .line 3
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

.method public final init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc1/j;->j:Lo1/g0;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Lo1/g0;->d(II)I

    move-result v0

    invoke-static {v1, v0}, Lc1/j;->R2(II)V

    .line 2
    iget-object v0, p0, Lc1/j;->j:Lo1/g0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/g0;->d(II)I

    move-result v0

    invoke-static {v1, v0}, Lc1/j;->R2(II)V

    .line 3
    iget-object v0, p0, Lc1/j;->j:Lo1/g0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lo1/g0;->d(II)I

    move-result v0

    invoke-static {v1, v0}, Lc1/j;->R2(II)V

    .line 4
    iget-object v0, p0, Lc1/j;->j:Lo1/g0;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lo1/g0;->d(II)I

    move-result v0

    invoke-static {v1, v0}, Lc1/j;->R2(II)V

    .line 5
    iget-object v0, p0, Lc1/j;->j:Lo1/g0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lo1/g0;->d(II)I

    move-result v0

    invoke-static {v1, v0}, Lc1/j;->R2(II)V

    .line 6
    iget-object v0, p0, Lc1/j;->j:Lo1/g0;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lo1/g0;->d(II)I

    move-result v0

    invoke-static {v1, v0}, Lc1/j;->R2(II)V

    .line 7
    iget-object v0, p0, Lc1/j;->j:Lo1/g0;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lo1/g0;->d(II)I

    move-result v0

    invoke-static {v1, v0}, Lc1/j;->R2(II)V

    return-void
.end method

.method public z1([BII)V
    .locals 4

    .line 1
    iget v0, p0, Lc1/j;->d:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lc1/j;->b:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    .line 2
    iput v3, p0, Lc1/j;->d:I

    .line 3
    :cond_0
    iget v0, p0, Lc1/j;->d:I

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p1, p0, Lc1/j;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lc1/j;->d:I

    move p1, v3

    :goto_0
    add-int/lit8 p2, p1, 0x1

    .line 5
    iget p3, p0, Lc1/j;->d:I

    if-ge p2, p3, :cond_2

    .line 6
    iget-object p3, p0, Lc1/j;->b:[B

    aget-byte v0, p3, p1

    xor-int/lit16 v0, v0, 0xa5

    int-to-byte v0, v0

    .line 7
    aget-byte v1, p3, p2

    if-ne v1, v0, :cond_1

    aget-byte v0, p3, p1

    if-eqz v0, :cond_1

    .line 8
    aget-byte p1, p3, p1

    invoke-virtual {p0, p1}, Lc1/j;->S2(B)V

    .line 9
    iget-object p1, p0, Lc1/j;->b:[B

    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 10
    iput v3, p0, Lc1/j;->d:I

    goto :goto_1

    :cond_1
    move p1, p2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
