.class public Lk0/a5$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/a5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/a5;


# direct methods
.method public constructor <init>(Lk0/a5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/a5$e;->a:Lk0/a5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/a5$e;->a:Lk0/a5;

    sget v1, Lu0/b;->s0:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lk0/a5;->e3(Lk0/a5;F)F

    .line 2
    iget-object v0, p0, Lk0/a5$e;->a:Lk0/a5;

    invoke-static {v0}, Lk0/a5;->d3(Lk0/a5;)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lk0/a5$e;->a:Lk0/a5;

    invoke-static {v0, v1}, Lk0/a5;->f3(Lk0/a5;F)F

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/a5$e;->a:Lk0/a5;

    invoke-static {v0}, Lk0/a5;->d3(Lk0/a5;)F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 5
    iget-object v0, p0, Lk0/a5$e;->a:Lk0/a5;

    invoke-static {v0, v1}, Lk0/a5;->f3(Lk0/a5;F)F

    .line 6
    iget-object v0, p0, Lk0/a5$e;->a:Lk0/a5;

    invoke-static {v0}, Lk0/a5;->d3(Lk0/a5;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lk0/a5;->e3(Lk0/a5;F)F

    .line 7
    :cond_1
    iget-object v0, p0, Lk0/a5$e;->a:Lk0/a5;

    invoke-static {v0}, Lk0/a5;->g3(Lk0/a5;)I

    move-result v0

    iget-object v1, p0, Lk0/a5$e;->a:Lk0/a5;

    invoke-static {v1}, Lk0/a5;->h3(Lk0/a5;)I

    move-result v1

    if-eq v0, v1, :cond_2

    const/16 v0, 0xb

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, -0x7a

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/16 v4, 0x8

    aput v4, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 8
    iget-object v3, p0, Lk0/a5$e;->a:Lk0/a5;

    invoke-static {v3}, Lk0/a5;->g3(Lk0/a5;)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v1

    const/4 v1, 0x6

    iget-object v3, p0, Lk0/a5$e;->a:Lk0/a5;

    invoke-static {v3}, Lk0/a5;->g3(Lk0/a5;)I

    move-result v3

    shr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    aput v2, v0, v4

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 9
    iget-object v0, p0, Lk0/a5$e;->a:Lk0/a5;

    invoke-static {v0}, Lk0/a5;->g3(Lk0/a5;)I

    move-result v1

    invoke-static {v0, v1}, Lk0/a5;->i3(Lk0/a5;I)I

    :cond_2
    return-void
.end method
