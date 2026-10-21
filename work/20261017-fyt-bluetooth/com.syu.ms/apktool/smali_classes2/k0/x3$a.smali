.class public Lk0/x3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/x3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/x3;


# direct methods
.method public constructor <init>(Lk0/x3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/x3$a;->a:Lk0/x3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/x3$a;->a:Lk0/x3;

    iget v1, v0, Lk0/x3;->b0:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/x3;->b0:I

    const/4 v3, 0x5

    if-lez v1, :cond_1

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
    sget v4, Lu0/b;->a0:I

    const/4 v6, 0x3

    aput v4, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_2

    new-array v1, v3, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v3, [I

    .line 5
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    .line 6
    iget-object v1, p0, Lk0/x3$a;->a:Lk0/x3;

    invoke-static {v1}, Lk0/x3;->g3(Lk0/x3;)Lo1/g0;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/x3;->i3(Lk0/x3;I)V

    .line 7
    sget v1, Lk0/nt;->a:I

    const v2, 0x3a008b

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lk0/x3$a;->a:Lk0/x3;

    invoke-static {v1}, Lk0/x3;->g3(Lk0/x3;)Lo1/g0;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v2, v6, v4}, Lo1/g0;->b(II)I

    move-result v2

    iget-object v5, p0, Lk0/x3$a;->a:Lk0/x3;

    .line 9
    invoke-static {v5}, Lk0/x3;->g3(Lk0/x3;)Lo1/g0;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lo1/g0;->b(II)I

    move-result v0

    iget-object v5, p0, Lk0/x3$a;->a:Lk0/x3;

    .line 10
    invoke-static {v5}, Lk0/x3;->g3(Lk0/x3;)Lo1/g0;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lo1/g0;->b(II)I

    move-result v3

    .line 11
    invoke-static {v1, v2, v0, v3}, Lk0/x3;->j3(Lk0/x3;III)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, v0, Lk0/x3;->d0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/x3$a;->a:Lk0/x3;

    iput v3, v0, Lk0/x3;->b0:I

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x50
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x7f
        0x0
    .end array-data
.end method
