.class public Lk0/fj$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/fj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/fj;


# direct methods
.method public constructor <init>(Lk0/fj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/fj$b;->a:Lk0/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/fj$b;->a:Lk0/fj;

    iget v1, v0, Lk0/fj;->j:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/fj;->j:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    .line 3
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_7
    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v0, Lk0/fj;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/fj$b;->a:Lk0/fj;

    iput v3, v0, Lk0/fj;->j:I

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
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
        0x2
        0x24
        0x8
        0x15
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x7
        0x15
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x6
        0x15
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x5
        0x15
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0x4
        0x15
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0x3
        0x15
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0x2
        0x15
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x24
        0x1
        0x15
    .end array-data
.end method
