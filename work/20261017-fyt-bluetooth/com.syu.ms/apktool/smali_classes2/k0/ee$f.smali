.class public Lk0/ee$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ee;


# direct methods
.method public constructor <init>(Lk0/ee;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ee$f;->a:Lk0/ee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/16 v3, 0xc

    if-ne v0, v3, :cond_1

    new-array v0, v1, [B

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lk0/ee;->p3([B)V

    .line 3
    iget-object v0, p0, Lk0/ee$f;->a:Lk0/ee;

    iget v0, v0, Lk0/ee;->q:I

    if-nez v0, :cond_0

    new-array v0, v1, [B

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lk0/ee;->p3([B)V

    .line 5
    :cond_0
    iget-object v0, p0, Lk0/ee$f;->a:Lk0/ee;

    iget v1, v0, Lk0/ee;->q:I

    if-lez v1, :cond_3

    sub-int/2addr v1, v2

    .line 6
    iput v1, v0, Lk0/ee;->q:I

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lk0/ee$f;->a:Lk0/ee;

    iget v3, v0, Lk0/ee;->p:I

    sub-int/2addr v3, v2

    iput v3, v0, Lk0/ee;->p:I

    if-lez v3, :cond_2

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v1, v3

    const/16 v3, 0x81

    aput v3, v1, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    .line 8
    sget v4, Lu0/b;->a0:I

    aput v4, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    .line 9
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_3

    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {v0}, Lk0/ee;->e3(Lk0/ee;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lk0/ee$f;->a:Lk0/ee;

    iput v1, v0, Lk0/ee;->p:I

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 1
        0x2et
        -0x7ft
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2et
        -0x70t
        0x1t
        0x21t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 4
        0xe3
        0x90
        0x1
        0x7f
    .end array-data
.end method
