.class public Lk0/em$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/em;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/em;


# direct methods
.method public constructor <init>(Lk0/em;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/em$e;->a:Lk0/em;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/em$e;->a:Lk0/em;

    iget v1, v0, Lk0/em;->n:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/em;->n:I

    const/4 v3, 0x5

    if-lez v1, :cond_4

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v4, 0xe3

    aput v4, v0, v1

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
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 6
    :goto_0
    sget v0, Lk0/nt;->a:I

    const v1, 0xc301c4

    if-eq v0, v1, :cond_3

    const v1, 0xca01c4

    if-eq v0, v1, :cond_2

    const v1, 0xf001c4

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_5

    .line 8
    iget-object v0, p0, Lk0/em$e;->a:Lk0/em;

    invoke-static {v0}, Lk0/em;->d3(Lk0/em;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/em;->e3(Lk0/em;I)V

    goto :goto_1

    :cond_2
    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 11
    :cond_4
    iget-object v0, v0, Lk0/em;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lk0/em$e;->a:Lk0/em;

    iput v3, v0, Lk0/em;->n:I

    :cond_5
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0x12
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0x12
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x2
        0x1a
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc6
        0x2
        0x1a
        0x0
    .end array-data
.end method
