.class public Lk0/vs$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vs;


# direct methods
.method public constructor <init>(Lk0/vs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vs$a;->a:Lk0/vs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/vs$a;->a:Lk0/vs;

    sget v1, Ly0/f;->Q0:I

    iput v1, v0, Lk0/vs;->o:I

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v2, v3

    const/16 v3, 0xa1

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x2

    aput v4, v2, v3

    const/4 v3, 0x3

    shl-int/2addr v1, v3

    and-int/lit8 v1, v1, 0x8

    .line 2
    iget v0, v0, Lk0/vs;->n:I

    and-int/2addr v0, v4

    or-int/2addr v0, v1

    aput v0, v2, v3

    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
