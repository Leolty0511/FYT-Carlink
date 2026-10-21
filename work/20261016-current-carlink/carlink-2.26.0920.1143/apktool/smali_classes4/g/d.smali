.class public final Lg/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/e;


# instance fields
.field public b:Lg/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    const/16 v0, 0x100b

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    const/16 v0, 0x1009

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_2
    const/16 v0, 0x100a

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_3
    if-eqz v0, :cond_4

    :goto_4
    move v0, v2

    goto :goto_5

    :cond_4
    const/16 v0, 0x1001

    if-ne p1, v0, :cond_5

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_5
    if-eqz v0, :cond_6

    :goto_6
    move v0, v2

    goto :goto_7

    :cond_6
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_7

    goto :goto_6

    :cond_7
    move v0, v1

    :goto_7
    if-eqz v0, :cond_8

    :goto_8
    move v0, v2

    goto :goto_9

    :cond_8
    const/16 v0, 0x1006

    if-ne p1, v0, :cond_9

    goto :goto_8

    :cond_9
    move v0, v1

    :goto_9
    if-eqz v0, :cond_a

    :goto_a
    move v0, v2

    goto :goto_b

    :cond_a
    const/16 v0, 0x1007

    if-ne p1, v0, :cond_b

    goto :goto_a

    :cond_b
    move v0, v1

    :goto_b
    if-eqz v0, :cond_c

    :goto_c
    move v0, v2

    goto :goto_d

    :cond_c
    const/16 v0, 0x1008

    if-ne p1, v0, :cond_d

    goto :goto_c

    :cond_d
    move v0, v1

    :goto_d
    if-eqz v0, :cond_e

    :goto_e
    move v0, v2

    goto :goto_f

    :cond_e
    const/16 v0, 0x1003

    if-ne p1, v0, :cond_f

    goto :goto_e

    :cond_f
    move v0, v1

    :goto_f
    if-eqz v0, :cond_10

    :goto_10
    move v0, v2

    goto :goto_11

    :cond_10
    const/16 v0, 0x1004

    if-ne p1, v0, :cond_11

    goto :goto_10

    :cond_11
    move v0, v1

    :goto_11
    if-eqz v0, :cond_12

    :goto_12
    move v0, v2

    goto :goto_13

    :cond_12
    const/16 v0, 0x1005

    if-ne p1, v0, :cond_13

    goto :goto_12

    :cond_13
    move v0, v1

    :goto_13
    if-eqz v0, :cond_14

    :goto_14
    move v0, v2

    goto :goto_15

    :cond_14
    const/16 v0, 0x100c

    if-ne p1, v0, :cond_15

    goto :goto_14

    :cond_15
    move v0, v1

    :goto_15
    if-eqz v0, :cond_16

    :goto_16
    move v0, v2

    goto :goto_17

    :cond_16
    const/16 v0, 0x100e

    if-ne p1, v0, :cond_17

    goto :goto_16

    :cond_17
    move v0, v1

    :goto_17
    if-eqz v0, :cond_18

    :goto_18
    move v0, v2

    goto :goto_19

    :cond_18
    const/16 v0, 0x100d

    if-ne p1, v0, :cond_19

    goto :goto_18

    :cond_19
    move v0, v1

    :goto_19
    if-eqz v0, :cond_1a

    :goto_1a
    move v0, v2

    goto :goto_1b

    :cond_1a
    const/16 v0, 0x100f

    if-ne p1, v0, :cond_1b

    goto :goto_1a

    :cond_1b
    move v0, v1

    :goto_1b
    if-eqz v0, :cond_1c

    :goto_1c
    move v1, v2

    goto :goto_1d

    :cond_1c
    const/16 v0, 0x1010

    if-ne p1, v0, :cond_1d

    goto :goto_1c

    :cond_1d
    :goto_1d
    if-eqz v1, :cond_1e

    iget-object v0, p0, Lg/d;->b:Lg/e;

    if-eqz v0, :cond_1e

    invoke-interface {v0, p1}, Lg/e;->a(I)V

    :cond_1e
    return-void
.end method
