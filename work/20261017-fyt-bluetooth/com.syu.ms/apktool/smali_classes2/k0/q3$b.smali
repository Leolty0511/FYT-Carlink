.class public Lk0/q3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/q3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/q3;


# direct methods
.method public constructor <init>(Lk0/q3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/q3$b;->a:Lk0/q3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/q3$b;->a:Lk0/q3;

    iget v1, v0, Lk0/q3;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk0/q3;->i:I

    const/4 v2, 0x5

    if-lez v1, :cond_0

    new-array v0, v2, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lk0/q3;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/q3$b;->a:Lk0/q3;

    iput v2, v0, Lk0/q3;->i:I

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x4
        0x11
    .end array-data
.end method
