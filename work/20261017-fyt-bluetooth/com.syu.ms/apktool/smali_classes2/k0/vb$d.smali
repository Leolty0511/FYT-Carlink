.class public Lk0/vb$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vb;


# direct methods
.method public constructor <init>(Lk0/vb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vb$d;->a:Lk0/vb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/vb$d;->a:Lk0/vb;

    iget v1, v0, Lk0/vb;->q:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/vb;->q:I

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v1, v4

    const/16 v3, 0x81

    aput v3, v1, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v5, 0x3

    .line 2
    sget v6, Lu0/b;->a0:I

    aput v6, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 4
    iget-object v0, p0, Lk0/vb$d;->a:Lk0/vb;

    invoke-static {v0}, Lk0/vb;->g3(Lk0/vb;)V

    .line 5
    iget-object v0, p0, Lk0/vb$d;->a:Lk0/vb;

    invoke-static {v0}, Lk0/vb;->h3(Lk0/vb;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/vb;->i3(Lk0/vb;I)V

    .line 6
    iget-object v0, p0, Lk0/vb$d;->a:Lk0/vb;

    invoke-static {v0}, Lk0/vb;->h3(Lk0/vb;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/vb;->j3(Lk0/vb;I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lk0/vb;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/vb$d;->a:Lk0/vb;

    const/4 v1, 0x5

    iput v1, v0, Lk0/vb;->q:I

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0x30
    .end array-data
.end method
