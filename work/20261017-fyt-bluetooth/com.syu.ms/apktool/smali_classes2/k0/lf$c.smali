.class public Lk0/lf$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/lf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/lf;


# direct methods
.method public constructor <init>(Lk0/lf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/lf$c;->a:Lk0/lf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk0/lf$c;->a:Lk0/lf;

    iget-byte v1, v0, Lk0/lf;->f:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/lf;->f:B

    const/4 v3, 0x5

    if-lez v1, :cond_1

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v1, v4

    const/16 v6, 0x81

    aput v6, v1, v2

    const/4 v6, 0x2

    aput v2, v1, v6

    .line 2
    sget v7, Lu0/b;->a0:I

    const/4 v8, 0x3

    aput v7, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lk0/nt;->c:I

    const/16 v7, 0x1d

    if-eq v1, v7, :cond_0

    const/16 v7, 0x76

    if-eq v1, v7, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v3, [I

    aput v5, v1, v4

    const/16 v3, 0x84

    aput v3, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x8

    aput v2, v1, v8

    .line 4
    sget v2, Lu0/b;->a0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Lk0/lf;->a3(Lk0/lf;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/lf$c;->a:Lk0/lf;

    iput-byte v3, v0, Lk0/lf;->f:B

    :goto_0
    return-void
.end method
