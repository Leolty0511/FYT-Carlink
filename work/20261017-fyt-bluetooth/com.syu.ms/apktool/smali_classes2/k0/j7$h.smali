.class public Lk0/j7$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/j7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/j7;


# direct methods
.method public constructor <init>(Lk0/j7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/j7$h;->a:Lk0/j7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    new-array v0, v2, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array v0, v2, [I

    .line 5
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array v0, v2, [I

    .line 6
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array v0, v2, [I

    .line 7
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_7
    new-array v0, v1, [I

    .line 8
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_8
    new-array v0, v2, [I

    .line 9
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_9
    new-array v0, v1, [I

    .line 10
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_a
    new-array v0, v2, [I

    .line 11
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_b
    new-array v0, v2, [I

    .line 12
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_c
    new-array v0, v2, [I

    .line 13
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_d
    new-array v0, v2, [I

    .line 14
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_e
    new-array v0, v1, [I

    .line 15
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xee
        0x1
        0xb
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xee
        0x1
        0xa
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xee
        0x1
        0x9
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xee
        0x1
        0x8
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xee
        0x1
        0x7
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xee
        0x1
        0x6
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xee
        0x2
        0x1
        0x3
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xee
        0x1
        0x5
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xee
        0x2
        0x1
        0x2
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0xee
        0x1
        0x4
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0xee
        0x1
        0x3
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0xee
        0x1
        0x2
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0xee
        0x1
        0x1
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0xee
        0x2
        0x1
        0x1
    .end array-data
.end method
