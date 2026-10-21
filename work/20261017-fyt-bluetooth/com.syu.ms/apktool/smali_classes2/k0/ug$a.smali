.class public Lk0/ug$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ug;


# direct methods
.method public constructor <init>(Lk0/ug;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ug$a;->a:Lk0/ug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    iget-object v1, p0, Lk0/ug$a;->a:Lk0/ug;

    iget v1, v1, Lk0/ug;->j:I

    if-eq v0, v1, :cond_3

    const/16 v0, 0xd

    if-ne v1, v0, :cond_2

    .line 2
    sget v0, Lk0/nt;->a:I

    const v1, 0x7701b7

    if-eq v0, v1, :cond_1

    const v1, 0x101c4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    :cond_2
    :goto_1
    iget-object v0, p0, Lk0/ug$a;->a:Lk0/ug;

    sget v1, Lu0/b;->D:I

    iput v1, v0, Lk0/ug;->j:I

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xe0
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xa2
        0x2
        0x0
        0x0
    .end array-data
.end method
