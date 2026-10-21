.class public Lh1/a$c;
.super Lc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lh1/a;


# direct methods
.method public constructor <init>(Lh1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh1/a$c;->e:Lh1/a;

    invoke-direct {p0}, Lc/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Z
    .locals 12

    const-string v0, "sys.carlink.type"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    .line 3
    sget v2, Lu0/b;->D:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0xf

    .line 4
    :cond_1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    invoke-virtual {v2}, Lu0/i;->j3()I

    move-result v2

    .line 5
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lh0/g;->a3()Lj0/b;

    move-result-object v3

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=========>>> onClick TO Link APP keyCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " appid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lu0/b;->D:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " callActionType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lh1/a$c;->e:Lh1/a;

    iget v5, v5, Lh1/a;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cp call state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AA"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    const-string v6, "1"

    const/4 v7, -0x1

    const/4 v8, 0x6

    const/4 v9, 0x2

    const/4 v10, 0x5

    const/4 v11, 0x1

    if-eq p1, v10, :cond_10

    if-eq p1, v8, :cond_8

    const/16 v3, 0x55

    const/16 v6, 0x24c

    const/16 v7, 0x24b

    if-eq p1, v3, :cond_4

    const/16 v3, 0x57

    if-eq p1, v3, :cond_4

    const/16 v3, 0x58

    if-eq p1, v3, :cond_4

    const/16 v3, 0x7e

    if-eq p1, v3, :cond_4

    const/16 v3, 0x7f

    if-eq p1, v3, :cond_4

    if-eq p1, v7, :cond_4

    if-eq p1, v6, :cond_4

    packed-switch p1, :pswitch_data_0

    :goto_0
    move v8, p1

    move p1, v1

    goto/16 :goto_f

    :pswitch_0
    if-ne v0, v9, :cond_2

    goto/16 :goto_d

    :cond_2
    if-ne v0, v4, :cond_3

    const/16 p1, 0x240

    goto/16 :goto_d

    :cond_3
    if-eq v0, v11, :cond_25

    .line 8
    sget v0, Lh0/c;->E:I

    if-eqz v0, :cond_25

    goto :goto_0

    .line 9
    :cond_4
    :pswitch_1
    iget-object v0, p0, Lh1/a$c;->e:Lh1/a;

    invoke-static {v0}, Lh1/a;->b(Lh1/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    if-ne v2, v11, :cond_7

    .line 10
    iget-object v0, p0, Lh1/a$c;->e:Lh1/a;

    iget v0, v0, Lh1/a;->h:I

    if-ne v0, v11, :cond_7

    if-eq p1, v6, :cond_6

    const/16 v0, 0x23f

    if-ne p1, v0, :cond_7

    :cond_6
    :goto_1
    move v8, v10

    goto/16 :goto_e

    :cond_7
    if-ne v2, v9, :cond_25

    .line 11
    iget-object v0, p0, Lh1/a$c;->e:Lh1/a;

    iget v0, v0, Lh1/a;->h:I

    if-ne v0, v11, :cond_25

    if-eq p1, v7, :cond_26

    const/16 v0, 0x23e

    if-ne p1, v0, :cond_25

    :goto_2
    goto :goto_7

    :cond_8
    if-ne v0, v9, :cond_c

    if-eqz v3, :cond_a

    .line 12
    invoke-virtual {v3}, Lj0/b;->B()Li0/c;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 13
    invoke-virtual {v3, v6}, Lj0/b;->z(Ljava/lang/String;)Li0/c;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Li0/c;->D()Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Li0/c;->D()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_3
    move p1, v1

    goto :goto_5

    .line 15
    :cond_9
    invoke-virtual {p1, v11}, Li0/c;->H(I)V

    goto :goto_4

    .line 16
    :cond_a
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v11}, Lh0/f;->h(I)V

    :cond_b
    :goto_4
    move p1, v11

    :goto_5
    move v8, v7

    goto/16 :goto_f

    :cond_c
    if-ne v0, v11, :cond_25

    if-eqz v3, :cond_f

    .line 17
    invoke-virtual {v3}, Lj0/b;->B()Li0/c;

    .line 18
    invoke-virtual {v3, v6}, Lj0/b;->z(Ljava/lang/String;)Li0/c;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v11

    goto :goto_6

    .line 19
    :cond_d
    invoke-virtual {v0}, Li0/c;->x()I

    move-result v0

    :goto_6
    if-eqz v2, :cond_e

    goto :goto_2

    :cond_e
    if-ne v0, v8, :cond_25

    goto/16 :goto_0

    :cond_f
    if-eqz v2, :cond_25

    :goto_7
    goto/16 :goto_e

    :cond_10
    if-ne v0, v9, :cond_19

    if-eqz v3, :cond_16

    .line 20
    invoke-virtual {v3}, Lj0/b;->B()Li0/c;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 21
    invoke-virtual {v3, v6}, Lj0/b;->z(Ljava/lang/String;)Li0/c;

    move-result-object v0

    .line 22
    invoke-virtual {p1}, Li0/c;->D()Z

    move-result v2

    if-nez v2, :cond_11

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Li0/c;->D()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_3

    .line 23
    :cond_11
    iget-object v0, p0, Lh1/a$c;->e:Lh1/a;

    iget v0, v0, Lh1/a;->h:I

    if-ne v0, v11, :cond_12

    .line 24
    invoke-virtual {p1, v1}, Li0/c;->H(I)V

    goto :goto_4

    :cond_12
    if-ne v0, v9, :cond_15

    .line 25
    invoke-virtual {p1}, Li0/c;->x()I

    move-result v0

    if-eq v0, v8, :cond_14

    .line 26
    invoke-virtual {p1}, Li0/c;->x()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_13

    goto :goto_8

    .line 27
    :cond_13
    invoke-virtual {p1, v1}, Li0/c;->H(I)V

    goto :goto_4

    .line 28
    :cond_14
    :goto_8
    invoke-virtual {p1, v11}, Li0/c;->H(I)V

    goto :goto_4

    .line 29
    :cond_15
    invoke-virtual {p1, v1}, Li0/c;->H(I)V

    goto :goto_4

    .line 30
    :cond_16
    iget-object p1, p0, Lh1/a$c;->e:Lh1/a;

    iget p1, p1, Lh1/a;->h:I

    if-ne p1, v9, :cond_18

    sget p1, Lh0/c;->E:I

    if-eq p1, v10, :cond_17

    if-ne p1, v4, :cond_18

    .line 31
    :cond_17
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v11}, Lh0/f;->h(I)V

    goto :goto_4

    .line 32
    :cond_18
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v1}, Lh0/f;->h(I)V

    goto :goto_4

    :cond_19
    if-ne v0, v11, :cond_25

    if-eqz v3, :cond_21

    .line 33
    invoke-virtual {v3}, Lj0/b;->B()Li0/c;

    move-result-object v0

    .line 34
    invoke-virtual {v3, v6}, Lj0/b;->z(Ljava/lang/String;)Li0/c;

    move-result-object v3

    if-nez v3, :cond_1a

    move v3, v11

    goto :goto_9

    .line 35
    :cond_1a
    invoke-virtual {v3}, Li0/c;->x()I

    move-result v3

    :goto_9
    if-nez v0, :cond_1f

    .line 36
    iget-object v0, p0, Lh1/a$c;->e:Lh1/a;

    iget v0, v0, Lh1/a;->h:I

    if-ne v0, v11, :cond_1c

    if-ne v2, v11, :cond_1b

    move p1, v10

    goto :goto_a

    :cond_1b
    move p1, v7

    :goto_a
    if-ne p1, v7, :cond_1f

    if-ne v3, v10, :cond_1f

    goto :goto_b

    :cond_1c
    if-ne v0, v9, :cond_20

    if-ne v2, v11, :cond_1d

    goto :goto_b

    :cond_1d
    if-ne v2, v9, :cond_1e

    move v10, v8

    goto :goto_b

    :cond_1e
    if-le v3, v9, :cond_1f

    move v10, p1

    move p1, v1

    goto :goto_c

    :cond_1f
    move v10, p1

    :cond_20
    :goto_b
    move p1, v11

    :goto_c
    move v8, v10

    goto :goto_f

    .line 37
    :cond_21
    iget-object v0, p0, Lh1/a$c;->e:Lh1/a;

    iget v0, v0, Lh1/a;->h:I

    if-ne v0, v11, :cond_23

    if-ne v2, v11, :cond_22

    move p1, v10

    goto :goto_d

    :cond_22
    move p1, v7

    goto :goto_d

    :cond_23
    if-ne v0, v9, :cond_6

    if-ne v2, v11, :cond_24

    goto/16 :goto_1

    :cond_24
    if-ne v2, v9, :cond_25

    goto/16 :goto_2

    :cond_25
    :goto_d
    move v8, p1

    :cond_26
    :goto_e
    move p1, v11

    :goto_f
    if-eqz p1, :cond_27

    if-ltz v8, :cond_27

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============>>> TO CarLink keyCode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x85

    new-array v2, v11, [I

    aput v8, v2, v1

    .line 39
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    :cond_27
    return p1

    :pswitch_data_0
    .packed-switch 0x23e
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
