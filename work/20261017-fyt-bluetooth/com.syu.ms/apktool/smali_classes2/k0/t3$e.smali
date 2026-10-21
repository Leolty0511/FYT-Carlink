.class public Lk0/t3$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/t3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/t3;


# direct methods
.method public constructor <init>(Lk0/t3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/t3$e;->a:Lk0/t3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/t3$e;->a:Lk0/t3;

    iget v1, v0, Lk0/t3;->n:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/t3;->n:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v4, 0x0

    aput v1, v0, v4

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 2
    sget v5, Lu0/b;->a0:I

    aput v5, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    iget-object v0, p0, Lk0/t3$e;->a:Lk0/t3;

    invoke-static {v0}, Lk0/t3;->c3(Lk0/t3;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/t3;->d3(Lk0/t3;I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Lk0/t3;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/t3$e;->a:Lk0/t3;

    iput v3, v0, Lk0/t3;->n:I

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x33
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x33
        0x2
    .end array-data
.end method
