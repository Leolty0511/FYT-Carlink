.class public Lk0/jd$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/jd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/jd;


# direct methods
.method public constructor <init>(Lk0/jd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/jd$c;->a:Lk0/jd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/jd$c;->a:Lk0/jd;

    iget v1, v0, Lk0/jd;->k:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/jd;->k:I

    const/4 v3, 0x5

    if-lez v1, :cond_5

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_6

    .line 3
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_4

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 9
    :cond_5
    iget-object v0, v0, Lk0/jd;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/jd$c;->a:Lk0/jd;

    iput v3, v0, Lk0/jd;->k:I

    :cond_6
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x9
        0xc
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x7
        0xc
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x8
        0xc
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x6
        0xc
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0x5
        0xc
    .end array-data
.end method
