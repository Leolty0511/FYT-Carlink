.class public Lk0/ej$a;
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
    iput-object p1, p0, Lk0/ej$a;->a:Lk0/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/ej$a;->a:Lk0/ej;

    iget v1, v0, Lk0/ej;->k:I

    sget v2, Ly0/f;->Q0:I

    if-eq v1, v2, :cond_0

    .line 2
    iput v2, v0, Lk0/ej;->k:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v3, 0xe3

    aput v3, v0, v1

    const/4 v1, 0x1

    const/16 v3, 0x69

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    const/16 v3, 0x13

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    :cond_0
    return-void
.end method
