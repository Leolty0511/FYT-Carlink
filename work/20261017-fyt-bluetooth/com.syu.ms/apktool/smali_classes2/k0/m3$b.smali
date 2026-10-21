.class public Lk0/m3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/m3;


# direct methods
.method public constructor <init>(Lk0/m3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/m3$b;->a:Lk0/m3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/m3$b;->a:Lk0/m3;

    iget v1, v0, Lk0/m3;->r:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/m3;->r:I

    const/4 v3, 0x5

    if-lez v1, :cond_2

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_3

    .line 3
    sget v0, Lk0/nt;->a:I

    const/16 v1, 0x81

    if-eq v0, v1, :cond_1

    const v1, 0x10081

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, v0, Lk0/m3;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/m3$b;->a:Lk0/m3;

    iput v3, v0, Lk0/m3;->r:I

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x5
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x4
        0x0
    .end array-data
.end method
