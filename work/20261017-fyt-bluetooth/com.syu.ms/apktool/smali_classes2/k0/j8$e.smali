.class public Lk0/j8$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/j8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/j8;


# direct methods
.method public constructor <init>(Lk0/j8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/j8$e;->a:Lk0/j8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 v1, 0xa

    const/4 v2, 0x4

    if-ne v0, v1, :cond_1

    new-array v0, v2, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_5

    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_5

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_5

    :cond_3
    const/16 v1, 0xe

    if-eq v0, v1, :cond_f

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    const/16 v1, 0x10

    if-eq v0, v1, :cond_e

    const/16 v1, 0x11

    if-eq v0, v1, :cond_e

    const/16 v1, 0x14

    if-eq v0, v1, :cond_e

    const/16 v1, 0x15

    if-eq v0, v1, :cond_e

    const/16 v1, 0x20

    if-eq v0, v1, :cond_e

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    const/16 v1, 0x19

    if-eq v0, v1, :cond_d

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_6

    goto :goto_2

    :cond_6
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_7

    new-array v0, v2, [I

    .line 5
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    new-array v0, v2, [I

    .line 6
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_5

    :cond_8
    const/16 v1, 0x21

    if-eq v0, v1, :cond_c

    const/16 v1, 0x23

    if-ne v0, v1, :cond_9

    goto :goto_1

    :cond_9
    const/16 v1, 0x22

    if-eq v0, v1, :cond_b

    const/16 v1, 0x24

    if-ne v0, v1, :cond_a

    goto :goto_0

    :cond_a
    const/16 v1, 0x25

    if-ne v0, v1, :cond_10

    new-array v0, v2, [I

    .line 7
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_5

    :cond_b
    :goto_0
    new-array v0, v2, [I

    .line 8
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_5

    :cond_c
    :goto_1
    new-array v0, v2, [I

    .line 9
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_5

    :cond_d
    :goto_2
    new-array v0, v2, [I

    .line 10
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_5

    :cond_e
    :goto_3
    new-array v0, v2, [I

    .line 11
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_5

    :cond_f
    :goto_4
    new-array v0, v2, [I

    .line 12
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_10
    :goto_5
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x7b
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7b
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x7b
        0x1
        0x3
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x7b
        0x1
        0x9
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x7b
        0x1
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x12
        0x1
        0x2
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x12
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x12
        0x1
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x7b
        0x1
        0x8
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x7b
        0x1
        0x5
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x7b
        0x1
        0x4
    .end array-data
.end method
