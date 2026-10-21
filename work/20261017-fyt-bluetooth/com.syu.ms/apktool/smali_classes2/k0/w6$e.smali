.class public Lk0/w6$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/w6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/w6;


# direct methods
.method public constructor <init>(Lk0/w6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/w6$e;->a:Lk0/w6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/w6$e;->a:Lk0/w6;

    iget-byte v1, v0, Lk0/w6;->t:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/w6;->t:B

    if-lez v1, :cond_0

    .line 2
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 3
    invoke-static {v0}, Lk0/w6;->k3(Lk0/w6;)Lo1/g0;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/w6;->l3(Lk0/w6;I)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lk0/w6;->j3(Lk0/w6;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/w6$e;->a:Lk0/w6;

    const/16 v1, 0x8

    iput-byte v1, v0, Lk0/w6;->t:B

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x81
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x84
        0x2
        0x8
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x2
        0x30
        0x0
    .end array-data
.end method
