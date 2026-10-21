.class public Ly0/c$k;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Ly0/c;


# direct methods
.method public constructor <init>(Ly0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly0/c$k;->b:Ly0/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ly0/c$k;->a:Z

    const-string p1, "SpectrumThread"

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ly0/c$k;->a:Z

    return-void
.end method

.method public run()V
    .locals 8

    const/16 v0, 0xe

    new-array v1, v0, [I

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2
    sget v6, Lu0/b;->n4:I

    if-eqz v6, :cond_0

    sget v6, Ly0/f;->U:I

    if-eqz v6, :cond_0

    .line 3
    sget-object v6, Lz/a;->w:Lo1/i0;

    invoke-virtual {v6}, Lo1/i0;->b()I

    move-result v6

    aput v6, v1, v3

    goto :goto_2

    .line 4
    :cond_0
    aput v2, v1, v3

    .line 5
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x2d

    sub-long/2addr v4, v6

    .line 6
    invoke-static {v4, v5}, La/i;->a0(J)V

    .line 7
    iget-boolean v4, p0, Ly0/c$k;->a:Z

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {v1}, Ly0/h;->j0([I)V

    goto :goto_0
.end method
