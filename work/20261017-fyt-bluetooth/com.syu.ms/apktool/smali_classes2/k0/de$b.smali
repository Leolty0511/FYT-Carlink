.class public Lk0/de$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/de;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/de;


# direct methods
.method public constructor <init>(Lk0/de;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/de$b;->a:Lk0/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/de$b;->a:Lk0/de;

    iget v1, v0, Lk0/de;->k:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/de;->k:I

    const/4 v3, 0x5

    if-lez v1, :cond_1

    .line 2
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 3
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_0

    new-array v0, v3, [B

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lk0/de;->b3([B)V

    goto :goto_0

    :cond_0
    new-array v0, v3, [B

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lk0/de;->b3([B)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Lk0/de;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/de$b;->a:Lk0/de;

    iput v3, v0, Lk0/de;->k:I

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 1
        0x2et
        -0x7ft
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2et
        -0x7ft
        0x1t
        0x0t
        0x0t
    .end array-data
.end method
