.class public Lk0/bh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bh;


# direct methods
.method public constructor <init>(Lk0/bh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bh$a;->a:Lk0/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lk0/bh;->i:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_2

    .line 2
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x5

    if-nez v0, :cond_0

    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 7
    :goto_0
    sget v0, Lu0/b;->D:I

    sput v0, Lk0/bh;->i:I

    :cond_2
    return-void

    :array_0
    .array-data 4
        0xe3
        0xc0
        0x2
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc0
        0x2
        0x2
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc0
        0x2
        0x1
        0x0
    .end array-data
.end method
