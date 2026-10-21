.class public Lk0/ml$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ml;


# direct methods
.method public constructor <init>(Lk0/ml;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ml$b;->a:Lk0/ml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ml$b;->a:Lk0/ml;

    iget v1, v0, Lk0/ml;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk0/ml;->g:I

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lk0/ml;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/ml$b;->a:Lk0/ml;

    const/4 v1, 0x5

    iput v1, v0, Lk0/ml;->g:I

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xf1
        0x1
        0x71
    .end array-data
.end method
