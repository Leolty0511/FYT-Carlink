.class public Lk0/ej$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ej;


# direct methods
.method public constructor <init>(Lk0/ej;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ej$g;->a:Lk0/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/ej$g;->a:Lk0/ej;

    iget-byte v1, v0, Lk0/ej;->s:B

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/ej;->s:B

    const/4 v2, 0x5

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lk0/ej;->a3(Lk0/ej;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/ej$g;->a:Lk0/ej;

    iput-byte v2, v0, Lk0/ej;->s:B

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x61
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x68
        0x2
        0x1
        0x0
    .end array-data
.end method
