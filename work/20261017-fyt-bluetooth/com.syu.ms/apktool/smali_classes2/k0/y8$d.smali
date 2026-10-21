.class public Lk0/y8$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/y8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/y8;


# direct methods
.method public constructor <init>(Lk0/y8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/y8$d;->a:Lk0/y8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/y8$d;->a:Lk0/y8;

    iget-byte v1, v0, Lk0/y8;->n:B

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/y8;->n:B

    if-lez v1, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lk0/y8;->f3(Lk0/y8;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/y8$d;->a:Lk0/y8;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/y8;->n:B

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x3
        0x6a
        0x5
        0x1
        0xc3
    .end array-data
.end method
