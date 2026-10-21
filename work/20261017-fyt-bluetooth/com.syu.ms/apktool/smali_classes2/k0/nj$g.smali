.class public Lk0/nj$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/nj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/nj;


# direct methods
.method public constructor <init>(Lk0/nj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/nj$g;->a:Lk0/nj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/nj$g;->a:Lk0/nj;

    iget v1, v0, Lk0/nj;->w:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk0/nj;->w:I

    const/4 v2, 0x5

    if-lez v1, :cond_0

    .line 2
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v0, v2, [I

    .line 5
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v0, v2, [I

    .line 6
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_4
    new-array v0, v2, [I

    .line 7
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_5
    new-array v0, v2, [I

    .line 8
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_6
    new-array v0, v2, [I

    .line 9
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_7
    new-array v0, v2, [I

    .line 10
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_8
    new-array v0, v2, [I

    .line 11
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v0, Lk0/nj;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/nj$g;->a:Lk0/nj;

    iput v2, v0, Lk0/nj;->w:I

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1901bb -> :sswitch_8
        0x1b01bb -> :sswitch_7
        0x1c01bb -> :sswitch_7
        0x3901be -> :sswitch_6
        0x4301bb -> :sswitch_5
        0x4401bb -> :sswitch_4
        0x4501bb -> :sswitch_3
        0x5b01bb -> :sswitch_3
        0x5e01bb -> :sswitch_3
        0x5f01bb -> :sswitch_3
        0x6001bb -> :sswitch_3
        0x6101bb -> :sswitch_3
        0xe701bb -> :sswitch_2
        0xed01bb -> :sswitch_1
        0xee01bb -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0xa
        0x3
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x1c
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0xc
        0x3
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x23
        0x3
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0x24
        0x3
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0x23
        0x3
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0xc
        0x3
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x24
        0x14
        0x3
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x24
        0x22
        0x3
    .end array-data
.end method
