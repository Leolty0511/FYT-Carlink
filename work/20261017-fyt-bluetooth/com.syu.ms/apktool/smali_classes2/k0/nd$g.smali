.class public Lk0/nd$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/nd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/nd;


# direct methods
.method public constructor <init>(Lk0/nd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/nd$g;->a:Lk0/nd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/nd$g;->a:Lk0/nd;

    iget-byte v1, v0, Lk0/nd;->p:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/nd;->p:B

    const/4 v3, 0x5

    if-lez v1, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v4, 0xe3

    aput v4, v0, v1

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 2
    sget v4, Lu0/b;->a0:I

    aput v4, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_3

    .line 4
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lk0/nd$g;->a:Lk0/nd;

    invoke-static {v0}, Lk0/nd;->c3(Lk0/nd;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/nd;->d3(Lk0/nd;I)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v0}, Lk0/nd;->b3(Lk0/nd;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/nd$g;->a:Lk0/nd;

    iput-byte v3, v0, Lk0/nd;->p:B

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x82
        0x2
        0x3
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x82
        0x2
        0x4
        0x1
    .end array-data
.end method
