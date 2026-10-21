.class public Lmodule/canbus/j0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/j0;


# direct methods
.method public constructor <init>(Lmodule/canbus/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/j0$d;->a:Lmodule/canbus/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/canbus/j0$d;->a:Lmodule/canbus/j0;

    iget-byte v1, v0, Lmodule/canbus/j0;->g:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lmodule/canbus/j0;->g:B

    if-lez v1, :cond_1

    .line 2
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x31

    const/4 v3, 0x4

    if-ne v0, v1, :cond_0

    new-array v0, v3, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_0
    new-array v0, v3, [I

    const/4 v1, 0x0

    const/16 v3, 0xe3

    aput v3, v0, v1

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 6
    sget v2, Lu0/b;->a0:I

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Lmodule/canbus/j0;->a3(Lmodule/canbus/j0;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lmodule/canbus/j0$d;->a:Lmodule/canbus/j0;

    const/4 v1, 0x5

    iput-byte v1, v0, Lmodule/canbus/j0;->g:B

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x84
        0x5
        0xa
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x84
        0x6
        0xa
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x84
        0x7
        0xa
    .end array-data
.end method
