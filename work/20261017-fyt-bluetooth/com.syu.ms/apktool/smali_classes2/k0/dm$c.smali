.class public Lk0/dm$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/dm;


# direct methods
.method public constructor <init>(Lk0/dm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/dm$c;->a:Lk0/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/dm$c;->a:Lk0/dm;

    iget v1, v0, Lk0/dm;->g:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/dm;->g:I

    if-lez v1, :cond_1

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v1, v3

    const/16 v3, 0x81

    aput v3, v1, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v2, 0x3

    .line 2
    sget v3, Lu0/b;->a0:I

    aput v3, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x4b

    if-ne v1, v2, :cond_0

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_2

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Lk0/dm;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/dm$c;->a:Lk0/dm;

    const/4 v1, 0x5

    iput v1, v0, Lk0/dm;->g:I

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x84
        0x1
        0x12
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x84
        0x1
        0x11
    .end array-data
.end method
