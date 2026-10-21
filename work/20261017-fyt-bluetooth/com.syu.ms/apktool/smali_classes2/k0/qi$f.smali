.class public Lk0/qi$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/qi;


# direct methods
.method public constructor <init>(Lk0/qi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/qi$f;->a:Lk0/qi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/qi$f;->a:Lk0/qi;

    iget v1, v0, Lk0/qi;->n:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/qi;->n:I

    const/16 v3, 0xd

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v1, v4

    const/16 v4, 0x81

    aput v4, v1, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v4, 0x3

    .line 2
    sget v5, Lu0/b;->a0:I

    aput v5, v1, v4

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 4
    sget v1, Lu0/b;->D:I

    if-eq v1, v3, :cond_1

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Lk0/qi;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/qi$f;->a:Lk0/qi;

    iput v3, v0, Lk0/qi;->n:I

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x83
        0x1
        0x2
    .end array-data
.end method
