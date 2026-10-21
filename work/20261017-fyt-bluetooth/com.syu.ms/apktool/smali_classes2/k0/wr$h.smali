.class public Lk0/wr$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/wr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/wr;


# direct methods
.method public constructor <init>(Lk0/wr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/wr$h;->a:Lk0/wr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/wr$h;->a:Lk0/wr;

    iget v1, v0, Lk0/wr;->v:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/wr;->v:I

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

    const/4 v3, 0x3

    .line 2
    sget v5, Lu0/b;->a0:I

    aput v5, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    iget-object v0, p0, Lk0/wr$h;->a:Lk0/wr;

    invoke-static {v0}, Lk0/wr;->d3(Lk0/wr;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lo1/g0;->b(II)I

    move-result v1

    iget-object v3, p0, Lk0/wr$h;->a:Lk0/wr;

    .line 6
    invoke-static {v3}, Lk0/wr;->d3(Lk0/wr;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lo1/g0;->b(II)I

    move-result v3

    iget-object v5, p0, Lk0/wr$h;->a:Lk0/wr;

    .line 7
    invoke-static {v5}, Lk0/wr;->d3(Lk0/wr;)Lo1/g0;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lo1/g0;->b(II)I

    move-result v4

    .line 8
    invoke-static {v0, v1, v3, v4}, Lk0/wr;->e3(Lk0/wr;III)V

    .line 9
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    .line 10
    iget-object v0, p0, Lk0/wr$h;->a:Lk0/wr;

    const/16 v1, 0x90

    const-string v2, "sys.lsec.navi_bar_height"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lk0/wr;->x:I

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, v0, Lk0/wr;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lk0/wr$h;->a:Lk0/wr;

    const/4 v1, 0x6

    iput v1, v0, Lk0/wr;->v:I

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0xf1
        0x1
        0x71
    .end array-data
.end method
