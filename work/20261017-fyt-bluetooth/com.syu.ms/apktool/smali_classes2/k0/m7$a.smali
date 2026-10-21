.class public Lk0/m7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/m7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/m7;


# direct methods
.method public constructor <init>(Lk0/m7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/m7$a;->a:Lk0/m7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/m7$a;->a:Lk0/m7;

    iget v0, v0, Lk0/m7;->k:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    new-array v0, v2, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lk0/m7$a;->a:Lk0/m7;

    sget v1, Lu0/b;->D:I

    iput v1, v0, Lk0/m7;->k:I

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        0xf3
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0xf3
        0x1
        0x1
    .end array-data
.end method
