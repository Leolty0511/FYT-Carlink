.class public Lk0/lo$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/lo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/lo;


# direct methods
.method public constructor <init>(Lk0/lo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/lo$b;->a:Lk0/lo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/lo$b;->a:Lk0/lo;

    iget-byte v1, v0, Lk0/lo;->f:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/lo;->f:B

    const/4 v3, 0x5

    if-lez v1, :cond_1

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_0

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

    :cond_0
    :goto_0
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {v0}, Lk0/lo;->a3(Lk0/lo;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/lo$b;->a:Lk0/lo;

    iput-byte v3, v0, Lk0/lo;->f:B

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x89
        0x2
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x89
        0x2
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x89
        0x2
        0x6
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x90
        0x2
        0x21
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x90
        0x2
        0x81
        0x0
    .end array-data
.end method
