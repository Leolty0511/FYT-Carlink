.class public Lk0/fs$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/fs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/fs;


# direct methods
.method public constructor <init>(Lk0/fs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/fs$c;->a:Lk0/fs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/fs$c;->a:Lk0/fs;

    iget v1, v0, Lk0/fs;->p:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/fs;->p:I

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

    .line 3
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    iget-object v0, p0, Lk0/fs$c;->a:Lk0/fs;

    invoke-static {v0}, Lk0/fs;->b3(Lk0/fs;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/fs;->c3(Lk0/fs;I)V

    .line 6
    iget-object v0, p0, Lk0/fs$c;->a:Lk0/fs;

    invoke-static {v0}, Lk0/fs;->b3(Lk0/fs;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0xa

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/fs;->d3(Lk0/fs;I)V

    .line 7
    iget-object v0, p0, Lk0/fs$c;->a:Lk0/fs;

    invoke-static {v0}, Lk0/fs;->b3(Lk0/fs;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0xb

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/fs;->e3(Lk0/fs;I)V

    .line 8
    iget-object v0, p0, Lk0/fs$c;->a:Lk0/fs;

    invoke-static {v0}, Lk0/fs;->b3(Lk0/fs;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/fs;->f3(Lk0/fs;I)V

    .line 9
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lu0/b;->D:I

    if-eq v0, v2, :cond_1

    .line 10
    invoke-static {}, Lk0/fs;->a3()I

    move-result v0

    invoke-static {v0}, Ly0/h;->u0(I)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, v0, Lk0/fs;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lk0/fs$c;->a:Lk0/fs;

    iput v3, v0, Lk0/fs;->p:I

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x30
        0x0
    .end array-data
.end method
