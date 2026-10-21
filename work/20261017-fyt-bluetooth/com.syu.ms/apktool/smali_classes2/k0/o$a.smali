.class public Lk0/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/o;


# direct methods
.method public constructor <init>(Lk0/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/o$a;->a:Lk0/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lk0/o$a;->a:Lk0/o;

    iget v3, v3, Lk0/o;->e:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object v0, p0, Lk0/o$a;->a:Lk0/o;

    iput v1, v0, Lk0/o;->e:I

    .line 4
    :cond_2
    iget-object v0, p0, Lk0/o$a;->a:Lk0/o;

    iget v1, v0, Lk0/o;->e:I

    add-int/2addr v1, v2

    iput v1, v0, Lk0/o;->e:I

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x6
        0x7
        0x7
        0x7
    .end array-data
.end method
