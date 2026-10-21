.class public Lk0/ig$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ig;


# direct methods
.method public constructor <init>(Lk0/ig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ig$e;->a:Lk0/ig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ig$e;->a:Lk0/ig;

    iget-byte v1, v0, Lk0/ig;->n:B

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/ig;->n:B

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lk0/ig;->d3(Lk0/ig;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/ig$e;->a:Lk0/ig;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/ig;->n:B

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x81
        0x1
        0x1
    .end array-data
.end method
