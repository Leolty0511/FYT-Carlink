.class public Lk0/aj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/aj;


# direct methods
.method public constructor <init>(Lk0/aj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/aj$a;->a:Lk0/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v2, 0x81

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x2

    aput v3, v1, v2

    .line 1
    sget v2, Lu0/b;->a0:I

    const/4 v3, 0x3

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 6
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 7
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0x23
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x1
        0x24
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x1
        0x28
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x90
        0x1
        0x30
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x90
        0x1
        0x68
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x90
        0x1
        0x6a
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x90
        0x1
        0x7f
    .end array-data
.end method
