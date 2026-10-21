.class public Lmodule/canbus/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/k;


# direct methods
.method public constructor <init>(Lmodule/canbus/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/k$c;->a:Lmodule/canbus/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/canbus/k$c;->a:Lmodule/canbus/k;

    iget v1, v0, Lmodule/canbus/k;->k:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lmodule/canbus/k;->k:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    new-array v0, v3, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Lmodule/canbus/k;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lmodule/canbus/k$c;->a:Lmodule/canbus/k;

    iput v3, v0, Lmodule/canbus/k;->k:I

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x20
        0x9
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0xad
        0x7
        0x0
    .end array-data
.end method
