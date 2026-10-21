.class public Lmodule/canbus/x$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/x;


# direct methods
.method public constructor <init>(Lmodule/canbus/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/x$c;->a:Lmodule/canbus/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lmodule/canbus/x$c;->a:Lmodule/canbus/x;

    iget v1, v0, Lmodule/canbus/x;->f:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lmodule/canbus/x;->f:I

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

    const/4 v4, 0x3

    .line 2
    sget v5, Lu0/b;->a0:I

    aput v5, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget v0, Lk0/nt;->c:I

    if-eq v0, v1, :cond_0

    .line 4
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_3

    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, v0, Lmodule/canbus/x;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lmodule/canbus/x$c;->a:Lmodule/canbus/x;

    iput v3, v0, Lmodule/canbus/x;->f:I

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x30
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x84
        0x2
        0x9
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x2
        0x17
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x90
        0x2
        0x30
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x84
        0x2
        0x9
        0x0
    .end array-data
.end method
