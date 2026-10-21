.class public Lmodule/canbus/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/a;


# direct methods
.method public constructor <init>(Lmodule/canbus/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/a$f;->a:Lmodule/canbus/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/a$f;->a:Lmodule/canbus/a;

    iget v1, v0, Lmodule/canbus/a;->k:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lmodule/canbus/a;->k:I

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_3

    .line 3
    rem-int/lit8 v1, v1, 0x4

    const/4 v0, 0x5

    if-ne v1, v2, :cond_0

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 5
    :cond_0
    iget-object v1, p0, Lmodule/canbus/a$f;->a:Lmodule/canbus/a;

    iget v1, v1, Lmodule/canbus/a;->k:I

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    new-array v1, v0, [I

    .line 6
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    .line 7
    :cond_1
    iget-object v1, p0, Lmodule/canbus/a$f;->a:Lmodule/canbus/a;

    iget v1, v1, Lmodule/canbus/a;->k:I

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 9
    :cond_2
    iget-object v0, p0, Lmodule/canbus/a$f;->a:Lmodule/canbus/a;

    iget v1, v0, Lmodule/canbus/a;->k:I

    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lmodule/canbus/a;->k:I

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xa0
        0x2
        0x3
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xa0
        0x2
        0x4
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xa0
        0x2
        0x5
        0x0
    .end array-data
.end method
