.class public Lk0/n7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/n7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/n7;


# direct methods
.method public constructor <init>(Lk0/n7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/n7$b;->a:Lk0/n7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/n7$b;->a:Lk0/n7;

    iget v1, v0, Lk0/n7;->e:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/n7;->e:I

    if-lez v1, :cond_1

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_2

    .line 3
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x4

    if-nez v0, :cond_0

    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, v0, Lk0/n7;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/n7$b;->a:Lk0/n7;

    const/4 v1, 0x5

    iput v1, v0, Lk0/n7;->e:I

    :cond_2
    :goto_1
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x7c
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7c
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x7a
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x81
        0x1
        0x30
    .end array-data
.end method
