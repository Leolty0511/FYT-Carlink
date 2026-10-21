.class public Lk0/vq$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vq;


# direct methods
.method public constructor <init>(Lk0/vq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vq$c;->a:Lk0/vq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/vq$c;->a:Lk0/vq;

    iget v1, v0, Lk0/vq;->i:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/vq;->i:I

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v3, 0x0

    aput v1, v0, v3

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
    iget-object v0, p0, Lk0/vq$c;->a:Lk0/vq;

    invoke-static {v0}, Lk0/vq;->a3(Lk0/vq;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1, v3}, Lk0/vq;->b3(Lk0/vq;IZ)V

    .line 5
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x6

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array v0, v1, [I

    .line 8
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, v0, Lk0/vq;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/vq$c;->a:Lk0/vq;

    const/4 v1, 0x5

    iput v1, v0, Lk0/vq;->i:I

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xe0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x3
        0xe
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x3
        0xe
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x3
        0xe
        0x0
        0x0
    .end array-data
.end method
