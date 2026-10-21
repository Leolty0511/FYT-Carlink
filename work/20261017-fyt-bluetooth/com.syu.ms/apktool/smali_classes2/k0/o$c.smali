.class public Lk0/o$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/o;


# direct methods
.method public constructor <init>(Lk0/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/o$c;->a:Lk0/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/o$c;->a:Lk0/o;

    iget-byte v1, v0, Lk0/o;->g:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/o;->g:B

    if-lez v1, :cond_1

    .line 2
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x4

    if-ne v0, v2, :cond_0

    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Lk0/o;->a3(Lk0/o;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/o$c;->a:Lk0/o;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/o;->g:B

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x5
        0x4
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x5
        0x4
        0x1
    .end array-data
.end method
