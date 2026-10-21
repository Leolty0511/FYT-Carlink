.class public Lk0/l1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/l1;


# direct methods
.method public constructor <init>(Lk0/l1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/l1$b;->a:Lk0/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/l1$b;->a:Lk0/l1;

    iget v1, v0, Lk0/l1;->m:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 2
    iput v1, v0, Lk0/l1;->m:I

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lk0/l1$b;->a:Lk0/l1;

    invoke-static {v0}, Lk0/l1;->f3(Lk0/l1;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x85
        0x2
        0x4
        0x20
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x85
        0x2
        0x4
        0x0
    .end array-data
.end method
