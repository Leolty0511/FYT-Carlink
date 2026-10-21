.class public Lk0/bj$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bj;


# direct methods
.method public constructor <init>(Lk0/bj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bj$c;->a:Lk0/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/bj$c;->a:Lk0/bj;

    iget-byte v1, v0, Lk0/bj;->i:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/bj;->i:B

    if-lez v1, :cond_2

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

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lk0/bj$c;->a:Lk0/bj;

    invoke-static {v0}, Lk0/bj;->b3(Lk0/bj;)V

    .line 5
    iget-object v0, p0, Lk0/bj$c;->a:Lk0/bj;

    iget-byte v0, v0, Lk0/bj;->i:B

    if-gt v0, v3, :cond_0

    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
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

    .line 9
    :cond_2
    invoke-static {v0}, Lk0/bj;->a3(Lk0/bj;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/bj$c;->a:Lk0/bj;

    const/16 v1, 0xc

    iput-byte v1, v0, Lk0/bj;->i:B

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x84
        0x2
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x84
        0x2
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x84
        0x2
        0x1
        0x0
    .end array-data
.end method
