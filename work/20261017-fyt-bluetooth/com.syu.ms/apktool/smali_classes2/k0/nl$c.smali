.class public Lk0/nl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/nl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/nl;


# direct methods
.method public constructor <init>(Lk0/nl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/nl$c;->a:Lk0/nl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 4
    :goto_0
    sget v0, Lk0/nt;->c:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :pswitch_1
    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :pswitch_2
    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :pswitch_3
    new-array v0, v1, [I

    .line 8
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :pswitch_4
    new-array v0, v1, [I

    .line 9
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :pswitch_5
    new-array v0, v1, [I

    .line 10
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    new-array v0, v1, [I

    .line 11
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    new-array v0, v1, [I

    .line 12
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x7c
        0x2
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x7c
        0x2
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x77
        0x2
        0x7
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x77
        0x2
        0x6
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x77
        0x2
        0x5
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x77
        0x2
        0x4
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x77
        0x2
        0x3
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x77
        0x2
        0x2
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x77
        0x2
        0x1
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x77
        0x2
        0x0
        0x0
    .end array-data
.end method
