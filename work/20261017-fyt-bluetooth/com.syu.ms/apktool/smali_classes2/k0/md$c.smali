.class public Lk0/md$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/md;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/md;


# direct methods
.method public constructor <init>(Lk0/md;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/md$c;->a:Lk0/md;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/md$c;->a:Lk0/md;

    iget v1, v0, Lk0/md;->s:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/md;->s:I

    const/4 v3, 0x5

    if-lez v1, :cond_4

    .line 2
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_5

    .line 3
    sget v1, Lk0/nt;->c:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/16 v2, 0x16

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    .line 4
    invoke-static {v0, v1}, Lk0/md;->e3(Lk0/md;I)V

    goto :goto_0

    :cond_1
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 8
    :cond_4
    iget-object v0, v0, Lk0/md;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/md$c;->a:Lk0/md;

    iput v3, v0, Lk0/md;->s:I

    :cond_5
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x3
        0x1f
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x2
        0x1f
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x1
        0x1f
    .end array-data
.end method
