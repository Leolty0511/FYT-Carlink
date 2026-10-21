.class public Lg/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lg/g;

.field public static b:I

.field public static c:I

.field public static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lg/g$a;

    invoke-direct {v0}, Lg/g$a;-><init>()V

    sput-object v0, Lg/e;->a:Lg/g;

    const/4 v0, 0x0

    .line 2
    sput v0, Lg/e;->b:I

    .line 3
    sput v0, Lg/e;->c:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lg/e;->d:Ljava/util/List;

    const/16 v1, 0x2a

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lg/e;->d:Ljava/util/List;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lg/e;->d:Ljava/util/List;

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lg/e;->d:Ljava/util/List;

    const/16 v3, 0x3f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lg/e;->d:Ljava/util/List;

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lg/e;->d:Ljava/util/List;

    const/16 v4, 0x2f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lg/e;->d:Ljava/util/List;

    const/16 v5, 0x30

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lg/e;->e:Ljava/util/List;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lg/e;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lg/e;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lg/e;->e:Ljava/util/List;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lg/e;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lg/e;->e:Ljava/util/List;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lg/e;->e:Ljava/util/List;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a()I
    .locals 1

    .line 1
    sget v0, Lg/e;->b:I

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lg/e;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "NULL"

    goto :goto_0

    :cond_0
    const-string v0, "SOFIA"

    goto :goto_0

    :cond_1
    const-string v0, "RKPX3"

    goto :goto_0

    :cond_2
    const-string v0, "MST786"

    :goto_0
    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lg/e;->c:I

    const-string v1, "_25_"

    const-string v2, "_90_"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "_00_"

    return-object v0

    :pswitch_1
    return-object v2

    :pswitch_2
    return-object v1

    :pswitch_3
    return-object v2

    :pswitch_4
    return-object v1

    :pswitch_5
    return-object v2

    :pswitch_6
    const-string v0, "_61_"

    return-object v0

    :pswitch_7
    const-string v0, "_60_"

    return-object v0

    :pswitch_8
    const-string v0, "_50_"

    return-object v0

    :pswitch_9
    const-string v0, "_32_"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "_00_"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v2, "_32_"

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "5002"

    goto/16 :goto_0

    :cond_2
    const-string v2, "_50_"

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "5005"

    goto/16 :goto_0

    :cond_3
    const-string v2, "_60_"

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "5006"

    goto/16 :goto_0

    :cond_4
    const-string v2, "_61_"

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "5008"

    goto/16 :goto_0

    :cond_5
    const-string v2, "_90_"

    .line 7
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v1, "5009"

    goto/16 :goto_0

    .line 8
    :cond_6
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v1, "5011"

    goto/16 :goto_0

    .line 9
    :cond_7
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v1, "6021"

    goto/16 :goto_0

    .line 10
    :cond_8
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v1, "6023"

    goto/16 :goto_0

    .line 11
    :cond_9
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v1, "6022"

    goto/16 :goto_0

    .line 12
    :cond_a
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v1, "6011"

    goto/16 :goto_0

    .line 13
    :cond_b
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v1, "6012"

    goto/16 :goto_0

    .line 14
    :cond_c
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v1, "6013"

    goto/16 :goto_0

    .line 15
    :cond_d
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v1, "6121"

    goto/16 :goto_0

    .line 16
    :cond_e
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v1, "6122"

    goto/16 :goto_0

    .line 17
    :cond_f
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v1, "6111"

    goto/16 :goto_0

    .line 18
    :cond_10
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v1, "6112"

    goto/16 :goto_0

    .line 19
    :cond_11
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v1, "800"

    goto/16 :goto_0

    .line 20
    :cond_12
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v1, "801"

    goto/16 :goto_0

    :cond_13
    const-string v3, "_25_"

    .line 21
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v1, "6025"

    goto/16 :goto_0

    .line 22
    :cond_14
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v1, "6015"

    goto/16 :goto_0

    .line 23
    :cond_15
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v1, "802"

    goto/16 :goto_0

    .line 24
    :cond_16
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v1, "803"

    goto/16 :goto_0

    .line 25
    :cond_17
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v1, "804"

    goto/16 :goto_0

    .line 26
    :cond_18
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v1, "805"

    goto :goto_0

    .line 27
    :cond_19
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v1, "6112S"

    goto :goto_0

    .line 28
    :cond_1a
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v1, "6121S"

    goto :goto_0

    .line 29
    :cond_1b
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v1, "6111S"

    goto :goto_0

    .line 30
    :cond_1c
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v1, "6122S"

    goto :goto_0

    .line 31
    :cond_1d
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v1, "800S"

    goto :goto_0

    .line 32
    :cond_1e
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v1, "801S"

    goto :goto_0

    .line 33
    :cond_1f
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v1, "804S"

    goto :goto_0

    .line 34
    :cond_20
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v1, "805S"

    goto :goto_0

    .line 35
    :cond_21
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v1, "6322"

    goto :goto_0

    .line 36
    :cond_22
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_23

    const-string v1, "6521"

    :cond_23
    :goto_0
    return-object v1
