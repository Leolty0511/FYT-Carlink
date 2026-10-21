.class public Lk0/qc$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/qc;


# direct methods
.method public constructor <init>(Lk0/qc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/qc$c;->a:Lk0/qc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/qc$c;->a:Lk0/qc;

    iget-byte v1, v0, Lk0/qc;->o:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/qc;->o:B

    const/4 v3, 0x5

    if-lez v1, :cond_2

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v1, v4

    const/16 v4, 0x81

    aput v4, v1, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    .line 2
    sget v5, Lu0/b;->a0:I

    const/4 v6, 0x3

    aput v5, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_3

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 6
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    .line 8
    sget v0, Lk0/nt;->c:I

    if-eq v0, v2, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v3, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    const/16 v1, 0x34

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lk0/qc$c;->a:Lk0/qc;

    iget-byte v0, v0, Lk0/qc;->o:B

    if-gt v0, v4, :cond_1

    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 13
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v0}, Lk0/qc;->b3(Lk0/qc;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lk0/qc$c;->a:Lk0/qc;

    iput-byte v3, v0, Lk0/qc;->o:B

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xf1
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xf1
        0x1
        0x19
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xf1
        0x1
        0x32
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xf1
        0x1
        0x30
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x93
        0x2
        0x7
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x93
        0x2
        0x1
        0x1e
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x93
        0x2
        0x7
        0x1
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x93
        0x2
        0x1
        0x0
    .end array-data
.end method
