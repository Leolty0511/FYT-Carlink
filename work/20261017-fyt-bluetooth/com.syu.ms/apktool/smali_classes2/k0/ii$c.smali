.class public Lk0/ii$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ii;


# direct methods
.method public constructor <init>(Lk0/ii;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ii$c;->a:Lk0/ii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 2
    sget v0, Lh0/c;->E:I

    const/4 v2, 0x4

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v0, v2, [I

    .line 5
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array v0, v2, [I

    .line 6
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array v0, v2, [I

    .line 7
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_5
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x77
        0x1
        0x13
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x77
        0x1
        0x11
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x77
        0x1
        0x12
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x77
        0x1
        0x10
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x77
        0x1
        0x0
    .end array-data
.end method
