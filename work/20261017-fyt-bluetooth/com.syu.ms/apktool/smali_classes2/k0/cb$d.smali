.class public Lk0/cb$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/cb;


# direct methods
.method public constructor <init>(Lk0/cb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/cb$d;->a:Lk0/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/cb$d;->a:Lk0/cb;

    iget-byte v1, v0, Lk0/cb;->y:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/cb;->y:B

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v3, 0xe3

    aput v3, v0, v1

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 2
    sget v3, Lu0/b;->a0:I

    aput v3, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object v0, p0, Lk0/cb$d;->a:Lk0/cb;

    invoke-static {v0}, Lk0/cb;->o3(Lk0/cb;)V

    .line 4
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    .line 5
    iget-object v0, p0, Lk0/cb$d;->a:Lk0/cb;

    invoke-static {v0}, Lk0/cb;->p3(Lk0/cb;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/cb;->q3(Lk0/cb;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lk0/cb;->n3(Lk0/cb;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/cb$d;->a:Lk0/cb;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/cb;->y:B

    :cond_1
    :goto_0
    return-void
.end method
