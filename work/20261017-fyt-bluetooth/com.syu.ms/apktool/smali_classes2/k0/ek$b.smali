.class public Lk0/ek$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ek;


# direct methods
.method public constructor <init>(Lk0/ek;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ek$b;->a:Lk0/ek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/ek$b;->a:Lk0/ek;

    iget v1, v0, Lk0/ek;->g:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/ek;->g:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

    .line 2
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 3
    invoke-static {v0}, Lk0/ek;->a3(Lk0/ek;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ek;->b3(Lk0/ek;I)V

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

    goto :goto_0

    :sswitch_4
    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_5
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_6
    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v0, Lk0/ek;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/ek$b;->a:Lk0/ek;

    iput v3, v0, Lk0/ek;->g:I

    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1bc -> :sswitch_6
        0x101bc -> :sswitch_5
        0x201bc -> :sswitch_4
        0x2c01bc -> :sswitch_3
        0x3001be -> :sswitch_2
        0x9c01bb -> :sswitch_3
        0x9d01bb -> :sswitch_1
        0x9e01bb -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0x6a
        0x5
        0x32
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x6a
        0x3
        0x32
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x6a
        0x7
        0x32
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x1
        0x32
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x6a
        0x6
        0x32
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x6a
        0x4
        0x32
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x6a
        0x2
        0x32
    .end array-data
.end method
