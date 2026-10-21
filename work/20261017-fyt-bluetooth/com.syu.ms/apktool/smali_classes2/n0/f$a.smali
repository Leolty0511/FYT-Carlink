.class public Ln0/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/f;


# direct methods
.method public constructor <init>(Ln0/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/f$a;->a:Ln0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln0/f$a;->a:Ln0/f;

    iget v1, v0, Ln0/f;->z:I

    sget v2, Ly0/f;->Q0:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Ln0/f;->A:I

    sget v2, Lu0/b;->j4:I

    if-eq v1, v2, :cond_3

    .line 2
    :cond_0
    sget v1, Ly0/f;->Q0:I

    iput v1, v0, Ln0/f;->z:I

    .line 3
    sget v2, Lu0/b;->j4:I

    iput v2, v0, Ln0/f;->A:I

    .line 4
    sget v0, Lh0/c;->G:I

    if-nez v0, :cond_3

    const/4 v0, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    :goto_0
    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_3
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0xb1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0xb2
    .end array-data
.end method
