.class public Lk0/di$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/di;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/di;


# direct methods
.method public constructor <init>(Lk0/di;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/di$c;->a:Lk0/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x4

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_4
    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_5
    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_6
    new-array v0, v1, [I

    .line 8
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_7
    new-array v0, v1, [I

    .line 9
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_8
    new-array v0, v1, [I

    .line 10
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_9
    new-array v0, v1, [I

    .line 11
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_a
    new-array v0, v1, [I

    .line 12
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x5d01c7 -> :sswitch_a
        0x5e01c7 -> :sswitch_a
        0x5f01c7 -> :sswitch_9
        0x6001c7 -> :sswitch_8
        0x6301c7 -> :sswitch_8
        0x6901c6 -> :sswitch_7
        0x7601c6 -> :sswitch_6
        0x9301c6 -> :sswitch_5
        0x9401c6 -> :sswitch_5
        0x9601c6 -> :sswitch_a
        0xa301c6 -> :sswitch_4
        0xa701c6 -> :sswitch_9
        0xa801c6 -> :sswitch_3
        0xb001b7 -> :sswitch_2
        0xba01c4 -> :sswitch_2
        0xc401c4 -> :sswitch_1
        0xce01c4 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x85
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x85
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x85
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x85
        0x1
        0xa
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x85
        0x1
        0x8
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x85
        0x1
        0x6
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x85
        0x1
        0x4
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x85
        0x1
        0x5
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x85
        0x1
        0xb
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x85
        0x1
        0x9
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x85
        0x1
        0x7
    .end array-data
.end method
