.class public Lk0/p9$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/p9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/p9;


# direct methods
.method public constructor <init>(Lk0/p9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/p9$e;->a:Lk0/p9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/p9$e;->a:Lk0/p9;

    iget-byte v1, v0, Lk0/p9;->h:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/p9;->h:B

    if-lez v1, :cond_3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v3, 0xe3

    aput v3, v0, v1

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 2
    sget v1, Lu0/b;->a0:I

    const/4 v3, 0x3

    aput v1, v0, v3

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x5

    if-ne v0, v2, :cond_2

    const/4 v0, 0x7

    new-array v4, v0, [I

    .line 4
    fill-array-data v4, :array_0

    invoke-static {v4}, Lz/k;->s([I)V

    .line 5
    sget v4, Lk0/nt;->c:I

    if-eq v4, v2, :cond_0

    if-eq v4, v3, :cond_0

    if-eq v4, v1, :cond_0

    if-eq v4, v0, :cond_0

    const/16 v0, 0x14

    if-eq v4, v0, :cond_0

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 6
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lk0/p9$e;->a:Lk0/p9;

    iget-byte v0, v0, Lk0/p9;->h:B

    if-gt v0, v3, :cond_1

    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [I

    .line 8
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v0, v1, [I

    .line 9
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {v0}, Lk0/p9;->a3(Lk0/p9;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/p9$e;->a:Lk0/p9;

    const/16 v1, 0x9

    iput-byte v1, v0, Lk0/p9;->h:B

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x90
        0x4
        0x30
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x84
        0x2
        0x2
        0x18
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x84
        0x2
        0x2
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x84
        0x2
        0x2
        0x0
    .end array-data
.end method
