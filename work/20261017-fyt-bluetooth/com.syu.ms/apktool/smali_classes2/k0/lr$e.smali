.class public Lk0/lr$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/lr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/lr;


# direct methods
.method public constructor <init>(Lk0/lr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/lr$e;->a:Lk0/lr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/lr$e;->a:Lk0/lr;

    iget v1, v0, Lk0/lr;->n:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/lr;->n:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v4, 0xe3

    aput v4, v0, v1

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 2
    sget v4, Lu0/b;->a0:I

    aput v4, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    .line 4
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_4
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_5
    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 13
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_6
    new-array v0, v3, [I

    .line 14
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 15
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, v0, Lk0/lr;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 17
    iget-object v0, p0, Lk0/lr$e;->a:Lk0/lr;

    iput v3, v0, Lk0/lr;->n:I

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xc901c6 -> :sswitch_6
        0xca01c6 -> :sswitch_5
        0xcb01c6 -> :sswitch_4
        0xcc01c6 -> :sswitch_3
        0xcd01c6 -> :sswitch_2
        0xce01c6 -> :sswitch_1
        0xcf01c6 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x9c
        0x2
        0x4
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x9c
        0x2
        0x3
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x9c
        0x2
        0x2
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x9c
        0x2
        0x1
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x9b
        0x2
        0x13
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x9c
        0x2
        0x1
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x9b
        0x2
        0x12
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x9c
        0x2
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x9b
        0x2
        0x11
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x9c
        0x2
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x9b
        0x2
        0x10
        0x0
    .end array-data
.end method
