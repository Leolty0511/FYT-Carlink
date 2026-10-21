.class public Lk0/x3$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/x3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/x3;


# direct methods
.method public constructor <init>(Lk0/x3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/x3$f;->a:Lk0/x3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/x3$f;->a:Lk0/x3;

    iget v0, v0, Lk0/x3;->j0:I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lk0/x3;->v3([B)V

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/x3$f;->a:Lk0/x3;

    iget v1, v0, Lk0/x3;->j0:I

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 5
    iput v1, v0, Lk0/x3;->j0:I

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x70
        0x1
        0x21
    .end array-data

    :array_1
    .array-data 1
        0x2et
        -0x70t
        0x1t
        0x21t
        0x0t
    .end array-data
.end method