.end method

.method public static e()I
    .locals 1

    .line 1
    sget v0, Lg/e;->c:I

    return v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lg/e;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "NULL"

    return-object v0

    :pswitch_1
    const-string v0, "6521"

    return-object v0

    :pswitch_2
    const-string v0, "6322"

    return-object v0

    :pswitch_3
    const-string v0, "805S"

    return-object v0

    :pswitch_4
    const-string v0, "804S"

    return-object v0

    :pswitch_5
    const-string v0, "801S"

    return-object v0

    :pswitch_6
    const-string v0, "800S"

    return-object v0

    :pswitch_7
    const-string v0, "6122S"

    return-object v0

    :pswitch_8
    const-string v0, "6111S"

    return-object v0

    :pswitch_9
    const-string v0, "6121S"

    return-object v0

    :pswitch_a
    const-string v0, "6112S"

    return-object v0

    :pswitch_b
    const-string v0, "805"

    return-object v0

    :pswitch_c
    const-string v0, "804"

    return-object v0

    :pswitch_d
    const-string v0, "803"

    return-object v0

    :pswitch_e
    const-string v0, "802"

    return-object v0

    :pswitch_f
    const-string v0, "6015"

    return-object v0

    :pswitch_10
    const-string v0, "801"

    return-object v0

    :pswitch_11
    const-string v0, "800"

    return-object v0

    :pswitch_12
    const-string v0, "6112"

    return-object v0

    :pswitch_13
    const-string v0, "6111"

    return-object v0

    :pswitch_14
    const-string v0, "6122"

    return-object v0

    :pswitch_15
    const-string v0, "6121"

    return-object v0

    :pswitch_16
    const-string v0, "6025"

    return-object v0

    :pswitch_17
    const-string v0, "6022"

    return-object v0

    :pswitch_18
    const-string v0, "6012"

    return-object v0

    :pswitch_19
    const-string v0, "6011"

    return-object v0

    :pswitch_1a
    const-string v0, "6013"

    return-object v0

    :pswitch_1b
    const-string v0, "6023"

    return-object v0

    :pswitch_1c
    const-string v0, "6021"

    return-object v0

    :pswitch_1d
    const-string v0, "5011"

    return-object v0

    :pswitch_1e
    const-string v0, "2009"

    return-object v0

    :pswitch_1f
    const-string v0, "5009"

    return-object v0

    :pswitch_20
    const-string v0, "6006"

    return-object v0

    :pswitch_21
    const-string v0, "5008"

    return-object v0

    :pswitch_22
    const-string v0, "5006"

    return-object v0

    :pswitch_23
    const-string v0, "5005"

    return-object v0

    :pswitch_24
    const-string v0, "5002"

    return-object v0

    :pswitch_25
    const-string v0, ""

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_0
        :pswitch_23
        :pswitch_22
        :pswitch_0
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
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
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
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static g()I
    .locals 1

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static h()Z
    .locals 1

    .line 1
    invoke-static {}, Lg/e;->k()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x3f

    .line 2
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x42

    .line 3
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x47

    .line 4
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x3b

    .line 5
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static i(I)Z
    .locals 1

    .line 1
    sget-object v0, Lg/e;->d:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static j(I)Z
    .locals 1

    .line 1
    sget v0, Lg/e;->c:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static k()Z
    .locals 3

    const-string/jumbo v0, "ro.syu.mcu_memory"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lg/e;->e:Ljava/util/List;

    sget v2, Lg/e;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static l()Z
    .locals 4

    const-string/jumbo v0, "ro.syu.mcu_memory"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    xor-int/2addr v0, v2

    return v0

    .line 2
    :cond_0
    sget v0, Lg/e;->c:I

    const/16 v3, 0x2c

    if-eq v0, v3, :cond_1

    const/16 v3, 0x32

    if-eq v0, v3, :cond_1

    const/16 v3, 0x46

    if-eq v0, v3, :cond_1

    const/16 v3, 0x47

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :cond_1
    :pswitch_0
    move v1, v2

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static m()Z
    .locals 1

    const/16 v0, 0x3d

    .line 1
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x3b

    .line 2
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lg/f;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static n(I)V
    .locals 0

    .line 1
    sput p0, Lg/e;->b:I

    return-void
.end method

.method public static o(I)V
    .locals 0

    .line 1
    sput p0, Lg/e;->c:I

    return-void
.end method

.method public static p()I
    .locals 2

    .line 1
    sget v0, Lg/e;->c:I

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    goto :goto_0

    :cond_1
    const/16 v0, 0x2a

    :goto_0
    return v0
.end method
