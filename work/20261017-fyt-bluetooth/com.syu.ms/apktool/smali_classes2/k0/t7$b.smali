.class public Lk0/t7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/t7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/t7;


# direct methods
.method public constructor <init>(Lk0/t7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/t7$b;->a:Lk0/t7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/t7$b;->a:Lk0/t7;

    iget-byte v1, v0, Lk0/t7;->e:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/t7;->e:B

    if-lez v1, :cond_0

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lk0/t7;->a3(Lk0/t7;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/t7$b;->a:Lk0/t7;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/t7;->e:B

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xa
        0xc5
        0x7
        0x7
        0x7
        0x7
        0x7
        0x0
        0x33
        0x1
    .end array-data
.end method
