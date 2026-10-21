.class public Lk0/n$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/n;


# direct methods
.method public constructor <init>(Lk0/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/n$d;->a:Lk0/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/n$d;->a:Lk0/n;

    iget v1, v0, Lk0/n;->v:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk0/n;->v:I

    if-lez v1, :cond_2

    .line 2
    sget v0, Lk0/nt;->a:I

    const/16 v1, 0x31

    const/4 v2, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x73

    if-eq v0, v1, :cond_0

    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    .line 5
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x9
        0x3
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x1e
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x1d
        0x3
    .end array-data
.end method
