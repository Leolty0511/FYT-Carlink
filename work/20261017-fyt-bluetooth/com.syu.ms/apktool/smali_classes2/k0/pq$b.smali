.class public Lk0/pq$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/pq;


# direct methods
.method public constructor <init>(Lk0/pq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pq$b;->a:Lk0/pq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk0/pq$b;->a:Lk0/pq;

    iget v1, v0, Lk0/pq;->e:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/pq;->e:I

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v1, v3

    const/16 v5, 0x81

    aput v5, v1, v2

    const/4 v5, 0x2

    aput v2, v1, v5

    .line 2
    sget v6, Lu0/b;->a0:I

    const/4 v7, 0x3

    aput v6, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    aput v4, v0, v3

    const/16 v1, 0x85

    aput v1, v0, v2

    aput v2, v0, v5

    .line 3
    sget v1, Lu0/b;->a0:I

    aput v1, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lk0/pq;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/pq$b;->a:Lk0/pq;

    const/4 v1, 0x5

    iput v1, v0, Lk0/pq;->e:I

    :goto_0
    return-void
.end method
