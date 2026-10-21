.class public Lk0/kd$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/kd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/kd;


# direct methods
.method public constructor <init>(Lk0/kd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/kd$f;->a:Lk0/kd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, -0x74

    aput v1, v0, v2

    const/4 v1, 0x3

    aput v1, v0, v1

    .line 1
    sget v1, Ly0/f;->c:I

    mul-int/lit8 v1, v1, 0x1e

    div-int/lit8 v1, v1, 0x24

    const/4 v2, 0x4

    aput v1, v0, v2

    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
