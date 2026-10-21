.class public Lk0/yj$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/yj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/yj;


# direct methods
.method public constructor <init>(Lk0/yj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/yj$c;->a:Lk0/yj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/yj$c;->a:Lk0/yj;

    iget v1, v0, Lk0/yj;->f:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/yj;->f:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 4
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_4
    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_5
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_6
    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_7
    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, v0, Lk0/yj;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lk0/yj$c;->a:Lk0/yj;

    iput v3, v0, Lk0/yj;->f:I

    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3a01bc -> :sswitch_7
        0x3b01bc -> :sswitch_6
        0x5c01bb -> :sswitch_5
        0x9301bb -> :sswitch_4
        0x9401bb -> :sswitch_3
        0x9501bb -> :sswitch_2
        0x9601bb -> :sswitch_1
        0x9701bb -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x1
        0x81
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x6
        0x31
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x5
        0x31
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x4
        0x31
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0x3
        0x31
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0x2
        0x31
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0x1
        0x31
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x24
        0x8
        0x31
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x24
        0x7
        0x31
    .end array-data
.end method
