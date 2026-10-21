.class public Lk0/vi$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vi;


# direct methods
.method public constructor <init>(Lk0/vi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vi$b;->a:Lk0/vi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lk0/vi$b;->a:Lk0/vi;

    iget v1, v0, Lk0/vi;->m:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/vi;->m:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

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
    sget v1, Lk0/nt;->c:I

    const/16 v5, 0xec

    if-ne v1, v5, :cond_1

    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v7, p0, Lk0/vi$b;->a:Lk0/vi;

    invoke-static {v7}, Lk0/vi;->a3(Lk0/vi;)Lo1/g0;

    move-result-object v1

    const/16 v5, 0xa

    invoke-virtual {v1, v2, v5}, Lo1/g0;->b(II)I

    move-result v8

    iget-object v1, p0, Lk0/vi$b;->a:Lk0/vi;

    .line 5
    invoke-static {v1}, Lk0/vi;->a3(Lk0/vi;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lo1/g0;->b(II)I

    move-result v9

    iget-object v1, p0, Lk0/vi$b;->a:Lk0/vi;

    .line 6
    invoke-static {v1}, Lk0/vi;->a3(Lk0/vi;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v6, v5}, Lo1/g0;->b(II)I

    move-result v10

    iget-object v1, p0, Lk0/vi$b;->a:Lk0/vi;

    .line 7
    invoke-static {v1}, Lk0/vi;->a3(Lk0/vi;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lo1/g0;->b(II)I

    move-result v11

    iget-object v0, p0, Lk0/vi$b;->a:Lk0/vi;

    .line 8
    invoke-static {v0}, Lk0/vi;->a3(Lk0/vi;)Lo1/g0;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Lo1/g0;->b(II)I

    move-result v12

    iget-object v0, p0, Lk0/vi$b;->a:Lk0/vi;

    .line 9
    invoke-static {v0}, Lk0/vi;->a3(Lk0/vi;)Lo1/g0;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v5}, Lo1/g0;->b(II)I

    move-result v13

    const/4 v14, 0x0

    .line 10
    invoke-static/range {v7 .. v14}, Lk0/vi;->b3(Lk0/vi;IIIIIII)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, v0, Lk0/vi;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lk0/vi$b;->a:Lk0/vi;

    iput v3, v0, Lk0/vi;->m:I

    :cond_1
    :goto_0
    return-void
.end method
