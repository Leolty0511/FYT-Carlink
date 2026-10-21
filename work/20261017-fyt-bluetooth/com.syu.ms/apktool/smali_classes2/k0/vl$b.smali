.class public Lk0/vl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vl;


# direct methods
.method public constructor <init>(Lk0/vl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vl$b;->a:Lk0/vl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/vl$b;->a:Lk0/vl;

    iget v1, v0, Lk0/vl;->h:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/vl;->h:I

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v1, v4

    const/16 v3, 0x81

    aput v3, v1, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    .line 2
    sget v5, Lu0/b;->a0:I

    aput v5, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lk0/vl$b;->a:Lk0/vl;

    invoke-static {v1}, Lk0/vl;->b3(Lk0/vl;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/vl;->c3(Lk0/vl;I)V

    .line 5
    iget-object v1, p0, Lk0/vl$b;->a:Lk0/vl;

    iget v1, v1, Lk0/vl;->e:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_7
    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_8
    new-array v0, v0, [I

    .line 14
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_9
    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, v0, Lk0/vl;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 17
    iget-object v0, p0, Lk0/vl$b;->a:Lk0/vl;

    const/4 v1, 0x5

    iput v1, v0, Lk0/vl;->h:I

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x93
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
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
        0xe2
        0x1
        0x9
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xe2
        0x1
        0x8
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xe2
        0x1
        0x7
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xe2
        0x1
        0x6
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xe2
        0x1
        0x5
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xe2
        0x1
        0x4
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xe2
        0x1
        0x3
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xe2
        0x1
        0x2
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xe2
        0x1
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0xe2
        0x1
        0x0
    .end array-data
.end method
