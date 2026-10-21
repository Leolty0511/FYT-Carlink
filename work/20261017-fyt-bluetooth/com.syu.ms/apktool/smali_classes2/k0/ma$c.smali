.class public Lk0/ma$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ma;


# direct methods
.method public constructor <init>(Lk0/ma;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ma$c;->a:Lk0/ma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk0/ma$c;->a:Lk0/ma;

    iget v1, v0, Lk0/ma;->m:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/ma;->m:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v1, v5

    const/16 v4, 0x81

    aput v4, v1, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    .line 2
    sget v6, Lu0/b;->a0:I

    const/4 v7, 0x3

    aput v6, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 4
    sget v1, Lk0/nt;->c:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :pswitch_2
    iget-object v1, p0, Lk0/ma$c;->a:Lk0/ma;

    invoke-static {v1}, Lk0/ma;->b3(Lk0/ma;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Lo1/g0;->b(II)I

    move-result v2

    iget-object v6, p0, Lk0/ma$c;->a:Lk0/ma;

    .line 7
    invoke-static {v6}, Lk0/ma;->b3(Lk0/ma;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lo1/g0;->b(II)I

    move-result v4

    iget-object v6, p0, Lk0/ma$c;->a:Lk0/ma;

    .line 8
    invoke-static {v6}, Lk0/ma;->b3(Lk0/ma;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v7, v5}, Lo1/g0;->b(II)I

    move-result v6

    iget-object v7, p0, Lk0/ma$c;->a:Lk0/ma;

    .line 9
    invoke-static {v7}, Lk0/ma;->b3(Lk0/ma;)Lo1/g0;

    move-result-object v7

    invoke-virtual {v7, v0, v5}, Lo1/g0;->b(II)I

    move-result v0

    iget-object v7, p0, Lk0/ma$c;->a:Lk0/ma;

    .line 10
    invoke-static {v7}, Lk0/ma;->b3(Lk0/ma;)Lo1/g0;

    move-result-object v7

    invoke-virtual {v7, v3, v5}, Lo1/g0;->b(II)I

    move-result v7

    move v3, v4

    move v4, v6

    move v5, v0

    move v6, v7

    .line 11
    invoke-static/range {v1 .. v6}, Lk0/ma;->c3(Lk0/ma;IIIII)V

    goto :goto_0

    :pswitch_3
    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, v0, Lk0/ma;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lk0/ma$c;->a:Lk0/ma;

    iput v3, v0, Lk0/ma;->m:I

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x22
        0x2
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x22
        0x1
    .end array-data
.end method
