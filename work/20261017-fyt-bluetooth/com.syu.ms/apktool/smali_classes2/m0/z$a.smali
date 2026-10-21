.class public Lm0/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm0/z;


# direct methods
.method public constructor <init>(Lm0/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/z$a;->a:Lm0/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm0/z$a;->a:Lm0/z;

    iget v1, v0, Lm0/z;->m:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 2
    invoke-static {v0}, Lm0/z;->O2(Lm0/z;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lm0/z$a;->a:Lm0/z;

    invoke-static {v0}, Lm0/z;->R2(Lm0/z;)I

    .line 4
    iget-object v0, p0, Lm0/z$a;->a:Lm0/z;

    invoke-static {v0}, Lm0/z;->P2(Lm0/z;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lm0/z$a;->a:Lm0/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm0/z;->Q2(Lm0/z;I)I

    .line 6
    iget-object v0, p0, Lm0/z$a;->a:Lm0/z;

    invoke-static {v0}, Lm0/z;->S2(Lm0/z;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Ll0/z;->a:Ll0/a;

    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ll0/a;->f([I)V

    const-wide/16 v0, 0x64

    .line 8
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    sget-object v0, Ll0/z;->a:Ll0/a;

    iget-object v1, p0, Lm0/z$a;->a:Lm0/z;

    invoke-virtual {v1}, Lm0/z;->V2()[B

    move-result-object v1

    invoke-static {v1}, Lo1/s0;->e([B)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Ll0/a;->f([I)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lm0/z$a;->a:Lm0/z;

    iget v1, v0, Lm0/z;->m:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lm0/z;->m:I

    if-le v1, v2, :cond_3

    .line 12
    iput v3, v0, Lm0/z;->m:I

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x2e
        -0x20
        0xd
        0x1
        0x0
        0x0
        -0x6a
        0x0
        0x41
        0x42
        0x43
        0x44
        0x12
        0x34
        0x56
        0x78
    .end array-data
.end method
