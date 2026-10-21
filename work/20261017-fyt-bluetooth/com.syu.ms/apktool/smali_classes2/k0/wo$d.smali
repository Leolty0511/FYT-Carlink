.class public Lk0/wo$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/wo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/wo;


# direct methods
.method public constructor <init>(Lk0/wo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/wo$d;->a:Lk0/wo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/wo$d;->a:Lk0/wo;

    iget v1, v0, Lk0/wo;->k:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/wo;->k:I

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v3, 0x0

    aput v1, v0, v3

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v4, 0x3

    .line 2
    sget v5, Lu0/b;->a0:I

    aput v5, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lk0/wo$d;->a:Lk0/wo;

    invoke-static {v0}, Lk0/wo;->b3(Lk0/wo;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lo1/g0;->b(II)I

    move-result v4

    invoke-static {v0, v4}, Lk0/wo;->c3(Lk0/wo;I)V

    .line 5
    iget-object v0, p0, Lk0/wo$d;->a:Lk0/wo;

    invoke-static {v0}, Lk0/wo;->b3(Lk0/wo;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v0, v2}, Lk0/wo;->d3(Lk0/wo;I)V

    .line 6
    iget-object v0, p0, Lk0/wo$d;->a:Lk0/wo;

    invoke-static {v0}, Lk0/wo;->b3(Lk0/wo;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/wo;->e3(Lk0/wo;I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lk0/wo;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/wo$d;->a:Lk0/wo;

    const/4 v1, 0x5

    iput v1, v0, Lk0/wo;->k:I

    :cond_1
    :goto_0
    return-void
.end method
