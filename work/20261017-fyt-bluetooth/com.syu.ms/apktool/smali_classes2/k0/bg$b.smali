.class public Lk0/bg$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bg;


# direct methods
.method public constructor <init>(Lk0/bg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bg$b;->a:Lk0/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/bg$b;->a:Lk0/bg;

    iget-byte v1, v0, Lk0/bg;->e:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/bg;->e:B

    .line 2
    invoke-static {v0}, Lk0/bg;->f3(Lk0/bg;)V

    .line 3
    iget-object v0, p0, Lk0/bg$b;->a:Lk0/bg;

    iget-byte v1, v0, Lk0/bg;->e:B

    const/4 v3, 0x5

    if-lez v1, :cond_0

    .line 4
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 6
    iget-object v0, p0, Lk0/bg$b;->a:Lk0/bg;

    invoke-static {v0}, Lk0/bg;->f3(Lk0/bg;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lk0/bg;->e3(Lk0/bg;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/bg$b;->a:Lk0/bg;

    iput-byte v3, v0, Lk0/bg;->e:B

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0x0
        0x1
    .end array-data
.end method
